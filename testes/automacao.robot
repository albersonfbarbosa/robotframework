<<<<<<< HEAD
########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################
*** Settings ***
Resource         ../resourceAutomacao/resourceAutomacao.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Case ***
Caso de Teste: Automação 01
    [Setup]                                                                    Abrir navegador
    Acessar Discourse
    Clicar em "Demo"
    Fazer o scroll da tela até o final
    [Teardown]                                                                 Fechar navegador

Caso de Teste: Automação 02
    Acessar Cesar 2
    Clicar em "Blog"
    Ir para segunda página
    Capturar as informações "Título" e "Data de Publicação" do segundo post

Caso de Teste: Automação 03
    Acessar Cesar 3
    Clicar em "Blog" 3
    Ir para segunda página 3
    Capturar as informações "Título" e "Autor" do terceiro post
    Dar o scrool da tela até o final e capturar endereço

=======
########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################
*** Settings ***
Resource         ../resourceAutomacao/resourceAutomacao.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Case ***
Caso de Teste: Automação 01
    [Setup]                                                                    Abrir navegador
    Acessar Discourse
    Clicar em "Demo"
    Fazer o scroll da tela até o final
    [Teardown]                                                                 Fechar navegador

Caso de Teste: Automação 02
    Acessar Cesar 2
    Clicar em "Blog"
    Ir para segunda página
    Capturar as informações "Título" e "Data de Publicação" do segundo post

Caso de Teste: Automação 03
    Acessar Cesar 3
    Clicar em "Blog" 3
    Ir para segunda página 3
    Capturar as informações "Título" e "Autor" do terceiro post
    Dar o scrool da tela até o final e capturar endereço

>>>>>>> eefb3fec6a1fbf9fdac42cf02e181be2ad767f9d
*** Keywords ***