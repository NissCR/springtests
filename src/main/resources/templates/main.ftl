<#macro main>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Главная</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;amp;lang=en" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://code.getmdl.io/1.3.0/material.purple-orange.min.css" rel="stylesheet">
    <link href="/styles/main.css" rel="stylesheet">
</head>
<body id="top">
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <header class="mdl-layout__header mdl-layout__header--waterfall site-header">
        <div class="mdl-layout__header-row site-logo-row"><span class="mdl-layout__title">
            <div class="site-logo"></div><span class="site-description">Niss' tests</span></span></div>
        <div class="mdl-layout__header-row site-navigation-row mdl-layout--large-screen-only">
            <nav class="mdl-navigation mdl-typography--body-1-force-preferred-font"><a class="mdl-navigation__link" href="/">Главная</a><a class="mdl-navigation__link" href="posts">Карточки</a><a class="mdl-navigation__link" href="about">About</a><a class="mdl-navigation__link" href="contact.html">Contact</a>
            </nav>
        </div>
    </header>
    <div class="mdl-layout__drawer mdl-layout--small-screen-only">
        <nav class="mdl-navigation mdl-typography--body-1-force-preferred-font"><a class="mdl-navigation__link" href="/">Главная</a><a class="mdl-navigation__link" href="posts">Карточки</a><a class="mdl-navigation__link" href="about">About</a><a class="mdl-navigation__link" href="contact.html">Contact</a>
        </nav>
    </div>
    <main class="mdl-layout__content">

    <#nested>

        <footer class="mdl-mini-footer">
            <div class="footer-container">
                <div class="mdl-logo">Niss</div>
                <ul class="mdl-mini-footer__link-list">
                    <li><a href="#">Обратная связь</a></li>
                </ul>
            </div>
        </footer>
    </main>
    <script src="https://code.getmdl.io/1.3.0/material.min.js" defer></script>
</div>
</body>
</html>
</#macro>