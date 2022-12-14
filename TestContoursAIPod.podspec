
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
    :git => 'https://github.com/kapilurbanft/TestContoursAIPod.git',
    :branch => 'master',
    :tag => spec.version.to_s
  }
  spec.summary      = 'Custom view for example on Medium.com'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '4.0'
  spec.ios.deployment_target = '11.0'
end
