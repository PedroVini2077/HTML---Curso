### Módulo 02 – Texto, Parágrafos e Listas

### O que você vai aprender
- Como formatar textos usando **HTML puro**.
- Como usar **listas** de todos os tipos: não ordenadas, ordenadas e de definições.
- Como aplicar citações, referências e códigos.
- Boas práticas de organização de conteúdo com títulos e subtítulos.

---

### Aula 1 – Revisão de `<p>`, `<br>` e `<hr>`
- `<p>` → cria parágrafos.
- `<br>` → quebra de linha manual dentro de um parágrafo.
- `<hr>` → insere uma linha horizontal para separar blocos de conteúdo.

**Exemplo:**
```html
<p>Primeiro parágrafo.</p>
<p>Segundo parágrafo<br>com quebra de linha.</p>
<hr>
<p>Texto após a linha horizontal.</p>
```

### Aula 2 – Formatação básica de texto

<b> → negrito sem importância semântica.
<strong> → negrito com ênfase semântica.
<i> → itálico sem importância semântica.
<em> → itálico com ênfase semântica.
<u> → sublinhado.
<mark> → texto destacado.
<small> → texto menor.
<del> → texto riscado (removido).
<ins> → texto inserido.
<sup> → sobrescrito.
<sub> → subscrito.

Exemplo:

```html
<p>Aprendi sobre <b>negrito</b> e <strong>ênfase</strong>.</p>
<p>Também usamos <i>itálico</i> e <em>enfase sem negrito</em>.</p>
<p>Exemplo de preço: <del>R$24.000</del> <ins>R$10.000</ins></p>
<p>Química: CO<sub>2</sub>, H<sup>2</sup>O</p>
```

### Aula 3 – Citações e Código

<blockquote> → citação longa em bloco, pode ter cite.
<q> → citação curta em linha.
<abbr> → abreviações com explicação.
<cite> → referência de obra.
<code> → código em linha.
<pre> → bloco de código preservando espaços e quebras.

Exemplo:

```html
<blockquote cite="https://pt.wikipedia.org/wiki/HTML">
O HTML é a linguagem de marcação padrão para documentos exibidos em navegadores.
</blockquote>

<p>Citação curta: <q>HTML é divertido!</q></p>
<p>Abreviação: <abbr title="HyperText Markup Language">HTML</abbr></p>
<p>Referência: <cite>Livro de HTML</cite></p>
<pre><code>console.log("Olá Mundo")</code></pre>
```

### Aula 4 – Listas

Lista não ordenada (<ul>)

```html
<ul>
    <li>Maçã</li>
    <li>Banana</li>
    <li>Laranja</li>
</ul>
```

Lista ordenada (<ol>) com atributos

```html
<ol type="A" start="3" reversed>
    <li>Item C</li>
    <li>Item B</li>
    <li>Item A</li>
</ol>
```

Lista de definições (<dl>)

```html
<dl>
    <dt>HTML</dt>
    <dd>Linguagem de marcação para criar páginas web.</dd>
    <dt>CSS</dt>
    <dd>Linguagem de estilo para páginas web.</dd>
</dl>
```

### Exercícios do Módulo 2

# Exercício 01

Criar um arquivo exercicio02.html.

Usar parágrafos e formatação de texto com <b>, <strong>, <i>, <em>, <u>, <mark>, <small>, <del>, <ins>, <sup> e <sub>.

# Exercício 02

Criar um arquivo exercicio03.html.

Usar citações, referências e código: <blockquote>, <q>, <abbr>, <cite>, <code>, <pre>.

# Exercício 03

Criar um arquivo exercicio04.html.

Criar listas: <ul>, <ol> com atributos, <dl> com <dt> e <dd>.

### Mini Projeto – Página de Anotações

Arquivo: projeto/pagina_anotacoes.html

<title>: Minhas Anotações de HTML

<h1>: Minhas Anotações

Subtítulos (<h2>, <h3>) para seções: Formatação de textos, Citações, Listas
Parágrafos com todas as formatações de texto
Citações e referências
Código em linha e bloco
Listas não ordenadas, ordenadas e de definições
Link de navegação <a> para o menu

Exemplo final do projeto:

```html
<h1>Minhas Anotações</h1>
<h2>Formatação de textos</h2>
<p>Aprendi sobre <b>negrito</b>, <strong>ênfase</strong>, <i>itálico</i>, <em>ênfase</em>.</p>
<p>Também <u>sublinhado</u>, <mark>marcado</mark> e <small>texto pequeno</small>.</p>

<h3>Listas</h3>
<ul>
    <li>Item 1</li>
    <li>Item 2</li>
</ul>
<ol type="1">
    <li>Passo 1</li>
</ol>
<dl>
    <dt>HTML</dt>
    <dd>Linguagem de marcação.</dd>
</dl>
<a href="../../menu.html">Voltar ao Menu</a>
```

### Resumo Final do Módulo 2

Parágrafos e quebras: <p>, <br>, <hr>
Formatações de texto: <b>, <strong>, <i>, <em>, <u>, <mark>, <small>, <del>, <ins>, <sup>, <sub>
Citações e códigos: <blockquote>, <q>, <abbr>, <cite>, <code>, <pre>
Listas: <ul>, <ol>, <dl>
Organização: <h1>, <h2>, <h3>
Link de navegação: <a>

Este módulo consolidou a base de estruturação e formatação de conteúdo em HTML, preparando você para trabalhar com formulários, imagens e links nos próximos módulos.