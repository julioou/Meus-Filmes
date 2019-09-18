//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Treinamento on 9/17/19.
//  Copyright © 2019 JCAS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmesArray: [FilmesObjeto] = []
    var im = FilmesModel()
    var filmeSelecionado: Int?
    var imageSelecionado: String?
    let data = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tituloArray = im.tituloFilmesArray
        let descricaoArray = im.descricaoFilmes
        let imageFilmesArray = im.imageFilmes
        
        for var indice in 0..<tituloArray.count {
            filmesArray.append(FilmesObjeto(titulo: tituloArray[indice], descricao: descricaoArray[indice], imageFilme: UIImage(named: imageFilmesArray[indice])!))
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmesCell", for: indexPath) as! FilmesCell
        let f = filmesArray[indexPath.row]
        cell.tituloLabel.text = f.titulo
        cell.decricaoLabel.text = f.descricao
        cell.filmesImage.image = f.imageFilme
        //Estilo da imagem.
        cell.filmesImage.layer.cornerRadius = 25
        
        return cell
    }
    
    //Selecionado as células.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.filmeSelecionado = indexPath.row
        UserDefaults.standard.set(filmeSelecionado, forKey: "Celula")
        
        performSegue(withIdentifier: "vaiParaFilme", sender: self)
        
    }
    
    //Definindo a descrição do filme na tela de detalhes.
    func mudarDescricao() -> String{
        let descricaoArray = im.descricaoFilmes
        let selecao = Int(UserDefaults.standard.string(forKey: "Celula")!)
        let retorno = descricaoArray[selecao!]
        
        return retorno
    }
    //Definido a imagem da tela de detalhes.
    func mudarImage() -> String {
        let descricaoArray = im.imageFilmes
        let selecao = Int(UserDefaults.standard.string(forKey: "Celula")!)
        let retorno = descricaoArray[selecao!]
        
        return retorno
    }
    func mudarTitulos() -> String {
        let descricaoArray = im.tituloFilmesArray
        let selecao = Int(UserDefaults.standard.string(forKey: "Celula")!)
        let retorno = descricaoArray[selecao!]
        
        return retorno
    }
}

