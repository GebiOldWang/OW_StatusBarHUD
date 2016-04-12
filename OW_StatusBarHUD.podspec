Pod::Spec.new do |s|

  s.name         = "OW_StatusBarHUD"
  s.version      = "0.0.1"
  s.summary      = "statusbar"
  s.description  = <<-DESC
                   A longer description .
                   DESC

  s.homepage     = "https://github.com/GebiOldWang/OW_StatusBarHUD"
  s.license      = "MIT"
  s.author             = { "GebiOldWang" => "840226514@qq.com" }
  s.source       = { :git => "https://github.com/GebiOldWang/OW_StatusBarHUD.git", :tag => "0.0.1" }
  s.requires_arc = ture
  s.source_files  = "OW_StatusBarHUD/", "OW_StatusBarHUD/OW_StatusBarHUD/OW_StatusBarHUD.{h,m}"
end
