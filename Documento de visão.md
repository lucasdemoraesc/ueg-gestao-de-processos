# :eyes: Documento de visão

O FinPes é uma ideia que surgiu a partir do uso de uma planilha para controle de gastos pessoais. Apesar de eficiente, por vezes o documento se mostra limitado e pouco eficaz no que faz. Mesmo havendo a possibilidade de aprimorar o documento para suprir as deficiências, foi decidido que seria melhor buscar a implementação de algo mais eficaz, seguro e intuitivo.

A ideia é ter um sistema, web, onde o usuário possa se autenticar, acessar suas informações e realizar lançamentos financeiros para o mês corrente, meses futuros (apenas lançamentos recorrentes ou em parcelas) e visualizar os lançamentos de meses passados.

**Cadastro de lançamentos -** Ao dar início ao cadastro de um lançamento o usuário deverá informar qual será o *tipo* do mesmo, podendo ser *receita* (entrada) ou *débito* (saída), se é um lançamento recorrente, parcelado ou comum, uma *descrição*, a *data* - que no caso de receitas será a *data de recebimento* e para débitos as *datas de vencimento e pagamento* - o *valor* a *categoria*, e qual a *forma de pagamento* usada.

**Formas de pagamento -** O sistema deverá suportar diferentes formas de pagamento tanto para receitas quanto para débitos. Não será necessário armazenar os dados explícitos da forma, como dados do cartão por exemplo, apenas dados que possibilitem ao usuário reconhece-la. Formas de pagamento poderão ser dos tipos conta bancária, cartão de crédito, ou dinheiro.

**Cálculo de saldo -** O sistema deverá calcular e exibir o saldo mensal para o usuário com base nos lançamentos realizados. Somando todos os débitos e subtraindo na soma das receitas. Após o usuário realizar o fechamento de um mês o saldo existente deverá ser repassado ao mês posterior.