# Teste QA Tinnova

Nesse repositório você vai encontrar os testes realizados na plataforma Tinnova, sendo eles: 

* Pagina Inicial; 
* Cadastro;
* Visualizar;
* Editar;
* Deletar usuário.

## Ambiente

Para rodar você irá precisar do `Robot Framework 5.0.1` e `Python 3.10.4`.

Tutorial para instalação: http://robotizandotestes.blogspot.com/2017/08/tutorial-instalando-o-robot-framework.html


## Como rodar

```(sh)
robot -d Results Tests
```

## Testes automatizados

* Acesso a Home Page - Nivel 1
* Cadastro de usuário com sucesso - Nivel 1
* Visualizar usuário cadastrado - Nivel 1
* Edição de usuário campo nome - Nível 2
* Edição de usuário campo email - Nível 2
* Edição de usuário campo cpf - Nível 2
* Edição de usuário campo telefone - Nível 2
* Deletar usuário clicando em Sim na mensagem de confirmação - Nível 2
* Realizar logout - Nível 3
* Cadastro de usuário sem o preenchimento do campo obrigatório Email - Nível 3
* Cadastro de usuário sem o preenchimento do campo obrigatório Nome  - Nível 3
* Cadastro de usuário sem o preenchimento do campo obrigatório CPF  - Nível 3
* Cadastro de usuário sem o preenchimento do campo obrigatório Telefone  - Nível 3
* Visualizar usuário cadastrado e voltar para a tela de listagem - Nível 3
* Não deletar usuário clicando em Não na mensagem de confirmação - Nível 3

## Melhorias

Melhorias encontradas para serem realizadas no sistema:

* O sistema está realizando o cadastro de usuários mesmo se na tela de Adicionar algum campo ficar sem preenchimento. Nestes casos o sistema informa que todos os campos são obrigatórios porém realiza o cadastro;

* Na tela de adicionar usuário o sistema permite a inserção de letras no campo CPF e telefone. Não existe uma validação informando que só permite a inserção de digitos numéricos;

* Não existe validação de dados válidos para CPF e email na tela de cadastro/edição;

* No campo CPF o sistema permite o cadastro/edição com menos de 11 dígitos;

* Após deletar um usuário, o sistema realiza o logout ao invés de retornar para a tela de listagem de usuários;

* Tela de listagem de usuários não possui um filtro para pesquisa dos usuários cadastrados;

* Sistema não possui validação na tela de login com login e senha;

* O sistema não possui nenhuma mensagem de validação após realizar cadastro de usuário;

* O sistema não possui nenhuma mensagem de confirmação de edição após realizar edição do usuário;

* O sistema não possui nenhuma mensagem de confirmação após deletar um usuário;

* Os formulários não contem a tag `<form>`.