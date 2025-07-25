*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String

*** Variables ***
${URL_BASE}=    https://serverest.dev


*** Keywords ***
Create a new user
    ${email_aleatorio}    Generate Random String   length=4    chars=[LETTERS] [NUMBERS]
    ${email_aleatorio}    Convert To Lower Case    ${email_aleatorio}
    Set Global Variable    ${EMAIL_NEW_USER}       ${email_aleatorio}@qa.com.br
    ${senha_aleatoria}    Generate Random String   length=4    chars=[LETTERS] [NUMBERS]
    ${senha_aleatoria}    Convert To Lower Case    ${senha_aleatoria}
    Set Global Variable    ${PASSWORD_NEW_USER}    ${senha_aleatoria}

Create a session
    ${header}=      Create Dictionary    accept=application/json    Content-Type=application/json
    Create Session    alias=ServeRest    url=${URL_BASE}   headers=${header}

validade status 
    [Arguments]         ${status_code}
    Status Should Be    ${status_code}


