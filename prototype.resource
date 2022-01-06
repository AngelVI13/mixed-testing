*** Variables ***
${BROWSER}        Firefox
${BROWSER_ALIAS}   my_alias


*** Keywords ***
Setup Test
    ${seleniumlib}=    Get Library Instance    SeleniumLibrary
    Register Seleniumwire Webdriver  ${seleniumlib}  ${BROWSER}  {BROWSER_ALIAS}

Browser Is Open To Page
    [Arguments]              ${url}
    Open Browser    ${url}    ${BROWSER}  ${BROWSER_ALIAS}
    Wait Until Element Is Visible  //*[@id="L2AGLb"]
    Click Button  //*[@id="L2AGLb"]
    Wait Until Element Is Visible  name:q

Welcome Page Should Be Open
    Title Should Be    Google

Search For
    [Arguments]              ${search_term}
    Click Element   name:q
    Press Keys  name:q  ${search_term}
    Submit Form  
    Wait Until Element Is Visible  id:result-stats 
               
