#Alberson
*** Settings ***
Documentation    Documentação da API http://fakerestapi.azurewebsites.net/index.html
Resource         ../resourceAutomacao/ResourceAPI.robot
Suite Setup      Conectar a API


*** Test Case ***
Buscar a listagem de todos os livros (GET em todos os livros)
    Requisitar todos os livros
    #pegand o status code por parametro
    Conferir o status code  200
    Conferir o reason  OK
    Conferir se retorna uma lista com "200" livros

Buscar um livro especifico (GET com livro especifico)
    Requisitar o livro "15"
    Conferir o status code  200
    Conferir o reason  OK
    Conferir se retorna todos os dados corretos do livro 15

Cadastrar um novo livro (POST)
    Cadastrar um novo livro