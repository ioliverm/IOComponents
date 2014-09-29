Pod::Spec.new do |s|
  s.name         = "IOComponents"
  s.version      = "0.0.3"
  s.summary      = "Facebook ios architecture based framework to optimize UIView recycling and simplify views handling."
  s.description  = <<-DESC
                   A longer description of IOComponents in Markdown format.
                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  s.homepage     = "https://github.com/ioliverm/IOComponents"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Ivan Oliver" => "ivan.oliver@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/ioliverm/IOComponents.git", :tag => "0.0.3" }
  s.source_files  = "Source/*.{h,m}"
  s.requires_arc = true
end
