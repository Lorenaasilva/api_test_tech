*** Settings ***
Resource   ../../resource/steps.resource
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

Scenario: CT 03 - Autenticação de Usuário Inválido
    GIVEN invalid credentials are provided
    WHEN a POST request is made to the /login endpoint with an invalid parameter
    THEN it should return status code 401

Scenario: CT 04 - Consultar carrinho de compras
    GIVEN a valid cart id
    WHEN a GET request is made to the /carrinho endpoint
    THEN it should return status code 200    