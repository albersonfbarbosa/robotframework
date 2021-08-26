########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################

*** Settings ***
Documentation    Exemplo de uso de variáveis como argumentos em Keywords

*** Variable ***
&{PESSOA}        nome=Alberson Barbosa  email=alberson.barbosa@gmail.com  idade=11  sexo=M

*** Test Case ***
Caso de teste 01
    Uma keyword qualquer 01

*** Keywords ***
Uma keyword qualquer 01
    Uma subkeyword com argumentos    ${PESSOA.nome}                   ${PESSOA.email}
    ${MENSAGEM_ALERTA}               Uma subkeyword com retorno       ${PESSOA.nome}         ${PESSOA.idade}

Uma subkeyword com argumentos
    [Arguments]                      ${NOME_USUARIO}                  ${EMAIL_USUARIO}
    Log                              Nome Usuário: ${NOME_USUARIO}
    Log                              Email: ${EMAIL_USUARIO}

Uma subkeyword com retorno
    [Arguments]                      ${NOME_USUARIO}                  ${IDADE_USUARIO}
    ${MENSAGEM}                      Set Variable If                  ${IDADE_USUARIO}<18    Não Autorizado! O usuário ${NOME_USUARIO} é menor de idade!
    [Return]                         ${MENSAGEM}