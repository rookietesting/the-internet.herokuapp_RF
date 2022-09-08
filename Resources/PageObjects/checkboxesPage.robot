*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Page shoudld contain words Checkboxes
    Page Should Contain    Checkboxes
Click First Checkbox
    Select Checkbox     //input[@type='checkbox'][1]
UnClick Second Checkbox
    Unselect Checkbox     //input[@type='checkbox'][2]
Is Second Checkbox Selected
    Checkbox Should Not Be Selected    //input[@type='checkbox'][2]
Is First Checkbox Selected
    Checkbox Should Be Selected    //input[@type='checkbox'][1]


