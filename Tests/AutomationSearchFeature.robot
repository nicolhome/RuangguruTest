*** Settings ***
Documentation    Web and API automation of Search feature Skillacademy web.
...              How to run: robot Tests/AutomationSearchFeature.robot
Library          SeleniumLibrary

*** Variables ***
${BROWSER}=     Chrome
${URL}=         https://skillacademy.com/
${SEARCH}=      //*[@data-testid="search-input-field"]
${KEYWORD}=     pariwisata
${SEARCHBUTTON}=    //*[@data-testid="search-icon"]

*** Test Cases ***
SearchTest
    Open Browser   ${URL}   ${BROWSER}
    Input Text  ${SEARCH}   ${KEYWORD}
    Sleep   2s
    Click Element   ${SEARCHBUTTON}


