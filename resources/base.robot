*Settings*
Documentation    Aquivo principal do projeto de automação

Library    Browser
Library    Collections
Library    OperatingSystem

Resource        ${EXECDIR}/resources/pages/RegisterPage.robot

*Keywords*
Start Session
    New Browser          chromium       False    slowMo=00:00:01
    New Page             about:blank
    Set Viewport Size    1920           1080

    Go To    http://demo.automationtesting.in/Register.html

Finish Test
    Take Screenshot

