# Blueprint

## Project Overview

This project is a Flutter application that serves as a basic template for a multi-page app. It features a home page and navigation to other feature pages like notifications and parcels.

## Style, Design, and Features

### Core Pages

*   **HomePage:** The main entry point of the application.
    *   Contains a `Scaffold` with an `AppBar` and buttons to navigate to other pages.
*   **NotificationPage:** A page to display notifications.
*   **ParcelListPage:** A page to display a list of parcels.

### Routing

*   **GoRouter:** The application uses the `go_router` package for navigation.
*   **Routes:**
    *   `/`: Navigates to the `HomePage`.
    *   `/notifications`: Navigates to the `NotificationPage`.
    *   `/parcels`: Navigates to the `ParcelListPage`.

### Theming

*   **Basic Theme:** The application uses a basic `ThemeData` with `primarySwatch: Colors.blue`.

### Dependencies

*   `flutter`
*   `cupertino_icons`
*   `flutter_riverpod`: For state management.
*   `go_router`: For routing.
*   `hive`: For local storage.
*   `hive_flutter`: For Flutter integration with Hive.
*   `path_provider`: To find the correct path for local storage.
*   `riverpod_annotation`: For code generation with Riverpod.
*   `build_runner`: A development dependency for running code generators.

## Current Plan and Steps for the Current Requested Change

### Objective

Remove the entire PIN login feature from the application as requested by the user, due to persistent issues.

### Steps Taken

1.  **Delete PIN Feature Files:** Deleted all files and directories related to the PIN login feature located under `lib/features/pin_login`.
2.  **Refactor `main.dart`:**
    *   Removed all `import` statements related to the PIN login feature.
    *   Simplified the `MyApp` widget to a `StatelessWidget`.
    *   Removed the `GoRouter` redirect logic that handled authentication state.
    *   Reconfigured the routes to make `HomePage` the initial location (`/`).
    *   Made `NotificationPage` and `ParcelListPage` top-level routes.
3.  **Update Blueprint:** Updated this `blueprint.md` file to remove all descriptions and plans related to the PIN login feature, reflecting the current, simplified state of the application.
