*** Settings ***
Library  String
Library  Collections
Library  SeleniumLibrary

*** Test Cases ***
Sample
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys

    Call Method  ${options}  add_argument  --no-sandbox
    Call Method  ${options}  add_argument  --disable-dev-shm-usage
    Call Method  ${options}  add_argument  --window-size\=1920,1080

    Open Browser  https://google.com  headlessChrome    options=${options}
    Capture Page Screenshot
