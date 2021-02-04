*** Settings ***
Resource     RECURSOS.robot


*** Test Case ***
Prueba001
    Abre_Espera_Browser
#    Input Text      xpath=//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input     ${URL2}
#    Click Element       xpath=//*[@id="hplogo"]
#    Click Element       xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
#    Title Should Be     ${texo_buscar} - Buscar con Google
#    Page Should Contain     ${texo_buscar}
#    Run Keyword IF  '${Seleccion1}'=='Women'    Select_Women    ELSE    Select_Dresses
    #    Else    Select_Dresses
     #Close Browser

    Set Global Variable     @{Nombre_contenedores}  //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a
        FOR    ${LOOP}       IN  @{Nombre_contenedores}
            Wait Until Element Is Visible   xpath=@{Nombre_contenedores}
            #run Keyword IF      '@{Nombre_contenedores}' == '//*[@id="homefeatured"]/li[2]/div/div[2]/h5/a'       EXIT LOOP
            #Click Element   xpath=@{Nombre_contenedores}
            #Wait Until Element Is Visible   xpath=//*[@id="homefeatured"]/li[1]/div/div[1]/div/a[1]/img
            #Click Element       xpath=//*[@id="header_logo"]/a/img
        END
    CLose Browser


xpath=['//*[@id="homefeatured"]/li[1]/div/div[2]/h5/a']'
xpath=//*[@id="homefeatured"]/li[1]/div/div[2]/h5/a
