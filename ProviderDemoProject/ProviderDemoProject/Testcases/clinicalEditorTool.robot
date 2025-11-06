#*** Settings ***
#Library     SeleniumLibrary
#Resource    ../Resources/resourcefile.robot
#Suite Setup    OpenProviderBrowser
##Suite Teardown    ClosingBrowser
#Test Template    ValidCredLogin
#Test Template    MouseActions
#
#*** Variables ***
#${Browser}  edge
#${Url}      https://providers.qual.bcidaho.com/
#
#
#*** Test Cases ***
#ValidCredentials     office.administrator@bcidaho.com      Passw0rd1234
##OpenClinicalEditor
#
#*** Keywords ***
#ValidCredLogin
#    	[Arguments]     ${Username}     ${Password}
#    	LoginUsername    ${Username}
#	    LoginPassword	 ${Password}
# 	    Click To Login
#	    After Login it should show
#
#
#MouseActions
#	    MouseAction
#	    ClickOnClinicalEditor
#	    ClickOnLaunchButton

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  chrome    #edge
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
SelctDrpdown
	    Go To    https://providers.qual.bcidaho.com/tools-and-reports/clinical-editor-sso.page
#	    Select From List By Index      transactionType        1
#	    Sleep     2


















#	    Page Should Contain Element       Clinical Editor Tool
#	    Title Should Be       ICES Code Lookup
#SelectDropdownLiveClaims
#	    Title Should Be     ICES Code Lookup
#
#Select From List By Index

##	    Select From List By Label   transactionType     Live Claim
#	    Sleep     2
#	    Select From List By Value       transType.name for transType in transactionTypes    Live Claim
#        Select From List By Value        form-control ng-pristine ng-valid       Hypothetical (Professional)
#        Select From List By Value          Please Choose      Live Claim
#	    Select From List By Index          form-control ng-pristine ng-valid          1
#	    Select From List By Value            transactionType      Live Claim
#	    Select From List By Value       transType.name for transType in transactionTypes    Live Claim
#        Select From List By Value        form-control ng-pristine ng-valid       Hypothetical (Professional)
#        Select From List By Value          Please Choose      Live Claim
#        Select From List By Label              form-control ng-pristine ng-valid          1
