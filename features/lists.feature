Scenario: Criar uma lista
	Given eu estou na página de listas do meu perfil
	When eu seleciono a opção "Criar Lista"
	And eu preencho o espaço de "Nome da Lista"
	Then "Lista vazia" aparecerá na página de listas

Scenario: Visualização de uma lista
	Given eu estou na página do meu perfil
	When eu seleciono a opção "Minhas Listas"
	And eu sou direcionado para uma tela contendo todas as minhas listas
	And eu seleciono a lista "Favoritos"
	Then sou direcionado para a página da lista "Favoritos"
	And eu consigo visualizar todos os filmes dessa lista

Scenario: Adição de filmes nas listas
	Given eu estou logado no meu perfil
	When seleciono o filme "Mean Girls"
	And eu sou direcionado para a página contendo as informações sobre "Mean Girls"
	And eu seleciono a opção "Adicionar"
	And eu seleciono a lista "Favoritos"
	Then o filme "Mean Girls" será adicionado na lista "Favoritos"
	And eu poderei visualizar "Mean Girls" na lista "Favoritos"


Scenario: Remoção de filmes nas listas
	Given eu estou na página da lista "Favoritos"
	When eu seleciono o filme "Mean Girls" dessa lista
	And clico na opção "Remover"
	Then eu não posso mais visualizar "Mean Girls" na lista "Favoritos"

Scenario: Falha em criar uma lista
	Given eu estou na página de listas do meu perfil
	When eu seleciono a opção "Criar Lista"
	And eu não preencho  espaço "Nome da Lista"
	Then uma mensagem de "Erro" aparecerá na tela
	# Then hipotético pedido na questão 7i