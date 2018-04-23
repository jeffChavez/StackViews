import UIKit

class ScrollViewVC: UIViewController {
    @IBOutlet private var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()

        viewStates.forEach { viewState in
            let view = DetailedView(frame: .zero)
            view.configure(with: viewState)
            stackView.addArrangedSubview(view)
        }
    }
}
