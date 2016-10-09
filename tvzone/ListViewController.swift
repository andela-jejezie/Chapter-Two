//
//  ListViewController.swift
//  tvzone
//
//  Created by Johnson on 8/27/16.
//  Copyright © 2016 johnsonejezie. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let movies:[[String:String]] = [
        ["title":"CR7", "image":"ronaldo", "year":"2012", "summary":"Cristiano Ronaldo dos Santos Aveiro, ComM, GOIH (Portuguese pronunciation: [kɾiʃ'tjɐnu ʁuˈnaɫdu], born 5 February 1985) is a Portuguese professional footballer who plays for Spanish club Real Madrid and the Portugal national team. He is a forward and serves as captain for Portugal. In 2008, he won his first Ballon d'Or and FIFA World Player of the Year awards. He then won the FIFA Ballon d'Or in 2013 and 2014. In 2015, Ronaldo scored his 500th senior career goal for club and country."],
    ["title":"The Leo", "image":"messi", "year":"2012", "summary":"Lionel Andrés \"Leo\" Messi (Spanish pronunciation: [ljoˈnel anˈdɾes ˈmesi] ( listen); born 24 June 1987) is an Argentine professional footballer who plays as a forward for Spanish club FC Barcelona and the Argentina national team. Often considered the best player in the world and rated by many in the sport as the greatest of all time, Messi is the only football player in history to win five FIFA Ballons d'Or, four of which he won consecutively, and the first player to win three European Golden Shoes.[note 2] With Barcelona he has won eight La Liga titles and four UEFA Champions League titles, as well as four Copas del Rey. Both a prolific goalscorer and a creative playmaker, Messi holds the records for most goals scored in La Liga, a La Liga season (50), a football season (82), and a calendar year (91), as well as those for most assists made in La Liga and the Copa América. He has scored over 500 senior career goals for club and country."]
    ]
    
    override func viewDidLoad() {
        tableView.register(UINib(nibName:"MoviesTableViewCell",bundle:nil) , forCellReuseIdentifier: "MoviesTableViewCell")
    }
    
}

extension ListViewController:UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesTableViewCell", for: indexPath) as! MoviesTableViewCell
        let movie = movies[indexPath.row]
        cell.titleLabel.text = movie["title"]
        cell.releaseDateLabel.text = movie["year"]
        cell.summaryLabel.text = movie["summary"]
        cell.movieImageView.image = UIImage(named: movie["image"]!)
        return cell
    }
    
}

extension ListViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
