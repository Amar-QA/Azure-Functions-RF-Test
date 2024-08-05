*** Settings ***
Library     Process
Library     RPA.Desktop
Library     OperatingSystem
Library    AppiumLibrary

*** Variables ***
${VS_CODE_PATH}         C:\\Users\\v-amarnathms\\AppData\\Local\\Programs\\Microsoft VS Code\\Code.exe
${PROJECT_PATH_TS}      C:\\Users\\v-amarnathms\\Documents\\AzureFunctionTest\\TsProject

*** Test Cases ***
Opening Project File 
    [Documentation]    Opens an existing TypeScript Azure Function project in VS Code.
    Open VS Code
    Open Project Folder

Debug the Basic Functions Project 
    [Documentation]    Starts debugging for the basic functions project.
    Debug Basic Functions


*** Keywords ***
Open VS Code
    [Documentation]    Opens Visual Studio Code and brings it to the foreground.
    Start Process    ${VS_CODE_PATH}
    Sleep    10s    # Adjust as needed for VS Code to fully open


Open Project Folder
    [Documentation]    Opens the existing project folder in VS Code.
    Press Keys    f1    # Presses the F1 key to open the command palette
    Sleep    2s    # Allow time for the command palette to open
    Type Text    File: Open Folder...  
    Press Keys    enter
    Sleep    2s 
    Type Text    ${PROJECT_PATH_TS}    # Enter the project path
    Press Keys    enter    # Confirm the folder selection
    Press Keys    enter 
    Sleep    10s    # Allow time for the project to open

Debug Basic Functions
    [Documentation]    Starts the debugging process.
    Press Keys    f5    # Starts debugging
    Sleep    5s    # Allow time for debugging to start
    Press Keys    enter 
    Sleep    3s
    Type Text    Azure Tools Manual Testing 1   
    Sleep    2s  
    Press Keys    enter
    Sleep    3s  
    Type Text    amarteststorage2   
    Sleep    2s  
    Press Keys    enter