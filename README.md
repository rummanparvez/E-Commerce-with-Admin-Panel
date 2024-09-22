
# E-Commerce App with Admin Panel

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Welcome to the **E-Commerce App with Admin Panel** repository! This project provides a complete end-to-end solution for managing an e-commerce platform with features for both customers and administrators.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)
  
## Overview
This project is built to simplify e-commerce operations by providing an app for customers and an admin panel to manage products, users, and orders. It is scalable, highly functional, and easy to navigate for both administrators and customers.

## Features
- **User Features:**
  - Browse and search products
  - Add items to cart and proceed to checkout
  - User authentication and profile management
  - Track orders

- **Admin Features:**
  - Add, update, and remove products
  - View and manage user orders
  - Dashboard to monitor sales and user activities

## Tech Stack
- **Frontend:**
  - Flutter
  - Dart

- **Backend:**
  - Node.js
  - Express.js
  - MongoDB (Database)

- **Tools & IDEs:**
  - Visual Studio Code
  - Android Studio

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/rummanparvez/E-Commerce-with-Admin-Panel.git
    cd E-Commerce-with-Admin-Panel
    ```

2. Install dependencies for both the client and the server:
    ```bash
    cd client
    flutter pub get

    cd ../server
    npm install
    ```

3. Set up MongoDB:
   - Make sure you have MongoDB installed and running on your machine. Create a new database for this project.

4. Configure the backend:
   - Navigate to the `server/config/` directory and create a `.env` file with the following details:
     ```plaintext
     MONGO_URI=your_mongo_db_connection_string
     JWT_SECRET=your_jwt_secret_key
     ```

5. Run the project:
    ```bash
    # Start the Flutter app on Android/iOS
    flutter run

    # Start the Node.js backend server
    npm start
    ```

## Usage

- **For Users:**
  - Download the app to browse products, add them to the cart, and complete purchases.
  
- **For Admins:**
  - Use the admin panel to manage inventory, view orders, and handle user queries.

## License
This project is licensed under the MIT License. See the details below:

MIT License

```
Copyright (c) 2024 Rumman Parvez

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```


