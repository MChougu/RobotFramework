*** Settings ***
Library     SeleniumLibrary
Library     DateTime
*** Variables ***
${Browser}      chrome      #edge
${Url}      https://providers.qual.bcidaho.com/

*** Test Cases ***
logintc
	    open browser    ${Url}      ${Browser}
	    Maximize Browser Window
#	    Set Selenium Speed       2 seconds
        sleep   2
	    Click Element     xpath://*[@id="header_s1"]/div[2]/div/ul/li[2]
	    Input Text      id:email   office.administrator@bcidaho.com
	    Input Text      id:password    Passw0rd1234
	    Click Element    id:btn-login
	    Sleep       2

#
MouseHover ToolsAnd Reports
#		Go To     https://providers.qual.bcidaho.com/providers-home-loggedin.page
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
#
#	    Click Element     xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[3]/a
#	    Click Link    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[3]/a
        Click Element    xpath: //*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[14]/a
#Sleep    2
SelctDrpdown
	    Go To    https://providers.qual.bcidaho.com/tools-and-reports/clinical-editor-sso.page
	    Select From List By Index      transactionType        1
##	    Sleep     2*** Test Cases ***
MouseHover ELIGIBILITY & CLAIMS OVERVIEW
#		Go To     https://providers.qual.bcidaho.com/providers-home-loggedin.page
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[1]
Click on Member search
	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[1]/div/div[1]/ul/li[1]
	    Sleep    2
Enter required data
	    Input Text    id:provMemberSearchLastName       matthews
	    Input Text    id:provMemberSearchFirstName      ${EMPTY}
	    Input Text    id:provMemberSearchDateOfBirth        08/11/1990    # get date
#	    Get Element Attribute    id:provMemberSearchDateOfBirth     03/03/1999   # get date
#	    Click Element    xpath://*[@id="memberSearch"]/form/div/div[4]/span[1]/div/img
	    Input Text    id:provMemberSearchSubscriberId       ${EMPTY}
#	    Get Current Date    result_format-%m/%d/%y
Click on search button
	    Click Element    id:provMemberSearchSearchButton
	    sleep  20
Click on Search result
	    ### work on table results
#	    Click Button    id:provMemberSearchMemberName0
#	    ${data}=    get text
#	     Click Link     setSelectedMember(member, search.AsOfDate)
	     click Element      xpath://*[@id="provMemberSearchResults"]/table/tbody/tr[1]/td[1]
#	    //*[@id="provMemberSearchResults"]/table/tbody/tr[1]/td[1]
#	    //*[@id="provMemberSearchMemberName0"]
#//*[@id="provMemberSearchResults"]/table/tbody
#//*[@id="provMemberSearchResults"]/table/tbody/tr[1]/td[1]
#	    //*[@id="provMemberSearchResults"]/table/tbody/tr[1]/td[1]
#	    //*[@id="provMemberSearchResults"]/table/tbody/tr[1]
#	    Log To Console    ${data}
#	    Click Button     ${data}
#	    Click Element    ${data}
##	    id:provMemberSearchResults
	    Sleep    10
Click on Benefit Information
	    Click Element    id:provLeftNavBenefitInformation
#	    id:provMemberSearchDateOfBirth      #for date
        sleep   2
#
#
#MouseHover AUTHORIZATION & NOTIFICATIONS
#	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[2]
#	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[2]/div/div[1]/ul/li[1]
#	    Input Text    id:EnrolleeSearchLastName     weet
#MouseHover AUTHORIZATION & NOTIFICATIONS
#	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[3]
#	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[3]/div/div[1]/ul/li[1]/a
#	    ## copy data or read data
#MouseHover FORMS & RESOURCES OVERVIEw
#	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[4]
#	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[4]/div/div[1]/ul/li[9]/a
