<#macro layout title="" description="" uri="">
<#assign _title = title/>
<#assign _description = description/>
<#assign _uri = uri/>
<!DOCTYPE html>
<html lang="${(content.lang)!"en"}">
<head>
    <script async src="https://www.googletagmanager.com/gtag/js?id=${config.googleAnalyticsId}"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', '${config.googleAnalyticsId}');
    </script>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>${"BeJUG - " + _title}</title>
    <meta content="${_description}" name="description">
<#--    <link href="${"https://bejug.org/" + _uri}" rel="canonical">-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          integrity="sha256-IUOUHAPazai08QFs7W4MbzTlwEWFo7z/4zw8YmxEiko=" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/5ba6091273.js" crossorigin="anonymous"></script>
    <link href="${content.rootpath}favicon.png" rel="shortcut icon">
    <style>
        /* Styling for AsciiDoc NOTE */
        .admonitionblock.note {
            background-color: var(--fbc-secondary-text);
            padding: 10px;
            color: #fff;
            margin-bottom: 10px;
        }

        .title {
            text-transform: uppercase;
        }

        .content {
            padding-left: 10px;
        }
    </style>
</head>

<body>
    <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light border-bottom shadow">
        <div class="container">
            <a class="navbar-brand" href="${content.rootpath}">
                <img alt="BeJUG logo" src="${content.rootpath}logo.png" height="40px">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="${content.rootpath}index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="${content.rootpath}partnership-guidelines.html">Partnership-guidelines</a></li>
                    <li class="nav-item"><a class="nav-link" href="${content.rootpath}visit-belgium-tips.html">Visit Belgium Tips</a></li>
                    <li class="nav-item"><a class="nav-link" href="${content.rootpath}events-archive.html">Events archive</a></li>
                    <li class="nav-item"><a class="nav-link" href="${content.rootpath}raffle.html" target="_blank">Winner Raffle</a></li>
                </ul>
                <ul class="navbar-nav">
                    <li class="p-2"><a style="color: #55acee" href="https://twitter.com/BeJUG" role="button"><i class="fa-brands fa-twitter"></i></a></li>
                    <li class="p-2"><a style="color: #208bfe" href="https://bsky.app/profile/bejug.bsky.social" role="button"><i class="fa-brands fa-bluesky"></i></a></li>
                    <li class="p-2"><a style="color: #333" href="https://github.com/bejug" role="button"><i class="fa-brands fa-github"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container py-4">
        <#nested>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"
            integrity="sha256-w8CvhFs7iHNVUtnSP0YKEg00p9Ih13rlL9zGqvLdePA=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha256-xLI5SjD6DkojxrMIVBNT4ghypv12Xtj7cOa0AgKd6wA=" crossorigin="anonymous"></script>
</body>
</html>
</#macro>
