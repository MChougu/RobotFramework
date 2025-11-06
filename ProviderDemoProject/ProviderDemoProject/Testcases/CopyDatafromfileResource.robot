*** Settings ***
Library     SeleniumLibrary
Library     DateTime

*** Variables ***
${Browser}  chrome      #edge
${Url}      https://providers.qual.bcidaho.com/
${Username}     office.administrator@bcidaho.com
${Password}     Passw0rd1234

*** Keywords ***
Open Provider Qual Browser
	    ${speed} =  Get Selenium Speed
	    Log To Console      ${speed}
	    open browser    ${Url}      ${Browser}
#	    sleep       2
	    Maximize Browser Window
	    Set Selenium Speed    1 seconds
	    Click link       xpath://*[@id="header_s1"]/div[2]/div/ul/li[2]/a
   	    Input Text     id:email        ${Username}
 	    Input Text    id:password    ${Password}
	    Click Element    id:btn-login
   	    Page Should not Contain     Login failed. Invalid email or password.
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[1]
	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[1]/div/div[1]/ul/li[1]
	    Sleep    2



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

Click To Logout
	    Click Link    xpath://*[@id="header_s1"]/div[2]/div/ul/li[3]/a

##Validate
ErrorMessage should be visible
	    Page Should Contain         Login failed. Invalid email or password.

#	    Page Should Contain    Login failed. Invalid email or password.

After Login it should show
	    Page Should not Contain     Login failed. Invalid email or password.

MouseHover ELIGIBILITY & CLAIMS OVERVIEW
#		Go To     https://providers.qual.bcidaho.com/providers-home-loggedin.page
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[1]
Click on Member search
	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[1]/div/div[1]/ul/li[1]
	    Sleep    2
Enter LastName
   	    [Arguments]    ${Last_Name}
 	    Input Text    id:provMemberSearchLastName        ${Last_Name}
Enter FirstName
   	    [Arguments]    ${FirstName}
 		Input Text    id:provMemberSearchFirstName      ${FirstName}
Enter DOB
	    [Arguments]    ${DoBmdY}
	    Input Text    id:provMemberSearchDateOfBirth        ${DoBmdY}
Enter EnrolleeId
	    [Arguments]    ${SuscriberId}
	    Input Text    id:provMemberSearchSubscriberId       ${SuscriberId}
Click on search button
	    Click Element    id:provMemberSearchSearchButton
	    sleep   10
Click on Search result
	    click Element      xpath://*[@id="provMemberSearchResults"]/table/tbody/tr[1]/td[1]
#	    /Click Element    id:provMemberSearchMemberName0
	    Sleep    10
Click on Benefit Information
	    Click Element    id:provLeftNavBenefitInformation


#	    id:provMemberSearchDateOfBirth      #for date
        sleep   2


MouseHover AUTHORIZATION & NOTIFICATIONS
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[2]
	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[2]/div/div[1]/ul/li[1]
	    Input Text    id:EnrolleeSearchLastName     weet
MouseHover AUTHORIZATION & NOTIFICATIONS
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[3]
	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[3]/div/div[1]/ul/li[1]/a
	    ## copy data or read data
MouseHover FORMS & RESOURCES OVERVIEw
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[4]
	    Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[4]/div/div[1]/ul/li[9]/a
