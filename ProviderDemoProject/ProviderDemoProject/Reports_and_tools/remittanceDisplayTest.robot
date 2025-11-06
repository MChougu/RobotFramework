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
${WaitTogetRemitDownloads}     xpath=//*[@id="ctl00_middleContent_upDep"]/table/tbody/tr[7]/td/table/tbody
${SearchResultLocator}      xpath=//*[@id="ctl00_middleContent_lblResults"]
${RemitsRecordsLocator}     xpath=//*[@id="ctl00_middleContent_upDep"]/table/tbody/tr[7]/td/table/tbody/tr[2]

***Test Cases***
Login to test OfficeAccount
    login to Providers Qual UI
Tools and Report Mouse Hover to click Remittance Display
    Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[13]/a
GetTableAndDropdownlist
    [documentation]     Test searching for records for a specific provider
    Select Frame      ${IFrameLocator}
    Click Element   ${InnerContainer} 
    Click Element       ${ColumnLayout}
    Click Element       ${middleColumn}
    Select From List By Index   ${DropDownLocator}      1
    Input Text      xpath=//*[@id="ctl00_middleContent_txtStartDate"]       01/01/2024
    Input Text      xpath=//*[@id="ctl00_middleContent_txtEndDate"]       03/18/2024
    Click Element   ${SubmitButton}
    ${SearchResultNoRecordMessage}     Get Text    ${SearchResultLocator}
    Run Keyword If      '${SearchResultNoRecordMessage}'=='There were no records found for the date range specified.'       HandleAs No Records found
    Wait Until Page Contains Element    ${WaitTogetRemitDownloads}      timeout=30s
    Capture Page Screenshot
    ...     ELSE    VerifyRemitResults


*** Keywords ***
HandleAs No Records found
    [documentation]      Handles the scenario when no records are  found
    log     No records found for the selected providers 

VerifyRemitResults
    [documentation]      Handles the scenario when records are  found
    ${RecordCount}=  Get Matching XPath Count    ${SearchResultLocator}
    log   ${RecordCount}    records found for the selected providers 