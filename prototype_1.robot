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
Valid Page Opened
    Given Browser Is Open To Page  ${URL}
    Then Welcome Page Should Be Open
    [Teardown]    Close Browser

