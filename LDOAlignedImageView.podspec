Pod::Spec.new do |s|
  s.name         = "LDOAlignedImageView"
  s.version      = "1.0.2"
  s.summary      = "UIImageView subclass that pins image edges to view edges in AspectFill mode"

  s.description  = <<-DESC
                   This lightweight UIImageView subclass controls how images are clipped in AspectFill content mode.
                   
                   By default, UIImageView centres the image, but LDOAlignedImageView can align images to prevent e.g. the top of the image from being clipped away.
                   
                   For the curious, this is implemented by adjusting the CALayer’s contentsRect property.
                   DESC

  s.homepage     = "https://github.com/lurado/LDOAlignedImageView"
  s.license      = "MIT"
  s.author       = { "Julian Raschke und Sebastian Ludwig GbR" => "info@lurado.com" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/lurado/LDOAlignedImageView.git", :tag => "v1.0.2" }
  s.source_files = "Classes", "Classes/**/*.{h,m}"
  s.requires_arc = true
end
