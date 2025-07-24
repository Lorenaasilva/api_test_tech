*** Settings ***
Resource   ../resource/keyword_post.resource
Library    RequestsLibrary
Library    Collections

*** Variables ***

*** Keywords ***
POST user registration
    ${body}  Create Dictionary    
    ...    nome=Lorena Silva    
    ...    email=${EMAIL_NEW_USER} 
    ...    password=${PASSWORD_NEW_USER}    
    ...    administrador=true

    Creat a session    
    ${resposta}    POST On Session    alias=ServeRest     url=/usuarios    json=${body}
     
    Log    ${resposta.json()}
    Set Suite Variable        ${response}    ${resposta}

