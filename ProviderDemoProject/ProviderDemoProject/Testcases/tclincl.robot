*** Settings ***
Resource    ../Resources/ClinicalResource.robot

*** Test Cases ***
Login andNavigate
	OpenProviderBrowser

Hover and select dropdown
	Login andNavigate
	MouseHover and Click Action
	Click Element       xpath://*[@id="1418415350885"]/div/div/table[2]/tbody/tr/td[2]/a
#	    Select From List By Label   transactionType     Live Claim
	Sleep     2

