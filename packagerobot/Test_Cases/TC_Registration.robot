*** Settings ***
Documentation    Setting this TC for Registration Page elements.
Library     SeleniumLibrary
Library     BuiltIn
Library     DebugLibrary
#Library         ExcelDataDriver    ../Test_Excel_DataDriver/testfile.xlsx     #capture_screenshot=Skip
Resource        ../Resources/KW_Home_Page.robot
Resource        ../Resources/TC_SetUp_TearDown.robot
Resource        ../Resources/KW_Reg_Page.robot


Suite Setup     TC_SetUp_TearDown.KW_1: Browser Invokes SetUp
Suite Teardown  TC_SetUp_TearDown.KW_4: Browser TearDown

*** Test Cases ***
TC_0 Maximize the browsers
    [Documentation]     This TC is for Maximize the browsers
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure             TC_SetUp_TearDown.KW_2: Browsers is Maximized
    run keyword                                     TC_SetUp_TearDown.KW_3: Sleep Mode

TC_1 Click on Home and get redirect to the Login page.
    [Documentation]     This TC is for Click on Home and get redirect to the Login page.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure             KW_Home_Page.KW_10: Verify clicking the home hyperlink.
    run keyword                                     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait

TC_2 Verify elements present on the login page.
    [Documentation]     This TC is for Verify elements present on the login page.
    [Tags]              Smoke Test
    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure             KW_Home_Page.KW_10_1_Elements_Present_in_Home_Page.
    run keyword                                     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait

TC_3 Mouse hover and Click on Register link and get redirect to the Registreation page.
    [Documentation]     This TC is for Mouse hover and Click on Register link and get redirect to the Registreation page.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure             KW_Reg_Page.KW Mouse hover on the Register Element.
    run keyword                                     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait
    run keyword and continue on failure             KW_Reg_Page.KW Click on the Register element.
    run keyword                                     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait
    run keyword                                     sleep  5 seconds

TC_4 Insert datas into the fileds to complete the registration.
    [Documentation]     This TC is for Inserting datas into the fileds to complete the registration.
    [Tags]              Smoke Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test


#    run keyword and continue on failure             KW_Reg_Page.KW Open the Excel Sheet.
#    run keyword                                     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait
    run keyword and continue on failure             KW_Reg_Page.KW Enter Name, Email & Password using faker.
    run keyword                                     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait
    run keyword and continue on failure             KW_Reg_Page.KW Enter Company Name.
    run keyword                                     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait
    run keyword                                     KW_Reg_Page.KW Get Column Count.
    run keyword                                     KW_Reg_Page.KW Get Row Count.
#    run keyword and continue on failure             KW_Reg_Page.KW Save and close the Excel Sheet.
#    run keyword and continue on failure             KW_Reg_Page.KW Close the current workbook.
    run keyword and continue on failure             KW_Reg_Page.KW Click on Register Button
    run keyword                                     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait
    run keyword and continue on failure             KW Compare the text You are logged in!
    run keyword                                     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait