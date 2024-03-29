Pod::Spec.new do |s|
    s.name             = "MCStyle"
    s.version          = "0.0.9"
    s.summary          = "Config custom & smart style for iOS UI."
    s.description      = "Config custom & smart style for iOS UI."
    s.license          = 'MIT'
    s.author           = { "littleplayer" => "mailjiancheng@163.com" }
    s.homepage         = "https://github.com/poholo/MCStyle"
    s.source           = { :git => "https://github.com/poholo/MCStyle.git", :tag => s.version.to_s }

    s.platform     = :ios, '10.0'
    s.requires_arc = true


    s.source_files = 'SDK/*.{h,m,mm}'
    s.dependency 'MCBase/Dto'

    s.ios.framework = 'UIKit'

end
