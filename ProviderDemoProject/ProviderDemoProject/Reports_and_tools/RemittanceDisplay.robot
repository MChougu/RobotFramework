*** Settings ***
Library     SeleniumLibrary
Resource        ../Reports_and_tools/ReportsAndToolsPageObjectKeywords.robot

***Variables***
${DropDownLocator}  xpath=//*[@id="ctl00_middleContent_lstProvider"]
${IFrameLocator}       xpath=//*[@id="iFrameWindow"]
${InnerContainer}       xpath=//*[@id="innerContainer"]
${ColumnLayout}     xpath=//*[@id="innerContainer"]/div[1]
${middleColumn}     xpath=//*[@id="ctl00_divMiddleColumn"]
${SubmitButton}     xpath=//*[@id="ctl00_middleContent_cmdSubmit"]
${WaitTogetRemitDownloads}     xpath=//*[@id="ctl00_middleContent_upDep"]/table/tbody/tr[7]/td/p

***Test Cases***
Login to test OfficeAccount
    login to Providers Qual UI
Tools and Report Mouse Hover to click Remittance Display
    Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[13]/a
GetTableAndDropdownlist
    Select Frame      ${IFrameLocator}
    Click Element   ${InnerContainer} 
    Click Element       ${ColumnLayout}
    Click Element       ${middleColumn}
    ${options}      Get List Items     ${DropDownLocator}
    FOR    ${index}    IN RANGE    0     5  #${options.__len__()}
        ${option}       Set Variable        ${options[${index}]}
        Log     Selecting option: ${option}
        Select From List By Index   ${DropDownLocator}      ${index}
        Input Text      xpath=//*[@id="ctl00_middleContent_txtStartDate"]       01/01/2024
        Input Text      xpath=//*[@id="ctl00_middleContent_txtEndDate"]       03/18/2024
        Click Element   ${SubmitButton}
        Wait Until Page Contains Element    ${WaitTogetRemitDownloads}      timeout=30s
        Capture Page Screenshot
    END    
