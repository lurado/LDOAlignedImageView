Pod::Spec.new do |s|
  s.name         = "JLNRGravityImageView"
  s.version      = "1.0.1"
  s.summary      = "UIImageView subclass that pins image edges to view edges in AspectFill mode"

  s.description  = <<-DESC
                   This lightweight UIImageView subclass controls how images are clipped in AspectFill content mode.
                   
                   By default, UIImageView centres the image, but JLNRGravityImageView can define the ‘gravity’ so that only one side of the image is trimmed off.
                   
                   This is useful, for example, if you want to avoid clipping off the top of a photo because faces are more interesting than shoes.
                   
                   For the curious, this is implemented by adjusting the CALayer’s contentsRect property.
                   DESC

  s.homepage     = "https://github.com/jlnr/JLNRGravityImageView"
  s.license      = "MIT"
  s.author       = { "Julian Raschke" => "julian@raschke.de" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/jlnr/JLNRGravityImageView.git", :tag => "v1.0.1" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.requires_arc = true
end
