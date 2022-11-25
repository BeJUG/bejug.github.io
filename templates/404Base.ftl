<!DOCTYPE html>
<#-- This page must use ${content.rootpath} because it is returned for 404 subdirectory urls too. -->
<html lang="en">
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
    <title>BeJUG - 404 Page not found</title>
</head>
<body>
<h1>The requested page does not exist</h1>
<p>
    <a href="${config.canonicalBaseUrl}">Return the BeJUG website.</a>
</p>
</body>
</html>

