*** Settings ***
Suite Setup       Startup
Suite Teardown    Teardown
Test Template     test
 
*** Variables ***
${string}         sample test
${empty_string}    ${EMPTY}
 
*** Test Cases ***    OK_NOK
02- Test               ${empty_string}
 
04- Test               ${empty_string}
 
06- Test               ${empty_string}
 
*** Keywords ***
Startup
    Log    *******Start Test "test"*******
 
test
    [Arguments]    ${OK_NOK}
    Should Not Be Empty    ${OK_NOK}
 
Teardown
    Log    *******End Test "test"******* 
