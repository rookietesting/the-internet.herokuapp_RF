*** Settings ***
Library     SeleniumLibrary
Library     Browser

*** Keywords ***
Get browser logs and check if images are not found (Broken)
    ${selenium}=    Get Library Instance    SeleniumLibrary
    ${webdriver}=    Set Variable     ${selenium._drivers.active_drivers}[0]
    ${log entries}=    Evaluate    $webdriver.get_log('browser')
    ${contains}=  Evaluate   ".jpg - Failed to load resource: the server responded with a status of 404 (Not Found)" in """${log entries}"""



