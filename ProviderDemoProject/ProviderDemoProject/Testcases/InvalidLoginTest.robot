*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resourcefile.robot
Suite Setup          OpenProviderBrowser
Suite Teardown       ClosingBrowser
Test Template    InValidCredLogin

*** Test Cases ***
InValidPass Valid UserName       office.administrtor@bcidaho.com        Pass1234
EmptyPass Valid UserName      office.administrator@bcidaho.com      ${EMPTY}
InValidUserName Valid Pass       office.admin@bcidaho.com      Passw0rd1234
InValidPass InValidUserName      office.adm@bcidaho.com     9876dfgh1234
EmptyBoth     ${EMPTY}           ${EMPTY}

*** Keywords ***
InValidCredLogin
    	[Arguments]     ${Username}     ${Password}
    	LoginUsername    ${Username}
	    LoginPassword	 ${Password}
 	    Click To Login
	    ErrorMessage should be visible

