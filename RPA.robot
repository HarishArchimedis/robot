*** Settings ***
Library    SeleniumLibrary
Library    
Library    RPA.Excel.Files

*** Test Cases ***
Opens the Browser
    Opensite
Excel
    table
      
*** Keywords ***
opensite
    Open Browser    http://adactinhotelapp.com/    chrome
    
values
    [Arguments]    ${software}
    Input Text    //input[@id='username']    ${software}[username]  
    Input Password    //input[@id='password']    ${software}[password]
    Sleep    3s
    Click Element    //input[@id='login'] 
    Sleep    1s
    # Select From List By Index    locator
    
table
    Open Workbook    C:/robotframework/MultiTabs_Excel_data_Extracting/LoginDatas.xlsx
    ${hari}    Read Worksheet As Table    header=True 
    Close Workbook

    FOR    ${software}    IN    @{hari}
        values    ${software}
        Execute Javascript    window.open("http://adactinhotelapp.com/")
        Switch Window    NEW
        IF    "${software}[username]" == 'farcak'
            Close Window
        ELSE
            Continue For Loop
        END
        
    END   

    
