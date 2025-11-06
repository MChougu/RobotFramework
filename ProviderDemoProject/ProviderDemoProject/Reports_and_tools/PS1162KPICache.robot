*** Settings ***
Library     SeleniumLibrary
Resource        ../Reports_and_tools/ReportsAndToolsPageObjectKeywords.robot
Resource        ../LogInProvideronQual/LoginKeywords.robot
# Suite Setup          Login providers
# Test Template    Interact with KPI tool and Logout without clearing Catche
# ***Test Cases***
# Test for Subhashini creds         subashinitest.aco@bcidaho.com		Passw0rd1234
# Test for Malu Creds          malu.choughule@bcidaho.com           Malu@1234567


***Variables***
${KPIIFrameLocator}       xpath=//*[@id="iFrameWindow"]
${KPIInnerContainer}       xpath=//*[@id="innerContainer"]
${ColumnLayout}     xpath=//*[@id="innerContainer"]/div[1]
${middleColumn}     xpath=//*[@id="ctl00_divMiddleColumn"]
${DropDownLocator}  xpath=//*[@id="ctl00_middleContent_ddlMultipleTINs"]
${View_Selected_Tax_ID}     xpath=//*[@id="ctl00_middleContent_btnMultipleTINs"]
${WaitTogetresult}     xpath=//*[@id="ctl00_middleContent_pnlGroupGenericPrescribingRate"]/table
${logOUT}           xpath=//*[@id="header_s1"]/div[2]/div/ul/li[3]/a

*** Test Cases ***

*** Keywords ***
Interact with KPI tool and Logout without clearing Catche
    [Arguments]     ${Username}     ${Password}
    LoginUsername      ${Username}
	LoginPassword	    ${Password}
    Click To Login
    After Login it should show
# Tools and Report Mouse Hover to click KPI Tools
    Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[2]/ul/li[4]/a

# View Selected Tax ID

    Select Frame      ${KPIIFrameLocator}
    Click Element   ${KPIInnerContainer} 
    Click Element       ${ColumnLayout}
    Click Element       ${middleColumn}
    Select From List By Index   ${DropDownLocator}      0
    Click Element   ${View_Selected_Tax_ID}
#     ${SearchResultNoRecordMessage}     Get Text    ${SearchResultLocator}
#     Run Keyword If      '${SearchResultNoRecordMessage}'=='There were no records found for the date range specified.'       HandleAs No Records found
    Wait Until Element Is Visible    ${WaitTogetresult}      timeout=30s
    # ${Result_Element}=       Get WebElements       xpath=//*[@id="ctl00_middleContent_pnlGroupGenericPrescribingRate"]/table/tbody/tr[1]/td
    # ${result_Data}=       Get Text       xpath=//*[@id="ctl00_middleContent_pnlGroupGenericPrescribingRate"]/table/tbody/tr[1]/td
    # # Should Contain      ${result_Data}      Blue Cross of Idaho is committed to helping improve the quality of care and services                               available to our members by promoting effective and efficient use of healthcare                              resources. One way we do this is through our company-wide quality improvement program                              (QIP). Our QIP program promotes appropriate and efficient care using evidence based                              standards and promotes objective and systematic measurements by monitoring and evaluating                              healthcare services and using our findings to implement quality improvement activities.                              Here is information that is measured against a standard or a peer group to provide                              you with data for your own evaluation.
    # ${attachment_element}=       Get WebElements      xpath=//*[@id="ctl00_middleContent_pnlGroupGenericPrescribingRate"]/table/tbody/tr[3]/td/p
    # ${attachment_element_name}=   Get Text           xpath=//*[@id="ctl00_middleContent_lblGroupName"]
    # # Should Contain      ${attachment_element_name}      Group Name Not Found
    # Log     Result Name: ${result_Data}
    # # Log     Attachment Name:${attachment_element_name}
    Capture Page Screenshot
    Unselect Frame  
    Click To Logout 
    sleep   3
    Click To Login
    sleep   5
# bhashini creds         subashinitest.aco@bcidaho.com		Passw0rd1234
# Test for Malu Creds          malu.choughule@bcidaho.com           Malu@1234567
