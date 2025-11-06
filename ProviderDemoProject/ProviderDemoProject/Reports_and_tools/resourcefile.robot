*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}   chrome         #edge
${Url}      https://providers.qual.bcidaho.com/

*** Keywords ***
OpenProviderBrowser
	    ${speed} =  Get Selenium Speed
	    Log To Console      ${speed}
	    open browser    ${Url}      ${Browser}
#	    sleep       2
	    Maximize Browser Window
	    sleep  1
#	    Set Selenium Speed    1 seconds
	    Click Element     xpath://*[@id="header_s1"]/div[2]/div/ul/li[2]
	    Sleep    1
ClosingBrowser
	    Close All Browsers

LoginOffic
	    go to   ${Url}

LoginUsername
	    [Arguments]    ${Username}
	    Input Text     id:email        ${Username}
LoginPassword
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

MouseAction
		Go To     https://providers.qual.bcidaho.com/providers-home-loggedin.page
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
ClickOnClinicalEditor
	    Click Element     xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[3]/a
	    Sleep    2
ClickOnLaunchButton
	    Click Element       xpath://*[@id="1418415350885"]/div/div/table[2]/tbody/tr/td[2]/a
#	    Select From List By Label   transactionType     Live Claim
	    Sleep     2
