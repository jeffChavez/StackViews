import UIKit

class TableViewVC: UIViewController, UITableViewDataSource {
    @IBOutlet private var tv: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tv.dataSource = self
        let nib = UINib(nibName: "TVCell", bundle: nil)
        tv.register(nib, forCellReuseIdentifier: "TVCELL")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewStates.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVCELL", for: indexPath) as! TVCell
        let viewState = viewStates[indexPath.row]
        cell.configure(with: viewState)

        return cell
    }
}

class TVCell: UITableViewCell {
    @IBOutlet private var detailedView: DetailedView!

    func configure(with viewState: DetailedViewState) {
        detailedView.configure(with: viewState)
    }
}
