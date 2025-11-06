*** Settings ***
Library      SeleniumLibrary
Resource     ../Resources/resMMCP.robot
Library     DataDriver      ../TestData/MMCPPriorAuthTData.csv
#Library     DataDriver      ../TestData/testMMCP.xlsx   sheet_name=MMCPTdata

Suite Setup          OpenProviderBrowserQual 
Suite Teardown       Closing All Browsers
Test Template    Search forMember

*** Test Cases ***
TestDataFile using  ${Last_Name} and ${SBSB_ID}

*** Keywords ***

Search forMember
	[Arguments]    ${Last_Name}    ${SBSB_ID}
	EnterLastName       ${Last_Name}   #Cannella
	EnterEnrolleeId     ${SBSB_ID}   #970409354
	Click On Search
#	Click on enter procedureCode
#	Enter procedureCode
#	Click Search


#SearchForProirAuth
#	[Arguments]    ${Last_Name}   ${SBSB_ID}
#	EnterLastName    ${Last_Name}
#	EnterEnrolleeId   ${SBSB_ID}
