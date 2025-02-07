
# Test exercise for NDA

This is a Flutter project designed to show my view of creating app according to NDA test exersize requirements.

!!!Pls test app on Android or iOS simulator

<img src="https://github.com/tedpreved/test_exercise/assets/6840067/e0860641-76e8-40fc-b5a1-4a9ea02617ff" alt="Alt text" width="200"/>
<img src="https://github.com/tedpreved/test_exercise/assets/6840067/28b75295-a441-4d68-afd2-dcae726ab783" alt="Alt text" width="200"/>
<img src="https://github.com/tedpreved/test_exercise/assets/6840067/4a17e20b-55ab-49bd-ae87-3b4241efede2" alt="Alt text" width="200"/>

## Prerequisites

Before you begin, ensure you have met the following requirements:
- **Flutter**: Your development environment must have Flutter installed. Flutter's official documentation provides a comprehensive guide for [installation](https://flutter.dev/docs/get-started/install).
- **Dart**: Ensure Dart is installed. It typically comes with the Flutter installation.
- **IDE**: A suitable IDE (e.g., Android Studio, VSCode) with Flutter and Dart plugins installed.
- **Git**: For cloning the repository and managing version control.

## Launching the App from the Console

To launch the app, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/tedpreved/test_exercise.git
   ```

2. **Navigate to the project directory**:
   ```bash
   cd test_exercise
   ```

3. **Get Flutter dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the app**:

   Debug mode
   ```bash
    flutter run --debug
   ```
   Release mode
    ```bash
    flutter run --release
   ```

## Local server setup
You can find the back end for mobile application by vising this [link](https://github.com/tedpreved/fruityvice_proxy#fruityvice-proxy-server) 

## Troubleshooting
If you stuck on this screen... 

<img src="https://github.com/tedpreved/test_exercise/assets/6840067/4a17e20b-55ab-49bd-ae87-3b4241efede2" alt="Alt text" width="200"/>

...it is 99% probability that is something wrong with app connection to the back end.
In that case you can check next things:

   - Visit http://localhost:3000/fruits at web browser on your PC or http://127.0.0.1:3000/fruits at iOS simulator browser or http://10.0.2.2:3000/fruits at Android simulator.
     
   - If you fire you back end on a custom ip adress and port you can modify `androidBaseUrl` or `iosBaseUrl`, this constants located at "/lib/constants.dart" file.
   
If you have any problem or ideas you can contact my by email: `teodor.mytsyk@gmail.com`.
   

