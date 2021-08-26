<<<<<<< HEAD
########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################

*** Settings ***
Documentation        Exemplo de tipos de variáveis: SIMPLES, LISTAS e DICIONÁRIOS

*** Variable ***
#Simples
${GLOBAL_SIMPLES}    Vamos ver os tipos de variáveis no robot!

#Tipo Lista
@{FRUTAS}            morango                                                         uva                                     banana          maçã    pêra

#Tipo Dicionário
&{PESSOA}            nome=Alberson Barbosa                                           email=alberson.barbosa@gmail.Comment    profissao=QA

*** Test Case ***
Caso de teste 01
    Uma keyword qualquer 01

*** Keywords ***

Uma keyword qualquer 01
    Log                                ${GLOBAL_SIMPLES}
    Log                                Tem que ser maçã: ${FRUTAS[3]} e Morango: ${FRUTAS[0]}

