# Novel Seeker - Narou Novel Reader App

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![Riverpod](https://img.shields.io/badge/Riverpod-00758F?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZmlsbD0iIzAwNzU4RiIgZD0iTTEyIDBDNS4zNzMgMCAwIDUuMzczIDAgMTJzNS4zNzMgMTIgMTIgMTIgMTItNS4zNzMgMTItMTJTMTguNjI3IDAgMTIgMHptMCAyMi41Yy01LjcxOCAwLTEwLjM3NS00LjY1Ny0xMC4zNzUtMTAuMzc1UzYuMjgyIDEuNjI1IDEyIDEuNjI1YzUuNzE4IDAgMTAuMzc1IDQuNjU3IDEwLjM3NSAxMC4zNzVTMTcuNzE4IDIyLjUgMTIgMjIuNXptMCAwIi8+PHBhdGggZmlsbD0iI0ZGRiIgZD0iTTEyIDQuNzVjLTMuOTY5IDAtNy4xNzUgMy4yMDYtNy4xNzUgNy4xNzVzMy4yMDYgNy4xNzUgNy4xNzUgNy4xNzUgNy4xNzUtMy4yMDYgNy4xNzUtNy4xNzVTMTUuOTY5IDQuNzUgMTIgNC43NXptMCAwIi8+PC9zdmc+&logoColor=white)](https://riverpod.dev/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE) <!-- Replace with your actual license -->

Novel Seeker is a Flutter application designed for reading and managing novels from the popular Japanese novel publishing website "Shōsetsuka ni Narō" (小説家になろう), often referred to as "Narou." This app provides a user-friendly interface to browse rankings, download novels, manage reading progress, and more.

## Features

*   **Genre and Period-Based Rankings:**
    *   Browse "Narou" rankings by various genres (e.g., Fantasy, Romance) and time periods (e.g., Daily, Weekly, Monthly).
*   **Filtering:**
    *   Filter rankings.
*   **Reading Progress Management:**
    *   Track your reading progress for each chapter (Unread, Reading, Completed).
    *   Reading status is automatically updated.
*   **Scroll Position Saving and Restoring:**
    *   Automatically save the scroll position of each chapter.
    *   Restore the scroll position when you reopen a chapter.
    *   Scroll position is maintained even when switching between chapters.
*   **Chapter List:**
    *   View a list of chapters for each novel in the drawer.
    *   Navigate directly to any chapter from the chapter list.
*   **Fast Performance:**
    *   Built with Flutter, ensuring smooth performance on both Android and iOS.
* **Novel Search:**
    * You can search for novels by ncode.
* **Delete All Novel:**
    * You can delete all novels.


## Tech Stack

*   **Flutter:** The UI framework for building cross-platform applications.
*   **Dart:** The programming language used for Flutter development.
*   **Riverpod:** A state management library for Flutter.
*   **Flutter Hooks:** A library for using React-style hooks in Flutter.
*   **Logger:** A simple, easy-to-use logger for Dart.
*   **Drift:** A persistent library for Dart.
*   **http:** An HTTP client.
*   **html:** An HTML parser.
* **flutter_debouncer:** A library for debouncing.
*   **Narou API:** Used to fetch novel data.

## Getting Started

1.  **Prerequisites:**
    *   Flutter SDK installed on your machine.
    *   Android Studio or VS Code with Flutter/Dart plugins.
    *   An Android or iOS device/emulator.

2.  **Installation:**
    *   Clone the repository: `git clone https://github.com/mystster/novel_seeker.git` .
    *   Navigate to the project directory: `cd novel_seeker`
    *   Install dependencies: `flutter pub get`

3.  **Running the App:**
    *   Connect your device or start an emulator.
    *   Run the app: `flutter run`

## Project Structure
novel_seeker/
├── lib/
│ ├── model/ # Data models (e.g., NarouEnum, NovelInfo, NarouNovelContent) 
│ ├── provider/ # Riverpod providers for state management 
│ │ └── narou_novel_provider.dart # Fetching and managing novel data 
│ ├── ui/ # UI components 
│ │ ├── novel_ranking.dart # Ranking screen 
│ │ ├── novel_info_card.dart # Novel information card 
│ │ ├── novel_contents.dart # Novel content display screen 
│ │ ├── novel_shelf.dart # Novel shelf screen 
│ │ └── novel_search.dart # Novel search screen 
│ ├── repository/ # Database related 
│ │ └── app_database.dart # Database 
│ ├── main.dart # Entry point of the application 
├── test/ # Unit and widget tests 
├── pubspec.yaml # Project dependencies and metadata
└── README.md # This file


## Contributing

Contributions are welcome! If you'd like to contribute to the project, please follow these steps:

1.  Fork the repository.
2.  Create a new branch for your feature or bug fix.
3.  Make your changes and commit them.
4.  Push your changes to your forked repository.
5.  Submit a pull request.

## License

This project is licensed under the MIT License - see the `LICENSE` file for details.

## Contact

If you have any questions or suggestions, feel free to open an issue on GitHub.

## Acknowledgements

*   Shōsetsuka ni Narō - For providing the novel data.
*   The Flutter and Dart communities - For their excellent tools and support.
*   All the open-source libraries used in this project.
