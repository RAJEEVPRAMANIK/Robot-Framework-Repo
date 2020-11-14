*** Settings ***
Documentation   This settings is for the KW Reg Page
Library         SeleniumLibrary
Library         BuiltIn
Library         FakerLibrary        locale=en_US
Library         ExcellentLibrary

Variables       ../Robot_Page_Objects_Model_Repo/Page_Elements.py
Variables       ../Test_Data/TD_Page.py
Resource        ../Resources/TC_SetUp_TearDown.robot
Resource        ../Resources/KW_Home_Page.robot

*** Keywords ***
KW Open the Excel Sheet.
    Open Workbook       E:/Manual_Automation/PyCharmIDE/2021_Projects/Project_RPA_BlazeDemo_Site/packagerobot/Test_Excel_DataDriver/testfile.xlsx

KW Save and close the Excel Sheet.
    Save

KW Close the current workbook.
    Close Workbook

KW Get Column Count.
    comment     Pass
    ${Get_Column_Count}=    Get Column Count
    Set Global Variable     ${Get_Column_Count}
    log     ${Get_Column_Count}

KW Get Row Count.
    ${Get_Row_Count}=      Get Row Count
    log     ${Get_Row_Count}

KW_0_Clicking the Register Hyperlink.
    Click Element       ${Xpath_Register_Link}      action_chain=True

KW Mouse hover on the Register Element.
    Mouse Over          ${Xpath_Register_Link}

KW Click on the Register element.
    Click Element       ${Xpath_Register_Link}

KW Clear the Name field.
    Clear Element Text      ${Xpath_Name_Field}

KW Enter Name, Email & Password using faker.
    [Tags]       Faker for Name, Email & Pwd

    Comment    Generate User Name
    ${UserName}=    Name
    Log    ${UserName}
    Input Text      ${Xpath_Name_Field}     ${UserName}     bool = True

    comment     Generate Email Address
    ${Email_Address}=   Email
    log     ${Email_Address}
    Input Text      ${Xpath_E_Mail_Address_For_Reg}     ${Email_Address}        bool = True

    comment     Generate password & confirm password.
    ${Password}=   Password
    log     ${Password}
    Input Text      ${text_Password_For_Reg}     ${Password}        bool = True
    Input Text      ${text_Confirm_Password_For_Reg}     ${Password}        bool = True

    run keyword         KW Open the Excel Sheet.
    ${Get_Row_Count}=       Get Row Count
    log     ${Get_Row_Count}

    ${Next_Row_Evalute}=       evaluate     ${Get_Row_Count}+1

    Write To Cell       A${Next_Row_Evalute}      ${UserName}
    Write To Cell       B${Next_Row_Evalute}      ${Email_Address}
    Write To Cell       C${Next_Row_Evalute}      ${Password}

    run keyword         KW Save and close the Excel Sheet.
    run keyword         KW Close the current workbook.

KW Enter Company Name.
    comment     Generate Company Name

    ${Company_Name}=    Company
    Log     ${Company_Name}
    Input Text      ${Xpath_Company_Field}      ${Company_Name}     bool = True

KW Click on Register Button
    comment     Clicking the Regsiter button.

    Click Button    ${Xpath_Register_Button}

KW Compare the text You are logged in!

    Element Text Should Be      ${Xpath_You_Are_Logged_In}      You are logged in!