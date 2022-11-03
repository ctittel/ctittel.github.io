<html>
<head>
  <title>◊(hash-ref metas 'title) - ◊(website-name)</title>
  <meta charset="utf-8">
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <meta content='text/html; charset=utf-8' http-equiv='Content-Type'>
  <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'>

  <link rel="stylesheet" type="text/css" href="◊(baseurl)/css/style.css" />
  <link rel="shortcut icon" type="image/png" href="◊(baseurl)/assets/logo.svg">
</head>
  <div class="flex-wrapper">
    <body>

      <header>
        <nav>
          <a href=◊(baseurl)/index.html>
            <img src="◊(baseurl)/assets/logo.svg" /> <b>Christoph Tittel</b></a>
          <a href=◊(baseurl)/posts.html>Posts</a>
        </nav>

      ◊(require racket/string)
      
      <div class="you-are-here">
        You are here: <a href=◊(baseurl)>ctittel.com</a>
        ◊(apply string-append (map 
                                (lambda (x) (string-append " -> " x)) 
                                (path-element-strings here)))
      </div>

      </header>

      <article>
        ◊(->html doc)
      </article>
    </body>

    <footer>
        <div class="credits">
        &copy; Christoph Tittel&nbsp;2020-◊(current-year-string)
        <br>
        Last built: ◊(current-datetime-string)
        <br>
        <a href=https://github.com/ctittel/ctittel.github.io/blob/main/site/◊(relative-file-path here)>Source Code</a> and
        <a href=https://github.com/ctittel/ctittel.github.io/commits/main/site/◊(relative-file-path here)>Version History</a> of this page
      </div>  
    </footer>
  </div>
</html>