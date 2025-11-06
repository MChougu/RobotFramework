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
${SearchResultLocator}       xpath=//*[@id="ctl00_middleContent_upDep"]/table/tbody/tr[7]/td/p
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
    # FOR    ${index}    IN RANGE    0     5  #${options.__len__()}
    #     ${option}       Set Variable        ${options[${index}]}
    #     Log     Selecting option: ${option}
    Select From List By Index   ${DropDownLocator}    2   #${index}
    Input Text      xpath=//*[@id="ctl00_middleContent_txtStartDate"]       01/01/2024
    Input Text      xpath=//*[@id="ctl00_middleContent_txtEndDate"]       03/18/2024
    Click Element   ${SubmitButton}
    Wait Until Page Contains Element    ${WaitTogetRemitDownloads}      timeout=30s
    Capture Page Screenshot
    ${Table_rows_download}      Get WebElements         xpath=//*[@id="ctl00_middleContent_upDep"]/table/tbody/tr[7]/td/table/tbody/tr
    FOR      ${row}      IN      @{Table_rows_download}
        ${first_column_value}    Get Text       xpath=${row}/td[1]
        Click Element   xpath=${row}/td[1]
        # xpath=//*[@id="ctl00_middleContent_upDep"]/table/tbody/tr[7]/td/table/tbody/tr[2]/td[1]/a
        
    # ${SearchResultNoRecordMessage}     Get Text    ${SearchResultLocator}
    # Run Keyword If      '${SearchResultNoRecordMessage}'=='There were no records found for the date range specified.'
    END    
