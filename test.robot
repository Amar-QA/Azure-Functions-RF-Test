*** Settings ***
Library    OperatingSystem

*** Variables ***
${FOLDER_PATH}    C:/temp/new_folder

*** Test Cases ***
Create Folder
    [Documentation]    This test case creates a folder and verifies its existence.
    
    # Create a new folder
    Create Directory    ${FOLDER_PATH}

    # Verify the folder was created
    ${exists}    Directory Should Exist    ${FOLDER_PATH}
    Log    Folder created successfully at ${FOLDER_PATH}

    # Clean up: Optionally remove the folder after verification
    # Uncomment the following line if you want to delete the folder after the test
    # Remove Directory    ${FOLDER_PATH}    recursive=True
