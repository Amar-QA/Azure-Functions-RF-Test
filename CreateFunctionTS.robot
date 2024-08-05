*** Settings ***
Library     Process
Library     RPA.Desktop
Library     OperatingSystem
Library     AppiumLibrary

*** Variables ***
${VS_CODE_PATH}         C:\\Users\\v-amarnathms\\AppData\\Local\\Programs\\Microsoft VS Code\\Code.exe
${PROJECT_PATH_TS}      C:\\Users\\v-amarnathms\\Documents\\AzureFunctionTest\\TsProject

*** Test Cases ***
Opening Project File 
    [Documentation]    This test case opens an existing TypeScript Azure Function project in VS Code and adds an HTTP trigger function.
    Open VS Code
    Open Project Folder
Add HTTP Trigger Function
    [Documentation]    Adds a HTTP trigger function to the project.
    Select HTTP Trigger Function Type

Add Timer Trigger Function
    [Documentation]    Adds a Timer trigger function to the project.
    Select Timer Trigger Function Type

Add Blob Trigger Function
    [Documentation]    Adds a Blob trigger function to the project.
    Select Blob Trigger Function Type

*** Keywords ***
Open VS Code
    [Documentation]    Opens Visual Studio Code.
    Start Process    ${VS_CODE_PATH}
    Sleep    5s    # Adjust as needed for VS Code to fully open

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

Select HTTP Trigger Function Type
    [Documentation]    Executes the Azure Functions command to add a new function.
    Press Keys    f1    # Opens the command palette
    Sleep    2s    # Allow time for the command palette to open
    Type Text    Azure Functions: Create Function    # Type the command without pressing Enter
    Press Keys    enter    # Executes the command
    Sleep    5s    # Adjust as needed to wait for the dialog
    Type Text    HTTP trigger    # Enter the function type
    Press Keys    enter    # Confirm the selection
    Sleep    2s    # Allow time for the function to be added
    Press Keys    enter
    Sleep    2s
    Type Text    Function
    Sleep    2s
    Press Keys    enter
    Sleep    10s


Select Timer Trigger Function Type
    
    Press Keys    f1    # Opens the command palette
    Sleep    2s    # Allow time for the command palette to open
    Type Text    Azure Functions: Create Function    # Type the command without pressing Enter
    Press Keys    enter    # Executes the command
    Sleep    5s    # Adjust as needed to wait for the dialog
    Type Text    Timer trigger    # Enter the function type
    Press Keys    enter    # Confirm the selection
    Sleep    2s    # Allow time for the function to be added
    Press Keys    enter   #Selecting the Default Value
    Sleep    2s
    Press Keys    enter   #Selecting the Default Value
    Sleep    10s   

Select Blob Trigger Function Type
    
    Press Keys    f1    # Opens the command palette
    Sleep    2s    # Allow time for the command palette to open
    Type Text    Azure Functions: Create Function    # Type the command without pressing Enter
    Press Keys    enter    # Executes the command
    Sleep    10s    # Adjust as needed to wait for the dialog
    Type Text    Azure Blob Storage trigger    # Enter the function type
    Press Keys    enter    # Confirm the selection
    Sleep    2s    # Allow time for the function to be added
    Press Keys    enter   #Selecting the Default Value
    Sleep    2s
    Type Text    Create new local app setting   #Selecting the Default Value
    Sleep    2s  
    Press Keys    enter
    Sleep    2s 
    Type Text    Azure Tools Manual Testing 1   #Selecting the Default Value
    Sleep    2s  
    Press Keys    enter
    Sleep    2s
    Type Text    Use Azure Storage for remote storage   #Selecting the Default Value
    Sleep    2s  
    Press Keys    enter
    Sleep    2s
    Type Text    Create new storage account   
    Sleep    2s  
    Press Keys    enter
    Sleep    2s
    Type Text    amarteststorage2   
    Sleep    2s  
    Press Keys    enter
    Sleep    2s
    Type Text    Create new resource group   
    Sleep    2s  
    Press Keys    enter
    Sleep    2s
    Type Text    amartestresource2
    Sleep    2s  
    Press Keys    enter
    Sleep    5s
    Type Text    South Central US
    Sleep    2s  
    Press Keys    enter
    Sleep    2s
    Press Keys    enter  #Enter Default Value
    Sleep    2s
