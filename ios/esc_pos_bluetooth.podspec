#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint esc_pos_bluetooth.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'esc_pos_bluetooth'
  s.version          = '0.0.1'
  s.summary          = 'The library allows to print receipts using an ESC/POS thermal Bluetooth printer.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/andrey-ushakov/esc_pos_bluetooth'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Andrey Ushakov' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.static_framework = true
  s.dependency 'Flutter'
  # s.platform = :ios, '8.0'

  # Import all * .a libraries in the Classes folder
  s.frameworks = ["SystemConfiguration", "CoreTelephony","WebKit"]
  s.vendored_libraries = '**/*.a'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
