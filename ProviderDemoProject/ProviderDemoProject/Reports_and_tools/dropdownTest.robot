*** Settings ***
Library     SeleniumLibrary
Variables       ../LogInProvideronQual/LoginVariables.py
Variables       ../ProviderHomepage/ProviderHomepageVariables.py
# Resource        ReportsAndToolsPageObjectKeywords.robot
# ***Keyword***
***Test Cases***
login to Providers Qual UI
    open browser    ${Url}      ${Browser}
    Maximize Browser Window
    sleep   2
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/ul/li[2]
    Input Text     id=email        ${Username}
    Input Text    id=password    ${Password}
    Click Element    id=btn-login
    Sleep       2


Mouse Hover to Reports and Tools 
    Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]

Click On Clinical Editor tool 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[3]/a

Click on Launch button
    Click Element     xpath=//*[@id="1418415350885"]/div/div/table[2]/tbody/tr/td[2]/a
    sleep   3 
SelctDrpdownOption
    Select Frame    xpath=/html/body/html/body
    //*[@id="content"]/div[2]/noscript/text()
    Click Element   xpath=//*[@id="content"]/div[2]/div/div
    # Select From List by Value       ng-model=transactionType    0
    # Live Claim
    sleep   3 
    # Select From List by Value     xpath=//*[@id="content"]/div[2]/div/div/div[2]/select    0 
    # Live Claim
    # Select From List by Value        class=form-control ng-pristine ng-valid        0
    # Select From List by Value        class=form-control ng-pristine ng-valid     0
    # Select From List by Value        class=form-control ng-pristine ng-valid     Live Claim
    # Go To    https://providers.qual.bcidaho.com/tools-and-reports/clinical-editor-sso.page
    # Select From List By Index      transactionType        1
	# Sleep     2
    # Select From List By Label   transactionType     Live Claim
#	    Sleep     2
#	    Select From List By Value       transType.name for transType in transactionTypes    Live Claim
#       