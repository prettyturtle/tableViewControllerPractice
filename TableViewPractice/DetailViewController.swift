











import UIKit
import Kingfisher

class DetailViewController: UIViewController {

    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalAgeLabel: UILabel!
    
    var detailAnimal: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let detailAnimal = detailAnimal {
            self.animalNameLabel.text = detailAnimal.name
            self.animalAgeLabel.text = "\(detailAnimal.age)살"
            self.animalImageView.kf.setImage(with: URL(string: detailAnimal.imageURL))
        }
    }
    
}


