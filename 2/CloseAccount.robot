*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${web_url}    https://app.deriv.com/

*** Test Cases ***
CloseAccount
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
TD02
    Click Element    //div[@id='dt_core_account-info_acc-info']
    Wait Until Page Contains Element     //div[contains(@id, "dt_CR")]    10
TD03    
    Click Element    //a[@id='dt_positions_toggle']
    Sleep    2    
    Click Element    //a[@id='dt_positions_toggle']
    Click Element    //a[@class="account-settings-toggle" and contains(@href,'/account/personal-details')]
    Sleep    3
    Click Element    //a[@id="dc_close-your-account_link"]
    Wait Until Page Contains Element    //button[@type='submit' and contains(.,'Close my account')]    10
    Click Element    //button[@type='submit' and contains(.,'Close my account')]
TD04
    Click Element    (//*[@class='dc-checkbox__box'])[1]
    Click Element    (//*[@class='dc-checkbox__box dc-checkbox__box--active'])[1]
TD05
    Click Element    (//*[@class='dc-checkbox__box'])[1]
    Click Element    (//*[@class='dc-checkbox__box'])[2]
    Click Element    (//*[@class='dc-checkbox__box'])[3]
    Sleep    2
TD06
    Press Keys    //textarea[@name='other_trading_platforms']    CTRL+a+BACKSPACE
    Input Text    //textarea[@name='other_trading_platforms']    Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. Sed vel lectus. Donec odio urna, tem
    Press Keys    //textarea[@name='other_trading_platforms']    CTRL+a+BACKSPACE
TD07
    Press Keys    //textarea[@name='do_to_improve']    CTRL+a+BACKSPACE
    Input Text    //textarea[@name='do_to_improve']    Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. Sed vel lectus. Donec odio urna, tem
    Press Keys    //textarea[@name='do_to_improve']    CTRL+a+BACKSPACE
TD08
    Input Text    //textarea[@name='other_trading_platforms']    Nam quis nulla. Integer malesuada. In in enim a arcu im
    Input Text    //textarea[@name='do_to_improve']    Nam quis nulla. Integer malesuada. In in enim a arcu im    
TD09/10
    Click Element    //button[@type='submit' and contains(.,'Continue')]
    Click Element    //button[@type='submit' and contains(.,'Close account')]


