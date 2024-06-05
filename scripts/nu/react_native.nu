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

    # build h5 dist,android
    expo export
}

def main [] {
    echo 'Get Started Without a Framework (fail)'
    echo "Start a new React Native project with Expo"
}