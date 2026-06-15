# Dartpedia CLI

> É uma aplicação de com base nos comandos da Learn Dart para praticarmos e aprendermos melhor sobre a linguagem dart e treinar o nosso versionamento.

![Dart Version](https://shields.io)
![Project Status](https://shields.io)

---

## Integrantes da Equipe
* Emerson Augusto Frias
* Guilherme Miranda Fernandes 
* Rafael Silva e Pinto 
* Ronaldo de Souza Firmiano Oliveira Rodrigues (Líder)

---

## Sobre o Projeto
O **Dartpedia** é uma ferramenta interativa desenvolvida em ambiente modular. O objetivo principal é consolidar conceitos da linguagem Dart, tais como programação assíncrona (Futures e `async/await`), criação de pacotes locais reutilizáveis e criação de arquiteturas de comando customizadas com o `CommandRunner`.

---

## Estrutura do Repositório
O projeto foi modularizado para separar a lógica de comandos da execução da interface de terminal:

*   **`command_runner/`**: Biblioteca interna responsável por gerenciar o parseamento de argumentos e o roteamento dos comandos do terminal.
*   **`cli/`**: O ponto de entrada principal da aplicação que interage com o usuário em modo interativo.

---

## Funcionalidades
- [x] Interface de Linha de Comando (CLI) limpa e interativa via terminal.
- [x] Sistema de comandos expansível com suporte nativo a `help`.
- [x] Comando `version` funcional.
- [x] Sistema de busca (`search`) funcional para localização de artigos.

---

## Como Instalar e Rodar

### Pré-requisitos
Certifique-se de ter o ambiente do **Dart SDK (versão 3.0 ou superior)** devidamente configurado na sua máquina.

### Executando o Projeto

1. Clone este repositório em sua máquina local:
```bash
git clone https://github.com
cd dartpedia
```

2. Entre no diretório do aplicativo CLI:
```bash
cd cli
```

3. Execute o comando exato abaixo para iniciar a aplicação de forma interativa:
```bash
dart run bin/cli.dart
```

---

## Exemplos Práticos de Uso

Assim que entrar no terminal, você estará na pasta `dartpedia/cli/bin`. Você pode interagir com o programa na versão **v6.0** utilizando os seguintes comandos:

* **Visualizar a ajuda com o comando:**

  ```bash
  dart cli.dart help
  ```

  Saída esperada:

  ```
  Usage: dart bin/cli.dart <command> [commandArg?] [...options?]
  help: Prints usage information to the command line.
  ```

* **Este comando funciona porque o pacote `command_runner` procura pelo comando `help` entre os comandos registrados. Quando ele é encontrado, sua função é executada e as informações de uso são exibidas no terminal.**

* **Testar o tratamento de erros com um comando inválido:**

  ```bash
  dart cli.dart invalid_command
  ```

  Saída esperada:

  ```
  ArgumentException: The first word of input must be a command.
  ```

* **Na versão v6.0 foi adicionado tratamento de exceções e validação de argumentos. Agora, quando o usuário digita um comando inválido, o sistema identifica o erro e exibe uma mensagem adequada em vez de simplesmente não retornar nada ou falhar inesperadamente.**
