*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           SeleniumPlugin
Resource          Prototype.resource

*** Variables ***
${URL}      https://www.google.com

*** Settings ***
Test Setup         Setup Test
Test Teardown      Close Browser
Test Template      Search Page

*** Keywords ***
Search Page
    [Arguments]  ${search_term}
    Given Browser Is Open To Page  ${URL}
    When Search For  ${search_term}
    Then Request To API Is Made  ${search_term}


*** Test Cases ***      search_term
Search Python           python
Search Facebook         facebook
Search LinkedIn         linkedin

