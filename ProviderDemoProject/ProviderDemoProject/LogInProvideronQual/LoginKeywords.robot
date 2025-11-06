***Settings***
Library     SeleniumLibrary
Variables       ../ProviderHomepage/ProviderHomepageVariables.py
# Variables       LoginVariables.py   #It will not be usfull for InvalidCreds
Resource        ../ProviderHomepage/providerHomepageKeyword.robot


***Keywords***
Login providers 
    Open providers Homepage and test
    Set Selenium Speed    1 seconds
	Click link       xpath=//*[@id="header_s1"]/div[2]/div/ul/li[2]/a
                        # //*[@id="header_s1"]/div[2]/div/ul/li[2]/a

LoginUsername
	[Arguments]    ${Username}
	Input Text     id=email        ${Username}

LoginPassword
	[Arguments]    ${Password}
    Input Password    id=password    ${Password}

Click To Login
	Click Element    id=btn-login

After Login it should show
    Page Should not Contain     Login failed. Invalid email or password.
    Page Should Contain     LOG-OUT

ErrorMessage should be visible
    Page Should Contain         Login failed. Invalid email or password.

Click To Logout
    Click Link    xpath=//*[@id="header_s1"]/div[2]/div/ul/li[3]/a
    
Logout Sucessfully
    Page Should Contain         YOU ARE NOW LOGGED OUT

