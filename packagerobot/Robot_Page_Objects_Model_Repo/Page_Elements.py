"""This is a locators page of all the elements within the website"""

# Get All links in the webpage#
# Xpath_All_Links_Text = "xpath://a"
Xpath_All_Links_Text = "xpath://a[@href and contains(text(),'')]"
Xpath_All_Href = "xpath=(//a[@href])"

# Home Page #
Xpath_Travel_The_World = "xpath://*[starts-with(@class,'container')]//*[contains(text(),'Travel The World')]"
Xpath_Home = "xpath://*[starts-with(@class,'container')]//a[contains(text(),'home')]"
Xpath_Welcome_Message = "xpath://*[starts-with(@class,'container')]//h1[contains(text(),'Welcome to the Simple Travel Agency!')]"
Xpath_Departure_Message = "xpath://*[starts-with(@class,'container')]//h2[contains(text(),'Choose your departure city:')]"
Xpath_Departure_DropDown = "xpath://*[starts-with(@class,'container')]//select[@name='fromPort']"
Xpath_Departure_DropDown_Options = "xpath://select[@name='fromPort']/option"
Xpath_Destination_Message = "xpath://*[starts-with(@class,'container')]//h2[contains(text(),'Choose your destination city:')]"
Xpath_Destination_DropDown = "xpath://*[starts-with(@class,'container')]//select[@name='toPort']"
Xpath_Find_Flight_Button = "xpath://*[starts-with(@class,'container')]//input[@class='btn btn-primary' and @type='submit']"
Xpath_Destination_of_the_week_Link = "xpath://*[starts-with(@href,'') and contains(text(),'destination of the week! The Beach!')]"

# Locators for Register Page #
Header_Text_BlazeDemo = "xpath://*[contains(text(),'BlazeDemo') and @class='navbar-brand']"
Header_Text_Register_Modal = "xpath://*[starts-with(@class,'panel panel-default')]/*[contains(text(),'Register')]"
Xpath_Register_Link = "xpath://a[contains(text(),'Register')]"
Xpath_Name_Field = "xpath://*[starts-with(@class,'panel panel-default')]//*[@class='col-md-6']/*[@id='name' or @name='name']"
Xpath_Company_Field = "xpath://*[starts-with(@class,'panel panel-default')]//*[@class='col-md-6']/*[@id='company' or @name='company']"
Xpath_E_Mail_Address_For_Reg = "xpath://*[starts-with(@class,'panel panel-default')]//*[@class='col-md-6']/*[@id='email' or @name='email']"
text_Password_For_Reg = "name:password"
text_Confirm_Password_For_Reg = "name:password_confirmation"
Xpath_Register_Button = "xpath://*[starts-with(@class,'panel panel-default')]//*[@class='col-md-6 col-md-offset-4']/*[contains(text(),'Register') and @type='submit' or @class='btn btn-primary']"
Xpath_You_Are_Logged_In = "xpath://div[contains(text(),'You are logged in!')]"

# Locators for Login Page #
Xpath_Login_Link = "xpath://a[contains(text(),'Login')]"
Header_Text_Login_Modal = "xpath://*[starts-with(@class,'panel panel-default')]/*[1]"
text_Email_Address_For_Login = "name:email"
text_Password_Field_For_Login = "id:password"
checkbox_remember_for_login = "name:remember"
Xpath_Login_Submit_Button = "xpath://*[starts-with(@class,'panel panel-default')]//button[@class='btn btn-primary' and @type='submit']"
Xpath_Forgot_Password = "xpath://*[starts-with(@class,'panel panel-default')]//a[@class='btn btn-link' or @href='https://blazedemo.com/password/reset']"
