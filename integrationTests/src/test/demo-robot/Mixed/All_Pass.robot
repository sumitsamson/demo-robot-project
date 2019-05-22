*** Settings ***
Suite Setup       Startup
Suite Teardown    Teardown
Test Template     test
 
*** Variables ***
${string}         sample test
${empty_string}    ${EMPTY}
 
*** Test Cases ***    OK_NOK
01- Test               ${String}

03- Test               ${String}

05- Test               ${String}
 
*** Keywords ***
Startup
    Log    *******Start Test "test"*******
 
test
    [Arguments]    ${OK_NOK}
    Should Not Be Empty    ${OK_NOK}
 
Teardown
    Log    *******End Test "test"******* 
