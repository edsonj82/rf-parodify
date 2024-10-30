*** Settings ***
Library   Browser

*** Test Cases ***
Should play a music
    New Browser     browser=chromium                headless=False
    New Page        https://parodify.vercel.app/
    Get Text        css=.logged-user    contains    Fernando Papito
    
    #xpath= //div[contains(@class,"song")]//h6[text()="Bughium"]/..//button[contains(@class,"play")]
    ${play}        Set Variable        
    ...    //div[contains(@class,"song")]//h6[text()="Bughium"]/..//button[contains(@class,"play")]
    
    ${pause}        Set Variable        
    ...    //div[contains(@class,"song")]//h6[text()="Bughium"]/..//button[contains(@class,"pause")]
    
    Click    ${play}

    Wait For Elements State    ${pause}     visible    2
    Wait For Elements State    ${play}      visible    2

    Sleep    5