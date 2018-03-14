#Intent.podspec
Pod::Spec.new do |s|
s.name         = "PopInterrupter"
s.version      = "1.0.0"
s.summary      = "A drop-in library that helps manage the UINavigationController's interactivePopGestureRecognizer and backButtonItem. You can interrupt the pop back manually. It also helps to solve the conflicts between the interactivePopGestureRecognizer and the scrollView's panGestureRecognizer."

s.homepage     = "https://github.com/Jerry0523/PopInterrupter.git"
s.license      = 'MIT'
s.author       = { "Jerry Wong" => "jerrywong0523@icloud.com" }
s.platform     = :ios, "8.0"
s.ios.deployment_target = "8.0"
s.source       = { :git => "https://github.com/Jerry0523/PopInterrupter.git", :tag => s.version}
s.requires_arc = true
s.source_files  = 'PopInterrupter/*.swift'


end
