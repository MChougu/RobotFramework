*** Settings ***
Library      SeleniumLibrary
Resource        ../ResourcesMemberSerchReso.robot
#Library     DateTime
#Resource     ../Resources/DDTResFile.robot
#Library     DataDriver      ../TestData/testDataPriorAuthMMCP.csv

*** Variables ***
${Browser}  edge
${Url}      https://providers.qual.bcidaho.com/

*** Test Cases ***
Open Provider Qual Browser
