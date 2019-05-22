*** Settings ***
Library    String
Library    OperatingSystem
Suite Setup       Startup
Suite Teardown    Teardown
Resource    ${RESOURCES}/variables.txt
 
*** Test Cases ***
01- String should not be empty test                  
    Should Not Be Empty    ${String}

02- Empty string comparison                  
    Should Be Equal    ${empty_string}    ${EMPTY}    

03- String must be equal   
    ${str1}    Convert To Lowercase    ABC
    ${str2}    Convert To Lowercase    1A2c3D
    Should Be Equal    ${str1}    abc
    Should Be Equal    ${str2}    1a2c3d

04- Test Remove function
    Log To Console    \n Original :${price}
    ${price}    Remove String    ${price}   ,    $
	${price}    Convert To Number    ${price}
    Log To Console    \n Updated :${price}
	${temp}    Convert To Number    7999.0
	Should Be Equal    ${price}    ${temp}

05- Sleep for 10 seconds                  
    Sleep    10s

06- Catenate Strings
    Log To Console    \nConcatenate ${string1} And ${string2}
	${result}    Catenate    ${string1}    ${string2}
	Log To Console    \nResult: ${result}
	Should Be Equal    ${result}    Hello Robot

07- Convert To Integer    
    Log To Console    \nConvert ${number} to integer              
    ${result}    Convert To Integer    ${number}
	Log To Console    \nResult: ${result}
	${temp}    Convert To Number    4
	Should Be Equal    ${result}    ${temp}

	
*** Keywords ***
Startup
    Log    *******Start Test *******

Teardown
    Log    *******End Test ******* 
