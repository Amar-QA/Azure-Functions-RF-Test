*** Settings ***
Library     Process
Library     RPA.Desktop
Library     OperatingSystem
Library    AppiumLibrary


*** Variables ***
${VS_CODE_PATH}         C:\\Users\\v-amarnathms\\AppData\\Local\\Programs\\Microsoft VS Code\\Code.exe
${PROJECT_NAME_TS}      TsProject
${PROJECT_NAME_JS}      JsProject
${PROJECT_PATH_TS}      C:\\Users\\v-amarnathms\\Documents\\AzureFunctionTest\\${PROJECT_NAME_TS}
${PROJECT_PATH_JS}      C:\\Users\\v-amarnathms\\Documents\\AzureFunctionTest\\${PROJECT_NAME_JS}


*** Test Cases ***
Create Basic Funtions Typescript v4 Project
    [Documentation]    This test case opens Visual Studio Code, creates a new Azure Function project, and selects a folder.
    Open VS Code
    Execute Azure Functions Command
    ${dialog_visible}    Wait For Dialog
    Select Folder for Project    ${dialog_visible}
    Close VS Code

Create Basic Functions Javascript v3 Project by Adding Functions
    Open VS Code 2
    Execute Azure Functions Command
    Select Folder for Project 2 
    # Close VS Code

*** Keywords ***
Open VS Code
    [Documentation]    Opens Visual Studio Code.
    Start Process    ${VS_CODE_PATH}
    Sleep    10s    # Adjust as needed for VS Code to fully open

Open VS Code 2
    [Documentation]    Opens Visual Studio Code.
    Start Process    ${VS_CODE_PATH}
    Sleep    10s    # Adjust as needed for VS Code to fully open

Execute Azure Functions Command
    [Documentation]    Executes Azure Functions command.

    Press Keys    f1    # Presses the F1 key to open the command palette
    Sleep    2s    # Allow time for the command palette to open
    Type Text    Azure Functions: Create New Project    # Type the command without pressing Enter
    Press Keys    enter    # Presses the Enter key to execute the command
    Sleep    3s    # Adjust as needed to allow the project creation dialog to appear

Wait For Dialog
    [Documentation]    Waits for a dialog to appear.
    Sleep    5s    # Adjust as needed to wait for the dialog

Select Folder for Project
    [Documentation]    Selects a folder for the newly created project.
    [Arguments]    ${dialog_visible}
    Press Keys    alt
    Press Keys    d
    Type Text    ${PROJECT_PATH_TS}    # Enter the project path
    Press Keys    enter    # Confirm the selection
    Press Keys    enter
    Sleep    5s
    Type Text    Typescript
    Press Keys    enter
    Sleep    3s
    Type Text    Model V4
    Press Keys    enter
    Type Text    Skip for now
    Press Keys    enter
    Type Text    Open in current window
    Press Keys    enter
    Sleep    10s

Close VS Code
    [Documentation]    Closes Visual Studio Code.
    Press Keys    alt    # Presses the Alt key
    Press Keys    f4    # Presses the F4 key
    Sleep    5s    # Allow time for VS Code to close

Select Folder for Project 2
    [Documentation]    Selects a folder for the newly created project.
    Sleep         5s
    Press Keys    alt
    Press Keys    d
    Type Text    ${PROJECT_PATH_JS}    # Enter the project path
    Press Keys    enter    # Confirm the selection
    Press Keys    enter
    Sleep    5s
    Type Text    Javascript
    Press Keys    enter
    Sleep    3s
    Type Text    Model V3
    Press Keys    enter
    Sleep    3s
    Type Text    HTTP trigger
    Press Keys    enter
    Sleep   3s
    Press Keys    enter
    Sleep    3s
    Type Text    function
    Press Keys    enter
    Sleep    3s
    Type Text    Open in new window
    Press Keys    enter
    Sleep    2s
