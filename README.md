# SHProtocolManager

###建立自己的Podspec     

1.添加开源许可LICENSE文件    
$ echo MIT>LICENSE

2.在自己的项目下创建podspec文件     
$ pod spec create SHProtocolManager          

3.编辑podspec文件内，例如下:          

<pre><code>Pod::Spec.new do |s|
    s.name         = "SHProtocolManager"
    s.version      = "0.0.1"
    s.ios.deployment_target = '8.0'
    s.summary      = "A test framework."
    s.homepage     = "https://github.com/SunMichael/SHProtocolManager"
    s.license              = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "sunsun" => "bigsun1992@sina.cn" }
    s.social_media_url   = "https://github.com/SunMichael"
    s.source       = { :git => "https://github.com/SunMichael/SHProtocolManager.git", :tag => s.version }
    s.source_files  = "SHProtocolManager/ProtocolManager/**/*.{h,m}"
    s.requires_arc = true
end </code></pre>            




<pre><code>
Directory1/*
Directory1/Directory2/*.{h,m}
Directory1/**/*.h        
* 表示匹配所有文件
*.{h,m} 表示匹配所有以.h和.m结尾的文件
** 表示匹配所有子目录 </code></pre>         




3.1.绑定tag     
<pre><code>
git commit -m 'log'
git tag 0.0.1    tag一定要和podspec中的version一致
git push origin master --tags       –tags为了把刚才添加的tag提交上去   

git tag -d 0.0.1   //删除本地tag      
git push origin --delete tag 0.0.1  //删除远程仓库里的tag     </code></pre>  


4.验证文件的有效性     
$ pod spec lint LPPushService.podspec    
如果出现- ERROR | [iOS] unknown: Encountered an unknown error (Simulator iPhone 4s is not available.) during validation.    
更新cocoapad
sudo gem install cocoapods --pre


5.注册cocoapod       
$ pod trunk register bigsun1992@sina.cn "SunXX"   


6.发布podspec    
pod trunk push LPPushService.podspec    
或者pod trunk push LPPushService.podspec --use-libraries --allow-warnings


