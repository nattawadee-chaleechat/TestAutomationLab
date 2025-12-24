*** Settings ***
Documentation     A test suite with a single test for Invalid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource    resource.robot
Library    SeleniumLibrary

*** Test Cases ***
Empty First Name
    Open Workshop Registration Page
    Input lastname    Sodyod
    Input organization    CS KKU
    Input email    somyod@kkumail.com
    Input phone    091-001-1234
    Submit Registration
    Page Should Contain    Please enter your first name!!
    Capture Page Screenshot    Empty_First_Name.png
    Close Browser Page

Empty Last Name
    Open Workshop Registration Page
    Input firstname    Sodyod
    Input organization    CS KKU
    Input email    somyod@kkumail.com
    Input phone    091-001-1234
    Submit Registration
    Page Should Contain    Please enter your last name!!
    Capture Page Screenshot    Empty_Last_Name.png
    Close Browser Page

Empty First Name and Last Name
    Open Workshop Registration Page
    Input organization    CS KKU
    Input email    somyod@kkumail.com
    Input phone    091-001-1234
    Submit Registration
    Page Should Contain    Please enter your name!!
    Capture Page Screenshot    Empty_First_Last_Name.png
    Close Browser Page

Empty Email
    Open Workshop Registration Page
    Input firstname    Somyod
    Input lastname    Sodsai
    Input organization    CS KKU
    Input phone    091-001-1234
    Submit Registration
    Page Should Contain    Please enter your email!!
    Capture Page Screenshot    Empty_Email.png
    Close Browser Page

Empty Phone Number
    Open Workshop Registration Page
    Input firstname    Somyod
    Input lastname    Sodsai
    Input organization    CS KKU
    Input email    somyod@kkumail.com
    Submit Registration
    Page Should Contain    Please enter your phone number!!
    Capture Page Screenshot    Empty_Phone_Number.png
    Close Browser Page

Invalid Phone Number
    Open Workshop Registration Page
    Input firstname    Somyod
    Input lastname    Sodsai
    Input organization    CS KKU
    Input email    somyod@kkumail.com
    Input phone    1234
    Submit Registration
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)
    Capture Page Screenshot    Invalid_Phone_Number.png
    Close Browser Page