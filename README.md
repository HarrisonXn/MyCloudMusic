# MyCloudMusic
仿网易云音乐App  
tips：可用作毕设，可查看源码调用需要的组件

1、首页的显示封装在SplashController中，可以修改首页显示的图片以及文本。  
2、App首次打开会有用户协议弹框，使用MyLayout和QMUIKit实现。页面封装在TermServiceDialogController中，在SplashController中使用懒加载调用。
