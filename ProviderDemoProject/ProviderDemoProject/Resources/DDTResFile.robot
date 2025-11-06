*** Settings ***
Library     SeleniumLibrary
Library     DateTime


*** Variables ***
${Browser}  edge
${Url}      https://providers.qual.bcidaho.com/
${Username}     office.administrator@bcidaho.com
${Password}     Passw0rd1234

*** Keywords ***
Open Provider Qual Browser PriorAuth
#	    ${speed} =  Get Selenium Speed
#	    Log To Console      ${speed}
#        Set Selenium Speed    1
	    open browser     ${Url}        ${Browser}
	    Maximize Browser Window
	    Set Selenium Speed    1 seconds
	    Click Element        xpath://*[@id="header_s1"]/div[2]/div/ul/li[2]/a
	    Input Text     id:email        office.administrator@bcidaho.com
 	    Input Text    id:password        Passw0rd1234
	    Click Element  Pink987$
	      id:btn-login
	    Page Should not Contain     Login failed. Invalid email or password.
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
        Click Element    xpath: //*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[14]/a
EnterLastName
	    [Arguments]    ${Last_Name}
	    Input Text    id:EnrolleeSearchLastName     ${Last_Name}
EnterEnrolleeId
	    [Arguments]    ${SBSB_ID}
	    Input Text    id:EnrolleeSearchEnrolleeId     ${SBSB_ID}
Click On Search
	    Click Element    xpath://*[@id="procform"]/div[3]/div[3]/input[1]
	    Sleep    15
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

