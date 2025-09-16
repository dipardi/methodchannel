# 1. Sobre o Projeto
Este é um aplicativo desenvolvido em Flutter como parte de um projeto acadêmico. O objetivo principal é demonstrar a comunicação entre o Flutter e o código nativo da plataforma Android utilizando MethodChannel.

O projeto segue o design pattern MVVM (Model-View-ViewModel) para garantir uma arquitetura limpa e organizada, separando as responsabilidades da interface, do estado e da lógica de comunicação com a plataforma nativa.

# 2.  Funcionalidades
Toast Nativo: Um botão na interface invoca um método no código nativo do Android (Kotlin) para exibir um Toast padrão do sistema.

AlertDialog Nativo: Um segundo botão invoca um método nativo para exibir um AlertDialog com título, mensagem e um botão "OK", tudo construído com os componentes nativos do Android.

  # 3. Pacotes Utilizados
provider: Utilizado para a implementação do padrão MVVM, gerenciando o estado e a comunicação entre a View e o ViewModel.

# 4 Como Baixar e Usar
Para rodar este projeto localmente, siga os passos abaixo:

1. Na página do repositório no GitHub, clique no botão verde < > Code.

2. No menu que aparecer, selecione a opção "Download ZIP".

3. Após o download, descompacte o arquivo .zip em um local de sua preferência (ex: C:\dev\).

4. Abra o Android Studio.

5. No menu inicial, clique em "Open" e navegue até a pasta do projeto que você acabou de descompactar.

6. Aguarde o Android Studio carregar o projeto. Em seguida, pressione o botão Run 'main.dart' (o ícone de play verde ▶️) para executar o aplicativo.

# 5 Como Baixar e Usar
A comunicação é feita através de um MethodChannel

Flutter (Dart): Uma classe de serviço (ServicoNativo) invoca métodos (invokeMethod) no canal, enviando o nome da função desejada (ex: "mostrarToast") e os argumentos necessários (ex: a mensagem do Toast).

Android (Kotlin): A MainActivity "escuta" as chamadas nesse mesmo canal através de um MethodCallHandler. Ao receber uma chamada, ela verifica o nome do método e executa o código nativo correspondente para criar e exibir o Toast ou o AlertDialog.


# 6.  Idealizadores
Marcos Eduardo Yashima Di Pardi
](https://github.com/dipardi/methodchannel)
