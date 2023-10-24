
import SwiftUI

public class LoadingViewModel: ObservableObject {
    @Published var message: String
    @Published var image: Image
    
    init(message: String? = nil, image: Image? = nil) {
        self.message = message ?? "Loading ... "
        self.image = image ?? Image("loading", bundle: .module)
    }
}
