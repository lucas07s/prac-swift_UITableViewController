//
//  ViewController.swift
//  prac-swift-UITableViewController
//
//  Created by Lucas on 2022/12/19.
//

import UIKit

class ViewController: UIViewController {

    // セルのデータ
    let todoList = [
        "牛乳を買う",
        "予定の確認をする",
        "UITableViewについて調べる"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension ViewController: UITableViewDelegate {

    // セルの個数を指定する(デリゲートメソッド, 必須)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.todoList.count
    }

}

extension ViewController: UITableViewDataSource {

    // セルに値を設定する(データソースメソッド, 必須)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)

        // セルに表示する値を設定する

        var content = cell.defaultContentConfiguration()

        content.text = self.todoList[indexPath.row]

        cell.contentConfiguration = content

        return cell
    }

}
