***Settings***
Library     SeleniumLibrary
Resource        ../LogInProvideronQual/LoginKeywords.robot
Suite Setup          Login providers
# Suite Teardown       ClosingBrowser
Test Template     Unsuccefull Login to Provider portal

*** Test Cases ***
Test for Valid UserName and InValid Password         office.administrtor@bcidaho.com        Pass1234
Test for Valid UserName and Empty Password      office.administrator@bcidaho.com      ${EMPTY}
Test for InValid UserName Valid Password        office.admin@bcidaho.com      Passw0rd1234
Test forInValid UserName InValid Password       office.adm@bcidaho.com     9876dfgh1234
Test for Empty UserName and Empty Password      ${EMPTY}           ${EMPTY}

***Keywords***
Unsuccefull Login to Provider portal
    [Arguments]     ${Username}     ${Password}
    LoginUsername      ${Username}
	LoginPassword	    ${Password}
    Click To Login
    ErrorMessage should be visible
