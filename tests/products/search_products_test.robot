*** Settings ***
Resource    ../../resources/products_keywords.robot
Resource    ../../resources/browser.robot

*** Test Cases ***
TC002 - Búsqueda de productos exitosa
    Abrir navegador
    Buscar productos    dress
    Verificar productos encontrados
    Cerrar navegador
