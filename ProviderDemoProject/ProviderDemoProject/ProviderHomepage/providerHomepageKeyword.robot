***Settings***
Library     SeleniumLibrary
Variables       ProviderHomepageVariables.py

***Keywords***
Open providers Homepage and test
        open BROWSER        ${URL}      ${BROWSER}
        maximize BROWSER window
        sleep    1
        page should contain         Welcome, Healthcare Providers!
        # close window
# # providers Homepage Should show Login option
#         page should contain         LOG IN
