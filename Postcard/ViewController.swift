//
//  ViewController.swift
//  Postcard
//
//  Created by PHILIPPE PESCATORE 2 on 07/03/2015.
//  Copyright (c) 2015 iAtelier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /************************PROPRIETES************************/
    @IBOutlet weak var etiquetteDuMessage: UILabel!
    @IBOutlet weak var champSaisieDuNom: UITextField!
    @IBOutlet weak var champSaisieDuMessage: UITextField!
    @IBOutlet weak var boutonCourrier: UIButton!

    /*************************METHODES*************************/
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func envoyerLeCourrielAuBoutonPresse(sender: UIButton) {
        //modifier les Attributs de l'Etiquette
        //afficher l'étiquette du message dans la Vue
        etiquetteDuMessage.hidden = false
        //assigner le texte du message au texte de l'étiquette
        etiquetteDuMessage.text = champSaisieDuMessage.text
        //assigner le rouge comme Couleur du texte
        etiquetteDuMessage.textColor = UIColor.redColor()
        
        //RAZ du champ message
        champSaisieDuMessage.text = ""
        //escamoter le clavier
        champSaisieDuMessage.resignFirstResponder()
        
        //modifier le titre du Bouton
        boutonCourrier.setTitle("Courriel envoyé !", forState: UIControlState.Normal)
    }

}

