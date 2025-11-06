*** Settings ***
Library     SeleniumLibrary
Library     DateTime


*** Variables ***
${Browser}  chrome      #edge
${Url}      https://providers.qual.bcidaho.com/
${Username}     office.administrator@bcidaho.com
${Password}     Passw0rd1234

*** Keywords ***
OpenProviderBrowserQual
	    ${speed} =  Get Selenium Speed
	    Log To Console      ${speed}
	    open browser    ${Url}      ${Browser}
#	    sleep       2
	    Maximize Browser Window
	    Sleep   1
#	    Set Selenium Speed    1 seconds
   	    Click Element         xpath://*[@id="header_s1"]/div[2]/div/ul/li[2]
#	    Set Selenium Timeout     10
	    Input Text     id:email        ${Username}
 	    Input Text    id:password    ${Password}
	    Click Element    id:btn-login
	    Sleep    1
#   	    Page Should not Contain     Login failed. Invalid email or password.
   	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[2]
	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[2]/div/div[1]/ul/li[2]/a




Closing All Browsers
	    Close All Browsers

Login to Offic account
	    go to   ${Url}
	    Click link       xpath://*[@id="header_s1"]/div[2]/div/ul/li[2]/a
#	    Set Selenium Timeout     10

Login Username
	    [Arguments]    ${Username}
	    Input Text     id:email        ${Username}
Login Password
	    [Arguments]    ${Password}
 	    Input Text    id:password    ${Password}

Click To Login
	    Click Element    id:btn-login


After Login it should show
	    Page Should not Contain     Login failed. Invalid email or password.

MouseHover AUTHORIZATION & NOTIFICATIONS
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[2]
	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[2]/div/div[1]/ul/li[2]/a

EnterLastName
	    [Arguments]    ${Last_Name}
	    Input Text    id:EnrolleeSearchLastName     ${Last_Name}
EnterEnrolleeId
	    [Arguments]    ${SBSB_ID}
	    Input Text    id:EnrolleeSearchEnrolleeId     ${SBSB_ID}
Click On Search
	    Click Element    xpath://*[@id="procform"]/div[3]/div[3]/input[1]
	    Sleep    2
Click on enter procedureCode
	    Click Element    xpath://*[@id="provMemberSearchMember0"]/div[1]/div/div[2]/input
	    sleep   2
Enter procedureCode
	    Input Text    id:procedureCode   97537
	    Input Text    xpath://*[@id="codesform"]/div/div[2]/input   01/01/2023
#	    Click Element    xpath://*[@id="codesform"]/input[1]

Click Search
	    Click Element    xpath://*[@id="codesform"]/input[2]
	    Sleep    2
#	     A0080
#A0110 E1399

#	    Page Should Contain Element    foundMembersContainer
#	    Enter Procedure Code
#	    container
#	    xpath://*[@id="provMemberSearchMember0"]/div[1]/div

