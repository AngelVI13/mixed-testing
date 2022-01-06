*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           SeleniumPlugin
Resource          Prototype.resource

*** Variables ***
${URL}      https://www.google.com

*** Keywords ***
Search Page
    [Arguments]  ${search_term}
    Setup Test
    Given Browser Is Open To Page  ${URL}
    When Search For  ${search_term}
    Then Request To API Is Made  ${search_term}
    Close Browser


*** Test Cases ***
Search Page Opened
    [Template]  Search Page
    python
    facebook

