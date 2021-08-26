<<<<<<< HEAD
########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################

*** Settings ***
Resource           ../resourceAutomacao/resourceAutomacao.robot
Test Setup         Abrir navegador
Test Teardown      Fechar navegador

*** Variables ***
${URL}      https://try.discourse.org
${BROWSER}  chrome

*** Test Case ***
Cenário de Automação 01
    Dado que estou na página home do site
    Quando eu clico na opção "Demo"
    Então será aberto uma nova janela e será possível fazer scroll na tela até o final

# Demais BDD que podem ser implementados

#Caso de Teste: Automação 02
#    Dado que estou na página home do site
#    Quando eu clico em "Blog"
#    Então será capturado as informações "Título" e "Data da Publicação" do segundo post

#Caso de Teste: Automação 03
#    Dado que estou na página home do site
#    Quando eu clico em "Blog"
#    Então será capturado as informações "Título" e "Autor" do terceiro post e fazer o scrool da tela até o final

*** Keywords ***
Dado que estou na página home do site
    Acessar a página do site
Quando eu clico na opção "Demo"
    Clicar em "Demo"
Então será aberto uma nova janela e será possível fazer scroll na tela até o final
    Fazer o scroll da tela até o final
=======
########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################

*** Settings ***
Resource           ../resourceAutomacao/resourceAutomacao.robot
Test Setup         Abrir navegador
Test Teardown      Fechar navegador

*** Variables ***
${URL}      https://try.discourse.org
${BROWSER}  chrome

*** Test Case ***
Cenário de Automação 01
    Dado que estou na página home do site
    Quando eu clico na opção "Demo"
    Então será aberto uma nova janela e será possível fazer scroll na tela até o final

# Demais BDD que podem ser implementados

#Caso de Teste: Automação 02
#    Dado que estou na página home do site
#    Quando eu clico em "Blog"
#    Então será capturado as informações "Título" e "Data da Publicação" do segundo post

#Caso de Teste: Automação 03
#    Dado que estou na página home do site
#    Quando eu clico em "Blog"
#    Então será capturado as informações "Título" e "Autor" do terceiro post e fazer o scrool da tela até o final

*** Keywords ***
Dado que estou na página home do site
    Acessar a página do site
Quando eu clico na opção "Demo"
    Clicar em "Demo"
Então será aberto uma nova janela e será possível fazer scroll na tela até o final
    Fazer o scroll da tela até o final
>>>>>>> eefb3fec6a1fbf9fdac42cf02e181be2ad767f9d
