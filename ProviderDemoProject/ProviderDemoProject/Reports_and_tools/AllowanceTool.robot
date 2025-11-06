*** Settings ***
Library     SeleniumLibrary
Resource        ../Reports_and_tools/ReportsAndToolsPageObjectKeywords.robot

***Variables***
${IFrameLocator}       xpath=//*[@id="iFrameWindow"]
${InnerContainer}       xpath=//*[@id="innerContainer"]
${ColumnLayout}     xpath=//*[@id="innerContainer"]/div[1]
${middleColumn}     xpath=//*[@id="ctl00_divMiddleColumn"]
${Allown_DropDownLocator}  xpath=//*[@id="ctl00_middleContent_lbProviders"]
${Continue_button}     xpath=//*[@id="ctl00_middleContent_cmdProviderTypeSearch"]
${WaitTogetresult}     xpath=//*[@id="ctl00_middleContent_pnlGroupGenericPrescribingRate"]/table

${SearchResultLocator}      xpath=//*[@id="ctl00_middleContent_lblResults"]
${RemitsRecordsLocator}     xpath=//*[@id="ctl00_middleContent_upDep"]/table/tbody/tr[7]/td/table/tbody/tr[2]

***Test Cases***
Login to test QualEnvt
    login to Providers Qual UI
Tools and Report Mouse Hover to click Allowance Tools
    Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[2]/a

View Selected Tax ID

    Select Frame      ${IFrameLocator}
    Click Element   ${InnerContainer} 
    Click Element       ${ColumnLayout}
    Click Element       ${middleColumn}
    sleep   5
    Select From List By Index   ${Allown_DropDownLocator}      1
    sleep   3
    Select From List By Index   ${Allown_DropDownLocator}      2
    sleep   3
    Select From List By Index   ${Allown_DropDownLocator}      3
    sleep   3
    
    # Click Element   ${View_Selected_Tax_ID}
# #     ${SearchResultNoRecordMessage}     Get Text    ${SearchResultLocator}
# #     Run Keyword If      '${SearchResultNoRecordMessage}'=='There were no records found for the date range specified.'       HandleAs No Records found
#     Wait Until Element Is Visible    ${WaitTogetresult}      timeout=30s
#     ${Result_Element}=       Get WebElements       xpath=//*[@id="ctl00_middleContent_pnlGroupGenericPrescribingRate"]/table/tbody/tr[1]/td
#     ${result_Data}=       Get Text       xpath=//*[@id="ctl00_middleContent_pnlGroupGenericPrescribingRate"]/table/tbody/tr[1]/td
#     # Should Contain      ${result_Data}      Blue Cross of Idaho is committed to helping improve the quality of care and services                               available to our members by promoting effective and efficient use of healthcare                              resources. One way we do this is through our company-wide quality improvement program                              (QIP). Our QIP program promotes appropriate and efficient care using evidence based                              standards and promotes objective and systematic measurements by monitoring and evaluating                              healthcare services and using our findings to implement quality improvement activities.                              Here is information that is measured against a standard or a peer group to provide                              you with data for your own evaluation.
#     ${attachment_element}=       Get WebElements      xpath=//*[@id="ctl00_middleContent_pnlGroupGenericPrescribingRate"]/table/tbody/tr[3]/td/p
#     ${attachment_element_name}=   Get Text           xpath=//*[@id="ctl00_middleContent_lblGroupName"]
#     # # Should Be Equal As Strings      ${attachment_element_name}       you with data for your own evaluation.

#     Log     Result Name: ${result_Data}
#     # Log     Attachment Name:${attachment_element_name}
#     sleep   5
#     # //*[@id="ctl00_middleContent_lblGroupName"]
#     Capture Page Screenshot
# #     ...     ELSE    VerifyRemitResults


# *** Keywords ***
# HandleAs No Records found
#     [documentation]      Handles the scenario when no records are  found
#     log     No records found for the selected providers 

# VerifyRemitResults
#     [documentation]      Handles the scenario when records are  found
#     ${RecordCount}=  Get Matching XPath Count    ${SearchResultLocator}
#     log   ${RecordCount}    records found for the selected providers 