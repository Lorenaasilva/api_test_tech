*** Settings ***
Resource   ../resource/keywords.resource
Resource   ../resource/routes.resource
Library    RequestsLibrary
Library    Collections

*** Variables ***
&{COMMON_HEADERS}    accept=application/json    Content-Type=application/json
${email_login}    dory.user@qa.com.br
${password_login}    teste123
${email_invalid_login}    %kl@qa.com.br
${password_invalid_login}    123
${CART_ID}    qbMqntef4iTOwWfg
${URL_BASE}=    https://serverest.dev

*** Keywords ***
POST user registration
    ${body}  Create Dictionary    
    ...    nome=Lorena Silva    
    ...    email=${EMAIL_NEW_USER} 
    ...    password=${PASSWORD_NEW_USER}    
    ...    administrador=true

    Create a session    
    ${resposta}    POST On Session    alias=ServeRest     url=/usuarios    json=${body}
     
    Log    ${resposta.json()}    
    
POST user login
    ${headers}=    Create Dictionary    accept=application/json    Content-Type=application/json
    ${body}=       Create Dictionary    email=${email_login}    password=${password_login} 
    Create a session
    ${resposta}    POST On Session    alias=ServeRest    url=/login    json=${body}    headers=${headers}
    Should Not Be Empty    ${resposta.json()}[authorization] 


GET user cart
    ${headers}=    Create Dictionary    accept=application/json 
    Create Session    cart_session    ${URL_BASE}
    ${endpoint}=    Set Variable    /carrinhos/${CART_ID} 
    ${response}=    GET On Session    cart_session    ${endpoint}    headers=${headers}

    Should Be Equal As Strings    ${response.status_code}    200
    Log To Console    Resposta da Busca de Carrinho: ${response.json()}
    Should Be Equal As Strings    ${response.json()}[_id]    ${CART_ID}
    Should Not Be Empty    ${response.json()}[produtos]