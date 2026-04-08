# Notes App (Flutter)

## Overview

This project is a Flutter-based mobile application that allows users to create, edit, and manage personal notes. The application integrates Firebase Authentication for user management and Cloud Firestore for data storage.

## Features

* User registration and login using Firebase Authentication
* Create, read, update, and delete notes (CRUD functionality)
* Persistent storage of notes using Cloud Firestore
* User-specific data access
* Logout functionality

## Architecture

The project follows a feature-based architecture. Each feature is divided into three layers:

* data/ – handles interaction with external services (e.g., Firebase)
* domain/ – contains business logic and repository interfaces
* presentation/ – manages UI and state

Main features:

* auth
* notes
* profile

## Authentication Flow

Users can register or log in using email and password via Firebase Authentication.
After successful authentication, users are redirected to the notes screen, where they can manage their data.

## Firestore Integration

All notes are stored in Cloud Firestore and are associated with the authenticated user. Each user can only access their own data.

## Security Rules

Firestore security rules are configured to allow access only to authenticated users and restrict users to their own documents.

## APK

Google Drive link: (insert your APK link here)

## Demo

The video demonstration includes the following:

* User registration
* User login
* Creating a note
* Editing a note
* Deleting a note
* Logout

## How to Run

1. Install Flutter SDK
2. Run `flutter pub get`
3. Connect a device or start an emulator
4. Run `flutter run`

