* Settings **
Library     SeleniumLibrary


** Variables **
#variaveis de configuração
${url}                      http://aprendendotestar.com.br/treinar-automacao.php
${Browser}                  chrome

#Elementos da pagina
${reset}                    /html/body/section/section[2]/div/p[3]/a
${inputUsuario}             //input[@name="form_usuario"]
${inputSenha}               //input[@name="form_senha"]  
${inputNome}                //input[@name="form_nome"] 
${botaoSubmit}              //input[@type="submit"]
${prova}                    css=body > section > section.wrapper > div > table > tbody > tr:nth-child(2) > td:nth-child(3)
${botaoApagar}              css=body > section > section.wrapper > div > table > tbody > tr:nth-child(2) > td:nth-child(5) > a

#Dados a serem inseridos
${usuario}                  MRFACHINI
${senha}                    123456
${nome}                     Matheus

** Keywords **

#cenario 1
Dado que acesso o site Aprendendo a Testar
    Open Browser        ${url}          ${Browser}

Quando eu insiro os dados de cadastro
    Input Text          ${inputUsuario}     ${usuario}         
    Input Text          ${inputSenha}       ${senha}
    Input Text          ${inputNome}        ${nome}

E clico no botão de submit
    Click Element       ${botaoSubmit} 

Então o dado tem que estar visivivel
    Wait Until Element is Visible   ${prova}        timeout=10s


#cenario 2
Dado que o botão apagar está visivivel
    Wait Until Element is Visible      ${botaoApagar}     timeout=10s
    Get Text                           xpath=${tabela}//tr[2]/td[3]

E clico no botão apagar
    Click Element                      ${botaoApagar}

Então o navegador deve ser fechado
    Close Browser




** Test Cases **
Cenario 1: Cadastro de usuario
#Steps
    Dado que acesso o site Aprendendo a Testar
    Quando eu insiro os dados de cadastro
    E clico no botão de submit

Cenario 2: Apagar dados
    E clico no botão apagar
    Então o navegador deve ser fechado

