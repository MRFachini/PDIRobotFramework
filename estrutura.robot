** Settings **
Library     SeleniumLibrary



** Variables **
${variavel1}        teste
${variavel2}        hhhh
${variavel3}        123456


** Keywords **
Abrir Site do google
    Open Browser        https://www.google.com.br/      chrome      timeout=5s

Fechar Navegador
    Close Browser

Abrir Site da globo
    Open Browser        https://www.globo.com/          chrome      timeout=5s


** Test Cases **

Cenário 1: Teste de abrir navegador
    Abrir Site do google
    Fechar Navegador

Cenário 2: Teste abrir globo
    Abrir Site da globo
    Fechar Navegador
