#
#  Be sure to run `pod spec lint StartMovies.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "StarMovies"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of StarMovies."
  spec.description  = <<-DESC
  A short description of StarMovies.
                   DESC
  spec.homepage     = "http://EXAMPLE/StarMovies"
  spec.license          = { :type => "Private", :text => "Private project" }
  spec.author             = { "yguo" => "yeahgooc@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  spec.ios.deployment_target = '10.0'
  spec.swift_version = '5.1'
  spec.source = { :git => 'https://github.com/chilemei/StarMovies' }
  # spec.source       = { :git => "http://EXAMPLE/StartMovies.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "Classes", "StarMovies/Classes/**/*.{h,m,swift}"
  spec.exclude_files = "Classes/Exclude"
  spec.resource_bundles = {
    'StarMoviesResource' => ['StarMovies/Assets/**/*.xcassets']
  }

  # spec.public_header_files = "Classes/**/*.h"



  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  spec.dependency 'JLRoutes', '~> 2.1'
  spec.dependency "BeeHive", "~> 1.1.1"
  spec.dependency "RxSwift", "~> 5.1"
  spec.dependency "RxCocoa", "~> 5.1"
  spec.dependency "Kingfisher", "~> 5.13.3"

end
