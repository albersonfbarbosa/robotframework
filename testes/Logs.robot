########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################

*** Settings ***
Documentation    Suíte para mostrar o uso e os tipos de LOGs nos testes
...              Os LOGs ajudam entender como o que foi programado está se comportando,
...              Além de mostrar muito mais informações que ajudamn a analisar.

Library          SeleniumLibrary

*** Variable ***
@{FRUTAS}        manga                                                                     banana    uva    abacaxi

*** Test Case ***
Caso de teste 01
    Usando o LOG para mensagens
    Usando o LOG Console
    Usando screenshot

*** Keywords ***
Usando o LOG para mensagens
    Log                            Minha mensagem de LOG
    ${VAR}                         Set Variable                                                            variável qualquer
    Log                            Posso logar uma ${VAR} no meio de um log

Usando o LOG Console
    Log To Console                 Saída no console/terminal.
    Log Many                       Posso logar minha lista completa @{FRUTAS}
    Log                            Posso logar somente itens da minha lista ${FRUTAS[0]} - ${FRUTAS[2]}

Usando screenshot
    Log                            Nos testes web, podemos logar screenshot com a SeleniumLibrary
    Open Browser                   http://google.com                                                       firefox
    Capture Page Screenshot        nome_como_quero.png
    Close Browser
