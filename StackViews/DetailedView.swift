import UIKit

class DetailedView: BaseView {

    @IBOutlet private var subtitlesStackView: UIStackView!
    @IBOutlet private var subtitle2Label: UILabel!
    @IBOutlet private var carouselStackView: UIStackView!
    @IBOutlet private var bodyLabelStackView: UIStackView!
    @IBOutlet private var buttonsStackView: UIStackView!
    @IBOutlet private var secondaryButton: UIButton!
    @IBOutlet private var ctaStackView: UIStackView!

    func configure(with viewState: DetailedViewState) {
        layer.cornerRadius = 5
        clipsToBounds = true
        
        subtitlesStackView.isHidden = viewState.subtitlesStackViewIsHidden
        subtitle2Label.isHidden = viewState.subtitle2LabelIsHidden
        carouselStackView.isHidden = viewState.carouselStackViewIsHidden
        bodyLabelStackView.isHidden = viewState.bodyLabelStackViewIsHidden
        buttonsStackView.isHidden = viewState.buttonsStackViewIsHidden
        secondaryButton.isHidden = viewState.secondaryButtonIsHidden
        ctaStackView.isHidden = viewState.ctaStackViewIsHidden
    }

}

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        loadFromNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        loadFromNib()
    }

    private func loadFromNib() {
        let selfType = type(of: self)
        let bundle = Bundle(for: selfType)
        let nibName = String(describing: selfType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false

        view.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: topAnchor).isActive = true
        view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}

class SquareView: BaseView {

}
