*** Settings ***
Library    String
Library    Browser

*** Keywords ***
Completar formulario de registro y guardar variables
    Click    text=Signup / Login
    Wait For Elements State    input[data-qa="signup-name"]    visible

    ${random}=    Generate Random String    6
    ${email}=     Set Variable    test_${random}@mail.com
    Set Suite Variable    ${EMAIL_GENERADO}    ${email}
    Set Suite Variable    ${PASSWORD_USUARIO}    test123

    Fill Text    input[data-qa="signup-name"]    TestUser
    Fill Text    input[data-qa="signup-email"]   ${EMAIL_GENERADO}
    Click        button[data-qa="signup-button"]

    Wait For Elements State    input[id="id_gender1"]    visible
    Click    input[id="id_gender1"]
    Fill Text    input[data-qa="password"]    ${PASSWORD_USUARIO}

    Select Options By    select[data-qa="days"]    value    10
    Select Options By    select[data-qa="months"]  value    5
    Select Options By    select[data-qa="years"]   value    1990

    Fill Text    input[data-qa="first_name"]     Juan
    Fill Text    input[data-qa="last_name"]      Pérez
    Fill Text    input[data-qa="address"]        Calle falsa 123
    Fill Text    input[data-qa="state"]          RegionX
    Fill Text    input[data-qa="city"]           CiudadX
    Fill Text    input[data-qa="zipcode"]        12345
    Fill Text    input[data-qa="mobile_number"]  987654321

    Click    button[data-qa="create-account"]

Validar registro exitoso
    Wait For Elements State    text=Account Created!    visible
    Click    a[data-qa="continue-button"]
    Wait For Elements State    text=Logged in as    visible

Logout usuario
    Click    text=Logout
    Wait For Elements State    text=Signup / Login    visible
