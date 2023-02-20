*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem




*** Keywords ***
first
    Open Browser    http://adactinhotelapp.com/    chrome
    Input Text    //input[@id='username']    mani
    Sleep   1s   
    Click Element    //input[@id='login']
    Capture Page Screenshot
    Close Browser
second    
    open Browser    http://adactinhotelapp.com/    chrome
    Input Password    //input[@id='password']    hari
    Sleep   1s   
    Click Element    //input[@id='login']
    Capture Page Screenshot
    Close Browser
third
    Open Browser    http://adactinhotelapp.com/    chrome
    Sleep   1s   
    Click Element    //input[@id='login']
    Close Browser 
four  
    Open Browser    http://adactinhotelapp.com/    chrome
    Input Text    //input[@id='username']    mani
    Input Password    //input[@id='password']    hari
    Sleep   1s   
    Click Element    //input[@id='login']
    Close Browser 
five
    open Browser    http://adactinhotelapp.com/    chrome
    Sleep    10
    Capture Page Screenshot
    Close Browser 
six
    Open Browser    http://adactinhotelapp.com/    chrome
    Capture Page Screenshot
    Close Browser  
seven
    Open Browser    http://adactinhotelapp.com/    chrome
    Input Text    //input[@id='username']    mani
    Input Password    //input[@id='password']    hari
    Sleep   1s   
    Capture Page Screenshot
    Close Browser          
*** Test Cases ***
testcase 1
    first
testcase 2
    second
testcase 3
    third  
testcase 4
    four   
testcase 5
    five
testcase 6
    six

testcase 7
    seven




   

