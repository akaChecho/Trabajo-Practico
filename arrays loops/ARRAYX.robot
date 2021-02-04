System.setProperty("webdriver.chrome.driver", "path\\C:\Users\wr_i01502\AppData\Local\Programs\Python\Python39\Scripts\chromedriver.exe")
*** Setting ***
Library     String
Library     SeleniumLibrary
*** Variables ***
${navegador}    chrome
${URL2}    automationpractice.com/index.php
${scheme1}    http://
${scheme2}    https://
${NOSSL_URL}    ${scheme1}${URL2}
${SSL_URL}    ${scheme1}${URL2}

*** Keywords ***
Abre_Espera_Browser
    Open Browser    ${NOSSL_URL}     ${navegador}

*** Test Case ***
CASO PRUEBA02
    Open Browser
    #Set Global Variable     @{Nombre_contemedores}      //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[2]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[3]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[4]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[5]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[6]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[7]/div/div[2]/h5/a
    #:FOR    ${Nombre_Contenedor}       IN  @{Nombre_contemedores}
    #\   RUN Keyword IF '${Nombre_Contenedor}' == '//*[@id="homefeatured"]/li[7]/div/div[2]/h5/a' EXIT LOOP
    #\   Click Element   xpath:@{Nombre_contemedores}
    #\   Wait Until Element Is Visible   xpath://*[@id="homefeatured"]/li[1]/div/div[1]/div/a[1]/img
    #\   Click Element   xpath://*[@id="header_logo"]/a/img
    CLose Browser










