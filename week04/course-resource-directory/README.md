# Course Resource Directory

## Project Description
The Course Resource Directory is a simple web application that helps users organise and manage learning resources in one place.

## Features
- Displays learning resources.
- Shows the total number of resources.
- Allows users to add new resources.
- Validates form entries before adding resources.
- Displays success and error messages.
- Shows an empty-state message when there are no resources.
- Works on desktop and mobile screens.

## Technologies Used
- HTML
- CSS
- JavaScript

## Project Structure
- index.html - Contains the webpage structure and form.
- style.css - Contains the styling and responsive layout.
- script.js - Contains the resource data, functions, validation, and form submission logic.

## How It Works
Resources are stored in a JavaScript array of objects. Each object contains a title, category, platform, and difficulty.

The createResourceCard() function creates a card for each resource.

The renderResources() function displays all resources and updates the total count.

The validateResource() function checks that all required fields are completed correctly.

When a user submits the form, JavaScript validates the information and adds valid entries to the resources array without reloading the page.

## How to Run
1. Open the project folder.
2. Open index.html in a web browser.
3. Use the form to add learning resources.