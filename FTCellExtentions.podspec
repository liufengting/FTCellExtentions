#
#  Be sure to run `pod spec lint FTCellExtentions.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "FTCellExtentions"
  s.version      = "0.0.1"
  s.summary      = "Cell Extentions for easy use"
  s.description  = <<-DESC
    Cell Extentions for easy use. Just some code for my future projects.
                   DESC
  s.homepage     = "https://github.com/liufengting/FTCellExtentions"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "liufengting" => "wo157121900@me.com" }
  s.source       = { :git => "https://github.com/liufengting/FTCellExtentions.git", :tag => "#{s.version}" }
  s.source_files = ["FTCellExtentions/*.swift"]

end
