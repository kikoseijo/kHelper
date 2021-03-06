#
#  Be sure to run `pod spec lint kHelper.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "kHelpers"
  s.version      = "0.0.1"
  s.summary      = "Swift class to."

  s.description  = <<-DESC
  Swift 3.0 tools for convenience.
                   DESC

  s.homepage     = "https://github.com/kikoseijo/kHelpers"
  s.license      = "MIT (team)"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Kiko Seijo" => "kiko@sunnyface.com" }
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'kHelpers/Source/*/*.swift'

  s.source       = { :git => "https://github.com/kikoseijo/kHelpers.git", :branch => "production", :tag => "#{s.version}" }

end
