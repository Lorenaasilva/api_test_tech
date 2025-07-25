*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String

*** Variables ***
${URL_BASE}=    https://serverest.dev
${valid_email}    om0z@qa.com.br
${valid_password}    xhsq


*** Keywords ***
Create a new user
    ${random_email}    Generate Random String   length=4    chars=[LETTERS] [NUMBERS]
    ${random_email}    Convert To Lower Case    ${random_email}
    Set Global Variable    ${EMAIL_NEW_USER}       ${random_email}@qa.com.br
    ${random_password}    Generate Random String   length=4    chars=[LETTERS] [NUMBERS]
    ${random_password}    Convert To Lower Case    ${random_password}
    Set Global Variable    ${PASSWORD_NEW_USER}    ${random_password}

Create a session
    ${header}=      Create Dictionary    accept=application/json    Content-Type=application/json
    Create Session    alias=ServeRest    url=${URL_BASE}   headers=${header}


Verify Status Code
    [Arguments]    ${expected_status_code}
    Status Should Be    ${expected_status_code}


