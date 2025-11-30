*** Settings ***
Library    Browser

*** Keywords ***

Ingresar credenciales
    [Arguments]    ${email}    ${password}
    Click    text=Signup / Login
    Wait For Elements State    input[data-qa="login-email"]    visible
    Fill Text    input[data-qa="login-email"]       ${email}
    Fill Text    input[data-qa="login-password"]    ${password}
    Click        button[data-qa="login-button"]

Ingresar credenciales correctas
    Ingresar credenciales    ${EMAIL_GENERADO}    ${PASSWORD_USUARIO}

Verificar login exitoso
    Wait For Elements State    //a[contains(text(),"Logged in as")]    visible

Verificar error de login
    Wait For Elements State    text=Your email or password is incorrect!    visible

Verificar error por campos vacios
    # NO debe lograrse el login exitoso
    Wait For Elements State    text=Logged in as    hidden    timeout=3s

    # Debe permanecer en la misma página de login
    Wait For Elements State    input[data-qa="login-email"]    visible

    # Validamos que el usuario NO salió de la página
    Log    Error por campos vacíos validado correctamente

