*** Settings ***
Library     SeleniumLibrary
Resource        ../Reports_and_tools/ReportsAndToolsPageObjectKeywords.robot

***Keyword***
Login to test ICD 10 Dignosis Code
    login to Providers Qual UI
    Mouse Hover to Reports and Tools 
    Click On ICD-10-CM / CPT / HCPCS / CDT 
    Click Element    xpath=//*[@id="selectSearch"]/div/div[1]/div
Enter Code Number or partial Code Number
    [Arguments]     ${Partialcode}
    Input Text      id=cptIcdSearchCode     ${Partialcode}
Enter Description or Partial Code Description
    [Arguments]     ${Descriptin}
    Input Text      id=cptIcdSearchCodeDesc     ${Descriptin}
Click on Submit for dignosis Code
    Click Element   id=cptIcdSearchResetButton
Result return for the search will show
    Page should not contain     An error was encountered. Please try your search again.
    Page should contain      container
