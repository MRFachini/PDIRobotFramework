* Settings **
Library     SeleniumLibrary



** Variables **
#Dados do teste
${nomeMusica}       Don't Call me White - NOFX

#Variaveis de configuração
${url}      https://www.youtube.com/ 
${Browser}  chrome

#Elementos
${inputPesquisa}                //input[@id="search"]
${botaoPesquisa}                //button[@id="search-icon-legacy"]
${resultadoPesquisaClicar}      css=#video-title > yt-formatted-string
${prova}                        css=#top-level-buttons-computed > ytd-button-renderer > yt-button-shape > button > yt-touch-feedback-shape > div



** Keywords **
#Keywords em Bdd

Dado que eu acesso o site do youtube
    Open Browser        ${url}          ${Browser}       

Quando eu digito o nome da musica
    Input Text          ${inputPesquisa}    ${nomeMusica}

E clico no botão buscar
    Click Element       ${botaoPesquisa}

E clico na primeira musica da lista
    Click Element       ${resultadoPesquisaClicar}

Então o vídeo é executado
    Sleep   1s
    Close Browser

Então o elemento deve aparecer
    [Arguments]     ${element}
    Wait Until Element is Visible   ${element}        timeout=10s


** Test Cases **
Cenário 1: Acessar youtuber via BDD
    Dado que eu acesso o site do youtube
    Quando eu digito o nome da musica
    E clico no botão buscar
    Então o elemento deve aparecer  ${resultadoPesquisaClicar}
    E clico na primeira musica da lista
    Então o vídeo é executado

