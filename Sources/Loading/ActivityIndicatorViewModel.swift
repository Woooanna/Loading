
import SwiftUI

public class ActivityIndicatorViewModel: ObservableObject {
    @Published var message: String
    @Published var image: Image
    
    init(message: String? = nil, image: Image? = nil) {
        self.message = message ?? "Loading, please wait ... "
        self.image = image ?? Image("loading", bundle: .module)
    }
}
