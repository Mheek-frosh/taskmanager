Task Manager App

📌 Overview

Task Manager is a simple Flutter application that allows users to create, edit, and delete tasks. It also features push notifications to remind users about tasks and uses local storage (Hive) for data persistence.

🎯 Features

✅ Task Management: Add, edit, and delete tasks

🔔 Push Notifications: Sends a reminder 2 seconds after a task is created

💾 Local Data Storage: Uses Hive to store tasks persistently

🎨 Modern UI: Designed with Flutter and Provider for state management

🏗️ Project Structure

lib/
│── main.dart              # Entry point of the app
│
├── models/
│   ├── task_model.dart    # Hive model for tasks
│
├── core/
│   ├── services/
│   │   ├── task_database.dart   # Handles task storage using Hive
│   │   ├── task_notification.dart  # Manages local notifications
│
├── screens/
│   ├── home_screen.dart   # Main screen displaying the list of tasks
│   ├── task_screen.dart   # Screen for adding/editing tasks
│
└── widgets/
    ├── task_tile.dart     # Custom widget for displaying tasks

🚀 Installation & Setup

1️⃣ Clone the Repository

git clone https://github.com/your-username/taskmanager.git
cd taskmanager

2️⃣ Install Dependencies

flutter pub get

3️⃣ Run Code Generation for Hive

flutter pub run build_runner build --delete-conflicting-outputs

4️⃣ Run the App

flutter run

🛠️ Technologies Used

Flutter (Dart)

Hive (Local Storage)

Provider (State Management)

Flutter Local Notifications (Task Reminders)

📌 To-Do (Future Improvements)



📝 Author

Michael Usidamen

📜 License

This project is open-source and available under the MIT License
