# 📘 Módulo 01 – Introdução ao HTML

### O que é HTML?
- **HTML** significa *HyperText Markup Language* (Linguagem de Marcação de Hipertexto).
- Ele **não é programação**, mas sim uma linguagem de marcação que define a estrutura de uma página.
- O navegador interpreta o HTML e mostra o conteúdo de forma visual.

👉 Pense no HTML como o **esqueleto** do site.  
O **CSS** é a roupa (estilo) e o **JavaScript** os músculos (interatividade).

---

### Estrutura básica de um documento HTML

```html
<!DOCTYPE html> <!-- Define que o documento segue o padrão HTML5 -->
<html lang="pt-BR"> <!-- Raiz do documento, define o idioma -->

<head> <!-- Cabeçalho, com informações sobre a página -->
    <meta charset="UTF-8"> <!-- Suporte a acentos e caracteres especiais -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Ajuste em dispositivos móveis -->
    <title>Minha Primeira Página</title> <!-- Título da aba do navegador -->
</head>

<body> <!-- Corpo, tudo que o usuário vê -->
    <h1>Olá, mundo!</h1>
    <p>Esse é meu primeiro parágrafo em HTML.</p>
</body>

</html>
```

### Tags principais vistas no módulo

### 1. Estrutura

<!DOCTYPE html> → diz que o documento é HTML5.
<html> → tag raiz, envolve todo o conteúdo.
lang="pt-BR" → atributo que informa o idioma da página (bom para SEO e acessibilidade).
<head> → contém informações invisíveis para o usuário (metadados, título, links externos).
<body> → contém o conteúdo visível (textos, imagens, links etc.).

### 2. Metadados (no <head>)

<meta charset="UTF-8"> → permite usar acentos (á, ã, ç, ê).
<meta name="viewport" content="width=device-width, initial-scale=1.0"> → faz a página se adaptar a celulares.
<meta name="author" content="Seu Nome"> → define o autor.
<meta name="description" content="Descrição do site"> → usado por mecanismos de busca (Google).

### Outros exemplos:

```html
<meta name="keywords" content="HTML, curso, programação, web"> <!-- pouco usado hoje -->
<meta http-equiv="cache-control" content="no-cache"> <!-- controle de cache -->
<meta http-equiv="X-UA-Compatible" content="IE=edge"> <!-- compatibilidade com IE antigo -->
```

### 3. Título da página

<title> → define o nome que aparece na aba do navegador e nos resultados de busca.

### Exemplo:

```html
<title>Meu Primeiro Site</title>
```

### 4. Títulos e subtítulos

Tags de <h1> até <h6>:

<h1> → título principal (mais importante).
<h2> → subtítulo.
<h3> → título de seção.
<h4> → subtítulo menor.
<h5> e <h6> → pouco usados, títulos menos importantes.

### Exemplo:

```html
<h1>Receitas da Vovó</h1>
<h2>Bolos</h2>
<h3>Bolo de Cenoura</h3>
```

### 5. Parágrafos e texto

<p> → cria parágrafos.
<br> → quebra de linha manual.
<hr> → insere uma linha horizontal para separar conteúdos.

### Exemplo:

```html
<p>Este é um parágrafo de texto.</p>
<p>Este é outro.</p>
<br>
<p>Texto separado por uma quebra de linha.</p>
<hr>
<p>Texto após uma linha horizontal.</p>
```

### 6. Comentários

<!-- ... --> → usado para deixar notas dentro do código, ignoradas pelo navegador.

Exemplo:

```html
<!-- Esse parágrafo explica o título -->
<p>Bem-vindo ao meu site!</p>
```

### Aula 5 – Boas práticas no <head>

O <head> é a parte da página que não aparece visualmente, mas contém informações cruciais para SEO, responsividade e identificação.

### Exemplo de <head> bem estruturado:

```html
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Pedro Vini">
    <meta name="description" content="Portfólio online do Pedro Vini, estudante de TI aprendendo HTML.">
    <title>Portfólio | Pedro Vini</title>
</head>
```


✔ Sempre inclua charset e viewport.
✔ Use <title> claro e único para cada página.
✔ Escreva uma <meta description> curta e chamativa (até 160 caracteres).
✔ Inclua <meta author> em projetos pessoais.

### Exercícios do módulo
Exercício 01 – Primeira Página

Crie um arquivo exercicio01.html com:

Um <h1> com seu nome.
Um <h2> com o que você está estudando.
Dois <p> com qualquer texto (pode inventar).
Uma linha <hr> separando os parágrafos.

Exercício 02 – Estrutura completa do <head>

Crie exercicio02.html com:

<meta charset="UTF-8">
<meta name="viewport">
<meta name="author">
<meta name="description">

<title> descritivo da página

No <body>, coloque um <h1> com seu nome e um <p> com a frase:
“Essa é minha primeira página otimizada com <head> bem estruturado!”

Mini Projeto do Módulo

Na pasta projeto/, crie pagina_apresentacao.html contendo:

<h1> com seu nome ou apelido.
<p> falando sobre você.
<p> dizendo por que quer aprender HTML.
<title> com o texto "Página de Apresentação".
<meta name="author"> com seu nome.

### Resumo Final

HTML é o esqueleto da web.
Estrutura mínima = <!DOCTYPE html>, <html>, <head>, <body>.
<head> guarda metadados e <body> mostra o conteúdo.
<meta> define informações cruciais (charset, viewport, autor, descrição).
<title> dá nome à aba do navegador e aparece no Google.
<h1> até <h6> organizam títulos.
<p> faz parágrafos, <br> quebra linha, <hr> cria divisórias.
Comentários (<!-- ... -->) ajudam a documentar o código.

Exercícios e mini projeto consolidam o aprendizado do módulo.