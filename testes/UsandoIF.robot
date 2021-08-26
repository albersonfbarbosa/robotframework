########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################

*** Variable ***
@{FRUTAS}    maça    banana    uva    abacaxi

*** Test Case ***
Caso de teste exemplo 01
    Rodando keyword dada uma condição = true
    Rodando keyword dada uma condição = false
    Armazenando um valor em uma variável dada uma condição

*** Keywords ***
Rodando keyword dada uma condição = true
    Run Keyword If                                            '${FRUTAS[1]}' == 'banana'              Log                      O item número 1 é banana!!!

Rodando keyword dada uma condição = false
    Run Keyword Unless                                        '${FRUTAS[1]}' == 'banana' == 'maça'    Log                      O item número 1 não é uma maça!!

Armazenando um valor em uma variável dada uma condição
    ${VAR}                                                    Set Variable If                        '${FRUTAS[2]}' == 'uva'    uva
    Log                                                       Minha variável VAR é uma ${VAR}!!