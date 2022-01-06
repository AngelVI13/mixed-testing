*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           SeleniumPlugin
Resource          Prototype.resource

*** Variables ***
${URL}      https://www.google.com

*** Settings ***
Test Setup      Setup Test

*** Test Cases ***
Search Page Opened
    Given Browser Is Open To Page  ${URL}
    When Search For  python
    Then Request To API Is Made  python
    [Teardown]    Close Browser

