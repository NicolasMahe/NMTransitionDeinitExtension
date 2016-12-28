Pod::Spec.new do |s|
  s.name             = 'NMTransitionDeinitExtension'
  s.version          = '0.0.1'
  s.summary          = 'Add Transition with deinit'
  s.description      = <<-DESC
Add Transition with deinit to UIView.
                       DESC

  s.homepage         = 'https://github.com/NicolasMahe/NMTransitionDeinitExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nicolas Mahé' => 'nicolas@mahe.me' }
  s.source           = { :git => 'https://github.com/NicolasMahe/NMTransitionDeinitExtension.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'NMTransitionDeinitExtension/**/*.swift'

  s.frameworks = 'UIKit'

end
