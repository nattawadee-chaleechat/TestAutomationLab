*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library           SeleniumLibrary

*** Variables ***
${SERVER}    http://localhost:7272
${BROWSER}   Chrome
${DELAY}     1

*** Keywords ***
Open Workshop Registration Page
    [Documentation]    Open the Registration.html page in Chrome
    Open Browser    ${SERVER}/Registration.html    ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Page Should Contain    Workshop Registration

Input firstname
    [Arguments]    ${firstname}
    Input Text    id:firstname    ${firstname}

Input lastname
    [Arguments]    ${lastname}
    Input Text    id:lastname    ${lastname}

Input organization
    [Arguments]    ${organization}=${EMPTY}
    Input Text    id:organization    ${organization}

Input email
    [Arguments]    ${email}
    Input Text    id:email    ${email}

Input phone
    [Arguments]    ${phone}
    Input Text    id:phone    ${phone}

Submit Registration
    Click Button    id:registerButton

Success Should Be Open
    [Documentation]    Verify Success.html page and success messages
    Title Should Be    Success
    Page Should Contain    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.

Close Browser Page
    [Documentation]    Close the browser after test
    Close Browser