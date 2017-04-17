# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'TestDemo' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
	platform :ios, '9.0'
	inhibit_all_warnings!


  # Pods for TestDemo
	pod 'Quick', '~> 1.0.0', :configurations => ['Debug']
	pod 'Nimble'


	#Additional pods
	pod 'OHHTTPStubs', '~> 4.7.0', :configurations => ['Debug']
	pod 'KIF'
	pod 'SwiftString3'

  target 'TestDemoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'TestDemoUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
