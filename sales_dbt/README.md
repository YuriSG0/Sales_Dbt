## Pipeline de Transformação de Dados com dbt

##  Descrição

Este projeto demonstra a implementação de uma pipeline de transformação de dados utilizando **dbt (Data Build Tool)**, aplicando boas práticas de Engenharia de Dados para criação de modelos analíticos escaláveis.

O fluxo realiza desde o tratamento inicial dos dados até a construção de views analíticas, incluindo monitoramento, auditoria e mecanismos de proteção contra falhas durante a execução.


##  Tratamento de Dados

Durante a camada **Staging** são realizados:

* Padronização dos nomes das colunas
* Conversão de tipos de dados
* Tratamento de valores nulos
* Remoção de registros duplicados
* Normalização de datas
* Padronização de textos

##  Desenvolvimento de Views

Após os tratamentos, são desenvolvidas views específicas para consumo analítico.

Exemplos:

* View de Clientes
* View de Vendas
* View de Faturamento
* View de Produtos
* View de Indicadores

As views seguem o conceito de separação por camadas:

* **Staging**
* **Intermediate**
* **Mart**

---

##  Testes de Qualidade

O projeto utiliza testes automáticos do dbt para garantir a qualidade dos dados.

Exemplos:

* `not_null`
* `unique`
* `accepted_values`
* `relationships`

---

##  Logging

Todas as execuções geram logs automaticamente pelo dbt.

Os logs permitem acompanhar:

* Tempo de execução
* Modelos executados
* Quantidade de linhas processadas
* Erros encontrados
* Histórico das execuções

Isso facilita auditorias e identificação rápida de problemas.

---

##  Circuit Breaker

Foi implementada uma estratégia de **Circuit Breaker** para impedir que dados inconsistentes avancem para as camadas analíticas.

O mecanismo interrompe automaticamente a execução quando são identificadas situações críticas, como:

* Tabelas de origem vazias
* Volume de registros abaixo do esperado
* Campos obrigatórios nulos
* Chaves duplicadas
* Falhas de integridade referencial

Quando alguma dessas validações falha, a pipeline é interrompida, evitando a propagação de dados incorretos para produção.


## Intermediate

Responsável por:

* Regras de negócio
* Junções entre tabelas
* Enriquecimento das informações
* Cálculos intermediários



#  Execução

Executar as transformações:

```bash
dbt run
```

Executar os testes:

```bash
dbt test
```

Gerar documentação:

```bash
dbt docs generate
```

Visualizar documentação:

```bash
dbt docs serve
```

---

# Benefícios da Solução

* Organização em camadas
* Código modular
* Fácil manutenção
* Reutilização de modelos
* Testes automatizados
* Auditoria através de logs
* Proteção contra falhas utilizando Circuit Breaker
* Modelagem voltada para consumo analítico

---

# Tecnologias

* dbt
* SQL
* Git
* GitHub
* Data Warehouse
* YAML

#  Objetivo

Construir uma pipeline de transformação de dados confiável, organizada e escalável, aplicando boas práticas de Engenharia de Dados, garantindo qualidade dos dados por meio de testes automatizados, monitoramento via logs e mecanismos de proteção para evitar a propagação de inconsistências para as camadas analíticas.
