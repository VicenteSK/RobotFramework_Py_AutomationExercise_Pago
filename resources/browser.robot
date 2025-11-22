*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://automationexercise.com

*** Keywords ***
Abrir navegador
    New Browser    chromium    headless=False
    New Context
    New Page    ${URL}

Cerrar navegador
    Close Browser
