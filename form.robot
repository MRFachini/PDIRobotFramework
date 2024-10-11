** Settings **
Library     SeleniumLibrary



** Variables **
${inputName}                id:firstName
${inputLastName}            id:lastName
${inputUserEmail}           id:userEmail
${inputGender}              id:gender-radio-1
${inputMobile}              id:userNumber
${inputDateOfBirth}         id:dateOfBirthInput
${subjetcInputComplete}     id:subjectsContainer
${hobbieCheckBox}           id:hobbies-checkbox-1
${textAreaAdress}           id:currentAddress
${buttonSubmit}             id:submit

** Keywords **
Abrir navegador no site do formulário
    Open Browser        https://demoqa.com/automation-practice-form     chrome

Preencher dados
    Input Text      ${inputName}            Matheus    
    Input Text      ${inputLastName}        Fachini
    Input Text      ${inputUserEmail}       teste@robot.com.Browser
    Input Text      ${inputMobile}          16999998888
    Input Text      ${textAreaAdress}       Teste Adress Campo TextArea



Clicar submit
     Click Element   ${buttonSubmit}


Fechar navegador
    Close Browser

** Test Cases **
Cenário 1: Preencher formulário
    Abrir navegador no site do formulário
    Preencher dados
    Fechar navegador


