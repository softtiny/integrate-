def install_taro [] {
    # 使用 npm 安装 CLI
     npm install -g @tarojs/cli
    # 查看 Taro 全部版本信息
     npm info @tarojs/cli

     # 命令创建模板项目：
     taro init myApp
    #npx 创建模板项目
     npx @tarojs/cli init myApp

     # 安装使用的工具按照 yarn > cnpm > npm 顺序进行检测

     #微信小程序
     npm run dev:weapp
     npm run build:weapp
    # H5
    # H5H5
    npm run dev:h5
    npm run build:h5
}

def main [] {
    echo "放弃taro stupid小程序 !"
}