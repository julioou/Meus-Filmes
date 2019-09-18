//
//  FilmesObjeto.swift
//  Meus Filmes
//
//  Created by Treinamento on 9/17/19.
//  Copyright © 2019 JCAS. All rights reserved.
//

import UIKit

class FilmesObjeto {
    
    var titulo = ""
    var descricao = "kkkkkkkkkkkkk"
    var imageFilme: UIImage
    
    init (titulo: String, descricao: String, imageFilme: UIImage) {
        self.descricao = descricao
        self.titulo = titulo
        self.imageFilme = imageFilme
    }
}
