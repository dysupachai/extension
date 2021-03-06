#
#  Be sure to run `pod spec lint IsCodeExtension.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "IsCodeExtension"
  s.version      = "0.0.4"
  s.summary      = "IsCodeExtensions."
  s.description  = "IsCodeExtensions for my project"
  s.homepage     = 'https://www.forfur.com'
  s.license      = "MIT"
  s.author             = { "supachai somrit" => "dy_zildjian@hotmail.com" }
  s.platform     = :ios
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/dysupachai/extension.git",  :branch => 'master', :tag => s.version.to_s }

  s.source_files  =  "IsCodeExtension/Source/**"
end