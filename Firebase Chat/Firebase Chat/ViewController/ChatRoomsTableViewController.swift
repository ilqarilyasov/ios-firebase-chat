//
//  ChatRoomsTableViewController.swift
//  Firebase Chat
//
//  Created by Ilgar Ilyasov on 10/23/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ChatRoomsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func AddChatRoom(_ sender: Any) {
        let alert = UIAlertController(title: "New Chat Room", message: "Would you like to add a new chat room", preferredStyle: .alert)
        alert.addTextField { (sender) in
            sender.placeholder = "Your Name:"
        }
        alert.addTextField { (roomName) in
            roomName.placeholder = "Chat Room Name:"
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let addChatRoom = UIAlertAction(title: "Add", style: .default) { (_) in
            let _sender = alert.textFields![0].text!
            let roomName = alert.textFields![1].text!
//            guard let text = alert.textFields?.first?.text else { return }
            print(_sender)
            print(roomName)
            
            // Add chat room to Firebase Database
            let roomNameDictionary = ["sender" : _sender,"roomName": roomName]
            DatabaseService.shared.chatRoomReference.childByAutoId().setValue(roomNameDictionary)
        }
        
        alert.addAction(cancel)
        alert.addAction(addChatRoom)
        present(alert, animated: true, completion: nil)
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
