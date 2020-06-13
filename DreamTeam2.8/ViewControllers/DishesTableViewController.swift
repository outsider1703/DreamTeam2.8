//
//  DishesTableViewController.swift
//  DreamTeam2.8
//
//  Created by MacBook Pro on 13.06.2020.
//  Copyright © 2020 Aleksandr Kovalov. All rights reserved.
//

import UIKit

class DishesTableViewController: UITableViewController {

    var dishes = GeneralMenuForTheApplication.getGeneralMenu()

       
        // MARK: - Table view data source
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            dishes.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath)

            cell.textLabel?.text = dishes[indexPath.row].name
            cell.detailTextLabel?.text = dishes[indexPath.row].garnish

// Картинки в рецептах
//            cell.imageView?.image = UIImage(named: dishes[indexPath.row].name)
            
            

            return cell
        }


        // MARK: - Navigation

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let dishDetailsVC = segue.destination as! DishDetailsViewController
            dishDetailsVC.dish = dishes[indexPath.row]
        }
    }

