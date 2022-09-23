*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${web_url}    https://app.deriv.com/

*** Test Cases ***
Buy Lower Contract
    Open Browser    ${web_url}    chrome
    set selenium speed    0.3
    Maximize Browser Window
    Wait Until Page Contains Element    //div[@class='btn-purchase__text_wrapper' and contains(.,'Rise')]    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    //input[@type='email']    10
    Input Text    txtEmail    hassif@besquare.com.my
    Input Text    txtPass    Huhu1234gti
    Click Element    //button[@type='submit']
    Wait Until Page Contains Element    //div[@class='btn-purchase__text_wrapper' and contains(.,'Rise')]    10 
    Click Element    //div[@id='dt_core_account-info_acc-info']
    Wait Until Page Contains Element     //div[contains(@id, "dt_CR")]    10cd 
    Click Element    //li[@id='dt_core_account-switcher_demo-tab']
    Wait Until Page Contains Element    //div[contains(@id, "dt_VRTC")]   30 
    Click Element    //div[contains(@id, "dt_VRTC")]
    Sleep    3 
    Click Element    //div[@class='cq-symbol-select-btn']
    Wait Until Page Contains Element    //div[@class="sc-mcd__filter__item sc-mcd__filter__item--selected" and contains(.,"Synthetic Indices")]    10
    Sleep    2
    Click Element    //div[@class='sc-mcd__filter__item ' and contains(.,'Forex')]
    Wait Until Page Contains Element    //div[@class="sc-mcd__item sc-mcd__item--frxAUDUSD "]    10
    Click Element    //div[@class="sc-mcd__item sc-mcd__item--frxAUDUSD "]
    Wait Until Page Contains Element    //div[@class="contract-type-widget__display"]    10
    Click Element    //div[@class="contract-type-widget__display"]
    Wait Until Page Contains Element    //div[@id="dt_contract_high_low_item"]    10
    Click Element    //div[@id="dt_contract_high_low_item"]
    Press Keys       //input[@class='dc-input__field']    CTRL+a+BACKSPACE 
    Input Text    //input[@class='dc-input__field']    4
    Press Keys     //input[@id='dt_amount_input']    CTRL+a+BACKSPACE
    Input Text    //input[@id='dt_amount_input']    15.50
    Click Element    //button[@id='dc_payout_toggle_item']
    Wait Until Page Contains Element    //button[@class='btn-purchase btn-purchase--2']    10
    Click Element    //button[@class='btn-purchase btn-purchase--2']