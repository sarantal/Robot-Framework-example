*** Settings ***
Library           Selenium2Library

*** Variables ***
${email}          OHTE2020@imaginary.fi
${passwd}         AutomationPractice
${create_email}    hiphei+1@foobar.fi
${homepage}       http://automationpractice.com/index.php
${browser}        chrome

*** Keywords ***
End Test
    Sleep    2
    Close Browser
