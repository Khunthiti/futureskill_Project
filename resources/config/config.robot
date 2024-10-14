*** Variables ***

${baseUrl}     https://futureskill.co/


*** Keywords ***
Open And Maximize Browser
    [Arguments]    ${baseUrl}    ${browser}
    Open Browser    ${baseUrl}    ${browser}
    Maximize Browser Window