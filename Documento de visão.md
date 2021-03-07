# :eyes: Documento de visão

O FinPes é uma ideia que surgiu a partir do uso de uma planilha para controle de gastos pessoais. Apesar de eficiente, por vezes o documento se mostra limitado e pouco eficaz no que faz. Mesmo havendo a possibilidade de aprimorar o documento para suprir as deficiências, foi decidido que seria melhor buscar a implementação de algo mais eficaz, seguro e intuitivo.

A ideia é ter um sistema, web, onde o usuário possa se autenticar, acessar suas informações e realizar lançamentos financeiros para o mês corrente, meses futuros (apenas lançamentos em parcelas) e visualizar os lançamentos de meses passados. Os lançamentos podem ser dos tipos receitas (entradas) ou débitos (saídas), e devem ser vinculados a alguma forma de pagamento, por exemplo, receitas podem ser em dinheiro vivo, ou vinculadas a alguma conta bancária, para os lançamentos de débitos, poderão ser vinculados a dinheiro vivo, conta bancária, cartão de crédito.

Cada forma de pagamentos possuirá suas peculiaridades, e não será necessário armazenar no sistema os dados específicos das mesmas. Apenas informações que possibilite ao usuário reconhece-las e realizar os lançamentos. Por exemplo, para um cartão de crédito, não serão armazenados os dados do cartão, apenas um título que o defina, uma descrição, a instituição bancária e as datas de fechamento e vencimento da fatura.

Ao dar início a um lançamento o usuário deve selecionar se este será uma receita ou um débito, se será um lançamento recorrente - isto é, se será um lançamento que se repetirá ao longo dos meses sem uma data final prevista - se será em parcelas ou não, os valores, descrições necessários e forma de pagamento.

O usuário poderá, após o fim de cada mês realizar o fechamento do mesmo, assim, bloqueando-o e permitindo alterações apenas após o usuário confirma-las explicitamente.
