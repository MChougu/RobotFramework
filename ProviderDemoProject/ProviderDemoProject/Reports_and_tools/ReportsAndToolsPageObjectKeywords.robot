*** Settings ***
Library     SeleniumLibrary
Variables       ../LogInProvideronQual/LoginVariables.py
Variables       ../ProviderHomepage/ProviderHomepageVariables.py
Variables       VariablesForReportsandTools.py

# ***Test Cases***
***Keyword***
login to Providers Qual UI
    open browser    ${Url}      ${Browser}
    Maximize Browser Window
    sleep   2
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/ul/li[2]
    Input Text     id=email        ${Username}
    Input Password    id=password    ${Password}
    Click Element    id=btn-login
    Sleep       2


Mouse Hover to Reports and Tools 
    Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Clinical Editor tool 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[3]/a
Click on Launch button
    Click Element     xpath=//*[@id="1418415350885"]/div/div/table[2]/tbody/tr/td[2]/a


# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Allowance Tool 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[2]/a
    
# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Coordination of Benefits 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[4]/a
Click on Launch button for Coordination of Benefits 
    Click Element     xpath=//*[@id="1413578528303"]/div/div/table[2]/tbody/tr/td[2]/a
# Enter Paitent Name
#     Input Text      id=ctl00_middleContent_txtPatientName   ${Paitentname}
# Click on Launch button for Fax transmittal form 
#     Click Element     xpath=//*[@id="1413578528303"]/div/div/table[3]/tbody/tr/td[2]/a


# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Dental Fee Schedules 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[5]/a
    
# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Dental NEA FastAttach 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[6]/a

# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Electronic Funds Transfer 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[7]/a
Click on Launch button for Electronic Funds Transfer
    Click Element   xpath=//*[@id="1427561204679"]/div/div/table[2]/tbody/tr/td[2]/a


# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Find a Provider 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[8]/a

# Mouse Hover to Reports and Tools ForICD10
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On ICD-10-CM / CPT / HCPCS / CDT 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[9]/a


# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Informational Provider Search 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[10]/a


# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Mandatory Trainning 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[11]/a


# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Mandatory Training 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[11]/a
Click on Launch button for Mandatory Training
    Click Element   xpath=//*[@id="1636726350994"]/div/div/table/tbody/tr/td[2]/a



# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Primary Care ProviderPCP Tool 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[12]/a
Click on Launch button for Individual PCP Tool
    Click Element   xpath=//*[@id="1483410122277"]/div/div/table[2]/tbody/tr/td[2]/a

# Click on Launch button for Mass PCP Update Tool 
#     Click Element   xpath=//*[@id="1483410122277"]/div/div/table[3]/tbody/tr/td[2]/a


# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Prior Authorization Procedure Code Lookup 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[13]/a

# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Remittance Display 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[1]/ul/li[14]/a

# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On ACO Report 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[2]/ul/li[2]/a

# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Credentialing Status 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[2]/ul/li[3]/a

# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Key Performance Indicators 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[2]/ul/li[4]/a

# Mouse Hover to Reports and Tools 
#     Mouse Over      xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]
Click On Rural Value-Based Programs 
    Click Element     xpath=//*[@id="header_s1"]/div[2]/div/div[2]/ul/li[5]/div/div[2]/ul/li[5]/at
# Click on Launch button for Individual PCP Tool
#     Click Element   xpath=//*[@id="1584161066595"]/div/div/table[2]/tbody/tr/td[2]/a

