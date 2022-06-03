
public class PessoaCivil {
    //Criando as variáveis que estruturam o objeto
    public var nome: String
    private var idade: Int
    private var eEstudante : Bool
    private var eDeficiente : Bool
    public var temDinheiro : Bool
    private var cargoProfissional : String
    private var historia : String
    
    //Criando uma variavel protegida do tipo protocol que vai ser instanciada assim que cair na condição no Main
    fileprivate var comportamentoPassar : IPodePassar
    
    //Criando construtor opcional das variáveis estruturais do objeto
    public init(nome: String, idade: Int, eEstudante: Bool, eDeficiente: Bool, temDinheiro: Bool , cargoProfissional: String) {
        self.nome = nome
        self.idade = idade
        self.eEstudante = eEstudante
        self.eDeficiente = eDeficiente
        self.temDinheiro = temDinheiro
        
        //Condição para verificar que não terá menor de idade trabalhando em algum dos empregos setados
        if(idade < 18) {
            self.cargoProfissional = "Estudante"
        } else {
            self.cargoProfissional = cargoProfissional
        }
        
        
        //Fazendo verificações com estrutura condicional para atribuir comportamento do objeto dependendo da sua caracteristica ou seu estado
        if temDinheiro == false {
            if eDeficiente == true || (idade <= 6 || idade >= 65) || (cargoProfissional == "Carteiro" || cargoProfissional == "Policia civil" || cargoProfissional == "Policia militar") {
                self.comportamentoPassar = PassarDGraca()
            } else {
                self.comportamentoPassar = PassarNaoPassar()
            }
        } else {
            if eDeficiente == true || (idade <= 6 || idade >= 65) {
                self.comportamentoPassar = PassarDGraca()
            } else if eEstudante == true {
                self.comportamentoPassar = PassarCMeia()
            } else {
                self.comportamentoPassar = PassarNormal()
            }
        }
        
        //Implementando historia do perfil que está sendo cadastrado
        if idade <= 6 || idade >= 65 {
            if eEstudante == true && (cargoProfissional != "Carteiro" || cargoProfissional != "Policia civil" || cargoProfissional != "Policia militar") {
                
                self.historia = "\(self.nome) tem \(self.idade) anos e gosta bastante de estudar, nesse momento está indo para escola e terá que pegar ônibus, \(self.nome) terá gratuidade porque a idade está dentro das condições. Caso não tivesse uma idade que coubesse nesse desconto, pagaria meia tarifa por ser estudante."
                
            } else if eEstudante == true && (cargoProfissional == "Carteiro" || cargoProfissional == "Policia civil" || cargoProfissional == "Policia militar") {
                
                self.historia = "\(self.nome) tem \(self.idade) anos e gosta bastante de estudar, nesse momento está indo para escola e terá que pegar ônibus, \(self.nome) terá gratuidade porque a idade está dentro das condições e também porque trabalha como \(cargoProfissional). Caso não tivesse uma idade que coubesse nesse desconto ou não estivesse trabalhando como Policia civil, Policia militar ou Carteiro, pagaria meia tarifa por ser estudante."
                
            } else if cargoProfissional == "Carteiro" || cargoProfissional == "Policia civil" || cargoProfissional == "Policia militar" {
                
                self.historia = "\(self.nome) tem \(self.idade) anos, nesse momento está indo para o trabalho e terá que pegar ônibus, \(self.nome) terá gratuidade porque a idade está dentro das condições e também porque trabalha como \(cargoProfissional). Caso não tivesse uma idade que coubesse nesse desconto ou não estivesse trabalhando como Policia civil, Policia militar ou Carteiro, pagaria uma entrada inteira."
                
            } else {
                
                self.historia = "\(self.nome) tem \(self.idade) anos, nesse momento está indo para o mercado e precisa pegar ônibus, \(self.nome) terá gratuidade porque a idade está dentro das condições. Caso não tivesse uma idade que coubesse nesse desconto, pagaria uma entrada inteira."
                
            }
        } else if eEstudante == true {
            if cargoProfissional == "Carteiro" || cargoProfissional == "Policia civil" || cargoProfissional == "Policia militar" {
                
                self.historia = "\(self.nome) tem \(self.idade) anos e gosta bastante de estudar, nesse momento está indo para escola e terá que pegar ônibus, \(self.nome) terá gratuidade porque trabalha como \(cargoProfissional). Caso não estivesse trabalhando como Policia civil, Policia militar ou Carteiro, pagaria meia tarifa por ser estudante."
                
            } else if(eDeficiente == true) {
                
                self.historia = "\(self.nome) tem \(self.idade) anos, nesse momento está para escola especial e precisa pegar ônibus, \(self.nome) terá gratuidade porque é uma pessoa com deficiência."
                
            } else {
                
                self.historia = "\(self.nome) tem \(self.idade) anos e gosta bastante de estudar, nesse momento está indo para escola e terá que pegar ônibus, \(self.nome) terá que pagar meia tarifa por ser estudante."
                
            }
            
            
            
        } else if cargoProfissional == "Carteiro" || cargoProfissional == "Policia civil" || cargoProfissional == "Policia militar" {
            
            self.historia = "\(self.nome) tem \(self.idade) anos, nesse momento está indo para o trabalho e terá que pegar ônibus, \(self.nome) terá gratuidade porque trabalha como \(cargoProfissional). Caso não estivesse trabalhando como Policia civil, Policia militar ou Carteiro, pagaria a taixa inteira."
            
        } else if(eDeficiente == true) {
            
            self.historia = "\(self.nome) tem \(self.idade) anos, nesse momento está fazer uma terapia e precisa pegar ônibus, \(self.nome) terá gratuidade porque é uma pessoa com deficiência."
            
        } else {
            
            self.historia = "\(self.nome) tem \(self.idade) anos, nesse momento está indo trabalhar e terá que pegar ônibus, \(self.nome) terá que pagar a taixa inteira caso tenha dinheiro. Isso acontece porque \(self.nome) não entra no perfil das pessoas que tem descontos."
            
        }
        
    }

    //Função que mostra a história da pessoa
    public func mostrarHistoria() {
        show(self.historia)
    }
    
    //Função que permite o usuário ativar o comportamento do objeto
    public func passarCatraca() -> Void {
        comportamentoPassar.podePassar()
    }
}


