# :clipboard:	 Lista de Requisitos

- [Requisitos Funcionais](#requisitos-funcionais)
- [Requisitos Não Funcionais](#requisitos-não-funcionais)

## Requisitos Funcionais

| Cód. | Nome | Descrição | Categoria |
| --- | --- | --- | --- |
| F01 | Autenticar usuário | O sistema deverá realizar a autenticação do usuário cadastrado, para acesso em toda a aplicação | Evidente |
| F02 | Manter lançamentos | O sistema deverá permitir o cadastro, alteração, pesquisa e exclusão de lançamentos. Para cada lançamento as seguintes informações deverão ser mantidas: Tipo de lançamento (receita/débito), modelo de lançamento (recorrente, parcelas ou comum), descrição, data (data de recebimento para receitas, e datas de vencimento e pagamento para débitos), categoria, valor, forma de pagamento. | Evidente |
| F03 | Manter formas de pagamento | O sistema deverá permitir o cadastro, edição e exclusão das formas de pagamento utilizadas pelo usuário, desconsiderando os dados explícitos das mesmas. As informações a serem mantidas são: Tipo de forma de pagamento (Cartão de débito, cartão de cŕedito, débito em conta, crédito em conta), descrição, instituição financeira (se aplicável). | Evidente |
| F04 | Manter categorias | O sistema deverá permitir o cadastro, edição e exclusão das categorias, considerando que, para excluir uma categoria esta não poderá estar vinculada a nenhum lançamento. As seguintes informações deverão ser mantidas: Nome, descrição. | Evidente |
| F05 | Fechamento do mês | O sistema deverá permitir ao usuário realizar o fechamento de sua carteira para o mês passado, ao fazer isto, o sistema apenas permitirá novos lançamentos ou alterações após obter confirmação do usuário. | Evidente |
| F06 | Cálculo do saldo | O sistema deverá calcular o saldo da carteira do usuário de acordo com os lançamentos realizados, somando todos os débitos e subtraindo na soma das receitas. | Oculto |


#

## Requisitos Não Funcionais

| Cód. | Nome | Restrição | Categoria | Obrigatoriedade | Permanência |
| --- | --- | --- | --- | --- | --- |
| NF01 | Saldo ao fim do mês | Após o usuário realizar o fechamento de um mês o saldo existente deverá ser repassado ao mês posterior. | Implementação | Obrigatório | Permanente |
| NF02 | Sistema web | O sistema deverá ser contruído para rodar na web, e possuir compatibilidades navegadores modernos | Compatibilidade | Obrigatório | Permanente |
| NF03 | Lançamentos recorrentes | Lançamentos recorrentes irão se repetir ao longo dos próximos meses sem uma data fim definida, e até que o usuário o exclua. A exclusão em um mês futuro não deve afetar a recorrência do lançamento em meses passados. | Implementação | Obrigatório | Permanente |
| NF04 | Lançamentos parcelados | Lançamentos com parcelas, deverão constar o número de parcelas e a cada mês este lançamentos deverá ser creditado ou debitado até a data fim. | Implementação | Obrigatório | Permanente |
