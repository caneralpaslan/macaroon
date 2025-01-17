// Copyright © 2019 hipolabs. All rights reserved.

import Foundation
import Kingfisher
import UIKit

public protocol URLImagePlaceholderContainer: UIView & Placeholder {
    var placeholder: ImagePlaceholder? { get set }
}
