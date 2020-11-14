*** Settings ***
Documentation       This test suite is for testing the drag and drop.
Library             SeleniumLibrary
Library             BuiltIn
Library             DebugLibrary
#Library             Browser
Variables           ../Robot_Page_Objects_Model_Repo/Selenium_Page_Elements.py

Suite Setup     KW: Browser Invokes SetUp
Suite Teardown  KW: Browser TearDown

*** Variables ***
# ${driver_name}            ../packageblazemeter/Drivers/chromedriver.exe
${SiteURL}           http://demo.guru99.com
#${Browser_Name}     headlesschrome
${Browser_Name}     chrome
#${Browser_Name}     headlessfirefox
#${Browser_Name}     Firefox

*** Keywords ***
KW: Browser Invokes SetUp
    [Documentation]  This is a section where browsers invoke keywords are mentioned.
    Run Keyword if      "${Browser_Name}" == "headlesschrome"     Open Browser        ${SiteURL}      ${Browser_Name}   alias=headlesschrome
    ...     ELSE IF     "${Browser_Name}" == "chrome"             Open Browser        ${SiteURL}      ${Browser_Name}   alias=chrome
    ...     ELSE IF     "${Browser_Name}" == "headlessfirefox"    Open Browser        ${SiteURL}      ${Browser_Name}   alas=headlessfirefox
    ...     ELSE        Open Browser        ${SiteURL}      ${Browser_Name}     alias=firefox

KW: Browsers is Maximized
    [Documentation]  This KW is for maximizing the browser.
    Maximize Browser Window

KW: Sleep Mode
    [Documentation]  This section is for the time to wait.
    ${Sleep_Mode}=      Sleep   2 seconds
    log     ${Sleep_Mode}

KW: Selenium Implicit Wait
    [Documentation]  This section is for the Selenium Implicit Wait.
    ${Set_Selenium_Implicit_Wait_Speed}=    Set Selenium Implicit Wait  30 seconds
    log     ${Set_Selenium_Implicit_Wait_Speed}

KW: Set Selenium Speed
#    [Documentation] This section is for Set Selenium Speed for each command execution.
    ${Set_Selenium_Speed}=  Set Selenium Speed  5 seconds
    log     ${Set_Selenium_Speed}

KW: Get Selenium Implicit Wait
    [Documentation] This section is to get the selenium implicit wait.
    ${Get_Selenium_Implicit_Wait_Speed} = Get Selenium Implicit Wait
    log     ${Get_Selenium_Implicit_Wait_Speed}    html=true

KW: Set Selenium Timeout
    [Documentation] This section is to set the selenium timeout.
    ${Set_Selenium_Timeout}=    Set Selenium Timeout    2 seconds
    log     ${Set_Selenium_Timeout}

KW: Get Selenium Timeout
    [Documentation] This section is to get the selenium timeout.
    ${Get_Selenium_time_delay} = Get Selenium Timeout
    log     ${Get_Selenium_time_delay}    html=true

KW: Browser TearDown
    [Documentation]  This section will close the browser after the execution.
    Close Browser

KW: Mouse Hover on the element Selenium
    [Documentation]  This section is going to mouse hover on the selenium element.
    Mouse Over      ${Selenium_DropDown_Xpath}

KW: Click on the element Selenium
    [Documentation]  This section is going to Click on the element Selenium.
    Click Element       ${Selenium_DropDown_Xpath}

KW: Mouse Hover on the element Drag and drop from the dropdown.
    [Documentation]  This section is going to mouse hover on the selenium element.
    Mouse Over      ${DragAndDrop_Xpath}

KW: Click on the element Drag and drop from the dropdown.
    [Documentation]   Click the link in the drop down.
    Click Element       ${DragAndDrop_Xpath}

KW: Draging and dropping Bank to debit side account.
    [Documentation]   Dragging & Dropping from to.
    Drag And Drop       ${First_Positive_5000}      ${Debit_Side_Amount}
    sleep   2 seconds

KW: Draging and dropping Account to debit side account by offset.
    [Documentation]   Dragging & Dropping by offset.
    debug
    ${Get_Window_Size}=    Get Window Size
    log     ${Get_Window_Size}
    Drag And Drop By Offset     ${Bank_xpath}       364     522
#    364     522
    Capture Page Screenshot     custom_name.png

#    ${url} =  Execute Javascript  return window.location.href;

*** Test Cases ***
TC_0 for maximize and redirecting to the Drag & Drop site.
    [Documentation]     This TC is for maximize and redirecting to the Drag & Drop site.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on failure                         KW: Browsers is Maximized
    run keyword                                                 KW: Set Selenium Speed
    run keyword and continue on failure                         KW: Mouse Hover on the element Selenium
#    run keyword                                                 KW: Sleep Mode
    run keyword and continue on failure                         KW: Click on the element Selenium
#    run keyword                                                 KW: Sleep Mode
    run keyword and continue on failure                         KW: Click on the element Drag and drop from the dropdown.
#    run keyword                                                 KW: Sleep Mode

TC_1 for Draging and dropping Bank to debit side account.
    [Documentation]     This TC is for Draging and dropping Bank to debit side account.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

#    run keyword                                                 debug
    run keyword and continue on failure                         KW: Draging and dropping Bank to debit side account.
    run keyword                                                 KW: Sleep Mode
    run keyword and continue on failure                         KW: Draging and dropping Account to debit side account by offset.
    run keyword                                                 KW: Sleep Mode