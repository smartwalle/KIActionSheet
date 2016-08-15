Pod::Spec.new do |s|
  s.name         = "KIActionSheet"
  s.version      = "0.0.1"
  s.summary      = "KIActionSheet"

  s.description  = <<-DESC
                   KIActionSheet.
                   DESC

  s.homepage     = "https://github.com/smartwalle/KIActionSheet"
  s.license      = "MIT"
  s.author             = { "SmartWalle" => "smartwalle@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/smartwalle/KIActionSheet.git", :tag => "#{s.version}" }
  s.source_files = "KIActionSheet/KIActionSheet/**/*.{h,m}"
  s.requires_arc = true
end
