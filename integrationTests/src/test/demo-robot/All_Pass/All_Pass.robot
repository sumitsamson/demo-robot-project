*** Settings ***
Suite Setup       Startup
Suite Teardown    Teardown
Resource    ../../resources/variables.txt
 
*** Test Cases ***
01- Test                  
    Should Not Be Empty    ${String}
02- Test                  
    Should Be Equal    ${empty_string}    ${EMPTY}    

	 
*** Keywords ***
Startup
    Log    *******Start Test *******

Teardown
    Log    *******End Test ******* 