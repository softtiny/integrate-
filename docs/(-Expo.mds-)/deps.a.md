```json
{
  "name": "t20240606",
  "main": "expo-router/entry",
  "version": "1.0.0",
  "scripts": {
    "start": "expo start",
    "reset-project": "node ./scripts/reset-project.js",
    "android": "expo start --android",
    "ios": "expo start --ios",
    "web": "expo start --web",
    "test": "jest --watchAll",
    "lint": "expo lint"
  },
  "jest": {
    "preset": "jest-expo"
  },
  "dependencies": {
    "@expo/vector-icons": "^14.0.0",
    "@react-navigation/native": "^6.0.2",
    "expo": "~51.0.10",
    "expo-constants": "~16.0.2",
    "expo-font": "~12.0.6",
    "expo-linking": "~6.3.1",
    "expo-router": "~3.5.15",
    "expo-splash-screen": "~0.27.4",
    "expo-status-bar": "~1.12.1",
    "expo-system-ui": "~3.0.5",
    "expo-web-browser": "~13.0.3",
    "react": "18.2.0",
    "react-dom": "18.2.0",
    "react-native": "0.74.1",
    "react-native-gesture-handler": "~2.16.1",
    "react-native-reanimated": "~3.10.1",
    "react-native-safe-area-context": "4.10.1",
    "react-native-screens": "3.31.1",
    "react-native-web": "~0.19.10"
  },
  "devDependencies": {
    "@babel/core": "^7.20.0",
    "@types/jest": "^29.5.12",
    "@types/react": "~18.2.45",
    "@types/react-test-renderer": "^18.0.7",
    "jest": "^29.2.1",
    "jest-expo": "~51.0.1",
    "react-test-renderer": "18.2.0",
    "typescript": "~5.3.3"
  },
  "private": true
}
```


```mermaid
graph TD;
    dependencies-->expo/vector-icons;
    dependencies-->react-navigation/native;
    dependencies-->expo;
    dependencies-->expo-constants;
    dependencies-->expo-font;
    dependencies-->expo-linking;
    dependencies-->expo-router;
    dependencies-->expo-splash-screen;
    dependencies-->expo-status-bar;
    dependencies-->expo-system-ui;
    dependencies-->expo-web-browser;
    dependencies-->react;
    dependencies-->react-dom;
    dependencies-->react-native;
    dependencies-->react-native-gesture-handler;
    dependencies-->react-native-reanimated;
    dependencies-->react-native-safe-area-context;
    dependencies-->react-native-screens;
    dependencies-->react-native-web;
```