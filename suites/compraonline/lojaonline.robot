***Settings***
Resource       ../../resources/main.robot
Test Setup      Acessar o site e Logar

***Variables***
#itens de compra 
${a_item0}     //a[@id="item_0_title_link"]
${a_item1}     //a[@id="item_1_title_link"]
${a_item2}     //a[@id="item_2_title_link"]
${a_item3}     //a[@id="item_3_title_link"]
${a_item4}     //a[@id="item_4_title_link"]
${a_item5}     //a[@id="item_5_title_link"]


#botoes para adicionar no carrinho

${button_0}         //button[@id="add-to-cart-sauce-labs-bike-light"
${button_1}         //button[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
${button_2}         //button[@id="add-to-cart-sauce-labs-onesie"]
${button_3}         //button[@id="remove-test.allthethings()-t-shirt-(red)"]
${button_4}         //button[@id="add-to-cart-sauce-labs-backpack"]
${button_5}         //button[@id="add-to-cart-sauce-labs-fleece-jacket"]

#voltar para tela inicial

${button_back}      //button[@id="back-to-products"]
${a_carrinho}       //a[@class="shopping_cart_link"]



***Keywords***

Dado que eu visualize os produtos do site Swag Labs
    Maximize Browser Window

E selecione a bolsa Sauce Labs Backpack      
    Click Element        ${a_item4} 

E adicione no carrinho 
    Click Element         ${button_4} 

E busque mais produtos
    Click Element        ${button_back}

E selecione a jaqueta Sauce Labs Fleece Jacket     
    Click Element        ${a_item5} 

E adicione no carrinho 2
    Click Element        ${button_5}  

E eu acesse meu carrinho

    Click Element        ${a_carrinho}    

E confirme meus intes selecionados ao clicar checkout
    Click Element       ${button_checkout}  

E informe meus dados e clico em continue
    Input Text      ${input_first_name}       Dayene  
    Input Text      ${input_last_name}        Sousa
    Input Text      ${input_postal}           50680000
     sleep                4s

E visualizo o total da compra
    Click Element       ${input_continue}
    sleep                2s

Então, finalizo a compra e Fecho o navegador
    Click Element       ${button_finisht}
     sleep                4s
     Close Browser   

***Test Cases***

TC01 - Selecionar itens na loja

    Dado que eu visualize os produtos do site Swag Labs
    E selecione a bolsa Sauce Labs Backpack
    E adicione no carrinho 
    E busque mais produtos
    E selecione a jaqueta Sauce Labs Fleece Jacket
    E adicione no carrinho 2
    E eu acesse meu carrinho
    E confirme meus intes selecionados ao clicar checkout
    E informe meus dados e clico em continue
    E visualizo o total da compra
    Então, finalizo a compra e Fecho o navegador

   

