*** Settings ***
Resource   ../../resource/steps.resource
Resource   ../../resource/routes.resource
Resource   ../../resource/keywords.resource
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Scenario: CT 01 - Cadastro de Usuário na API
    GIVEN valid parameters for user creation are passed
    WHEN a POST request is made to the /users endpoint
    THEN it should return status code 201

Scenario: CT 02 - Autenticação de Usuário Válido
    GIVEN valid credentials are provided    
    WHEN a POST request is made to the /login endpoint    
    THEN it should return status code 200

Scenario: CT 03 - Consultar carrinho de compras
    GIVEN a valid cart id
    WHEN a GET request is made to the /carrinho endpoint
    THEN it should return status code 200

