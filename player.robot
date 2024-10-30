*** Settings ***
Library   Browser

*** Test Cases ***
Shoud play a music
    New Browser     browser=chromium                headless=False
    New Page        https://parodify.vercel.app/
    Get Text        css=.logged-user    contains    Fernando Papito

    Sleep    2