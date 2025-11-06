*** Settings ***
Library     SeleniumLibrary
Resource        ../Reports_and_tools/ReportsAndToolsPageObjectKeywords.robot
Resource        ../Reports_and_tools/PS1162KPI.robot
Suite Setup          Login providers
Test Template   Test1162 Catche issue
***Test Cases***
Test for Subhashini creds         subashinitest.aco@bcidaho.com		Passw0rd1234
Test for Malu Creds      malu.choughule@bcidaho.com       Malu@1234567


***Test Cases***
Test1162 Catche issue
    Login providers 
    Login to test SubhasiniAccount          subashinitest.aco@bcidaho.com		Passw0rd1234
    Tools and Report Mouse Hover to click KPI Tools
    View Selected Tax ID
    
# *** Keywords ***
Test1162 Catche issue
    [Arguments]     ${Username}     ${Password}
    LoginUsername      ${Username}
	LoginPassword	    ${Password}
    Click To Login
    Tools and Report Mouse Hover to click KPI Tools
    View Selected Tax ID
