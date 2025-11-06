*** Settings ***
Library     DateTime
Resource     ../Resources/CopyDatafromfileResource.robot
Library    DataDriver    ../TestData/testDataforMember.csv
Suite Setup    Open Provider Qual Browser
#memberSearchData.csv
#Library    DataDriver    ../TestData/tetMember.xlsx
#Suite Setup    OfficeAdmin Login
#Suite Teardown
Test Template    Test Data for member
*** Test Cases ***
TestMembers inCSVfile using    ${Last_Name}     ${FirstName}    ${DoBmdY}    ${SuscriberId}

*** Keywords ***
Test Data for member
    [Arguments]     ${Last_Name}     ${FirstName}    ${DoBmdY}   ${SuscriberId}
	Enter LastName   	     ${Last_Name}
   	Enter FirstName   	     ${FirstName}
    Enter DOB	        ${DoBmdY}
    Enter EnrolleeId	       ${SuscriberId}
#    Click on search button
#	Click on Search result
#	Click on Benefit Information
