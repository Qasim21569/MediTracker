# MediTracker
InternshalaAssignmentMediTrack
Medicine Management App
Overview
This is a Medicine Management App developed using Flutter and Firebase. The application includes functionalities such as user authentication via Google login, network connectivity checks, adding and displaying medicine information, and sending notifications.

Features
Google Login Integration: Allows users to sign in using their Google account.
Network Connectivity Check: Displays a dialog if the device is not connected to the internet.
Medicine Information Management: Users can add, view, and manage their medicines.
Firebase Notification: Sends notifications to remind users about their medicines.
Form Validation: Validates email and password inputs with specific requirements.
Unit Tests: Includes unit tests to ensure the functionality of the application.
Screenshots
(Add screenshots of your app here)

Getting Started
Prerequisites
Flutter SDK: Install Flutter
Firebase Account: Set up Firebase
Installation
Clone the Repository

bash
Copy [code](https://github.com/Qasim21569/MediTracker.git)
git clone 
cd yourrepository
Install Dependencies

bash
Copy code
flutter pub get
Set Up Firebase

Go to the Firebase Console and create a new project.
Add Android app to your Firebase project.
Download the google-services.json file and place it in the android/app directory.
Enable Google authentication in the Firebase Console.
Enable Firestore database and set up rules for read and write access.
Run the App

bash
Copy code
flutter run
Usage
Login

Open the app and sign in with your Google account.
Add Medicine

Click on the add button to open the form.
Enter the medicine details and select the type (tablet, capsule, cream).
Submit the form to add the medicine to the Firebase database.
View Medicines

The home page displays a list of medicines added by the user.
Network Status

The app checks for network connectivity and displays a dialog if not connected.
Notifications

The app sends notifications about medicines using Firebase Cloud Messaging.
Form Validation
Email Validation: Ensures the email follows the correct format.
Password Validation: Password must include numbers, special characters, and a minimum of 8 characters.
Unit Tests
Unit tests are included to verify the functionality of the app.
Run tests with:
bash
Copy code
flutter test
Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes.

License
This project is licensed under the MIT License - see the LICENSE file for details.

Contact
For any questions or feedback, please contact Qasim Kharodia at qasimkhrd@gmail.com
