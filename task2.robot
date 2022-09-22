*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${web_url}    https://app.deriv.com/

*** Test Cases ***
Buy Rise Contract
    Open Browser    ${web_url}    chrome
    set selenium speed    0.3
    Maximize Browser Window
    Wait Until Page Contains Element    //div[@class='btn-purchase__text_wrapper' and contains(.,'Rise')]    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    //input[@type='email']    10
    Input Text    txtEmail    hassif@besquare.com.my
    Input Text    txtPass    Huhu1234
    Click Element    //button[@type='submit']
    Wait Until Page Contains Element    //div[@class='btn-purchase__text_wrapper' and contains(.,'Rise')]    10 
     Click Element    //div[@id='dt_core_account-info_acc-info']
    Wait Until Page Contains Element     //div[contains(@id, "dt_CR")]    10
    Click Element    //li[@id='dt_core_account-switcher_demo-tab']
    Wait Until Page Contains Element    //div[contains(@id, "dt_VRTC")]   30 
    Click Element    //div[contains(@id, "dt_VRTC")]
    Sleep    3
    Click Element    //div[@class='cq-symbol-select-btn']
    Wait Until Page Contains Element    //div[@class="sc-mcd__filter__item sc-mcd__filter__item--selected" and contains(.,"Synthetic Indices")]    10
    Sleep    2
    Click Element    //div[@class="sc-mcd__filter__item sc-mcd__filter__item--selected" and contains(.,"Synthetic Indices")]    
    Wait Until Page Contains Element    //div[contains(@class, 'sc-mcd__item sc-mcd__item--1HZ10V ')]    10 
    Click Element    //div[contains(@class, 'sc-mcd__item sc-mcd__item--1HZ10V ')]
    Wait Until Page Contains Element    //button[@id='dt_purchase_call_button']    10
    Click Element    //button[@id='dt_purchase_call_button']
    Sleep    2
