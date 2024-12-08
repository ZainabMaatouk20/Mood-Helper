# **Mood Helper**

Mood Helper is a Flutter-based application designed to promote emotional well-being. The app provides tools to track your mood, manage anger, practice guided breathing, and uplift your mood with inspiring music and quotes.

---

## **Features**
- **Mood Tracker**: Select your mood with emojis and receive a personalized quote.
- **Breathing Guide**: A guided breathing exercise to relax your mind and body.
- **Anger Management Tips**: Two daily tips to manage anger effectively, cycling through a curated list.
- **Music Suggestions**: A collection of calming music recommendations.
- **Clean and Intuitive UI**: Aesthetic design with soft gradients and smooth navigation.

---

## **Project Structure**
This project is organized into several files under the `lib/` directory. Below is an overview of each file with its purpose.


---

### **`main.dart`**
- **Purpose**: The entry point of the application.
- **Description**:
  - Sets up the app's routing and theme.
  - Defines routes for all screens in the app:
    - `/`: Home Screen
    - `/mood-tracker`: Mood Tracker Screen
    - `/breathing-guide`: Breathing Guide Screen
    - `/anger-management`: Anger Management Tips Screen
    - `/music-suggestions`: Music Suggestions Screen
  - Applies a calming theme using `MaterialApp`.

---

### **`home_screen.dart`**
- **Purpose**: Serves as the app's home screen.
- **Description**:
  - Displays a welcome message and an emoji banner (loaded via `Image.network`).
  - Provides navigation buttons to other app features.
  - Uses a gradient background for visual appeal.
- **Key Widgets**:
  - `Image.network`: Displays an online emoji banner.
  - `ElevatedButton`: Navigation buttons to other screens.

---

### **`mood_tracker_screen.dart`**
- **Purpose**: Allows users to select their mood and view motivational quotes.
- **Description**:
  - Displays a mood selection panel with emojis (e.g., 😊 for Happy, 😢 for Sad).
  - Shows a quote based on the selected mood.
  - Includes a "Get New Quote" button to dynamically display another quote.
  - Highlights the selected mood with a different color.
- **Key Widgets**:
  - `Wrap`: Arranges emojis and mood names in a flexible layout.
  - `Container`: Displays a larger quote with a styled background.
  - `ElevatedButton`: Generates new quotes.

---

### **`breathing_guide_screen.dart`**
- **Purpose**: Guides users through a calming breathing exercise.
- **Description**:
  - Shows breathing instructions like "Breathe In" and "Breathe Out."
  - Uses timers to manage intervals between instructions.
  - Notifies the user when the session starts and ends.
- **Key Widgets**:
  - `Timer`: Handles breathing intervals.
  - `Text`: Dynamically updates to show breathing instructions.
  - `ElevatedButton`: Starts the breathing session.

---

### **`anger_management_screen.dart`**
- **Purpose**: Provides users with two practical tips daily to manage anger.
- **Description**:
  - Displays a new set of tips every day based on the date.
  - Cycles through a curated list of 20 tips, starting over after 10 days.
  - Ensures tips are centered and easy to read.
- **Key Widgets**:
  - `Column`: Centers the tips on the screen.
  - `Text`: Displays daily tips dynamically based on the day.

---

### **`music_suggestions_screen.dart`**
- **Purpose**: Suggests calming music to improve the user’s mood.
- **Description**:
  - Displays a list of calming music options, such as "Calm Piano" and "Ocean Waves."
  - Each item links to a music resource via `launchUrl`.
  - Offers a clean, scrollable interface for exploring suggestions.
- **Key Widgets**:
  - `ListView.builder`: Dynamically generates a scrollable list of music items.
  - `ListTile`: Represents individual music suggestions with a clickable title.

---

## **Getting Started**

### **1. Prerequisites**
- Install Flutter: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- Ensure you have an emulator or a physical device connected.

### **2. Clone the Repository**
```bash
git clone <your-repo-url>
cd mood_helper

