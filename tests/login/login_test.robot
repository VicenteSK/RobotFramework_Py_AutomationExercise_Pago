*** Settings ***
Resource    ../../resources/browser.robot
Resource    ../../resources/login_keywords.robot

Suite Setup       Abrir navegador
Suite Teardown    Cerrar navegador

*** Test Cases ***
TC001 - Login exitoso
    Ingresar credenciales correctas
    Verificar login exitoso
