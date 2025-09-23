utilisation de JadX 


brew install jadx

jadx-gui app_src/classes.dex

nano code_findings.md

grep -r "const-string" app_src/smali/     ou.   grep -r "WebView" app_src/smali/




new-instance v0, Landroid/webkit/WebView;
invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

Risque potentiel : si on active JavaScript ou charge des URLs non vérifiées, cela peut permettre des injections de scripts malveillants.


invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

Risque potentiel : si setJavaScriptEnabled(true) ou d’autres options dangereuses sont activées, cela peut rendre la WebView vulnérable aux attaques XSS ou injection de code.


invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

Risque potentiel : si le WebViewClient n’implémente pas correctement la validation des URLs, l’application peut être vulnérable à des attaques de phishing ou redirection malveillante.
