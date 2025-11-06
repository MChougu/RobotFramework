*** Settings ***
Library     SeleniumLibrary
Resource        ../Reports_and_tools/ICDcptDignosisCodeKeywords.robot
Suite Setup          Login to test ICD 10 Dignosis Code
Test Template      Do the Testing for ICD 10 Code
Library     Datadriver     ../Reports_and_tools/ICDcptTestData.csv

***Test Cases***
# B110;${EMPTY};
# E10;${EMPTY};
# D32;${EMPTY};
# ${EMPTY};${EMPTY};
Test for ICD from csv  using ${Partialcode} and  ${Descriptin} 
***Keyword***
Do the Testing for ICD 10 Code
    [Arguments]     ${Partialcode}      ${Descriptin}
    Enter Code Number or partial Code Number     ${Partialcode}
    Enter Description or Partial Code Description       ${Descriptin}
    Click on Submit for dignosis Code
    sleep      2 
    Result return for the search will show
    