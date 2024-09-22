E-Commerce App with Admin Panel

Welcome to the E-Commerce App with Admin Panel repository! This project provides a complete end-to-end solution for managing an e-commerce platform with features for both customers and administrators.

Table of Contents
Overview
Features
Tech Stack
Installation
Usage
License
Overview
This project is built to simplify e-commerce operations by providing an app for customers and an admin panel to manage products, users, and orders. It is scalable, highly functional, and easy to navigate for both administrators and customers.

Features
User Features:

Browse and search products
Add items to cart and proceed to checkout
User authentication and profile management
Track orders
Admin Features:

Add, update, and remove products
View and manage user orders
Dashboard to monitor sales and user activities
Tech Stack
Frontend:

Flutter
Dart
Backend:

Node.js
Express.js
MongoDB (Database)
Tools & IDEs:

Visual Studio Code
Android Studio
Installation
Clone the repository:

bash
Copy code
git clone https://github.com/rummanparvez/E-Commerce-with-Admin-Panel.git
cd E-Commerce-with-Admin-Panel
Install dependencies for both the client and the server:

bash
Copy code
cd client
flutter pub get

cd ../server
npm install
Set up MongoDB:

Make sure you have MongoDB installed and running on your machine. Create a new database for this project.
Configure the backend:

Navigate to the server/config/ directory and create a .env file with the following details:
plaintext
Copy code
MONGO_URI=your_mongo_db_connection_string
JWT_SECRET=your_jwt_secret_key
Run the project:

bash
Copy code
# Start the Flutter app on Android/iOS
flutter run

# Start the Node.js backend server
npm start
Usage
For Users:
Download the app to browse products, add them to the cart, and complete purchases.
For Admins:
Use the admin panel to manage inventory, view orders, and handle user queries.
License
This project is licensed under the MIT License. See the LICENSE file for more information.
