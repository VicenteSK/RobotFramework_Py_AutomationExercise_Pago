*** Settings ***
Resource    ../resources/browser.robot
Resource    ../resources/register_keywords.robot
Resource    ../resources/login_keywords.robot
Library     String

Suite Setup       Abrir navegador
Suite Teardown    Cerrar navegador

*** Test Cases ***
TC000 - Registrar usuario dinámico
    Completar formulario de registro y guardar variables
    Validar registro exitoso
    Logout usuario

TC001 - Login correcto
    Ingresar credenciales correctas
    Verificar login exitoso
    Logout usuario

TC002 - Login con correo incorrecto
    Ingresar credenciales    wrong_email@test.com    ${PASSWORD_USUARIO}
    Verificar error de login

TC003 - Login con password incorrecta
    Ingresar credenciales    ${EMAIL_GENERADO}    wrongpass
    Verificar error de login

TC004 - Login con campos vacíos
    Ingresar credenciales    ${EMPTY}    ${EMPTY}
    Verificar error por campos vacios