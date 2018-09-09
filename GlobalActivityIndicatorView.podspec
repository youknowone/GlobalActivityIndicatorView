Pod::Spec.new do |s|
  s.name         = "GlobalActivityIndicatorView"
  s.version      = "0.1.1"
  s.summary      = "Global activity indicator view for easy usage."
  s.homepage     = "https://github.com/youknowone/GlobalActivityIndicatorView"
  s.license      = "2-clause BSD"
  s.author       = { "Jeong YunWon" => "jeong@youknowone.org" }
  s.source       = { :git => "https://github.com/youknowone/GlobalActivityIndicatorView.git", :tag => "0.1.1" }
  s.dependency "cdebug", "~> 1.0"
  s.requires_arc = false
  s.platform     = :ios, '5.0'

  s.source_files = "GlobalActivityIndicatorView"
  s.public_header_files = "GlobalActivityIndicatorView/*.h"
end
