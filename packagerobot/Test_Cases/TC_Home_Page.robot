*** Settings ***
Documentation   Setting this TC is for Home Page elements.
Library         SeleniumLibrary
Library         BuiltIn
#Library         ExcelDataDriver    ../Test_Excel_DataDriver/testfile.xlsx     #capture_screenshot=Skip
Resource        ../Resources/KW_Home_Page.robot
Resource        ../Resources/TC_SetUp_TearDown.robot

Suite Setup     TC_SetUp_TearDown.KW_1: Browser Invokes SetUp
Suite Teardown  TC_SetUp_TearDown.KW_4: Browser TearDown

*** Test Cases ***
TC_0 Maximize the browsers
    [Documentation]     This TC is for Maximize the browsers
    [Tags]              Smoke Test
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure             TC_SetUp_TearDown.KW_2: Browsers is Maximized

TC_1 for Travel the world Options :
    [Documentation]     This TC is for the hyper link "Travel The World"
    [Tags]              Smoke Test
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure         TC_SetUp_TearDown.KW_3_1: Set Selenium Speed
    run keyword and continue on failure         KW_Home_Page.KW_Elements_Present_in_Home_Page
    run keyword and return status               TC_SetUp_TearDown.GetEnvironmentVariablesTest

    run                                         TC_SetUp_TearDown.KW_3: Sleep Mode
    run keyword and continue on failure         KW_Home_Page.KW_7: Get all the links present in the current page
    run keyword                                 KW_Home_Page.KW_0: Selenium Implicit Wait
    run keyword and continue on failure         KW_Home_Page.KW_1: Get the Home Page Title.
    run keyword and continue on failure         KW_Home_Page.KW_2: Verify mousehovering on the hyperlink "Travel The World".
    TC_SetUp_TearDown.KW_3: Sleep Mode
    KW_Home_Page.KW_3: Get Text from the element "Travel The World".
    KW_Home_Page.KW_4: Verify "Travel The World" is displayed.
    KW_Home_Page.KW_5: Verify "Travel The World" is enabled.

TC_2 for Home Options :
    [Documentation]     This TC is for the hyperlink "Home"
    [Tags]              Regression Testing
    Pass Execution      Passing the test case   Deprecated	-regression
#    Fail                Failing the text case   Deprecated  -regression

    run keyword and continue on failure         KW_Home_Page.KW_8: Verify by clicking on the hyperlink "Travel The World".
    run                                         KW_Home_Page.KW_Reload_the_Page
    run keyword and ignore error                KW_Home_Page.KW_9: Verify mousehovering on the hyperlink "Home".
    run keyword                                 KW_Home_Page.KW_10: Verify clicking the home hyperlink.
    run keyword and continue on failure         KW_Home_Page.KW_10_1_Elements_Present_in_Home_Page.
    run keyword and continue on failure         KW_Home_Page.KW_11: Browsers Backward
    run keyword                                 KW_Home_Page.KW_11_1: Wait Until Element Contains.
    run keyword and continue on failure         KW_Home_Page.KW_11_2: Wait Until Element Is Enabled.
    run keyword and continue on failure         KW_Home_Page.KW_11_3: Wait Until Element Is Visible.
    run keyword and continue on failure         KW_Home_Page.KW_0: Selenium Implicit Wait
    TC_SetUp_TearDown.KW_3: Sleep Mode

TC_3 for choose your departure city:
    [Documentation]     This TC is for the Departure City Drop Down
    [Tags]              Regression Testing
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Not-Ready

    run keyword and continue on failure         KW_Home_Page.KW_12: Verify the Choose your departure city Drop Down is working or not:

TC_4 for choose your destination city:
    [Documentation]     This TC is for the Destination City Drop Down
    [Tags]              Regression Testing
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Not-Ready

    run keyword and continue on failure         KW_Home_Page.KW_13: Verify the Choose your destination city Drop Down is working or not:

TC_5 for Find Flights Button:
    [Documentation]     This TC is for the Find Flights Button
    [Tags]              Regression Testing
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Not-Ready

     run keyword and continue on failure        KW_Home_Page.KW_14: Verify the FIND FLIGHTS Button is working or not:
     TC_SetUp_TearDown.KW_3_0: Selenium Implicit Wait
     TC_SetUp_TearDown.KW_3: Sleep Mode

TC_6 for One by One selecting the departure & destination city:
    [Documentation]     This TC is for selecting the departure & destination city
    [Tags]              Regression Testing
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Not-Ready

    run keyword and continue on failure         KW_Home_Page.KW_15: Verify by selecting values from the dropdowns and check wether the details are found or not.
    TC_SetUp_TearDown.KW_3: Sleep Mode

TC_7 for random values selecting from the departure & destination drop down:
    [Documentation]     This TC is for selecting random value from the departure & destination city
    [Tags]              Regression Testing
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Not-Ready

     run keyword and continue on failure        KW_Home_Page.KW_16: Verify by selecting random labels from the dropdowns and check wether the details are found or not.
     TC_SetUp_TearDown.KW_3: Sleep Mode

TC_8 Clicking Home and checking the Registration
    [Documentation]     This TC is for selecting random value from the departure & destination city
    [Tags]              Regression Testing
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Not-Ready

    run keyword                                 KW_Home_Page.KW_10: Verify clicking the home hyperlink.
    TC_SetUp_TearDown.KW_3_0: Selenium Implicit Wait

TC_5 for Find Flights Button:
    [Documentation]     This TC is for the Find Flights Button
    [Tags]              Regression Testing
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Not-Ready

    run keyword and continue on failure         KW_Home_Page.KW_15: Verify by selecting values from the dropdowns and check wether the details are found or not.
    TC_SetUp_TearDown.KW_3: Sleep Mode
