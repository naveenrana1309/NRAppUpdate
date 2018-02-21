#
# Be sure to run `pod lib lint NRAppUpdate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'NRAppUpdate'
s.version          = '0.1.0'
s.summary          = 'NRAppUpdate enables the app to detect whether the new version of the app is available on itunes. For ex: During the launch of the app, it checks for update and shows the update prompt accordingly.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
NRAppUpdate enables the app to detect whether the new version of the app is available on itunes. For ex: During the launch of the app, it checks for update and shows the update prompt accordingly. So you just have to use single line of code NRAppUpdate.checkUpdate(for: "---YOUR APP ITUNES ID---") to enable this.

DESC

s.homepage         = 'https://github.com/naveenrana1309/NRAppUpdate'
s.screenshots     = 'https://cdn.rawgit.com/naveenrana1309/NRAppUpdate/master/Example/sample.png'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'naveenrana1309' => 'naveenrana1309@gmail.com' }
s.source           = { :git => 'https://github.com/naveenrana1309/NRAppUpdate.git', :tag => s.version.to_s }

#s.social_media_url = 'https://www.facebook.com/iOSByHeart/'

s.ios.deployment_target = '8.0'

s.source_files = 'NRAppUpdate/Classes/**/*'

# s.resource_bundles = {
#   'NRAppUpdate' => ['NRAppUpdate/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'

end

