Pod::Spec.new do |s|
  s.name             = 'Logger'
  s.version          = '1.0.0'
  s.summary          = 'A logger package using CocoaLumberjack.'

  s.description      = <<-DESC
                       Logger is a Swift package that provides logging functionality using CocoaLumberjack.
                       DESC

  s.homepage         = 'https://github.com/ff-jackma/logger-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JackMa' => 'ff.jackma@gmail.com' }
  s.source           = { :git => 'https://github.com/ff-jackma/logger-ios', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'

  s.source_files = 'Sources/**/*.{swift,h,m}'
  s.exclude_files = 'Sources/Exclude'

  s.dependency 'CocoaLumberjack/Swift', '~> 3.8.1'
end