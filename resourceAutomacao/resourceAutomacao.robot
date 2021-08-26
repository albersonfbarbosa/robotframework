<<<<<<< HEAD
*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${URL1}       https://www.discourse.org/
${URL2}       https://www.cesar.school/
${BROWSER}    chrome

*** Keywords ***
SeleniumLibrary.Get
    Text
#### Setup e Teardown
Abrir navegador
    Open BROWSER              about:blank                                                                                                                            ${BROWSER}

Fechar navegador
    Close BROWSER


#### Execução dos testes
########################### Automação 01


Acessar Discourse
    Go to                     https://www.discourse.org/
    Title Should Be           Discourse - Civilized Discussion
Clicar em "Demo"
    #Click Link    xpath=//a[@href="https://try.discourse.org"]
    Click Link                Demo
Fazer o scroll da tela até o final
    sleep                     5
    Execute JavaScript        window.scrollTo(0,document.body.scrollHeight)

########################### Automação 02
Acessar Cesar 2
    Go to                     https://www.cesar.school/
Clicar em "Blog"
    Click Link                xpath=(//a[@href="https://www.cesar.school/blog/"])[2]
Ir para segunda página
    Sleep                     5
    Click Link                xpath=//a[@href="https://www.cesar.school/blog/page/2/"]
Capturar as informações "Título" e "Data de Publicação" do segundo post
    Get Text                  xpath=//*[@id="post-26374"]/div/div/header/h2/a
    Get Text                  xpath=//*[@id="post-26374"]/div/div/div[1]/a/div/span/time[1]/span[2]

########################### Automação 03
Acessar Cesar 3
    Go to                     https://www.cesar.school/
Clicar em "Blog" 3
    Sleep                     5
    Click Link                xpath=(//a[@href="https://www.cesar.school/blog/"])[2]
Ir para segunda página 3
    Click Link                xpath=//a[@href="https://www.cesar.school/blog/page/2/"]
Capturar as informações "Título" e "Autor" do terceiro post
    Get Text                  xpath=//*[@id="post-26302"]/div/div/header/h2/a
    Click Link                xpath=(//a[@href="https://www.cesar.school/tres-salas-virtuais-mais-de-100-participantes-e-quatro-horas-de-muito-aprendizado/"])[4]
    Element Should Contain    xpath=//*[@id="post-26302"]/div/header/div[2]/div/span[2]/a/span [@ class = "author-name"]                                             Comunicação School
    Get Text                  xpath=//*[@id="post-26302"]/div/header/div[2]/div/span[2]/a/span [@ class = "author-name"]
Dar o scrool da tela até o final e capturar endereço
    Sleep                     5
    Execute JavaScript        window.scrollTo(0,document.body.scrollHeight)
    Element Should Contain    css=body > div.onde > p                                                                                                                Rua Bione
############################ Saídas no Terminal
    #Log to Console            xpath=//*[@id="post-26374"]/div/div/header/h2/a
=======
*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${URL1}       https://www.discourse.org/
${URL2}       https://www.cesar.school/
${BROWSER}    chrome

*** Keywords ***
SeleniumLibrary.Get
    Text
#### Setup e Teardown
Abrir navegador
    Open BROWSER              about:blank                                                                                                                            ${BROWSER}

Fechar navegador
    Close BROWSER


#### Execução dos testes
########################### Automação 01


Acessar Discourse
    Go to                     https://www.discourse.org/
    Title Should Be           Discourse - Civilized Discussion
Clicar em "Demo"
    #Click Link    xpath=//a[@href="https://try.discourse.org"]
    Click Link                Demo
Fazer o scroll da tela até o final
    sleep                     5
    Execute JavaScript        window.scrollTo(0,document.body.scrollHeight)

########################### Automação 02
Acessar Cesar 2
    Go to                     https://www.cesar.school/
Clicar em "Blog"
    Click Link                xpath=(//a[@href="https://www.cesar.school/blog/"])[2]
Ir para segunda página
    Sleep                     5
    Click Link                xpath=//a[@href="https://www.cesar.school/blog/page/2/"]
Capturar as informações "Título" e "Data de Publicação" do segundo post
    Get Text                  xpath=//*[@id="post-26374"]/div/div/header/h2/a
    Get Text                  xpath=//*[@id="post-26374"]/div/div/div[1]/a/div/span/time[1]/span[2]

########################### Automação 03
Acessar Cesar 3
    Go to                     https://www.cesar.school/
Clicar em "Blog" 3
    Sleep                     5
    Click Link                xpath=(//a[@href="https://www.cesar.school/blog/"])[2]
Ir para segunda página 3
    Click Link                xpath=//a[@href="https://www.cesar.school/blog/page/2/"]
Capturar as informações "Título" e "Autor" do terceiro post
    Get Text                  xpath=//*[@id="post-26302"]/div/div/header/h2/a
    Click Link                xpath=(//a[@href="https://www.cesar.school/tres-salas-virtuais-mais-de-100-participantes-e-quatro-horas-de-muito-aprendizado/"])[4]
    Element Should Contain    xpath=//*[@id="post-26302"]/div/header/div[2]/div/span[2]/a/span [@ class = "author-name"]                                             Comunicação School
    Get Text                  xpath=//*[@id="post-26302"]/div/header/div[2]/div/span[2]/a/span [@ class = "author-name"]
Dar o scrool da tela até o final e capturar endereço
    Sleep                     5
    Execute JavaScript        window.scrollTo(0,document.body.scrollHeight)
    Element Should Contain    css=body > div.onde > p                                                                                                                Rua Bione
############################ Saídas no Terminal
    #Log to Console            xpath=//*[@id="post-26374"]/div/div/header/h2/a
>>>>>>> eefb3fec6a1fbf9fdac42cf02e181be2ad767f9d
    #Log to Console            xpath=//*[@id="post-26374"]/div/div/div[1]/a/div/span/time[1]/span[2]