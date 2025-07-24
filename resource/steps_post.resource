*** Settings ***
Resource   ../resource/keyword_post.resource 
Resource   ../resource/route_post.resource
Library    RequestsLibrary
Library    String

*** Keywords ***
valid parameters for user creation are passed
    Create a new user
a POST request is made to the /users endpoint
    POST user registration

it should return status code ${status_code}
    validade status          ${status_code}