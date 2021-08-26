########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################

*** Settings ***
Documentation            Utilizando laçõs de repetição ou apenas loops

*** Variable ***
@{MINHA_LISTA_FRUTAS}    maça                                             abacaxi    banana    morango    laranja

*** Test Case ***
Teste de REPEAT KEYWORD
    [Documentation]            Chama uma mesma keyword várias vezes
    Usando Repeat keyword

Teste de FOR do tipo IN RANGE
    [Documentation]            Faz um loop de um intervalo -1
    Usando FOR IN RANGE
Teste de FOR do tipo IN
    [Documentation]            Faz um loop percorrendo a lista definida
    Usando FOR IN

Teste de FOR do tipo IN ENUMERATE
    [Documentation]            Faz um loop percorrendo a lista definida e percorre o índice também
    Usando FOR IN ENUMERATE

Teste de Sair do FOR
    [Documentation]            Define uma condição de saída do loop, mesmo antes de finalizar
    Usando FOR IN com EXIT FOR LOOP IF

*** Keywords ***
Usando Repeat keyword
    Log To Console             ${\n}
    Repeat Keyword             12x                                                                    Log To Console    Repetindo.

Usando FOR IN RANGE
    Log To Console             ${\n}
    FOR                        ${CONT}                                                                IN RANGE          0                        5
        Log To Console             Minha posição agora é: ${CONT}
        Log                        Minha posição agora é: ${CONT}
    END

Usando FOR IN
    Log To Console             ${\n}
    FOR                        ${CONTFRUTAS}                                                          IN                @{MINHA_LISTA_FRUTAS}
        Log To Console         Minha fruta é: ${CONTFRUTAS}
    END

Usando FOR IN ENUMERATE
    Log To Console             ${\n}
    FOR                        ${INDICE}                                                              ${CONTFRUTAS2}     IN ENUMERATE                       @{MINHA_LISTA_FRUTAS}
        Log To Console         Minha fruta é: ${INDICE} --> ${CONTFRUTAS2}
    END

Usando FOR IN com EXIT FOR LOOP IF
    Log To Console             ${\n}
    FOR                        ${INDICE}                                                              ${CONTFRUTAS3}     IN ENUMERATE                       @{MINHA_LISTA_FRUTAS}
        Log To Console         Minha fruta é: ${INDICE} --> ${CONTFRUTAS3}
        Exit For Loop If       '${CONTFRUTAS3}'=='banana'
    END
