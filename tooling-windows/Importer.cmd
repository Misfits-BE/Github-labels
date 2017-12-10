@echo off 

echo Dit script creert de standaard bug tracker labels van Activisme_BE voor een github repository. 
echo.

echo Specifieer de github organisatie/user voor de GitHub repository,
echo BV: https://github.com/gebruiker/mijn-project
echo                       ----------
echo.
set /p repoUser="  Enter organisatie/gebruikersnaam : "

echo. 
echo Specifieer de github repository naam, 
echo BV: https://github.com/gebruiker/mijn-project
echo                                 -------------
echo. 
set /p repoName="  Enter de repository naam : "

echo.
echo Uw github gegevens:
echo.

set /p ghUser="Uw github gebruikersnaam : "
set /p ghPass="Uw github wachtwoord     : "

echo.
echo Creating labels ...

curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Bug\",\"color\":\"d93f0b\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Chore\",\"color\":\"0e8a16\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Confirmed\",\"color\":\"d93f0b\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Critical priority\",\"color\":\"b60205\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Discussion\",\"color\":\"1d76db\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Duplicate\",\"color\":\"d4c5f9\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Enhancement\",\"color\":\"fef2c0\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Feature\",\"color\":\"fef2c0\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"High priority\",\"color\":\"e99695\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Invalid\",\"color\":\"d4c5f9\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Legal\",\"color\":\"5319e7\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Low priority\",\"color\":\"e99695\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Medium priority\",\"color\":\"e99695\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"On hold\",\"color\":\"d4c5f9\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Optimalization\",\"color\":\"0e8a16\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Question\",\"color\":\"1d76db\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Security\",\"color\":\"d93f0b\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"Wontfix\",\"color\":\"d4c5f9\"}"
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels -H "Content-Type: application/json" -d "{\"name\":\"PR provided\",\"color\":\"d4c5f9\"}"

echo.
echo Current labels ...
curl -k -u "%ghUser%:%ghPass%" https://api.github.com/repos/%repoUser%/%repoName%/labels

pause