# MyCloudMusic
仿网易云音乐App  
tips：可用作毕设，可查看源码调用需要的组件

1、首页的显示封装在SplashController中，可以修改首页显示的图片以及文本。  
2、App首次打开会有用户协议弹框，使用MyLayout和QMUIKit实现。页面封装在TermServiceDialogController中，在SplashController中使用懒加载调用。  
3、判断用户是否已经遵守用户协议和设置用户遵守用户协议，在DefaultPreferenceUtil中创建isAcceptTermsServiceAgreement和setAcceptTermsServiceAgreement:(BOOL)data两个方法来判断，然后在SplashController界面中做出判断，用户已同意则进行下一步操作，还未同意则跳出用户协议弹框。
