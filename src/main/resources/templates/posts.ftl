<#import "main.ftl" as main>

<@main.main>
    <div class="site-content">
        <div class="container">
            <div class="mdl-grid site-max-width">
                <#list posts as post>
                <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
                    <div class="mdl-card__media">
                        <img class="article-image" src="/images/${post.image}" border="0" alt="">
                    </div>
                    <div class="mdl-card__title">
                        <h2 class="mdl-card__title-text">${post.title}</h2>
                    </div>
                    <div class="mdl-card__supporting-text">
                        ${post.description}
                    </div>
                    <br>
                    <div class="mdl-card__actions mdl-card--border">
                        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-button--accent"
                           href="portfolio-page.html">
                            Learn More
                        </a>
                    </div>
                </div>
                </#list>
            </div>
        </div>
    </div>
</@main.main>