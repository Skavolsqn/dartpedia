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

Assim entrar no temrinal você entrara na pasta dartpedia/cli/bin. Você pode interagir com o programa na v5.0 digitando os seguintes comandos:

* **Vizualizar e executar o help com o comando: dart cli.dart help**
  ```
  Usage: dart bin/cli.dart <command> [commandArg?] [...options?]
  help: Prints usage information to the command line.
  ```

* **Ele imprime isso pois o comando faz o pacote comandrunner procurar o comando help e quando encontrado ele imprime isso. Se der qualquer outro comando não ira aparecer nada pois o help não será encontrado**
