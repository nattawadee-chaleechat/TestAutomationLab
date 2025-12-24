*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource    resource.robot
Library    SeleniumLibrary

*** Test Cases ***
Register Success
    Open Workshop Registration Page
    Input firstname    Somyod
    Input lastname    Sodsai
    Input organization    CS KKU
    Input email    somyod@kkumail.com
    Input phone    091-001-1234
    Submit Registration
    Success Should Be Open
    Capture Page Screenshot    Register_Success.png
    Close Browser Page

Register Success No Organization Info
    Open Workshop Registration Page
    Input firstname    Somyod
    Input lastname    Sodsai
    Input email    somyod@kkumail.com
    Input phone    091-001-1234
    Submit Registration
    Success Should Be Open
    Capture Page Screenshot    Register_Success_No_Organization_Info.png
    Close Browser Page