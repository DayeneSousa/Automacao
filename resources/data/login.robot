*** Settings ***
Resource    ../main.robot


*** Variables ***

#elementos da pagina de login
&{logar}
${input_user}           id:user-name
${input_password}       name:password
${input_login}           //input[@id="login-button"]


