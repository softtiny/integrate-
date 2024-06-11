
def capacitor_fresh [] {
    #Starting a fresh project
    npx @capacitor/cli create
}

#Adding Capacitor to an existing web app
def capacitor_add [] {
    cd my-app
    npm install @capacitor/core @capacitor/cli @capacitor/android
    #Then, initialize Capacitor with your app information.
    npx cap init

    #Next, install any of the desired native platforms:
    npx cap add android
    npx cap add ios

    #... test
    pnpm add @capacitor/core @capacitor/cli  @capacitor/android
    pnpm cap init
    pnpm cap add android
}

def install_capacitor [] {
    #Create a new Capacitor app
    npm init @capacitor/app

    #Add Capacitor to your web app
    npm i @capacitor/core
    npm i -D @capacitor/cli

    #Initialize your Capacitor config
    npx cap init

    #Create your Android and iOS projects
    npm i @capacitor/android @capacitor/ios
    npx cap add android

    #Sync your web code to your native project
    npx cap sync
}



def main [] {
    echo "A cross-platform native runtime for web apps."
    echo "Capacitor is an open source native runtime for building Web Native apps. Create cross-platform iOS, Android, and Progressive Web Apps with JavaScript, HTML, and CSS."
}