Pod::Spec.new do |s|
s.name = 'PasscodeLock'
s.version = '1.0.9'
s.license = { :type => "MIT", :file => 'LICENSE.txt' }
s.summary = 'An iOS passcode lock with Touch ID authentication written in Swift.'
s.homepage = 'https://github.com/yankodimitrov/SwiftPasscodeLock'
s.authors = { 'Yanko Dimitrov' => '' }
s.source = { :git => 'https://github.com/e7fendy/SwiftPasscodeLock.git' }

s.ios.deployment_target = '14.0'

s.source_files = 'PasscodeLock/*.{h,swift}',
				 'PasscodeLock/*/*.{swift}'

s.resources = [
				'PasscodeLock/Views/PasscodeLockView.xib',
				'PasscodeLock/en.lproj/*'
			  ]

s.requires_arc = true
end
