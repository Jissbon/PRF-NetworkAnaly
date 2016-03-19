# Uncomment this line to define a global platform for your project
# platform :ios, '8.0'
# Uncomment this line if you're using Swift
# use_frameworks!



#去掉由pod引入的第三方库的警告
inhibit_all_warnings!

target 'BaseProject(基础工程)' do
pod 'AFNetworking'
pod 'BlocksKit'
pod 'Masonry'
pod 'MJRefresh'
pod 'SDWebImage'#如果同时导入AFNetworking和SDWebImage框架,AF的下载图片方法会被划掉
pod 'FMDB'
pod 'CocoaAsyncSocket'
pod 'RESideMenu'
pod 'MBProgressHUD'
pod 'MJExtension'#专门用于Array/Dictionary ->转对象模型的,主要用于JSON解析,基本上工作都会用到
pod 'CocoaLumberjack'#对NSLog封装,效率比NSLog高,大量打印不卡顿,可以分级打印
pod 'TPKeyboardAvoiding'#实现滚动控件中,弹出键盘时,自动移动输入框位置,防止键盘遮盖输入框
pod 'MLTransition' #实现IOS7以后,自定义左上角返回控件,导致手势的左滑返回失效的问题
pod 'SWTableViewCell' #实现IOS系统邮件的 cell左滑显示多个按钮的模式
pod 'MWPhotoBrowser' #网络或者本地 浏览多张图片浏览的控制器

end

