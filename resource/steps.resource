*** Settings ***
Resource   ../resource/keywords.resource
Resource   ../resource/routes.resource
Resource   ../test_case/login/test_api.robot
Library    RequestsLibrary
Library    String
Library    Collections

*** Keywords ***
#steps registration of new users
valid parameters for user creation are passed
    Create a new user
a POST request is made to the /users endpoint
    POST user registration

it should return status code ${status_code}
    Status Should Be    ${status_code}

#steps login of existing users
valid credentials are provided
    POST user login    

a POST request is made to the /login endpoint
    POST user login

 a valid cart id
    GET user cart
a GET request is made to the /carrinho endpoint
    GET user cart
