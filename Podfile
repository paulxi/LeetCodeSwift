platform :ios, '11.0'

target "LeetCodeSwift" do
  use_frameworks!
  # Normal libraries

  target "LeetCodeSwiftTests" do
    inherit! :search_paths

    pod 'Quick'
    pod 'Nimble'
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts target.name
  end
end