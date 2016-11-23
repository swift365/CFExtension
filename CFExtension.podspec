Pod::Spec.new do |s|
s.name = 'CFExtension'
s.version = '0.2.1'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'CFExtension is a Swift module for adding extension to uiview.'
s.homepage = 'https://github.com/swift365/CFExtension'
s.authors = { 'chengfei.heng' => 'hengchengfei@sina.com' }
s.source = { :git => 'https://github.com/swift365/CFExtension.git', :tag => "0.2.1" }
s.ios.deployment_target = '9.0'
s.source_files = "CFExtension/Classes/*.swift", "CFExtension/Classes/**/*.swift"
end

