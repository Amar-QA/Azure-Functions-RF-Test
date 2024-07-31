*** Settings ***
Library    Process
Library    RPA.Desktop
Library    OperatingSystem

*** Variables ***
${VS_CODE_PATH}    C:\\Users\\v-amarnathms\\AppData\\Local\\Programs\\Microsoft VS Code\\Code.exe
${PROJECT_NAME}    MyAzureFunctionProject1
${PROJECT_PATH}    C:\\Users\\v-amarnathms\\Documents\\${PROJECT_NAME}

*** Test Cases ***
Open VS Code and Create Azure Function Project
    [Documentation]  This test case opens Visual Studio Code, creates a new Azure Function project, and selects a folder.
    Open VS Code
    Execute Azure Functions Command
    ${dialog_visible}    Wait For Dialog 
    Select Folder for Project  ${dialog_visible}
    Close VS Code

*** Keywords ***
Open VS Code
    [Documentation]  Opens Visual Studio Code.
    Start Process    ${VS_CODE_PATH}
    Sleep    10s    # Adjust as needed for VS Code to fully open

Execute Azure Functions Command
    [Documentation]  Executes Azure Functions command.
    Press Keys    f1    # Presses the F1 key to open the command palette
    Sleep    2s    # Allow time for the command palette to open
    Type Text    Azure Functions: Create New Project    # Type the command without pressing Enter
    Press Keys    enter    # Presses the Enter key to execute the command
    Sleep    5s    # Adjust as needed to allow the project creation dialog to appear

Wait For Dialog
    [Documentation]  Waits for a dialog to appear.
     Sleep    5s    # Adjust as needed to wait for the dialog

Select Folder for Project
    [Arguments]    ${dialog_visible}
    [Documentation]  Selects a folder for the newly created project.
    Press Keys    alt
    Press Keys    d
    Type Text    ${PROJECT_PATH}    # Enter the project path
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
    Sleep    2s

Close VS Code
    [Documentation]  Closes Visual Studio Code.
    Press Keys    alt    # Presses the Alt key
    Press Keys    f4    # Presses the F4 key
    Sleep    3s    # Allow time for VS Code to close