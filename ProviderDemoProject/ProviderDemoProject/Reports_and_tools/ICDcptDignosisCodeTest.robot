*** Settings ***
Library     SeleniumLibrary
Resource        ../Reports_and_tools/ICDcptDignosisCodeKeywords.robot
Suite Setup          Login to test ICD 10 Dignosis Code
Test Template      Do the Testing for ICD 10 Code

***Test Cases***
Test for D34            D34      D 
Test for B32            B110     ${EMPTY}
Test for E10            E10      ${EMPTY}
Test for D32            D32     ${EMPTY}
Test for Empty         ${EMPTY}     ${EMPTY}           #This will be Failed TC
***Keyword***
Do the Testing for ICD 10 Code
    [Arguments]     ${Partialcode}      ${Descriptin}
    Enter Code Number or partial Code Number     ${Partialcode}
    Enter Description or Partial Code Description       ${Descriptin}
    Click on Submit for dignosis Code
    sleep      2 
    Result return for the search will show
    