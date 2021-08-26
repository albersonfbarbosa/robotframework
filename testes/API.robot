*** Settings ***
Documentation    Documentação da API http://fakerestapi.azurewebsites.net/index.html
Resource         ../resourceAutomacao/ResourceAPI.robot
Suite Setup      Conectar a API


*** Test Case ***
Buscar a listagem de todos os livros (GET em todos os livros)
    Requisitar todos os livros
    Conferir o status code
    Conferir o reason
    Conferir se retorna uma lista com "200" livros
