# Buckaroo Banzeye Testing Center

Just remember, wherever you go, there you are.

## Overview

Welcome to our test site. The test contained herein have a simple objective: getting to know you, your style of coding, and breath of your developer knowledge.

#### Why You Are here

Our HR administrator will have directed you to this github site prior your test date in order to have you perform some initial setup work before we begin the test. We usually like to give you a day or two before the actual test to prep the Docker container. Please have the Docker container installed and ready to go before the test. Depending on your machine this effort could take a hour or more to install.

Currently we support Microsoft Windows 10 and Linux although we believe the Linux scripts should also work on Mac.

You will be able to ask questions at the GitHub site using the `issues tracker.` Submit your questions and we will attempt to get back to you as soon as possible.

#### Test Moderator Will Join the `Microsoft Teams` Call

The test will be conducted over Microsoft Teams. You will be expected to share your desktop or similar over Teams. A test moderator will be joining the call to oversee the test, answer any questions you may have and help guide you. We encourage you to talk about your work as you work it out. However, working silently is and without interrupt is also acceptable.

#### What Happens When The Test is Done

If there is time left over, please feel free to engage the test administrator with questions you may have about the work, environment or technology. In the `Test Instruction` we will direct you have to save your work and how to submit it to us.

## Step 1: When You Get the Test Invite Do the Following  

Give yourself enough time to install Docker on your machine. Once Docker is installed, follow the instructions for installing the Test Image and Container.

#### Prerequisites:

  1. Have Docker installed on your machine. Use the Docker website to do the install.
  2. Install `Visual Studio Code` with Docker integration (instructions below) or use your preferred editor.

#### Windows 10: Installing Docker

Note: If you are running Windows 10 Home, please skip down to the Windows 10 Home: Installing Docker instructions, as this instruction set will not work on Windows 10 Home.

Follow the instructions for installation laid out here: https://docs.docker.com/docker-for-windows/

This requires installing Docker Desktop. After installing and restarting your machine, Docker Desktop may prompt you with an incomplete setup due to `WSL 2`. If you already have Docker running on your machine with this feature enabled then it should not pose any problems. However, this feature is not necessary for the purpose of the test. 

To disable setting up Docker using `WSL 2` navigate to the Docker whale icon on the toolbar (potentially under Hidden Icons), and right-click and select `Settings`. Under the `General` heading deselect the option named `Use the WSL 2 based engine`. In lieu of using `WSL 2` you must enable `Hyper-V Virtualization` if it is not already enabled. The instructions to do so are located here: https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v

You can verify your installation by running `docker --version` in an Administrator PowerShell.

##### Sharing Access to a directory

If you already had Docker running using `WSL 2` then you do not need to complete this step.

To grant permission to Docker to map the appropriate directory to the container you must navigate to the Docker whale icon on the toolbar (potentially under Hidden Icons), and right-click and select `Settings`. Under `Resources` then `File Sharing` add this directory using the `+` icon.

#### Windows 10 Home: Installing Docker

First you should install Docker Desktop via these instructions: https://docs.docker.com/docker-for-windows/install-windows-home/ and ensure that the Enable WSL 2 Features option is enabled on the Configuration page. 

Next, you should follow the instructions on this page for installing the Windows Subsystem for Linux: https://docs.microsoft.com/en-us/windows/wsl/install-win10. The instructions offer a “simplified install” which involves joining the Windows Insiders Program and the “manual install”. These instructions will follow the "manual install" process as it is not required to enroll in the Windows Insiders Program. On that page, the manual instructions start here: https://docs.microsoft.com/en-us/windows/wsl/install-win10#manual-installation-steps. When you get to Step 6 – Install your Linux Distribution of choice we would recommend choosing Ubuntu 18.04 LTS. Once you have installed the Linux distribution then restart Docker Desktop. If it worked then Docker Desktop would take you through the docker-tutorial container. 

#### Linux: Building the Test Container

From the terminal command line type:

```bash
$ ./instantiate-container.sh
```

#### Windows 10: Building the Test Container

In an administrator PowerShell navigate to this cloned repo and type:
```bash
$ .\instantiate-container.bat
```

#### Installing Visual Studio Code and Enabling Container Interaction

Visual Studio Code is a code editor that has an extension for mounting on running containers. You can download VS Code for your machine here: https://code.visualstudio.com/

Once installed, open up a VS Code Window and install the `Remote - Containers` Extension by selecting `Extensions` (four squares icon) on the left pane then searching for `Remote - Containers`. Click the install button and it will reload your window. 

Next you must attach to the running container so ensure that you've completed the above steps are currently running the Docker container. Press `F1` to bring up the Command menu and search for `Attach to Running Container...` and select it. If working correctly the `footest` container should pop up and you can select it. Doing so will open a new window and in the bottom left corner in green it should read `Container footest-img:latest...`

To open the directory, you can open the directory container using `File` -> `Open Folder` -> `/repo`. You can run commands in the terminal using `Terminal` -> `New Terminal`

## Step 2: 15 Minutes Before the Scheduled Test time

The Test Moderator will post your Test to this site 15 minutes prior to the beginning of the Scheduled Test Time.

1. ```git fetch```

2. ```git checkout test```

3. ```git pull origin test```

## Step 3: Build instructions

All instructions are performed inside the container. At the top of the repo perform the following:

1. ```conan install . --build=missing ```  # Builds all the dependencies for the project include gtest

2. ```conan build .``` # Builds the project code. Run this command whenever you want to test your code.

3. ```./build/bin/TestRunner``` # Command will run the test code (but does not compile it).

## Step 4: Sending the Results

Once your finished with the test, we'd like you to tar up the `tests` directory and send it to us.

```tar -czf tests.tar.xz tests```
