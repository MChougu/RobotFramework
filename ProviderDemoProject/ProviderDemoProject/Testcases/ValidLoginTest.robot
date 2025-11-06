*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resourcefile.robot
Suite Setup    OpenProviderBrowser
Suite Teardown    ClosingBrowser
Test Template    ValidCredLogin

*** Test Cases ***
ValidCredentials     office.administrator@bcidaho.com      Passw0rd1234

*** Keywords ***
ValidCredLogin
    	[Arguments]     ${Username}     ${Password}
    	LoginUsername    ${Username}
	    LoginPassword	 ${Password}
 	    Click To Login
	    After Login it should show
