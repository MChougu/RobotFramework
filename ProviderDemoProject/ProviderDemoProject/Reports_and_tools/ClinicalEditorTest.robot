*** Settings ***
Library     SeleniumLibrary
Resource        ../Reports_and_tools/ClinicalEditorKeyword.robot
Suite Setup          Login to Test the Live Claim and click on Clinical Editor tool
# Suite Teardown       ClosingBrowser
Test Template     Enter valid Claim Ids

*** Test Cases ***
Check Live Professional claims 

***Keywords***
Login to Test the Live Claim and click on Clinical Editor tool
    login to Providers Qual UI
    Mouse Hover to Reports and Tools 
    Click On Clinical Editor tool 
    Click on Launch button
    
Enter valid Claim Ids 
