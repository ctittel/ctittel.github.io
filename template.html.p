<html>
<head>
  <title>◊(hash-ref metas 'title) - ◊(website-name)</title>
  <meta charset="utf-8">
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <meta content='text/html; charset=utf-8' http-equiv='Content-Type'>
  <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'>

  ◊; <link rel="stylesheet" type="text/css" href="◊(baseurl)/css/layout.css" />
  <link rel="stylesheet" type="text/css" href="◊(baseurl)/css/style.css" />
  <link rel="shortcut icon" type="image/png" href="◊(baseurl)/assets/logo.svg">

  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-153495508-1"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-153495508-1');
  </script>
</head>

<body>
<header>

	◊; <div class="site-info">
	◊; 	<h1 class="site-name">
	◊; 	</h1>
	◊; 	◊; <p class="site-description">Christoph Tittel</p>
	◊; </div>

  <nav>
  	◊; <a href="◊(baseurl)/">
    <img id="site-avatar" src="◊(baseurl)/assets/logo.svg" />
    ◊; </a>
    <a href="◊(baseurl)/" id="site-name">Christoph Tittel</a>
    ◊; <a href="google.com">Google</a>
    ◊; ◊(->html (apply ul (for/list ([ii (nav-sites)]) (li ii))))
  ◊; ◊(for ([i (nav-sites)])
  ◊;   "test"
  ◊; )

    ◊; ◊a[href=(i)]{i}
	◊; {% for node in site.navbar %}
	◊; 	{% if page.url == node.url %}
	◊; 	<a class="active" href="{{node.url | prepend: site.baseurl}}">{{node.title}}</a>
	◊; 	{% else %}
	◊; 	<a href="{{node.url | prepend: site.baseurl}}">{{node.title}}</a>
	◊; 	{% endif %}
	◊; {% endfor %}
	</nav>
</header>

<article>
◊(->html doc)
</article>
</body>

<footer>
    <div class="credits">
    &copy; Christoph Tittel&nbsp;2020-◊(print-year)
    <br>
    Last built: ◊(print-datetime)
    <br>
    <a href=https://github.com/ctittel/ctittel.github.io/blob/main/◊(relative-source-of-file here)>Source and History of this page</a>
  </div>  
</footer>
</html>