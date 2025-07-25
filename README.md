# Automação de Testes de API REST

## 📋 Sobre o Projeto
Este é um projeto de automação de testes para API REST utilizando Robot Framework. O objetivo é validar diferentes endpoints de uma API, incluindo funcionalidades de autenticação, cadastro de usuários e gerenciamento de carrinho de compras.

## 🛠️ Ferramentas Utilizadas
- [Robot Framework](https://robotframework.org/) - Framework de automação
- [RequestsLibrary](https://github.com/MarketSquare/robotframework-requests) - Biblioteca para requisições HTTP
- [Python](https://www.python.org/) - Linguagem de programação base

## � Estrutura do Projeto
```
api_server_rest/
├── resource/
│   ├── keywords.resource    # Keywords personalizadas
│   ├── routes.resource     # Definição das rotas da API
│   └── steps.resource      # Steps de teste reutilizáveis
├── test_case/
│   └── login/
│       └── test_api.robot  # Casos de teste da API
└── README.md
```

## ✨ Funcionalidades Testadas

### 1. Cadastro de Usuário
- **CT 01**: Validação do cadastro de novo usuário
  - Verifica se o cadastro é realizado com sucesso
  - Confirma o retorno do status code 201 (Created)

### 2. Login de Usuário
- **CT 02**: Autenticação com credenciais válidas
  - Realiza login com dados corretos
  - Valida o retorno do status code 200 (OK)

- **CT 03**: Tentativa de login com credenciais inválidas
  - Testa cenário de erro com dados incorretos
  - Confirma o retorno do status code 401 (Não Autorizado)

### 3. Carrinho de Compras
- **CT 04**: Consulta do carrinho
  - Verifica a disponibilidade do carrinho de compras
  - Valida o retorno do status code 200 (OK)

## ⚙️ Como Configurar

### Pré-requisitos
- Python 3.x instalado
- Robot Framework instalado
- Robot Framework RequestsLibrary instalada

## 🚀 Como Executar os Testes

1. Clone o repositório:
```bash
git clone https://github.com/Lorenaasilva/api_server_rest.git
cd api_server_rest
```

2. Instale as dependências:
```bash
pip install robotframework
pip install robotframework-requests
```

3. Execute os testes:
```bash
robot test_case/login/test_api.robot
```

## 📊 Relatórios Gerados
Após a execução, são gerados automaticamente:
- `report.html`: Relatório com visão geral dos testes
- `log.html`: Log detalhado da execução
- `output.xml`: Dados brutos da execução em XML

## 👩‍💻 Desenvolvedora
- [Lorena Silva](https://github.com/Lorenaasilva)
