*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  edge
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


MouseAction
		Go To     https://providers.qual.bcidaho.com/providers-home-loggedin.page
	    Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]

	    Click Element     xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[3]/a
	    Sleep    2
