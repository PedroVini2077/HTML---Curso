### 📖 Módulo 03 – Links, Imagens e Mídia

Neste módulo aprendemos a trabalhar com **hiperlinks, imagens e multimídia** em páginas HTML.  
São os recursos que deixam a web **interativa e multimídia**. 🚀

---

### 🔗 Links (`<a>`)

- Tag principal: `<a>`.
- **Atributos principais**:
  - `href="URL"` → destino do link.
  - `target="_blank"` → abre em nova aba.
  - `download` → força o download de um arquivo.
  - `#id` → cria navegação interna (âncoras).

### Exemplos:
```html
<a href="https://www.google.com">Google</a>
<a href="https://wikipedia.org" target="_blank">Abrir na nova aba</a>
<a href="documento.pdf" download>Baixar PDF</a>
<a href="#secao2">Ir para a seção 2</a>
```

### 🖼️ Imagens (<img>)

Tag: <img> (autofechamento).

Atributos principais:

src → caminho da imagem.
alt → texto alternativo (acessibilidade e SEO).
width / height → controla tamanho (melhor usar no CSS).

Semântica extra:

<figure> → agrupa imagem + legenda.
<figcaption> → legenda da imagem.

Exemplo:

```html
<figure>
  <img src="foto.jpg" alt="Minha foto" width="300">
  <figcaption>Eu no evento de tecnologia</figcaption>
</figure>
```

### 🎵🎥 Mídia (<audio> e <video>)

Tag <audio>:

Sempre usar controls para permitir play/pause.
<source> define os formatos (mp3, ogg, wav).

Tag <video>:

Atributos comuns: controls, autoplay, muted, loop, poster.
<source> define formatos (mp4, webm, ogg).
Texto dentro da tag = fallback.

Exemplos:

```html
<audio controls>
  <source src="musica.mp3" type="audio/mpeg">
  <source src="musica.ogg" type="audio/ogg">
  Seu navegador não suporta áudio.
</audio>

<video width="500" controls poster="capa.jpg">
  <source src="video.mp4" type="video/mp4">
  <source src="video.webm" type="video/webm">
  Seu navegador não suporta vídeo.
</video>
```

### 📝 Exercício

Criar uma galeria de imagens e multimídia contendo:
Links (site externo, nova aba, download, âncoras internas).
Imagens com alt, figure e figcaption.
Áudio e vídeo com múltiplos formatos.

### 💡 Projeto do Módulo 03

Página de apresentação pessoal com:
Links favoritos.
Download de arquivo fictício.
Navegação interna com âncoras.
Galeria de imagens com legendas.
Reprodução de áudio e vídeo.