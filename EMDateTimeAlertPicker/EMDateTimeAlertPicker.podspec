

Pod::Spec.new do |spec|



  spec.name         = "EMDateTimeAlertPicker"
  spec.version      = "0.1.0"
  spec.summary      = "This is a sample Date "
  spec.description  = "EMDateTimeAlertPicker is a custom date time picker wich is intergrated with UIAlertView. It can customise by the user by changing the given attributes."
  spec.homepage     = "http://EXAMPLE/EMDateTimeAlertPicker"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Sahan Ravindu" => "ravindu.emedia@gmail.com" }
  # Or just: spec.author    = "Sahan Ravindu"
  # spec.authors            = { "Sahan Ravindu" => "" }
  # spec.social_media_url   = "https://twitter.com/Sahan Ravindu"

  # spec.platform     = :ios
  spec.platform     = :ios, "9.0"
  
  spec.source       = { :git => "https://github.com/Sahanrv/EMDateTimeAlertPicker.git", :tag => "0.1.0" }

  spec.source_files  = "EMDateTimeAlertPicker/Source/*.{swift}", "EMDateTimeAlertPicker/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  spec.framework  = "UIKit"
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
  # spec.dependency "JSONKit", "~> 1.4"

end
