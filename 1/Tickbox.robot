*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${web_url}    https://app.deriv.com/

*** Test Cases ***
Tickbox
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
    Sleep    10
    Click Element    //a[@class="account-settings-toggle" and contains(@href,'/account/personal-details')]
    Wait Until Page Contains Element    //a[@id='dc_api-token_link']   30
    Click Element    //a[@id='dc_api-token_link']
    Wait Until Page Contains Element    //div[@class="da-api-token__checkbox-wrapper"]    10
TC01
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC01
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC02  
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC02
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC03
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC03
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC04
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC04
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC05
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC05
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC06
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC06
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC07
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC07
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC08
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC08
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC09
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC09
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC10
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC10
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC11
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC11
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC12    
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC12
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC13
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC13
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC14
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC14
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC15
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC15
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC16
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC16
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC17
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC17
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
T18
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC18
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC19
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC19
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC20
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Read")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC20
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC21
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC21
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC22
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trade")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC22
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC23
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC23
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC24
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Payments")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC24
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5
TC25
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Admin")]
    Click Element    //div[@class='composite-checkbox api-token__checkbox' and contains(.,"Trading information")]
    Press Keys    //input[@name='token_name']    CTRL+a+BACKSPACE
    Input Text    //input[@name='token_name']    TC25
    Click Element    //button[@type='submit' and contains(.,'Create')]  
    Sleep    5










# //div[@class='composite-checkbox api-token__checkbox composite-checkbox--active' and contains(.,"Read")] active tickbox