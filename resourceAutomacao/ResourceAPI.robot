*** Settings ***
Documentation             Documentação da API http://fakerestapi.azurewebsites.net/index.html
Library                   RequestsLibrary
Library                   Collections

*** Variable ***
${URL_API}                http://fakerestapi.azurewebsites.net/api/v1/


*** Keywords ***
#SETUP e TEARDOWNS
Conectar a API
    Create Session                API                        ${URL_API}

Requisitar todos os livros
    #pega o alias da API "fakeAPI" e conecta ao end-point "Books" da url > http://fakerestapi.azurewebsites.net/api/v1/Books
    ${RESPOSTA}                   Get On Session             API                       Books
    Log                           ${RESPOSTA.text}
    Set Test Variable             ${RESPOSTA}

#conferindo o status da resposta
Conferir o status code
    [Arguments]                   ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DESEJADO}

#razão do status recebido
Conferir o reason
    [Arguments]                   ${REASON_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.reason}         ${REASON_DESEJADO}

Conferir se retorna uma lista com "${QTDE_LIVROS}" livros
    Length Should Be              ${RESPOSTA.json()}         ${QTDE_LIVROS}