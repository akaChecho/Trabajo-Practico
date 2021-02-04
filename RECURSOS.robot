System.setProperty("webdriver.chrome.driver", "path\\C:\Users\wr_i01502\AppData\Local\Programs\Python\Python39\Scripts\chromedriver.exe")
*** Setting ***
Documentation       Robot de prueba
Library     SeleniumLibrary
Library     String

*** Variables ***
${texo_buscar}  Caso de prueba
${navegador}    chrome
${URL1}    https://www.google.com/
${URL2}    http://automationpractice.com/index.php
${Seleccion1}    Women
${Seleccion2}    Dresses
*** Keywords ***
Abre_Espera_Browser
    Open Browser    ${URL2}     ${navegador}
    #    Wait Until Element Is Visible   xpath=//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input

Select_Women
    Click Element   xpath=//*[@id="block_top_menu"]/ul/li[1]/a
    Title Should Be    ${Seleccion1} - My Store

Select_Dresses
    Click Element   xpath=//*[@id="block_top_menu"]/ul/li[2]/a
    Title Should Be    ${Seleccion2} - My Store


