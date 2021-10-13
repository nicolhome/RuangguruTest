*** Settings ***
Documentation    Test case automation API endpoint
...              How to run: robot Tests/AutomationAPI.robot
Library          SeleniumLibrary
Library          RequestsLibrary
Library          JSONLibrary
Library          Collections

*** Variables ***

*** Test Cases ***
Do a GET Request and validate the response code and response body
    [documentation]  This test case verifies that the response code of the GET Request should be 200,
    ${response}=    GET  https://skillacademy.com/skillacademy/discovery/search     params=query=pageSize
    Status Should Be  200  ${response}



