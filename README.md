# 📰 SwiftNews - A Simple News Reader App

SwiftNews is a lightweight, elegant iOS application that fetches and displays the latest tech headlines. Built using **Swift**, **SwiftUI**, and the **MVVM architecture**, this app provides a smooth user experience while adhering to modern iOS development practices.

## 📱 Features

- 🚀 Displays the latest news headlines in a clean, scrollable list
- 📰 Tap to view full story details
- 💡 Built with **MVVM** for clean code and maintainability
- 🌐 Uses **networking techniques** to fetch real-time news
- 📷 Simple and modern UI designed with **SwiftUI**

## 🛠 Tech Stack

- **Language:** Swift
- **UI Framework:** SwiftUI
- **Architecture:** MVVM (Model-View-ViewModel)
- **Networking:** URLSession / Codable for API integration
- **Device Support:** iOS 15+

## 📸 Screenshots

| Headlines List | News Detail |
|----------------|-------------|
| ![Headlines](https://github.com/rajmishra-47/TestNews-V1.0.0/blob/main/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-04-23%20at%2010.20.51.png?raw=true) | ![Detail](https://github.com/rajmishra-47/TestNews-V1.0.0/blob/main/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-04-23%20at%2010.21.03.png?raw=true) |

> Replace the image paths with your actual screenshot file paths in your project repository.

## 🧱 Architecture Overview

- **Model:** Represents the structure of news data (e.g., articles, authors).
- **ViewModel:** Handles the business logic and API calls.
- **View:** SwiftUI components that present data to users.

## 🔌 Networking

The app uses URLSession to perform HTTP requests and decode JSON responses using `Codable` structs. It handles basic error scenarios and ensures a responsive UI.

## 🚀 Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/SwiftNews.git
