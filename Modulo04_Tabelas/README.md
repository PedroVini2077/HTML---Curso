# 📊 Módulo 04 – Tabelas

Neste módulo, aprendemos a criar e organizar tabelas em HTML para exibir dados de forma estruturada. Vimos desde a estrutura básica até o uso de cabeçalhos, rodapés e atributos mais avançados como `colspan` e `rowspan`.


## 🧩 Conceitos e Estrutura Básica

- `<table>` → define a tabela.
- `<tr>` → table row (linha da tabela).
- `<td>` → table data (célula de dado).
- `<th>` → table header (célula de cabeçalho).

### Exemplo simples:

```html
<table border="1">
  <tr>
    <th>Nome</th>
    <th>Idade</th>
  </tr>
  <tr>
    <td>Pedro</td>
    <td>22</td>
  </tr>
</table>
````

---

## 🧩 Estrutura Completa (Semântica)

* `<thead>` → cabeçalho da tabela.
* `<tbody>` → corpo da tabela.
* `<tfoot>` → rodapé da tabela.

Isso ajuda na organização e acessibilidade.

```html
<table border="1">
  <thead>
    <tr>
      <th>Produto</th>
      <th>Preço</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Teclado</td>
      <td>R$ 120</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <td colspan="2">Total: R$ 120</td>
    </tr>
  </tfoot>
</table>
```

---

## 🧩 Atributos Especiais

* **`colspan`** → mescla colunas (horizontalmente).

  ```html
  <td colspan="2">Reunião Equipe (2h)</td>
  ```
* **`rowspan`** → mescla linhas (verticalmente).

  ```html
  <td rowspan="2">Intervalo</td>
  ```


## 📚 Exemplos Práticos

### Exemplo 01 – Tabela Básica

Tabela simples com colunas de hora e dias da semana.

### Exemplo 02 – Tabela Intermediária

Tabela com `<thead>`, `<tbody>` e `<tfoot>` para exibir produtos e somar o total.

### Exemplo 03 – Tabela Avançada

Tabela usando `colspan` e `rowspan` para organizar horários de reuniões e atividades.


## 📝 Exercícios

1. Criar uma tabela simples de horários de aula.
2. Criar uma tabela de produtos com subtotal e total usando `<tfoot>`.
3. Criar uma agenda semanal usando `colspan` e `rowspan`.


## 💻 Projeto do Módulo

**Projeto 04 – Tabela de Cadastro de Produtos**

* Criar uma tabela de cadastro de produtos, com:

  * Categorias agrupadas (`rowspan`).
  * Produtos com observações em `<ul>`.
  * Rodapé com o **total geral**.

### Extra (exemplo adicional):

* Linha de **promoção em destaque** (`colspan`).
* Linha de **produto em falta** com destaque em vermelho (`class="em-falta"`).


## ⚡ Cheatsheet Rápido

<table>      → cria tabela
<tr>         → linha
<td>         → célula de dado
<th>         → célula de cabeçalho
<thead>      → cabeçalho
<tbody>      → corpo
<tfoot>      → rodapé
colspan="n"  → mesclar n colunas
rowspan="n"  → mesclar n linhas