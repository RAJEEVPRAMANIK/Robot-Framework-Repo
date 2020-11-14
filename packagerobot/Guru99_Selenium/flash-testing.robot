*** Settings ***
Documentation   This setting is for Flash Testing Suite Setup, Suite Teardown, Test Setup & Test Teardown.
Library         SeleniumLibrary
Library         OperatingSystem
Library         BuiltIn
Variables        ../Robot_Page_Objects_Model_Repo/Selenium_Page_Elements.py

Suite Setup     KW_1: Browser Invokes SetUp
Suite Teardown  KW_4: Browser TearDown


*** Variables ***
# ${driver_name}            ../packageblazemeter/Drivers/chromedriver.exe
${SiteURL}           http://demo.guru99.com
#${Browser_Name}     headlesschrome
${Browser_Name}     chrome
#${Browser_Name}     headlessfirefox
#${Browser_Name}     Firefox


*** Keywords ***
GetEnvironmentVariablesTest
    [Tags]    system
    ${ComputerName}=        Get Environment Variable    COMPUTERNAME
    ${OperatingSystem}=     Get Environment Variable    OS
    ${TestUserName}=        Get Environment Variable    USERNAME
    ${SystemDir}=           Get Environment Variable    WINDIR
    ${ProcessorLevel}=      Get Environment Variable    PROCESSOR_LEVEL
    Log    ${ComputerName}
    Log    ${OperatingSystem}
    Log    ${TestUserName}
    Log    ${SystemDir}
    Log    ${ProcessorLevel}

KW_1: Browser Invokes SetUp
    [Documentation]  This is a section where browsers invoke keywords are mentioned.
    Run Keyword if      "${Browser_Name}" == "headlesschrome"     Open Browser        ${SiteURL}      ${Browser_Name}   alias=headlesschrome
    ...     ELSE IF     "${Browser_Name}" == "chrome"             Open Browser        ${SiteURL}      ${Browser_Name}   alias=chrome
    ...     ELSE IF     "${Browser_Name}" == "headlessfirefox"    Open Browser        ${SiteURL}      ${Browser_Name}   alas=headlessfirefox
    ...     ELSE        Open Browser        ${SiteURL}      ${Browser_Name}     alias=firefox

KW: Get Windows Handles of Browsers.
    [Documentation]  This is a section for Get Windows Handles of Browsers.
    @{Get_Window_Handles}=      Get Window Handles
    set global variable     @{Get_Window_Handles}

KW: Get Window Identifiers of Browsers.
    [Documentation]  This is a section for Get Windows Handles of Browsers.
    @{Get_Window_Identifiers}=  Get Window Identifiers

KW: Get Window Titles of Browsers.
    [Documentation]  This is a section for Get Window Titles of Browsers.
    @{Get_Window_Titles}=   Get Window Titles

KW_2: Browsers is Maximized
    [Documentation]  This KW is for maximizing the browser.
    Maximize Browser Window

KW_3: Sleep Mode
    [Documentation]  This section is for the time to wait.
    ${Sleep_Mode}=      Sleep   2 seconds
    log     ${Sleep_Mode}

KW_3_0: Selenium Implicit Wait
    [Documentation]  This section is for the Selenium Implicit Wait.
    ${Set_Selenium_Implicit_Wait_Speed}=    Set Selenium Implicit Wait  30 seconds
    log     ${Set_Selenium_Implicit_Wait_Speed}

KW_3_1: Set Selenium Speed
#    [Documentation] This section is for Set Selenium Speed for each command execution.
    ${Set_Selenium_Speed}=  Set Selenium Speed  1 seconds
    log     ${Set_Selenium_Speed}

KW_3_2: Get Selenium Implicit Wait
    [Documentation] This section is to get the selenium implicit wait.
    ${Get_Selenium_Implicit_Wait_Speed} = Get Selenium Implicit Wait
    log     ${Get_Selenium_Implicit_Wait_Speed}    html=true

KW_3_3: Set Selenium Timeout
    [Documentation] This section is to set the selenium timeout.
    ${Set_Selenium_Timeout}=    Set Selenium Timeout    10 seconds
    log     ${Set_Selenium_Timeout}

KW_3_4: Get Selenium Timeout
    [Documentation] This section is to get the selenium timeout.
    ${Get_Selenium_time_delay} = Get Selenium Timeout
    log     ${Get_Selenium_time_delay}    html=true

KW_4: Browser TearDown
    [Documentation]  This section will close the browser after the execution.
    Close Browser

KW_5: Mouse Hover on the element Selenium
    [Documentation]  This section is going to mouse hover on the selenium element.
    Mouse Over      ${Selenium_DropDown_Xpath}

KW_6: Click on the element Selenium
    [Documentation]  This section is going to Click on the element Selenium.
    Click Element       ${Selenium_DropDown_Xpath}

KW_7: Mouse hover on the Flash_Movie_Demo
    [Documentation]  This section is going to mouse hover on the Flash_Movie_Demo.
    Mouse Over      ${Flash_Movie_Demo_Xpath}

KW_8: Open new windows or Tab
    [Documentation]  This section is to Open new windows or Tab.
    Execute Javascript      window.open()

KW_9: Copy the link
    [Documentation]  This section is to Copy the link.
    ${All_Link}=   Get Element Attribute    ${Flash_Movie_Demo_Xpath}     href
    set global variable     ${All_Link}
    LOG  ${All_Link}   html=true

KW_10: Switch to other Tab.
    [Documentation]  This section is to Switch to  other Tab.
    @{Get_Window_Handles}=      Get Window Handles
    Switch Window   @{Get_Window_Handles}[0]

KW_11: GOTO NEW TAB AND OPEN THE URL
    [Documentation]  This section is to GOTO NEW TAB AND OPEN THE URL
    Go To   ${All_Link}

*** Test Cases ***
TC_0 Maximize the browsers and get the browsers handle
    [Documentation]     This TC is for Maximize the browsers
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure             KW_2: Browsers is Maximized
    run keyword                                     KW: Get Windows Handles of Browsers.
    run keyword                                     KW: Get Window Identifiers of Browsers.
    run keyword                                     KW: Get Window Titles of Browsers.

TC_1 Mouse Hover on the element Selenium
    [Documentation]     This TC is for Mouse Hover on the element Selenium
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword                                     KW_5: Mouse Hover on the element Selenium
    KW_3: Sleep Mode

TC_2 Click on the element Selenium
    [Documentation]     This TC is for Click on the element Selenium
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword                                     KW_6: Click on the element Selenium
    KW_3: Sleep Mode

TC_3 Mouse hover and copy the url on the Flash_Movie_Demo in the Selenium drop down and get the url link..
    [Documentation]     This TC is for Mouse hover and copy the Flash_Movie_Demo URL.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure             KW_7: Mouse hover on the Flash_Movie_Demo
    run keyword                                     KW_3: Sleep Mode
    run keyword and continue on failure             KW_9: Copy the link

TC_4 To launch new tab on the same browser and get the windows handle.
    [Documentation]     This TC is to launch new tab on the same browser and get the windows handle.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure             KW_8: Open new windows or Tab
    run keyword                                     KW_3: Sleep Mode
    run keyword                                     KW: Get Windows Handles of Browsers.
    run keyword                                     KW: Get Window Identifiers of Browsers.
    run keyword                                     KW: Get Window Titles of Browsers.

    run keyword and continue on failure             KW_10: Switch to  other Tab.
    run keyword                                     KW_3: Sleep Mode

    run keyword and continue on failure             KW_11: GOTO NEW TAB AND OPEN THE URL
    run keyword                                     KW_3: Sleep Mode
