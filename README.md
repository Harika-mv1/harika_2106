# harika_2106

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



MVVM Architecture Documentation
MVVM (Model-View-ViewModel) is a software architectural pattern that separates the development of the graphical user interface (the View) from the development of the business logic or back-end logic (the Model), with the ViewModel acting as an intermediary between the two.

Components of MVVM:
Model: Represents the data and the business logic of the application. It is responsible for fetching, processing, and storing data1.

View: Represents the user interface of the application. It displays the data and sends user commands to the ViewModel1.

ViewModel: Acts as an intermediary between the Model and the View. It handles the presentation logic and state of the View1. The ViewModel exposes data and commands to the View and reacts to user inputs.

Benefits of MVVM:
Separation of Concerns: Keeps the UI logic separate from the business logic, making the code more modular and easier to maintain.

Testability: The separation allows for easier unit testing of the business logic without the need for the UI.

Reusability: The ViewModel can be reused across different Views, promoting code reuse.

Collaboration: Allows designers to focus on the View while developers focus on the ViewModel and Model, improving collaboration.

Example Project: Harika 2106
Project Overview: The Harika 2106 project is a Flutter application designed to manage ticket sales and user profiles2. The project uses the MVVM architecture to separate the UI logic from the business logic, ensuring maintainability and testability.

Project Structure:

Assets: Contains images and other assets used in the application2.

Lib: Contains the Dart files for the application2.

Widgets: Contains reusable UI components2.

Features: Contains the business logic and functionality of the application2.

Pubspec.yaml: Contains the dependencies and assets for the Flutter application2.

Key Components:

TicketScreen: Displays ticket information and allows users to add tickets2.

ProfileScreen: Displays user profile information and allows users to update their profile2.

InterestTile: A reusable widget that displays user interests2.

CustomTextField: A custom text field widget2.

CustomDateField: A custom date field widget2.

AddButton: A reusable button widget2.

ConfirmButton: A reusable button widget for confirmation actions2.

MVVM Implementation:

Model: Handles data fetching, processing, and storage.

View: Displays the UI and sends user commands to the ViewModel.

ViewModel: Manages the presentation logic and state of the View.


Event Management Project Overview
Project Overview: The Harika 2106 project is a Flutter application designed for managing events. The application leverages the MVVM architecture to ensure maintainability, testability, and a clean separation of concerns.

Project Structure:

Assets: Contains images and other assets used in the application.

Lib: Contains the Dart files for the application.

Widgets: Contains reusable UI components.

Features: Contains the business logic and functionality of the application.

Pubspec.yaml: Contains the dependencies and assets for the Flutter application.

Key Components:

ProfileScreen: Displays user profile information and allows users to update their profile.

InterestsScreen: Allows users to select their interests.

CategoryListScreen: Displays a list of event categories.

TicketScreen: Manages event tickets and times.

CustomTextField: A custom text field widget.

CustomDateField: A custom date field widget.

AddButton: A reusable button widget.

ConfirmButton: A reusable button widget for confirmation actions.

MVVM Implementation:

Model: Handles data fetching, processing, and storage.

View: Displays the UI and sends user commands to the ViewModel.

ViewModel: Manages the presentation logic and state of the View.

By following the MVVM architecture, the Harika 2106 project ensures a clean separation of concerns, making it easier to maintain, test, and collaborate on the development process.

Project Functionality:

User Profile Management: Allows users to view and update their profile information, including changing profile pictures.

Interest Selection: Provides an interface for users to select their interests from a list.

Event Category Browsing: Displays a list of event categories, allowing users to browse through various event types.

Event Ticket Management: Manages event tickets, including adding new tickets and viewing ticket information.
