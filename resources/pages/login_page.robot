**Settings**
Resource       ../main.robot

***Variables***

${input_user}            id:user-name
${input_password}        name:password
${input_login}           //input[@id="login-button"]


*** Keywords ***

Dado que eu acesso o site Saucedemo
    Open Browser     ${URL}    ${browser}
    wait until element is visible   ${input_user}     
  
 E informe o login
    input text    ${input_user}         standard_user
    sleep                               2s 

E informe a senha
    input text     ${input_password}        secret_sauce
    sleep                               2s

Então, sera aberto o site com os itens de vendas
    Click element       ${input_login}
     sleep               2s  