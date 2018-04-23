import UIKit

class CollectionViewVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet private var cv: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        cv.dataSource = self
        let nib = UINib(nibName: "CVCell", bundle: nil)
        cv.register(nib, forCellWithReuseIdentifier: "CVCELL")

        if let layout = cv.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.estimatedItemSize = CGSize(width: 1, height: 1)
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewStates.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVCELL", for: indexPath) as! CVCell
        let viewState = viewStates[indexPath.row]
        cell.configure(with: viewState)

        return cell
    }
}

class CVCell: UICollectionViewCell {
    @IBOutlet private var detailedView: DetailedView!

    func configure(with viewState: DetailedViewState) {
        detailedView.configure(with: viewState)
    }
}
