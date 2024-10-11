** Settings **
Library  SeleniumLibrary

** Variables **
#Variaveis de configuração
${url}      https://phptravels.com/
${Browser}  chrome

#Elementos
${buttonTryDemo}                //*[@id="swup"]/div[1]/div[1]/div/div[1]/a
${botaoPesquisa}                //button[@id="search-icon-legacy"]
${resultadoPesquisaClicar}      css=#video-title > yt-formatted-string

** Keywords **

As I Open PDI site
    Open Browser    ${url}    ${Browser}
    
ANd I Click Try Demo 
    Click Element   ${buttonTryDemo}



** Test Cases **

Cenário 1: Acessando site para o PDI
    As I Open PDI site

Scenario 2: Access submit form for insert registration
    As I Open PDI site
    ANd I Click Try Demo 
    


