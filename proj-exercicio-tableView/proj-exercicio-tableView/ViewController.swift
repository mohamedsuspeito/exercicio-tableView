
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeEstado: UILabel!
    @IBOutlet weak var fotoEstado: UIImageView!
    
    @IBOutlet weak var descrição: UILabel!
    
    var aDescricao : String = ""
    var aFoto = UIImage()
    var oNome : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeEstado.text = oNome
        fotoEstado.image = aFoto
        descrição.text = aDescricao
    }
    

}
