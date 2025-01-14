#
# Be sure to run `pod lib lint macaroon.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name = 'Macaroon'
  s.version = '0.1.0'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/Hipo/macaroon'
  s.summary = 'iOS UIKit extension framework for providing structural interface functionality'
  s.source = { :git => 'https://github.com/Hipo/macaroon.git', :tag => s.version.to_s }
  s.author = { 'Hipo' => 'hello@hipolabs.com' }
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.default_subspec = 'Core'

  s.subspec 'Banner' do |ss|
      ss.source_files = 'Sources/macaroon/Classes/Banner/*.swift'

      ss.dependency 'Macaroon/Concurrency'
  end

  s.subspec 'BottomSheet' do |ss|
      ss.source_files = 'Sources/macaroon/Classes/BottomSheet/*.swift'
  end

  s.subspec 'BottomOverlay' do |ss|
      ss.source_files = 'Sources/macaroon/Classes/BottomOverlay/*.swift'
  end

  s.subspec 'BarcodeScanner' do |ss|
    ss.source_files = 'Sources/macaroon/Classes/BarcodeScanner/*.swift'
  end

  s.subspec 'Biometrics' do |ss|
    ss.source_files = 'Sources/macaroon/Classes/Biometrics/*.swift'
  end

  s.subspec 'Concurrency' do |ss|
      ss.source_files = 'Sources/macaroon/Classes/Concurrency/*.swift'
  end

  s.subspec 'Core' do |ss|
    ss.subspec 'App' do |sss|
      sss.source_files = 'Sources/macaroon/Classes/App/*.swift'

      sss.subspec 'Dependencies' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/App/Dependencies/*.swift'
      end

      sss.subspec 'Launching' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/App/Launching/*.swift'
      end

      sss.subspec 'Routing' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/App/Routing/*.swift'

        ssss.subspec 'Transition' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/App/Routing/Transition/*.swift'
        end

        ssss.subspec 'Deeplink' do |sssss|
            sssss.source_files = 'Sources/macaroon/Classes/App/Routing/Deeplink/*.swift'
        end
      end

      sss.subspec 'Target' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/App/Target/*.swift'
      end
    end

    ss.subspec 'Error' do |sss|
      sss.source_files = 'Sources/macaroon/Classes/Error/*.swift'
    end

    ss.subspec 'Managers' do |sss|
        sss.source_files = 'Sources/macaroon/Classes/Managers/*.swift'

        sss.subspec 'Loading' do |ssss|
            ssss.source_files = 'Sources/macaroon/Classes/Managers/Loading/*.swift'
        end
    end

    ss.subspec 'Screens' do |sss|
      sss.source_files = 'Sources/macaroon/Classes/Screens/*.swift'

      sss.subspec 'Configuration' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Screens/Configuration/*.swift'

        ssss.subspec 'NavigationBar' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/Screens/Configuration/NavigationBar/*.swift'
        end

        ssss.subspec 'StatusBar' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/Screens/Configuration/StatusBar/*.swift'
        end
      end

      sss.subspec 'Containers' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Screens/Containers/*.swift'
      end

      sss.subspec 'List' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Screens/List/*.swift'

        ssss.subspec 'Configuration' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/Screens/List/Configuration/*.swift'
        end

        ssss.subspec 'ListLayouts' do |sssss|
            sssss.source_files = 'Sources/macaroon/Classes/Screens/List/ListLayouts/*.swift'
        end
      end

      sss.subspec 'CustomTransition' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Screens/CustomTransition/*.swift'

          ssss.subspec 'Modal' do |sssss|
              sssss.source_files = 'Sources/macaroon/Classes/Screens/CustomTransition/Modal/*.swift'
          end
      end

      sss.subspec 'Other' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Screens/Other/*.swift'
      end
    end

    ss.subspec 'Utils' do |sss|
      sss.source_files = 'Sources/macaroon/Classes/Utils/*.swift'

      sss.subspec 'DataStructures' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Utils/DataStructures/*.swift'
      end

      sss.subspec 'Debugging' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Utils/Debugging/*.swift'
      end

      sss.subspec 'Extensions' do |sss|
        sss.subspec 'Foundation' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Utils/Extensions/Foundation/*.swift'
        end

        sss.subspec 'UI' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Utils/Extensions/UI/*.swift'
        end
      end

      sss.subspec 'Gestures' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Utils/Gestures/*.swift'
      end

      sss.subspec 'Image' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Utils/Image/*.swift'
      end

      sss.subspec 'List' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Utils/List/*.swift'
      end

      sss.subspec 'Notification' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Utils/Notification/*.swift'
      end

      sss.subspec 'Performance' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Utils/Performance/*.swift'
      end

      sss.subspec 'Text' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Utils/Text/*.swift'

        ssss.subspec 'Attributed' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/Utils/Text/Attributed/*.swift'
        end
      end

      sss.subspec 'Time' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Utils/Time/*.swift'
      end
    end

    ss.subspec 'Views' do |sss|
      sss.subspec 'BaseComponents' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Views/BaseComponents/*.swift'
      end

      sss.subspec 'Components' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Views/Components/*.swift'

        ssss.subspec 'EmptyStateView' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/Views/Components/EmptyStateView/*.swift'
        end

        ssss.subspec 'SegmentedControl' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/Views/Components/SegmentedControl/*.swift'
        end
      end

      sss.subspec 'Configuration' do |ssss|
        ssss.subspec 'Data' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/Views/Configuration/Data/*.swift'
        end

        ssss.subspec 'Layout' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/Views/Configuration/Layout/*.swift'
        end

        ssss.subspec 'Styling' do |sssss|
          sssss.source_files = 'Sources/macaroon/Classes/Views/Configuration/Styling/*.swift'

          sssss.subspec 'Customizables' do |ssssss|
              ssssss.source_files = 'Sources/macaroon/Classes/Views/Configuration/Styling/Customizables/*.swift'
          end

          sssss.subspec 'Drawables' do |ssssss|
              ssssss.source_files = 'Sources/macaroon/Classes/Views/Configuration/Styling/Drawables/*.swift'
          end

          sssss.subspec 'StyleElements' do |ssssss|
              ssssss.source_files = 'Sources/macaroon/Classes/Views/Configuration/Styling/StyleElements/*.swift'
          end

          sssss.subspec 'Styles' do |ssssss|
              ssssss.source_files = 'Sources/macaroon/Classes/Views/Configuration/Styling/Styles/*.swift'
          end
        end
      end

      sss.subspec 'ListComponents' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Views/ListComponents/*.swift'
      end
    end

    ss.dependency 'SnapKit', '~> 5.0.0'
  end

  s.subspec 'HIPCore' do |ss|
    ss.source_files = "Sources/macaroon/Classes/HIPCore/**/*.swift"
  end

  s.subspec 'CustomUI' do |ss|
      ss.source_files = "Sources/macaroon/Classes/CustomUI/*.swift"
  end

  s.subspec 'Form' do |ss|
    ss.subspec 'Configuration' do |sss|
      sss.source_files = 'Sources/macaroon/Classes/Form/Configuration/*.swift'
    end

    ss.subspec 'UI' do |sss|
      sss.source_files = 'Sources/macaroon/Classes/Form/UI/*.swift'

      sss.subspec 'Screens' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Form/UI/Screens/*.swift'
      end

      sss.subspec 'Views' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/Form/UI/Views/*.swift'
      end
    end

    ss.subspec 'Utils' do |sss|
      sss.source_files = 'Sources/macaroon/Classes/Form/Utils/*.swift'

      sss.subspec 'Detector' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Form/Utils/Detector/*.swift'
      end

      sss.subspec 'Formatter' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Form/Utils/Formatter/*.swift'
      end

      sss.subspec 'Keyboard' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Form/Utils/Keyboard/*.swift'
      end

      sss.subspec 'Validator' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/Form/Utils/Validator/*.swift'
      end
    end

    ss.dependency 'AnyFormatKit', '~> 2.2.1'
  end

  s.subspec 'Map' do |ss|
      ss.source_files = 'Sources/macaroon/Classes/Map/*.swift'
  end

  s.subspec 'MediaPicker' do |ss|
    ss.source_files = 'Sources/macaroon/Classes/MediaPicker/*.swift'
  end

  s.subspec 'Mixpanel' do |ss|
    ss.source_files = 'Sources/macaroon/Classes/Mixpanel/*.swift'

    ss.dependency 'Mixpanel-swift', '~> 2.7'
  end

  s.subspec 'Vendors' do |ss|
    ss.source_files = 'Sources/macaroon/Classes/Vendors/**/*.swift'
  end

  s.subspec 'PushNotification' do |ss|
    ss.source_files = 'Sources/macaroon/Classes/PushNotification/*.swift'
  end

  s.subspec 'SVGImage' do |ss|
    ss.source_files = 'Sources/macaroon/Classes/SVGImage/*.swift'

    ss.dependency 'Macaroon/URLImage'
    ss.dependency 'Macaw', '0.9.7'
  end

  s.subspec 'SwiftLint' do |ss|
    ss.script_phase = { :name => 'Run SwiftLint', :script => 'echo "Hello"' }
    ss.dependency 'SwiftLint', '~> 0.40'
  end

  s.subspec 'TabBar' do |ss|
    ss.source_files = 'Sources/macaroon/Classes/TabBar/*.swift'
  end

  s.subspec 'URLImage' do |ss|
    ss.source_files = 'Sources/macaroon/Classes/URLImage/*.swift'

    ss.subspec 'Utils' do |sss|
      sss.source_files = 'Sources/macaroon/Classes/URLImage/Utils/*.swift'

      sss.subspec 'Extensions' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/URLImage/Utils/Extensions/*.swift'
      end

      sss.subspec 'Properties' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/URLImage/Utils/Properties/*.swift'
      end
    end

    ss.subspec 'ViewModels' do |sss|
      sss.source_files = 'Sources/macaroon/Classes/URLImage/ViewModels/*.swift'
    end

    ss.subspec 'Views' do |sss|
      sss.subspec 'URLImagePlaceholderView' do |ssss|
        ssss.source_files = 'Sources/macaroon/Classes/URLImage/Views/URLImagePlaceholderView/*.swift'
      end

      sss.subspec 'URLImageView' do |ssss|
          ssss.source_files = 'Sources/macaroon/Classes/URLImage/Views/URLImageView/*.swift'
      end
    end

    ss.dependency 'Kingfisher', '~> 5.0'
  end
end
