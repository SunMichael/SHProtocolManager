
Pod::Spec.new do |s|
    s.name         = "SHProtocolManager"
    s.version      = "0.0.2"
    s.ios.deployment_target = '8.0'
    s.summary      = "A delightful setting interface framework."
    s.homepage     = "https://github.com/SunMichael/SHProtocolManager"
    s.license              = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "sunsun" => "bigsun1992@sina.cn" }
    s.social_media_url   = "http://weibo.com/u/5348162268"
    s.source       = { :git => "https://github.com/SunMichael/SHProtocolManager.git", :tag => s.version }
    s.source_files  = "SHProtocolManager/*"
    s.resources          = "SHProtocolManager/*"
    s.requires_arc = true
end





