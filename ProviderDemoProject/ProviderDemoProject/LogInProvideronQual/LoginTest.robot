***Settings***
Library     SeleniumLibrary
Resource        ../LogInProvideronQual/LoginKeywords.robot
Variables       LoginVariables.py


***Test Cases***
Succefull Login to Provider portal
    Login providers 
    LoginUsername      ${Username}
	LoginPassword	    ${Password}
    Click To Login
    After Login it should show
