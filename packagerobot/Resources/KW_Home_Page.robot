*** Settings ***
Documentation   This settings is for the KW Home Page
Library         SeleniumLibrary
Library         BuiltIn

Variables       ../Robot_Page_Objects_Model_Repo/Page_Elements.py
Variables       ../Test_Data/TD_Page.py
Resource        ../Resources/TC_SetUp_TearDown.robot

*** Keywords ***
KW_Reload_the_Page
    Reload Page
    log to console      The page got reloaded.

KW_Elements_Present_in_Home_Page
    Page Should Contain     Travel The World
    Page Should Contain     home
    Page Should Contain     Welcome to the Simple Travel Agency!
    Page Should Contain     The is a sample site you can test with BlazeMeter!
    Page Should Contain     Check out our destination of the week! The Beach!
    Page Should Contain     Choose your departure city:
    Page Should Contain     Choose your destination city:
    Page Should Contain Button      ${Xpath_Find_Flight_Button}
    Page Should Contain Element     ${Xpath_Departure_DropDown}
    Page Should Contain Element     ${Xpath_Destination_DropDown}
    Page Should Contain Link        ${Xpath_Travel_The_World}
    Page Should Contain Link        ${Xpath_Home}
    Page Should Contain Link        ${Xpath_Destination_of_the_week_Link}

KW_0: Selenium Implicit Wait
    ${Selenium_Implicit_Wait} =     Set Selenium Implicit Wait      5 seconds
    Set Selenium Implicit Wait  ${Selenium_Implicit_Wait}
    log     Print the implicit wait worked.

KW_1: Get the Home Page Title.
    ${Page_Title}=  Get Title
    Log     The Page title is: ${Page_Title}
    Log Title

KW_2: Verify mousehovering on the hyperlink "Travel The World".
    Mouse Over  ${Xpath_Travel_The_World}
    Log     Print mouse hovered on the "Travel The World".

KW_3: Get Text from the element "Travel The World".
    ${Travel_The_World_Get_Text}=   Get Text  ${Xpath_Travel_The_World}
    Log     Print get text from the element "Travel The World": ${Travel_The_World_Get_Text}

KW_4: Verify "Travel The World" is displayed.
    ${The_Display}=    Element Should Be Visible   ${Xpath_Travel_The_World}
    Log     Print the "Travel The World" element is visible: ${The_Display}

KW_5: Verify "Travel The World" is enabled.
    ${The_Enabled}=     Element Should Be Enabled   ${Xpath_Travel_The_World}
    Log     Print the "Travel The World" element is enabled: ${The_Enabled}

KW_6: Verify "Travel The World" is focused.
    ${The_Focused}=  Element Should Be Focused   ${Xpath_Travel_The_World}
    Log     Print the element is focused: ${The_Focused}

KW_7: Get all the links present in the current page
    ${All_Links_Count}=   Get Element Count     ${Xpath_All_Links_Text}
    set global variable     ${All_Links_Count}
    log     ${All_Links_Count}  html=true

    ${elements_Texts}=    Get WebElements      ${Xpath_All_Links_Text}
    ${elements_Links}=   Get WebElement       ${Xpath_All_Href}

    FOR     ${index}    IN RANGE        ${All_Links_Count}
        log     ${index}    html= true

        ${All_Link_Text}=   Get Text    ${elements_Texts}[${index}]
        log  ${All_Link_Text}

        ${All_Link}=   Get Element Attribute    ${Xpath_All_Links_Text}     href

        LOG  ${All_Link}   html=true

        @{Link_Text_List}=      create list  ${All_Link_Text}   ${All_Link}
        log     ${Link_Text_List}

        continue for loop if    ${index}<= ${All_Links_Count}
    END

KW_8: Verify by clicking on the hyperlink "Travel The World".
    Click Element   ${Xpath_Travel_The_World}   action_chain=True
    log     The action for clicking has been performed.

KW_9: Verify mousehovering on the hyperlink "Home".
    Mouse Over  ${Xpath_Home}
    Log     Print mouse hovered on the "Home Link".

KW_10: Verify clicking the home hyperlink.
    Click Link  ${Xpath_Home}
    Log     Clicked on the Home elements.

KW_10_1_Elements_Present_in_Home_Page.
    Page should contain             BlazeDemo
    Page should contain             Login
    Page should contain             Register
    Page should contain             E-Mail Address
    Page should contain             Password
    Page should contain             Remember Me
    Page should contain             Forgot Your Password?

    Page Should Contain Button      ${Xpath_Login_Submit_Button}
    Page Should Contain Checkbox    ${checkbox_remember_for_login}

    Page Should Contain Link        ${Xpath_Register_Link}
    Page Should Contain Link        ${Header_Text_BlazeDemo}
    Page Should Contain Link        ${Xpath_Login_Link}
    Page Should Contain Link        ${Xpath_Forgot_Password}

    Page Should Contain Textfield   ${text_Email_Address_For_Login}
    Page Should Contain Textfield   ${text_Password_Field_For_Login}

    Page Should Contain Element     ${Header_Text_BlazeDemo}
    Page Should Contain Element     ${Xpath_Login_Link}
    Page Should Contain Element     ${Xpath_Register_Link}
    Page Should Contain Element     ${text_Email_Address_For_Login}
    Page Should Contain Element     ${text_Password_Field_For_Login}
    Page Should Contain Element     ${Xpath_Login_Submit_Button}
    Page Should Contain Element     ${checkbox_remember_for_login}
    Page Should Contain Element     ${Xpath_Forgot_Password}

    Page Should Not Contain     Travel The World
    Page Should Not Contain     home
    Page Should Not Contain     Welcome to the Simple Travel Agency!
    Page Should Not Contain     The is a sample site you can test with BlazeMeter!
    Page Should Not Contain     Check out our destination of the week! The Beach!
    Page Should Not Contain     Choose your departure city:
    Page Should Not Contain     Choose your destination city:
    Page Should Not Contain Button      ${Xpath_Find_Flight_Button}
    Page Should Not Contain Element     ${Xpath_Departure_DropDown}
    Page Should Not Contain Element     ${Xpath_Destination_DropDown}
    Page Should Not Contain Link        ${Xpath_Travel_The_World}
    Page Should Not Contain Link        ${Xpath_Home}
    Page Should Not Contain Link        ${Xpath_Destination_of_the_week_Link}

KW_11: Browsers Backward
    Comment     This will click the browsers backward to go back.
    Go Back

KW_11_1: Wait Until Element Contains.
    Wait Until Element Contains     ${Xpath_Departure_Message}      Choose your departure city:                 2 seconds
    Wait Until Element Contains     ${Xpath_Travel_The_World}       Travel The World                            2 seconds
    Wait Until Element Contains     ${Xpath_Home}                   home                                        2 seconds
    Wait Until Element Contains     ${Xpath_Welcome_Message}        Welcome to the Simple Travel Agency!        2 seconds
    Wait Until Element Contains     ${Xpath_Destination_of_the_week_Link}       destination of the week! The Beach!       2 seconds
    Wait Until Element Contains     ${Xpath_Destination_Message}    Choose your destination city:               2 seconds

KW_11_2: Wait Until Element Is Enabled.
    Wait Until Element is Enabled   ${Xpath_Travel_The_World}       2 seconds
    Wait Until Element is Enabled   ${Xpath_Home}                   2 seconds
    Wait Until Element is Enabled   ${Xpath_Destination_of_the_week_Link}     2 seconds
    Wait Until Element is Enabled   ${Xpath_Departure_DropDown}     2 seconds
    Wait Until Element is Enabled   ${Xpath_Destination_DropDown}   2 seconds
    Wait Until Element is Enabled   ${Xpath_Find_Flight_Button}     2 seconds

KW_11_3: Wait Until Element Is Visible.
    Wait Until Element Is Visible   ${Xpath_Travel_The_World}       2 seconds
    Wait Until Element Is Visible   ${Xpath_Home}                   2 seconds
    Wait Until Element Is Visible  ${Xpath_Destination_of_the_week_Link}     2 seconds
    Wait Until Element Is Visible   ${Xpath_Departure_DropDown}     2 seconds
    Wait Until Element Is Visible   ${Xpath_Destination_DropDown}   2 seconds
    Wait Until Element Is Visible   ${Xpath_Find_Flight_Button}     2 seconds

KW_12: Verify the Choose your departure city Drop Down is working or not:
    @{All_Items_In_Drop_Down}=           Get List Items    ${Xpath_Departure_DropDown}     values=True
    ${Length_Of_Lists_Items}=    get length  ${All_Items_In_Drop_Down}

    FOR     ${Index}   IN RANGE     ${Length_Of_Lists_Items}
        LOG     ${Index}   html=true

        Click Element   ${Xpath_Departure_DropDown}
        TC_SetUp_TearDown.KW_3: Sleep Mode

        Select From List By Label   ${Xpath_Departure_DropDown}     ${All_Items_In_Drop_Down}[${Index}]
        TC_SetUp_TearDown.KW_3: Sleep Mode

        ${All_Items_In_Drop_Down_Label}=    Get Selected List Label    ${Xpath_Departure_DropDown}
        ${All_Items_In_Drop_Down_Value}=    Get Selected List Value    ${Xpath_Departure_DropDown}
        List Selection Should Be    ${Xpath_Departure_DropDown}     ${All_Items_In_Drop_Down_Value}
        TC_SetUp_TearDown.KW_3: Sleep Mode
    END

KW_13: Verify the Choose your destination city Drop Down is working or not:
    @{All_Items_In_Drop_Down}=           Get List Items    ${Xpath_Destination_DropDown}     values=True
    ${Length_Of_Lists_Items}=    get length  ${All_Items_In_Drop_Down}

    FOR     ${Index}   IN RANGE     ${Length_Of_Lists_Items}
        LOG     ${Index}   html=true

        Click Element   ${Xpath_Destination_DropDown}
        TC_SetUp_TearDown.KW_3: Sleep Mode

        Select From List By Value   ${Xpath_Destination_DropDown}     ${All_Items_In_Drop_Down}[${Index}]

        Select From List By Label   ${Xpath_Destination_DropDown}     ${All_Items_In_Drop_Down}[${Index}]
        TC_SetUp_TearDown.KW_3: Sleep Mode

        ${All_Items_In_Drop_Down_Label}=    Get Selected List Label    ${Xpath_Destination_DropDown}
        ${All_Items_In_Drop_Down_Value}=    Get Selected List Value    ${Xpath_Destination_DropDown}
        List Selection Should Be    ${Xpath_Destination_DropDown}     ${All_Items_In_Drop_Down_Value}
        TC_SetUp_TearDown.KW_3: Sleep Mode
    END

KW_14: Verify the FIND FLIGHTS Button is working or not:
        Click Button        ${Xpath_Find_Flight_Button}

KW_15: Verify by selecting values from the dropdowns and check wether the details are found or not.
    @{All_Items_In_Departure_Drop_Down}=           Get List Items    ${Xpath_Departure_DropDown}     values=True
    ${Length_Of_Departure_Lists_Items}=    get length  ${All_Items_In_Departure_Drop_Down}

    @{All_Items_In_Destination_Drop_Down}=           Get List Items    ${Xpath_Destination_DropDown}     values=True
    ${Length_Of_Lists_Items}=    get length  ${All_Items_In_Destination_Drop_Down}

    FOR     ${Index}   IN RANGE     ${Length_Of_Lists_Items}
        LOG     ${Index}   html=true

        Click Element   ${Xpath_Departure_DropDown}
        TC_SetUp_TearDown.KW_3: Sleep Mode

        Click Element   ${Xpath_Destination_DropDown}
        TC_SetUp_TearDown.KW_3: Sleep Mode

        Select From List By Label   ${Xpath_Departure_DropDown}     ${All_Items_In_Departure_Drop_Down}[${Index}]
        TC_SetUp_TearDown.KW_3: Sleep Mode

        Select From List By Value   ${Xpath_Destination_DropDown}     ${All_Items_In_Destination_Drop_Down}[${Index}]
        TC_SetUp_TearDown.KW_3: Sleep Mode

        ${All_Items_In_Drop_Down_Label}=    Get Selected List Label    ${Xpath_Departure_DropDown}
        ${All_Items_In_Drop_Down_Value}=    Get Selected List Value    ${Xpath_Departure_DropDown}
        List Selection Should Be    ${Xpath_Departure_DropDown}     ${All_Items_In_Drop_Down_Value}
        TC_SetUp_TearDown.KW_3: Sleep Mode

        ${All_Items_In_Drop_Down_Label}=    Get Selected List Label    ${Xpath_Destination_DropDown}
        ${All_Items_In_Drop_Down_Value}=    Get Selected List Value    ${Xpath_Destination_DropDown}
        List Selection Should Be    ${Xpath_Destination_DropDown}     ${All_Items_In_Drop_Down_Value}
        TC_SetUp_TearDown.KW_3: Sleep Mode

        KW_14: Verify the FIND FLIGHTS Button is working or not:

        TC_SetUp_TearDown.KW_3_0: Selenium Implicit Wait
        TC_SetUp_TearDown.KW_3: Sleep Mode

        KW_11: Browsers Backward
        TC_SetUp_TearDown.KW_3_0: Selenium Implicit Wait
    END

KW_16: Verify by selecting random labels from the dropdowns and check wether the details are found or not.
    @{All_Items_In_Departure_Drop_Down}=           Get List Items    ${Xpath_Departure_DropDown}     values=True
    ${Length_Of_Departure_Lists_Items}=    get length  ${All_Items_In_Departure_Drop_Down}

    @{All_Items_In_Destination_Drop_Down}=           Get List Items    ${Xpath_Destination_DropDown}     values=True
    ${Length_Of_Lists_Items}=    get length  ${All_Items_In_Destination_Drop_Down}

    FOR     ${Index}   IN RANGE     ${Length_Of_Lists_Items}
        LOG     ${Index}   html=true

        ${Randon_Numbers}=  evaluate    random.randint(0,6)
        set global variable     ${Randon_Numbers}
        log     ${Randon_Numbers}

        Select From List By Label   ${Xpath_Departure_DropDown}     ${All_Items_In_Departure_Drop_Down}[${Randon_Numbers}]
        TC_SetUp_TearDown.KW_3: Sleep Mode

        Select From List By Value   ${Xpath_Destination_DropDown}     ${All_Items_In_Destination_Drop_Down}[${Randon_Numbers}]
        TC_SetUp_TearDown.KW_3: Sleep Mode

        ${All_Items_In_Drop_Down_Label}=    Get Selected List Label    ${Xpath_Departure_DropDown}
        ${All_Items_In_Drop_Down_Value}=    Get Selected List Value    ${Xpath_Departure_DropDown}
        List Selection Should Be    ${Xpath_Departure_DropDown}     ${All_Items_In_Drop_Down_Value}
        TC_SetUp_TearDown.KW_3: Sleep Mode

        ${All_Items_In_Drop_Down_Label}=    Get Selected List Label    ${Xpath_Destination_DropDown}
        ${All_Items_In_Drop_Down_Value}=    Get Selected List Value    ${Xpath_Destination_DropDown}
        List Selection Should Be    ${Xpath_Destination_DropDown}     ${All_Items_In_Drop_Down_Value}
        TC_SetUp_TearDown.KW_3: Sleep Mode

        KW_14: Verify the FIND FLIGHTS Button is working or not:

        TC_SetUp_TearDown.KW_3_0: Selenium Implicit Wait
        TC_SetUp_TearDown.KW_3: Sleep Mode

        KW_11: Browsers Backward
        TC_SetUp_TearDown.KW_3_0: Selenium Implicit Wait
    END

        Select From List By Index   ${Xpath_Departure_DropDown}     5
        TC_SetUp_TearDown.KW_3: Sleep Mode

        Select From List By Index   ${Xpath_Destination_DropDown}   3
        TC_SetUp_TearDown.KW_3: Sleep Mode

        Click Button        ${Xpath_Find_Flight_Button}
        TC_SetUp_TearDown.KW_3_0: Selenium Implicit Wait
