*** Keywords ***
Buscar productos
    [Arguments]    ${termino}
    Click    text=Products
    Wait For Elements State    input[id="search_product"]    visible

    Fill Text    input[id="search_product"]    ${termino}
    Click        button[id="submit_search"]

Verificar productos encontrados
    # Esperar que exista al menos un resultado
    Wait For Elements State    css=.product-image-wrapper >> nth=0    visible

    # Contar todos los productos encontrados
    ${cantidad}=    Get Element Count    css=.product-image-wrapper

    Log    Se encontraron ${cantidad} productos
    Should Be True    ${cantidad} > 0
