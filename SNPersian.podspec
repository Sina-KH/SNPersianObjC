#
# Be sure to run `pod lib lint SNPersian.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SNPersian'
  s.version          = '0.6'
  s.summary          = 'SNPersian, Persian extensions for Obj-C Classes.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    SNPersian, provides some extensions for Objective-C Classes including NSString, NSDate &... to support Persian Language and Jalaali DateTime as well.
                       DESC

  s.homepage         = 'https://github.com/Sina-KH/SNPersianObjC'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SinaKH' => 'sina_od@yahoo.com' }
  s.source           = { :git => 'https://github.com/Sina-KH/SNPersianObjC.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/KH_Sina'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SNPersian/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SNPersian' => ['SNPersian/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
