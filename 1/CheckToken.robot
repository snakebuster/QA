*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${web_url}    https://app.deriv.com/

*** Test Cases ***
TokenNameValidation
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
    Sleep    5
    Click Element    //a[@class="account-settings-toggle" and contains(@href,'/account/personal-details')]
    Wait Until Page Contains Element    //a[@id='dc_api-token_link']   30
    Click Element    //a[@id='dc_api-token_link']
    Wait Until Page Contains Element    //div[@class="da-api-token__checkbox-wrapper"]    10
TC31/32
    Click Element    (//*[@data-testid='dt_token_delete_icon'])[1]
    Click Button    //button[@type='submit' and contains(.,'delete')]
    Sleep    5
TC33/36/37
    Click Element    (//*[@data-testid='dt_toggle_visibility_icon'])[1]
    Sleep    2
    Click Element    (//*[@data-testid='dt_toggle_visibility_icon'])[1]    
    Sleep    5
TC34/35
    Click Element    (//*[@data-testid='dt_copy_token_icon'])[1]
    Click Element    //button[@type='submit' and contains(.,'OK')]
    Sleep    5
TC39
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    9K3A8HGVHWMGocV7SsuArBflF9sDgKCp
    Click Element    //button[@type='submit' and contains(.,'Create')] 
    Sleep    5
TC40
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    9K3A8HGVHWMGocV7SsuArBflF9sDgKCp
    Click Element    //button[@type='submit' and contains(.,'Create')] 
    Sleep    5  
TC41/ Clicking X
    Click Element    //div[@data-testid='page_overlay_header_close']
    Sleep    5
