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

${button_0}          //button[@id="add-to-cart-sauce-labs-bike-light"]
${button_1}         //button[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
${button_2}         //button[@id="add-to-cart-sauce-labs-onesie"]
${button_3}         //button[@id="remove-test.allthethings()-t-shirt-(red)"]
${button_4}         //button[@id="add-to-cart-sauce-labs-backpack"]
${button_5}         //button[@id="add-to-cart-sauce-labs-fleece-jacket"]

#Botoes para remover do carrinho

${remove_0}          //button[@id="remove-sauce-labs-bike-light"]
${remove_1}          //button[@id="remove-sauce-labs-bolt-t-shirt"]
${remove_2}          //button[@id="remove-sauce-labs-onesie"]
#${remove_3}         //button[@id="remove-test.allthethings()-t-shirt-(red)"]
${remove_4}         //button[@id="remove-sauce-labs-backpack"]
${remove_5}         //button[@id="remove-sauce-labs-fleece-jacket"]
                   


#voltar para tela inicial

${button_back}            //button[@id="back-to-products"]
${a_carrinho}            //a[@class="shopping_cart_link"]
${button_continue}      //button[@id="continue-shopping"]




***Keywords***

Dado que eu visualize os produtos do site Swag Labs
    Maximize Browser Window

E selecione a bike light     
    Click Element        ${a_item0} 

E adicione no carrinho a bike light  
    Click Element         ${button_0}
     

E busque mais produtos 
    Click Element        ${button_back}

E selecione a t-shirt     
    Click Element        ${a_item1} 

E adicione no carrinho a t-shirt 
    Click Element        ${button_1} 

E busque mais produtos 1
    Click Element        ${button_back}    

E selecione a onesie     
    Click Element        ${a_item2} 

E adicione no carrinho a onesie 
    Click Element         ${button_2} 

#E busque mais produtos 2
    #Click Element        ${button_back}    

#E selecione a t-shirt-red      
    #Click Element         ${a_item3} 

#E adicione no carrinho a t-shirt-red
    #Click Element         ${button_3} 


E busque mais produtos 3
    Click Element        ${button_back}    

E selecione a bolsa Sauce Labs Backpack      
    Click Element        ${a_item4} 

E adicione no carrinho a bolsa Sauce Labs Backpack
    Click Element         ${button_4} 

E busque mais produtos 4
    Click Element        ${button_back}    

E selecione a fleece-jacket      
    Click Element        ${a_item5} 

E adicione no carrinho a fleece-jacket
    Click Element         ${button_5}     

E eu acesse meu carrinho
    Click Element        ${a_carrinho}    

E removo todos os itens 
    click Element         ${remove_0}
    click Element         ${remove_1}  
    click Element         ${remove_2}  
    #click Element         ${remove_3}  
    click Element         ${remove_4}  
    click Element         ${remove_5}    

E volte para comprar outro produto
    Click Element         ${button_continue}

E clico novamente na fleece-jacket      
    Click Element        ${a_item5} 

E adiciono no carrinho novamente a fleece-jacket 
    Click Element         ${button_5}     

E eu acesse meu carrinho novamente
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

TC01 - Remover itens do carrinho e comprar novamente

    Dado que eu visualize os produtos do site Swag Labs
    E selecione a bike light     
    E adicione no carrinho a bike light
    E busque mais produtos
    E selecione a t-shirt     
    E adicione no carrinho a t-shirt
    E busque mais produtos 1
    E selecione a onesie     
    E adicione no carrinho a onesie
    #E busque mais produtos 2
    #E selecione a t-shirt-red      
    #E adicione no carrinho a t-shirt-red
    E busque mais produtos 3
    E selecione a bolsa Sauce Labs Backpack      
    E adicione no carrinho a bolsa Sauce Labs Backpack
    E busque mais produtos 4
    E selecione a fleece-jacket      
    E adicione no carrinho a fleece-jacket
    E eu acesse meu carrinho
    E removo todos os itens 
    E volte para comprar outro produto
    E adiciono no carrinho novamente a fleece-jacket      
    E clico novamente na fleece-jacket 
    E eu acesse meu carrinho novamente
    E confirme meus intes selecionados ao clicar checkout
    E informe meus dados e clico em continue
    E visualizo o total da compra
    Então, finalizo a compra e Fecho o navegador
    

   

