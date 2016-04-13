Pod::Spec.new do |s|
  s.name         = "OW_StatusBarHUD"
  s.version      = "0.0.1"
  s.summary      = "A StatusBar"
  s.homepage     = "https://github.com/GebiOldWang/OW_StatusBarHUD"
  s.license      = "MIT"
  s.platforms = { :ios => "7.0" }
  s.author             = { "GebiOldWang" => "840226514@qq.com" }
  s.source       = { :git => "https://github.com/GebiOldWang/OW_StatusBarHUD.git", :tag => "0.0.1" }
  s.source_files  = "OW_StatusBarHUD/**/*.{h,m}"
  s.framework  = "UIKit"

end
