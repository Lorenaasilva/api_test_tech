*** Settings ***
Resource   C:\Users\Lorena\OneDrive\api_server_rest\resource\steps_post.resource
Library    RequestsLibrary
Library    Collections


*** Test Cases ***
CT 01 - Cadastro de Usuário na API
    GIVEN valid parameters for user creation are passed
    WHEN a POST request is made to the /users endpoint
    THEN it should return status code 201

