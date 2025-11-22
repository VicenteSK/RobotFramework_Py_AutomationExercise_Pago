*** Settings ***
Resource    ../../resources/browser.robot
Resource    ../../resources/register_keywords.robot

Suite Setup       Abrir navegador
Suite Teardown    Cerrar navegador

*** Test Cases ***
TC000 - Registro exitoso
    Completar formulario de registro
    Validar registro exitoso
