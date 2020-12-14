# Buckaroo Banzeye Testing Center

Just remember, wherever you go, there you are.

## Overview

Welcome to our test site. The test contained herein have a simple objective: geting to know you, your style of coding, and breath of your developer knowledge.

#### Why You Are here

Our HR adminstrator will have directed you to this github site prior your test date in order to have you perform some initial setup work before we begin the test. We usually like to give you a day or two before the actual test to prep the Docker container. Please have the Docker container installed and ready to go before the test. Depending on your machine this effort could take a hour or more to install. The installation is automatic and you will not be required to attended.

Currently we support Microsoft Windows 10 and Linux although we believe the Linux scripts should also work on Mac.

You will be able to ask questions at the GitHub site using the `issues tracker.` Submit your questions and we will attempt to get back to you as soon as possible.

#### Test Moderator Will Join the `Microsoft Teams` Call

The test will be conducted over Microsoft Teams. You will be expected to share your desktop or similar over Teams. A test moderator will be joining the call to oversee the test, answer any questions you may have and help guide you. We encourage you to talk about your work as you work it out. However, working silently is and without interrupt is also acceptable.

#### What Happens When The Test is Done

If there is time left over, please feel free to engage the test adminstrator with questions you may have about the work, environment or technology. In the `Test Instruction` we will direct you have to save your work and how to submit it to us.

## Step 1: When You Get the Test Invite Do the Following  

Give yourself enough time to install Docker on your machine. Once Docker is installed, follow the instructions for installing the Test Image and Container.

#### Prerequists:

  1. Have Docker installed on your machine. Use the Docker website to do the install.

#### Linux: Building the Test Container

From the terminal command line type:

```bash
$ ./run-azul3d-test.sh
```

#### Windows 10: Building the Test Container

```bash
```

## Step 2: 15 Minutes Before the Scheduled Test time

The Test Moderator will post your Test to this site 15 minutes prior to the beginning of the Scheduled Test Time. We highly encourage you to perform a `pull` at that time to get the test code. Try compiling it. Look over the test requirements.

## Step 3: Build instructions

All instructions are performed inside the container. At the top of the repo perform the following:

1. ```conan install . --build=missing ```  # Builds all the dependencies for the project include gtest

2. ```conan build .``` # Builds the project code. Run this command whenever you want to test your code.

3. ```./build/bin/TestRunner``` # Command will run the test code (but does not compile it).

## Step 4: Sending the Results

Once your finished with the test, we'd like you to tar up the `tests` directory and send it to us.

```tar -czf tests.tar.xz tests```
