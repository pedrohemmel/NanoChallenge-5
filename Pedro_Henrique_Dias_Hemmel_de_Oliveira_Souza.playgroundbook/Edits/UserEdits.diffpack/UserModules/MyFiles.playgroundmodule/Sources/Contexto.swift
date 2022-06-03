
public class Contexto {
    public var textosEssenciais : [String]
    public var textosLogisticaTransporte: [String]
    
    public init() {
        //Atribuindo textos a array que vai ser apresentada no inicio do programa
        self.textosEssenciais = [
            "Olá, tudo bem?\n\nA ideia de hoje é mostrar como é feito a logística de tarifas e benefícios nos transportes públicos, mais especificamente em ônibus.\nEm que tipo de perfil você se encaixa?, será possível saber disso hoje, junto comigo!",
            "🚍",
            "Selecione uma das opções\n\n1) Saber mais sobre a logística de benefícios no transporte público;\n2) Ver um exemplo de como é feito a logística de embarque em um ônibus dependendo do perfil de cada pessoa;\n3) Criar um ou mais perfis e simular a logística de embarque em um ônibus público;\n4) Parar aplicação;",
            ""]
        
            //Atribuindo textos na array que vai mostrar as instruções de como funciona a logística de benefícios nos ônibus
        self.textosLogisticaTransporte = [
            "👨‍👩‍👧",
            "O uso de transportes públicos em São Paulo é gigante e nem todos sabem dos benefícios que tem, por isso é importante estar ligado nesses tópicos.\n\nHoje em dia, todas pessoas tem a opção de adquirir um bilhete único, e uma boa parte dessas pessoas recebem descontos nas passagens podendo até passar de graça pela catraca. Mas se eu não vou ter descontos nem vou ter gratuidade, qual é o benefício de ter um bilhete único?\n",
            "Primeiramente, a grande vantagem do Bilhete é pagar menos por mais viagens. Ao invés de pagar R$4,40 cada vez que você passa o cartão na catraca do ônibus, é possível fazer até quatro viagens pelo mesmo preço (com o BU, você fazer até 4 viagens de ônibus em 3 horas, pagando apenas 1 tarifa).\n",
            "Em São Paulo temos alguns descontos na tarifa dependendo das categorias das pessoas, como por exemplo...",
            "PESSOAS COM DIREITO A GRATUIDADE:",
            "Idosos: pessoas acima de 65 anos de idade devem, no momento do desembarque, apresentar ao motorista um documento oficial com foto e utilizar a porta dianteira do veículo. Já com o cartão, os idosos com direito ao bilhete único especial Idoso podem desembarcar inclusive na parte de traseira dos ônibus.",
            "Pessoas com deficiência: pessoas que apresentem deficiência física, visual, auditiva ou mental (intelectual), temporária ou permanente, têm direito à gratuidade nos coletivos.",
            "Categorias profissionais: carteiros, policiais militares e guardas civis em serviço têm direito a gratuidade, desde que devidamente uniformizados.",
            "PESSOAS COM DIREITO A MEIA TARIFA:",
            "Os estudantes têm direito, na maior parte das cidades brasileiras, ao cartão de meia tarifa. Com isso, pagam meia passagem nos transportes públicos municipais. Porém, há legislações que concedem a gratuidade no transporte, como na Grande São Paulo e Rio de Janeiro."
        ]
    }

}
