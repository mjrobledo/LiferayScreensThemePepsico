Pod::Spec.new do |s|
	s.name         = 'LiferayScreensThemePepsico'
	s.module_name  = 'LiferayScreensThemePepsico'
	s.version      = '1.0.0'
	s.summary      = 'A sample theme for Liferay Screens'
	s.homepage     = 'https://github.com/mjrobledo/LiferayScreensThemePepsico/tree/master/source'
	s.license = { 
		:type => 'LGPL 2.1', 
		:file => 'LICENSE.md'
	}
	s.source = {
		:git => 'https://github.com/mjrobledo/LiferayScreensThemePepsico.git',
		:tag => s.version.to_s
	}
	s.authors = {
		'Miguel Robledo' => 'mrobledo@lisyx.com'
	}
	
	s.platform = :ios, '8.0'
	s.requires_arc = true

	s.source_files = 'source/PepsicoTheme/**/*.{h,m,swift}'
	s.resources = 'source/PepsicoTheme/**/*.{xib,png,plist,lproj}'
	
	s.dependency 'LiferayScreens'

end
