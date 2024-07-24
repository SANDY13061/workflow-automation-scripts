# Dev Workflow Automation

A simple `.bat` script to automate the process of opening Visual Studio Code for both frontend and backend projects and starting the development servers.

## Overview

As a Fullstack Developer and Frontend Team Lead, managing multiple projects and tasks can be time-consuming, especially when it involves repetitive setup tasks. This script aims to streamline the development workflow by automating the following steps:

- Opening VSCode for frontend and backend projects.
- Navigating to the project directories.
- Running the necessary commands to start the development servers.

## Script Details

The script sets paths and commands as variables, making it easy to customize and maintain.

```batch
@echo off

REM Define paths and commands
set FRONTEND_PATH=C:\FE04
set BACKEND_PATH=C:\BE2.0
set FRONTEND_CMD=npm start
set BACKEND_CMD=npm run dev

REM Open front end code
start "" code "%FRONTEND_PATH%"

REM Navigate to frontend directory and run npm start
start "" cmd /c "cd /d %FRONTEND_PATH% && %FRONTEND_CMD%"

REM Open back end code
start "" code "%BACKEND_PATH%"

REM Navigate to backend directory and run npm run dev
start "" cmd /c "cd /d %BACKEND_PATH% && %BACKEND_CMD%"
