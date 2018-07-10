#
#  Be sure to run `pod spec lint extension.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "IsCodeExtension"
  s.version      = "0.0.4"
  s.summary      = "IsCodeExtension Forany Project"
  s.description  = "ISCODE"
  s.homepage     = "http://www.forfur.com"
  s.license      = "MIT"
  s.author             = { "=" => "dy_zildjian@hotmail.com" }
  s.source       = { :git => "https://dynashman@bitbucket.org/dynashman/iscodecocoapods.git" , :branch => 'master', :tag => s.version.to_s }


  s.source_files  = '*.*'
  s.resources     = '*.*'


end
