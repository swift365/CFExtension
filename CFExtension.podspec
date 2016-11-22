Pod::Spec.new do |s|
s.name = 'CFExtension'
s.version = '0.1.0'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'CFExtension is a Swift module for adding extension to uiview.'
s.homepage = 'https://github.com/swift365/CFExtension'
s.authors = { 'chengfei.heng' => 'hengchengfei@sina.com' }
s.source = { :git => 'https://github.com/swift365/CFExtension.git', :tag => "v0.1.0" }
s.ios.deployment_target = '9.0'
s.source_files = "CFExtension/Classes/*.swift", "CFExtension/Classes/**/*.swift"
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end

