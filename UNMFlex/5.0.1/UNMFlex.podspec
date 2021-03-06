#
# Be sure to run `pod lib lint FlexLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UNMFlex'
  s.version          = '5.0.1'
  s.summary          = 'An obj-c flex layout framework for IOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
It's a layout framework based on yoga engine. The main purpose is to provide easy and fast usage.
                       DESC

  s.homepage         = 'https://github.com/ChengRuipeng/UNMFlex'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '974098768@qq.com' => '974098768@qq.com' }
  s.source           = { :git => 'https://github.com/ChengRuipeng/UNMFlex.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'UNMFlex/Classes/**/*'
  
  s.resource_bundles = {
     'UNMFlex' => ['UNMFlex/Assets/*']
  }
  
  s.dependency 'Yoga', '1.14.0'

  s.library = 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '/usr/include/libxml2' }


  non_arc_files   = 'UNMFlex/Classes/GDataXMLNode.{h,m}'
  s.exclude_files = non_arc_files
  s.subspec 'no-arc' do |sna|
    sna.requires_arc = false
    sna.source_files = non_arc_files
  end

end

