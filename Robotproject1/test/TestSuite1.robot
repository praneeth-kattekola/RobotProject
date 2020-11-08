*** Settings ***
Library    SeleniumLibrary  

Suite Setup       Log     Iam inside Suite Setup    
Suite Teardown    Log     Iam inside Suite Teardown     
Test Setup        Log     Iam inside Test Setup        
Test Teardown     Log     Iam inside Test Teardown    
  
Default Tags    Sanity

*** Test Cases ***
MyfirstTest
    [Tags]    smoke
    Log    Hello World one... 
    
MySecondTest
    Log    Hello World two ... 
    Set Tags    regression1
    Remove Tags    regression1
    
MythirdTest
    Log    Hello World three... 
   

# FirstSeleniumTest
    # Open Browser                 https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text                   //input[@name='q']    prateeksha 
    # Click Element                //input[@name='btnK']    
    # Sleep                        2       
    # Close Browser
    # Log                         Test succesfull prateeksha      
    
# SampleLoginTest
    # [Documentation]    this is a sample login test
    # Open Browser                 ${url}             chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Sleep                        2
    # Click Element                id=welcome   
    # Click Link                   //*[text()='Logout'] 
    # Close Browser  
    # Log                         TC3 Successfull  
    
*** Variables ***
${url}                          https://opensource-demo.orangehrmlive.com
@{CREDENTIALS}                  Admin    admin123
&{Logindata}                    Username=Admin    Password=admin123

*** Keywords ***
LoginKW
    Input Text                   id=txtUsername     @{CREDENTIALS}[0]
    Input Password               id=txtPassword     &{Logindata}[Password]
    Click Button                 id=btnLogin
    
    

    
   
              