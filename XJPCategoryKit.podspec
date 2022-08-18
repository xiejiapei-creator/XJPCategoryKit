
Pod::Spec.new do |s|
  s.name             = 'XJPCategoryKit'
  s.version          = '1.0.0'
  s.summary          = '提供便利的分类'
  s.description      = <<-DESC
提供OC常见的各种分类方法
                       DESC

  s.homepage         = 'https://github.com/xiejiapei-creator/XJPCategoryKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xiejiapei-creator' => '2170928274@qq.com' }
  s.source           = { :git => 'https://github.com/xiejiapei-creator/XJPCategoryKit.git', :tag => s.version.to_s }
  s.social_media_url   = "https://www.jianshu.com/u/1ceb4a330607"

  s.ios.deployment_target = '10'

  s.source_files = 'XJPCategoryKit/Classes/**/*'
  s.public_header_files = 'XJPCategoryKit/Classes/XJPCategoryKit.h'
  s.frameworks = "OpenGLES", "YYModel"

end
