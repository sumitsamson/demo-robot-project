*** Settings ***
Library    String
Library    OperatingSystem
Suite Setup       Startup
Suite Teardown    Teardown
Resource    ${RESOURCES}/variables.txt
 
*** Test Cases ***
01- String should not be empty test                  
    Should Not Be Empty    ${empty_string}

02- Empty string comparison                  
    Should Be Equal    ${empty_string}    ${str1}    

03- String must be equal   
    ${str1}    Convert To Lowercase    ABC
    ${str2}    Convert To Lowercase    1A2c3D
    Should Be Equal    ${str1}    ABC
    Should Be Equal    ${str2}    1A2c3D

04- Test Remove function
    Log To Console    \n Original :${price}
    ${price}    Remove String    ${price}   ,    $
	${price}    Convert To Number    ${price}
    Log To Console    \n Updated :${price}
	${temp}    Convert To Number    999.0
	Should Be Equal    ${price}    ${temp}

06- Catenate Strings
    Log To Console    \nConcatenate ${string1} And ${string2}
	${result}    Catenate    ${string1}    ${string2}
	Log To Console    \nResult: ${result}
	Should Be Equal    ${result}    Hello Robots

07- Convert To Integer    
    Log To Console    \nConvert ${number} to integer              
    ${result}    Convert To Integer    ${number}
	Log To Console    \nResult: ${result}
	${temp}    Convert To Number    40
	Should Be Equal    ${result}    ${temp}

	
*** Keywords ***
Startup
    Log    *******Start Test *******

Teardown
    Log    *******End Test ******* 
