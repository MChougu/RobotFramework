*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${Browser}  edge
${Url}      https://providers.qual.bcidaho.com/
${Url1}     https://providers.qual.bcidaho.com/providers-home-loggedin.page
${Username}     office.administrator@bcidaho.com
${Password}     Passw0rd1234
${ItemSholdBe}     xpath://*[@id="welcome_prov"]   # Welcome to provider poertal
${mousHover}    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
${ClickClinical}    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[3]/a

*** Keywords ***
OpenProviderBrowser
	    ${speed} =  Get Selenium Speed
	    Log To Console      ${speed}
	    open browser    ${Url}      ${Browser}
#	    sleep       2
	    Maximize Browser Window
	    Set Selenium Speed    1 seconds
	    Click link       xpath://*[@id="header_s1"]/div[2]/div/ul/li[2]/a
#LoginOffic
	    go to   ${Url1}
	    Input Text     id:email        ${Username}
 	    Input Text    id:password    ${Password}
	    Click Element    id:btn-login
#	    Element Should Be Visible    ${ItemSholdBe}
After Login it should show
	    Page Should not Contain     Login failed. Invalid email or password.

MouseHover and Click Action
#		Go To     https://providers.qual.bcidaho.com/providers-home-loggedin.page
        Mouse Over     ${mousHover}
        Click Element   ${ClickClinical}
	    Sleep    2





ClickOnLaunchButton
	    Click Element       xpath://*[@id="1418415350885"]/div/div/table[2]/tbody/tr/td[2]/a
#	    Select From List By Label   transactionType     Live Claim
	    Sleep     2
