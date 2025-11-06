*** Settings ***
Library     DateTime
Resource     ../Resources/PageObjectResource.robot

*** Test Cases ***
OfficeAdmin Login
	Open Provider Qual Browser
	Login to Offic account
	Login Username      office.administrator@bcidaho.com
	Login Password      Passw0rd1234
	Click To Login
	After Login it should show

Member search
	MouseHover ELIGIBILITY & CLAIMS OVERVIEW
	Click on Member search
	Enter required data
	Click on search button
	Click on Search result
	Click on Benefit Information
