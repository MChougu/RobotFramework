***Settings***
Library     SeleniumLibrary
Resource        ../LogInProvideronQual/LoginKeywords.robot
Variables       ../LogInProvideronQual/LoginVariables.py

***Test Cases***
Succefull Login to Provider portal
    Login providers 
    LoginUsername      ${Username}
	LoginPassword	    ${Password}
    sleep   1 
    Click To Login
    After Login it should show

# ACO Report Genrated
#     Click To Login
	# Click Element    id:btn-login

# After Login it should show
# #     Page Should not Contain     Login failed. Invalid email or password.
# #     Page Should Contain     LOG-OUT

# # # MouseHover ToolsAnd Reports
# # # #		Go To     https://providers.qual.bcidaho.com/providers-home-loggedin.page
# # #     Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
# # # Click on ACO portal
# # #     Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[2]/ul/li[2]/a//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[2]/ul/li[2]/a
# # # Click on Enter to find generated reports
# # #     Click Element   xpath://*[@id="pricing-table"]/div/a
# # #     page should contain     Unauthorized Access




# ***Test Cases***
# Succefull Login to Provider portal
#     Login providers 
#     LoginUsername      ${Username}
# 	LoginPassword	    ${Password}
#     Click To Login
#     After Login it should show

# MouseHover ToolsAnd Reports
# #		Go To     https://providers.qual.bcidaho.com/providers-home-loggedin.page
#     Mouse Over      xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
# Click on ACO portal
#     Click Element    xpath://*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[2]/ul/li[2]/a//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[2]/ul/li[2]/a
# Click on Enter to find generated reports
#     Click Element   xpath://*[@id="pricing-table"]/div/a
#     page should contain     Unauthorized Access


