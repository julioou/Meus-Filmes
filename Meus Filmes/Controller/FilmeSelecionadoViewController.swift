//
//  FilmeSelecionadoViewController.swift
//  Meus Filmes
//
//  Created by Treinamento on 9/17/19.
//  Copyright © 2019 JCAS. All rights reserved.
//

import UIKit

class FilmeSelecionadoViewController: UIViewController {

    @IBOutlet var filmeImage: UIImageView!
    @IBOutlet var descricaoLabel: UILabel!
    
    var filmes = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmeImage.layer.cornerRadius = 15
        descricaoLabel.text = filmes.mudarDescricao()
        filmeImage.image = UIImage(named: filmes.mudarImage())
        navigationItem.title = filmes.mudarTitulos()
    }

}
