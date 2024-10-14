*** Settings ***
Library             SeleniumLibrary
Resource            ../keywords/RegisPageKeywords.robot
Resource            ../keywords/HomePageKeywords.robot
Resource            ../resources/config/config.robot
Resource            ../resources/testdata/testdata.robot
Suite Setup         Open And Maximize Browser    ${baseUrl}     chrome
Suite Teardown      Close Browser


*** Test Cases ***
As a user, Register user with valid data
    When future skill should display home page and display message as "สมัครสมาชิก"
    Then user key the infomation for registration ${email} ${name} ${lastName} ${mobile} ${password} ${confirmPassword}
    Then future skill should display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"

#    [Teardown]    user logout from future skill platform