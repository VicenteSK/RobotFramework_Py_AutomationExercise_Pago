*** Settings ***
Library    String

*** Keywords ***
Ingresar credenciales correctas
    Fill Text    input[data-qa="login-email"]    test@test.com
    Fill Text    input[data-qa="login-password"]    test123
    Click        button[data-qa="login-button"]

Verificar login exitoso
    Wait For Elements State    text=Logged in as    visible
