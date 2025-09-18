# Blueprint

## Project Overview

This project is a Flutter application with a PIN login feature. The application is designed to demonstrate basic state management using **Riverpod** for the PIN entry and validation process. After a successful login, the user is navigated to a home page.

## Style, Design, and Features

### Home Page

*   **HomePage:** A simple page displayed after a successful PIN login.
    *   Contains a `Scaffold` with an `AppBar` titled 'Home'.
    *   Displays a centered 'Welcome!' message in the body.

### PIN Login Feature

*   **PinLoginPage:** The main page for PIN entry.
    *   Displays a 6-digit PIN input field using `PinDisplay`.
    *   Provides a numeric keypad for PIN entry using `PinKeypad`.
    *   Handles PIN input, backspace, and submission actions.
    *   **Automatic Submission:** The PIN is automatically submitted when the sixth digit is entered.
    *   **Navigation:** Navigates to the `HomePage` on correct PIN (`123456`).
    *   Shows an error message on incorrect PIN.
*   **State Management:** Uses **Riverpod** for managing the PIN login state.
    *   `PinLoginNotifier`: Manages the logic for PIN entry, validation, and state transitions using a `PinLoginState` object.
    *   `pinLoginNotifierProvider`: A Riverpod provider that exposes the `PinLoginNotifier`.
*   **User Interface:**
    *   `PinDisplay`: A widget that visually represents the entered PIN as a series of circles.
    *   `PinKeypad`: A numeric keypad widget with number buttons, a backspace button, and a submit button.

### Theming

*   **Basic Theme:** The application uses a basic `ThemeData` with `primarySwatch: Colors.blue`.

### Dependencies

*   `flutter`
*   `cupertino_icons`
*   `flutter_riverpod`: For state management.
*   `riverpod_annotation`: For code generation with Riverpod.
*   `build_runner`: A development dependency for running code generators.

## Current Plan and Steps for the Current Requested Change

### Objective

To create a `HomePage` and navigate to it after a successful PIN login.

### Steps Taken

1.  **Create `HomePage` directory:** Created the `lib/features/home/presentation/pages` directory.
2.  **Create `home_page.dart`:** Created a new file `lib/features/home/presentation/pages/home_page.dart` with a basic `HomePage` widget.
3.  **Update `PinLoginPage` for navigation:** Modified `lib/features/pin_login/presentation/pages/pin_login_page.dart` to navigate to the `HomePage`.
    *   Inside the `ref.listen` block, when `next.isAuthenticated` is true, it now calls `Navigator.of(context).pushReplacement` to show the `HomePage`.
