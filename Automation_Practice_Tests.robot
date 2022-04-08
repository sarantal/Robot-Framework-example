*** Settings ***
Library           Selenium2Library
Resource          resource.robot

*** Test Cases ***
Search
    Open Browser    ${homepage}    ${browser}
    Input Text    search_query_top    shirt
    Click Button    submit_search
    Sleep    2
    Page Should Contain    1 result has been found.
    End Test

Sign In
    Open Browser    ${homepage}    ${browser}
    Click Element    class:login
    Sleep    3
    Input Text    email    ${email}
    Input Password    passwd    ${passwd}
    Click Element    SubmitLogin
    Sleep    2
    Page Should Contain    Welcome to your account.
    End Test

Create an Account
    Open Browser    ${homepage}    ${browser}
    Click Element    class:login
    Sleep    2
    Input Text    email_create    ${create_email}
    Click Element    SubmitCreate
    Sleep    2
    Page Should Contain    Create an account
    Click Element    id_gender1
    Input Text    customer_firstname    Etunimi
    Input Text    customer_lastname    Sukunimi
    Input Text    passwd    salasana
    Input Text    firstname    Etunimi
    Input Text    lastname    Sukunimi
    Input Text    address1    Testitie 1 A 1
    Input Text    city    Oulu
    Select From List By Value    id_state    2
    Input Text    postcode    99501
    Input Text    phone_mobile    555-1234567
    Click Element    submitAccount
    Sleep    2
    Page Should Contain    Welcome to your account.
    End Test

Add Item to Shopping Cart
    Open Browser    ${homepage}    ${browser}
    Click Element    class:product_img_link
    Sleep    2
    Click Element    id:add_to_cart
    Sleep    2
    Page Should Contain    There is 1 item in your cart.
    Click Element
    Sleep    3
    End Test
