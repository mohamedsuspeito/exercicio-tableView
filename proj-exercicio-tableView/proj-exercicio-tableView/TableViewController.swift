//
//  ViewController.swift
//  proj-exercicio-tableView
//
//  Created by Mohamed on 31/03/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let estados = ["Rio de Janeiro", "São Paulo"]
    let descrição = ["O Rio de Janeiro é uma grande cidade brasileira à beira-mar, famosa pelas praias de Copacabana e Ipanema, pela estátua de 38 metros de altura do Cristo Redentor, no topo do Corcovado, e pelo Pão de Açúcar, um pico de granito com teleféricos até seu cume. A cidade também é conhecida pelas grandes favelas. O empolgante Carnaval, com carros alegóricos, fantasias extravagantes e sambistas, é considerado o maior do mundo.", "São Paulo é uma das 27 unidades federativas do Brasil. Está situado na Região Sudeste e tem por limites os estados de Minas Gerais a norte e nordeste, Paraná a sul, Rio de Janeiro a leste e Mato Grosso do Sul a oeste, além do Oceano Atlântico a sudeste."]
    let fotoDosEstados = ["Foto do Rio de Janeiro", "Foto de São Paulo"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return estados.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = estados[indexPath.row]
       // cell.imageView?.image = UIImage(named: estados[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "VC") as? ViewController
        vc?.oNome = estados[indexPath.row]
        vc?.aFoto = UIImage(named: estados[indexPath.row])!
        vc?.aDescricao = descrição[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)


    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDetail" {
//            if let destinationVC = segue.destination as? ViewController{
//
//                destinationVC.nomeEstado = estados[indexPatch.row]
                
        
//            }
//        }
//}
}


