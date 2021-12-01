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
          <a href=◊(baseurl)/about.html>About</a>
        </nav>
      </header>

      <article>
        ◊(->html doc)
      </article>
      <script defer src='https://static.cloudflareinsights.com/beacon.min.js' data-cf-beacon='{"token": "2bd5f04371b74ad1a535bbb6b26f1c0e"}'></script>
    </body>

    <footer>
        <div class="credits">
        &copy; Christoph Tittel&nbsp;2020-◊(print-year)
        <br>
        Last built: ◊(print-datetime)
        <br>
        <a href=https://github.com/ctittel/ctittel.github.io/blob/main/◊(relative-source-of-file here)>Source Code</a> and
        <a href=https://github.com/ctittel/ctittel.github.io/commits/main/◊(relative-source-of-file here)>Version History</a> of this page
      </div>  
    </footer>
  </div>
</html>