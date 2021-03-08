# :clipboard: Lista de Requisitos

- [Requisitos Funcionais](#requisitos-funcionais)
- [Requisitos Não Funcionais](#requisitos-não-funcionais)

## Requisitos Funcionais

| Cód. | Nome | Descrição | Categoria |
| --- | --- | --- | --- |
| F01 | Autenticar usuário | O sistema deverá realizar a autenticação do usuário cadastrado, para acesso em toda a aplicação | Evidente |
| F02 | Manter lançamentos | O sistema deverá permitir o cadastro, alteração, pesquisa e exclusão de lançamentos. Para cada lançamento as seguintes informações deverão ser mantidas: Código, Tipo de lançamento (receita/despesa), modelo de lançamento (recorrente, parcelas ou comum), descrição, data (data de recebimento para receitas, e datas de vencimento e pagamento para despesas), categoria, valor, forma de pagamento. | Evidente |
| F03 | Manter formas de pagamento | O sistema deverá permitir o cadastro, edição e exclusão das formas de pagamento utilizadas pelo usuário, desconsiderando os dados explícitos das mesmas. As informações a serem mantidas são: Código, Tipo de forma de pagamento (Cartão de débito, cartão de cŕedito, débito em conta, crédito em conta), descrição, instituição financeira (se aplicável) e status. O status define se o conceito está ativo ou inativo, inativar o conceito não deverá afetar outros conceitos que podem estar vinculados a ele, deve apenas impedir o vinculo de novos conceitos. Além das formas citadas, o sistema deve por padrão, suportar a forma de pagamento "dinheiro". | Evidente |
| F04 | Manter categorias | O sistema deverá permitir o cadastro, edição e exclusão das categorias, considerando que, para excluir uma categoria esta não poderá estar vinculada a nenhum lançamento. As seguintes informações deverão ser mantidas: Código, Nome, Status. O status define se o conceito está ativo ou inativo, inativar o conceito não deverá afetar outros conceitos que podem estar vinculados a ele, deve apenas impedir o vinculo de novos conceitos. | Evidente |
| F05 | Fechamento do mês | O sistema deverá permitir ao usuário realizar o fechamento de sua carteira para o mês passado, ao fazer isto, o sistema apenas permitirá novos lançamentos ou alterações após obter confirmação do usuário. | Evidente |
| F06 | Cálculo do saldo | O sistema deverá calcular o saldo da carteira do usuário de acordo com os lançamentos realizados, somando todas as despesas e subtraindo na soma das receitas. | Oculto |
| F07 | Pesquisa de lançamentos | O sistema deverá permitir que o usuário pesquise os lançamentos realizados em um determinado mês, a partir dos seguintes dados: Código, descrição e forma de pagamento. | Evidente |
| F08 | Seleção de mês | O sistema ao carregar deverá abrir na tela de lançamentos do mês corrente, mas deverá exibir um componente que permita ao usuário navegar entre os meses posteriores ou para os meses futuros que já possuam lançamentos registrados. | Evidente |


#

## Requisitos Não Funcionais

| Cód. | Nome | Restrição | Categoria | Obrigatoriedade | Permanência |
| --- | --- | --- | --- | --- | --- |
| NF01 | Saldo ao fim do mês | Após o usuário realizar o fechamento de um mês o saldo existente deverá ser repassado ao mês posterior. | Implementação | Obrigatório | Permanente |
| NF02 | Sistema web | O sistema deverá ser contruído para rodar na web, e possuir compatibilidades navegadores modernos | Compatibilidade | Obrigatório | Permanente |
| NF03 | Lançamentos recorrentes | Lançamentos recorrentes irão se repetir ao longo dos próximos meses sem uma data fim definida, e até que o usuário o exclua. A exclusão em um mês futuro não deve afetar a recorrência do lançamento em meses passados. | Implementação | Obrigatório | Permanente |
| NF04 | Lançamentos parcelados | Lançamentos com parcelas, deverão constar o número de parcelas e a cada mês este lançamentos deverá ser creditado ou debitado até a data fim. | Implementação | Obrigatório | Permanente |
| NF05 | Exibição do saldo | O sistema deverá exibir o saldo do usuário atualizado na tela, após cada lançamento realizado. | Implementação | Obrigatório | Permanente |
| NF06 | Exibição de lançamentos | Os lançamentops deverão ser exibidos ao usuário em duas tabelas separadas, uma para receitas e uma para despesas. Nestas exibições o usuários deverá conseguir realizar a pesquisa dos lançamentos, conforme deascrito no requisito F07. | Implementação | Obrigatório | Permanente |
