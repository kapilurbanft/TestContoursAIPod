
Pod::Spec.new do |spec|
  spec.name         = 'TestContoursAIPod'
  spec.version      = '0.1.0'
  spec.authors      = {
    'kapil' => 'kapil.teotia@urbanft.com',
  }
  spec.license      = {
    :type => 'MIT',
    :file => 'LICENSE'
  }
  spec.homepage     = 'https://github.com/kapilurbanft/TestContoursAIPod'
  spec.source       = {
    :http => 'https://github.com/kapilurbanft/TestContoursAIPod/files/10233976/ContoursAI_SDK.xcframework.zip'
  }
  spec.summary      = 'Custom view for example on Medium.com'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '4.0'
  spec.ios.deployment_target = '11.0'
  spec.ios.vendored_frameworks = 'ContoursAI_SDK.xcframework'
  spec.ios.preserve_paths = 'ContoursAI_SDK.xcframework'
  spec.ios.header_dir = 'ContoursAI_SDK.xcframework'
      spec.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64 i38'}
    spec.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64 i38'}
end

