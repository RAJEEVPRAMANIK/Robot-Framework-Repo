"""This is a locators page of all the elements within the website"""

# Xpath for Flash Testing #
Selenium_DropDown_Xpath = "xpath://*[starts-with(@class,'nav navbar-nav')]//child::li[1]//*[contains(text(),'Selenium') and @class='dropdown-toggle']"
Selenium_DropDown_List_Xpath = "xpath://li[starts-with(@class,'dropdown open')]//*[contains(@class,'dropdown-menu')]"
Flash_Movie_Demo_Xpath = "xpath://*[starts-with(@class,'dropdown-menu')]//*[contains(text(),'Flash Movie Demo') and @href]"


# Xpath for Drag and drop #
DragAndDrop_Xpath = "xpath://*[starts-with(@class,'dropdown-menu')]//*[contains(text(),'Drag and Drop Action')]"
First_Negative_5000 = "xpath://*[starts-with(@class,'sel4 ui-draggable') and @id='credit']/a"
First_Positive_5000 = "xpath://body/section[@id='g-container-main']/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[2]/a[1]"
Second_Negative_5000 = "xpath://body/section[@id='g-container-main']/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[3]/a[1]"
Second_Positive_5000 = "xpath://body/section[@id='g-container-main']/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[4]/a[1]"
Bank_xpath = "xpath://a[contains(text(),'BANK')]"
Sales_xpath = "xpath://a[contains(text(),'SALES')]"
Owners_Equity_Xpath = "xpath://a[contains(text(),'OWNER'S EQUITY')]"
Loan_xpath = "xpath://a[contains(text(),'LOAN')]"

Debit_Side_Amount = "xpath://body[1]/section[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[1]/td[2]/div[1]/div[1]/ol[1]/li[1]"
Debit_Side_Account = "xpath://body[1]/section[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/div[1]/ol[1]/li[1]"

Credit_Side_Amount = "xpath://body[1]/section[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[2]/table[1]/tbody[1]/tr[1]/td[2]/div[1]/div[1]/ol[1]/li[1]"
Credit_Side_Account = "xpath://body[1]/section[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[2]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/div[1]/ol[1]/li[1]"

