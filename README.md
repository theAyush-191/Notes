
Notes App

A simple iOS note-taking app built with Swift, Realm for local storage, and SwipeCellKit for swipe-to-edit/delete actions.

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

Features
    •    Add, edit, and delete notes.
    •    Swipe gestures on note cells for edit and delete.
    •    Persistent local storage using Realm.
    •    Offline-first architecture; notes are stored locally.
    •    Simple and clean user interface.

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

Requirements
    •    Xcode 15 or later
    •    iOS 15.0+
    •    Swift 5.8+
    •    CocoaPods or Swift Package Manager (for SwipeCellKit)

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻
Installation
    1.    Clone the repository: git clone <repo-url>
    2.    Open the .xcodeproj or .xcworkspace file in Xcode.
    3.    Install dependencies:

    •    Using Swift Package Manager:
         File → Add Packages… → https://github.com/SwipeCellKit/SwipeCellKit.git

    4.    Build and run on a simulator or device.

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

Usage
    1.    Add Note: Tap the + button in the navigation bar.
    2.    Edit Note: Swipe left on a note and tap Edit.
    3.    Delete Note: Swipe left on a note and tap Delete.
    4.    View Note: Tap a note to open and view its content.

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

Architecture
    •    SwipeViewController – Base class handling swipe gestures and cell dequeuing.
    •    TitleViewController – Subclass managing note data, integrating Realm.
    •    ContentViewController – Displays note content and allows editing.
    •    Realm – Local database for offline-first storage.
    •    SwipeCellKit – Handles swipe gestures for cells.

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

Contact
    •    LinkedIn: https://www.linkedin.com/in/ayushsingh-tech/
    •    Email: ayush191.znr@gmail.com
    •    GitHub: https://github.com/theAyush-191
    
⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

Future Enhancements
    •    Firebase integration for cloud sync and offline/online sync.
    •    Categorize notes and support multiple notebooks.
    •    Dark mode and theme customization.
    •    Search and filter notes.

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

Photo Demo

<img width="300" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-27 at 03 01 03" src="https://github.com/user-attachments/assets/8da3be2e-f273-477b-8626-76d442931f0e" />
<img width="300" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-27 at 03 01 13" src="https://github.com/user-attachments/assets/85e3d57a-be57-4248-b655-5be768c469d9" />
<img width="300" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-27 at 03 01 19" src="https://github.com/user-attachments/assets/b03c797e-f5d5-4916-a98a-98a3c41485b8" />
<img width="300" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-27 at 03 00 54" src="https://github.com/user-attachments/assets/fcab8aeb-92a4-4e12-9168-8001dbe3b1fe" />

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

License

MIT License © 2025 Ayush Singh
