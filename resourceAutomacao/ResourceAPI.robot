#Alberson
*** Settings ***
Documentation    Documentação da API http://fakerestapi.azurewebsites.net/index.html
Library          RequestsLibrary
Library          Collections

*** Variable ***
${URL_API}       http://fakerestapi.azurewebsites.net/api/v1/
&{BOOK_15}       id=15
...              title=Book 15
...              pageCount=1500

*** Keywords ***
Conectar a API
    Create Session                    API                                                                                                                                                         ${URL_API}

Requisitar todos os livros
    #pega o alias da API "fakeAPI" e conecta ao end-point "Books" da url > http://fakerestapi.azurewebsites.net/api/v1/Books
    ${RESPOSTA}                       Get On Session                                                                                                                                              API                              Books
    Log                               ${RESPOSTA.text}
    Set Test Variable                 ${RESPOSTA}

Requisitar o livro "${ID_LIVRO}"
    ${RESPOSTA}                       Get On Session                                                                                                                                              API                              Books/${ID_LIVRO}
    Log                               ${RESPOSTA.text}
    Set Test Variable                 ${RESPOSTA}

Cadastrar um novo livro
    ${HEADERS}                        Create Dictionary                                                                                                                                           content-type=application/json
    ${RESPOSTA}                       Post On Session                                                                                                                                                API                              Books
    ...                               data={"id": 2424,"title": "Livro de Alberson","description": "Alberso books","ageCount": 25,"excerpt": "albersonfb","publishDate": "2021-09-09T02:10:46.927Z"}
    ...                               headers=${HEADERS}
    Log                               ${RESPOSTA.text}
    Set Test Variable                 ${RESPOSTA}

    ##Conferencias
#conferindo o status da resposta
Conferir o status code
    [Arguments]                       ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings        ${RESPOSTA.status_code}                                                                                                                                     ${STATUSCODE_DESEJADO}

#razão do status recebido
Conferir o reason
    [Arguments]                       ${REASON_DESEJADO}
    Should Be Equal As Strings        ${RESPOSTA.reason}                                                                                                                                          ${REASON_DESEJADO}

Conferir se retorna uma lista com "${QTDE_LIVROS}" livros
    Length Should Be                  ${RESPOSTA.json()}                                                                                                                                          ${QTDE_LIVROS}

Conferir se retorna todos os dados corretos do livro 15
    #os nomes devem ser igual no json do swagger
    Dictionary Should Contain Item    ${RESPOSTA.json()}                                                                                                                                          id                               ${BOOK_15.id}
    Dictionary Should Contain Item    ${RESPOSTA.json()}                                                                                                                                          title                            ${BOOK_15.title}
    Dictionary Should Contain Item    ${RESPOSTA.json()}                                                                                                                                          pageCount                        ${BOOK_15.pageCount}
    Should Not Be Empty               ${RESPOSTA.json()["description"]}
    Should Not Be Empty               ${RESPOSTA.json()["excerpt"]}
    Should Not Be Empty               ${RESPOSTA.json()["publishDate"]}