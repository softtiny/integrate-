def react_native[]{
    #Step 1: Creating a new application
    #se React Native Community CLI to generate a new project
    npx @react-native-community/cli@latest init AwesomeProject


    #Step 2: Start Metro
    #Metro is the JavaScript build tool for React Native. To start the Metro development server, run the following from your project folder:
    npm start

    #Step 3: Start your application
    npm run android

    #bundle
    ./node_modules/.bin/react-native bundle --platform
}
def useExpo [] {
    # To create a new project, run the following command:
    npx create-expo-app@latest

    #not easy use demo
    #React Native Expo Template Twitter
    #https://github.com/expo-starter/expo-template
    npx create-expo-app --template @launchtrack/expo-starter  # fail not ok

    #React Native Reusables
    #https://github.com/mrzachnugent/react-native-reusables

    git clone https://github.com/mrzachnugent/react-native-reusables.git
    cd react-native-reusables

    pnpm i

    # build h5 dist,android
    expo export
}

def main [] {
    echo 'Get Started Without a Framework (fail)'
    echo "Start a new React Native project with Expo"
    echo "find [tempalte](https://github.com/expo-starter/expo-template)" "then not ok"
    echo "npx create-expo-app --template @launchtrack/expo-starter" "build time too long" "pc down"
    echo "ok maybe" "[tempalte](https://github.com/mrzachnugent/react-native-reusables)" "node < 20.x run dev error end it...."
    echo "Fuck!"
}