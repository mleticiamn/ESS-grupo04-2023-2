Scenario: Criar uma lista
	Given eu estou na página de listas do meu perfil
	When eu seleciono a opção “Criar Lista”
	And eu preencho o espaço de “Nome da Lista”
	Then “Lista vazia” aparecerá na página de listas

Scenario: Remoção de filmes nas listas
	Given eu estou na página da lista “Favoritos”
	When eu seleciono o filme “Mean Girls” dessa lista
	And clico na opção “Remover”
	Then eu não posso mais visualizar “Mean Girls” na lista “Favoritos”
