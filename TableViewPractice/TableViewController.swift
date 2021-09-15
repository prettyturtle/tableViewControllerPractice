

import UIKit

class TableViewController: UITableViewController {
    
    var animalData: [Animal] = [
        Animal(name: "거북이", age: 100, imageURL: "https://thumbnews.nateimg.co.kr/view610///news.nateimg.co.kr/orgImg/mt/2021/07/20/2021071915593042571_1.jpg"),
        Animal(name: "토끼", age: 30, imageURL: "https://w.namu.la/s/fdeb18748079eec1a3b9e27dc1b5bea0e0a52e22d7517f2e405006d19bdb339d8c876f233afc7b6f42564b33846ca98483a44d9abbabcf5f9c89cd9957193c6f95f4085f292c3ddb48b4acef82c05005"),
        Animal(name: "고양이", age: 10, imageURL: "https://lh3.googleusercontent.com/proxy/aQLUkmGiy2LGWh7h_7U-II3ef7f_OhFP7iNKDqTkKE1XbCBVO61k9eTLJzdPV3DSClqosoOM2iQjiHHrNxPcUKThtR-tgbE4zun2OkgG4jTKpSXPXQ"),
        Animal(name: "기린", age: 50, imageURL: "https://pds.joins.com/news/component/htmlphoto_mmdata/202001/15/73d1ac33-95b5-4d41-9fe4-9f8c4490d2d7.jpg"),
        Animal(name: "고릴라", age: 8, imageURL: "https://us.123rf.com/450wm/maridav/maridav1201/maridav120100062/11841107-%EA%B3%A0%EB%A6%B4%EB%9D%BC-%EA%B3%A0%EB%A6%B4%EB%9D%BC%EA%B0%80-%EC%B9%B4%EB%A9%94%EB%9D%BC%EB%A5%BC-%EC%B0%BE%EA%B3%A0-.jpg?ver=6")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell else { return UITableViewCell() }
        
        cell.titleLabel.text = "\(animalData[indexPath.row].name)"
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil) // 스토리보드 가져오기
        // DetailViewController 가져와서 클래스 다운캐스팅
        guard let detailViewController = storyboard.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else { return }
        
        detailViewController.detailAnimal = self.animalData[indexPath.row] // 데이터 전달
     
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    
}


