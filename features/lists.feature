Scenario: Criar uma lista
	Given eu estou na página de listas do meu perfil
	When eu seleciono a opção “Criar Lista”
	And eu preencho o espaço de “Nome da Lista”
	Then “Lista vazia” aparecerá na página de listas
