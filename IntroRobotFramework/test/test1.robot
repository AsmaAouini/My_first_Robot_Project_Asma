*** Settings ***
Library    SeleniumLibrary  

  
*** Test Cases ***
My first test Selenium
    Open Browser    ${URL}  ${Browser}
    Maximize Browser window
    Set Browser Implicit wait        5
    Input Text        id=txtUsername   &{DataLogin}[username]                     #@{Login}[0]
    Input Password    id=txtPassword   &{DataLogin}[password]                     #@{Login}[1]
    Click Button      id=btnLogin
    Click Element     id=welcome
    Click Element     link=Logout
    Log    this test is executed by %{username} in %{os}   
    Log               Fin des tests     
   
*** Variables ***
${URL}        https://opensource-demo.orangehrmlive.com/index.php/auth/login
${Browser}    gc
@{Login}    Admin    admin123
&{DataLogin}    username=Admin    password=admin123