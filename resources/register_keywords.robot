*** Settings ***
Library    String

*** Keywords ***
Completar formulario de registro
    # Ir a Signup/Login
    Click    text=Signup / Login

    # Esperar que cargue el formulario
    Wait For Elements State    input[data-qa="signup-name"]    visible

    # Generar email random
    ${random}=    Generate Random String    6
    ${email}=     Set Variable    test_${random}@mail.com

    Fill Text    input[data-qa="signup-name"]    TestUser
    Fill Text    input[data-qa="signup-email"]    ${email}
    Click        button[data-qa="signup-button"]

    # Formulario de detalles
    Wait For Elements State    input[id="id_gender1"]    visible
    Click        input[id="id_gender1"]

    Fill Text    input[data-qa="password"]    test123

    Select Options By    select[data-qa="days"]      value     10
    Select Options By    select[data-qa="months"]    value     5
    Select Options By    select[data-qa="years"]     value     1990

    Fill Text    input[data-qa="first_name"]      Juan
    Fill Text    input[data-qa="last_name"]       Pérez
    Fill Text    input[data-qa="address"]         Calle falsa 123
    Fill Text    input[data-qa="state"]           RegionX
    Fill Text    input[data-qa="city"]            CiudadX
    Fill Text    input[data-qa="zipcode"]         12345
    Fill Text    input[data-qa="mobile_number"]   987654321

    Click    button[data-qa="create-account"]

Validar registro exitoso
    Wait For Elements State    text=Account Created!    visible
