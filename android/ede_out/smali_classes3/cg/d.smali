.class public final Lcg/d;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    .line 12
    .line 13
    iget-boolean v1, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->y()Lgf/b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lgf/b;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-static {v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->s(Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->I()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->I()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-boolean v1, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->l:Z

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->H()V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->E:I

    .line 12
    .line 13
    iget-object v0, p0, Lcg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->J()V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "about:blank"

    const-string v1, "net::ERR_CACHE_MISS"

    iget-object v2, p0, Lcg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    const-string v3, "failing 0 "

    const-string v4, "failing 1 "

    const-string v5, "view"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "errorDescription"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "failingUrl"

    invoke-static {p4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->y()Lgf/b;

    move-result-object v6

    invoke-virtual {v6}, Lgf/b;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1
    iput-boolean v5, v2, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 2
    sget-object v4, Lyd/a;->a:Lyd/a$a;

    invoke-virtual {v3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2, p4}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->s(Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lyd/a;->a:Lyd/a$a;

    invoke-virtual {v4, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->I()V

    .line 4
    invoke-static {p3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    iput-boolean v5, v2, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 6
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v3, Lyd/a;->a:Lyd/a$a;

    const-string v4, "failing 2 "

    invoke-virtual {v4, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v3, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->E:I

    .line 7
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->I()V

    .line 8
    invoke-static {p3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iput-boolean v5, v2, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 10
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "about:blank"

    const-string v1, "net::ERR_CACHE_MISS"

    iget-object v2, p0, Lcg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    const-string v3, "failing 4 "

    const-string v4, "failing 5 "

    const-string v5, "view"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "request"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "error"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->y()Lgf/b;

    move-result-object v6

    invoke-virtual {v6}, Lgf/b;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 11
    iput-boolean v5, v2, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 12
    sget-object v4, Lyd/a;->a:Lyd/a$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "request.url.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->s(Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->I()V

    .line 14
    sget-object v3, Lyd/a;->a:Lyd/a$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    iput-boolean v5, v2, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 16
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v3, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->E:I

    .line 17
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->I()V

    .line 18
    sget-object v3, Lyd/a;->a:Lyd/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "failing 6 "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 19
    iput-boolean v5, v2, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 20
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "error"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    .line 24
    .line 25
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->E:I

    .line 26
    .line 27
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->I()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    invoke-static {p1, p2}, Lcg/j;->d(Landroid/net/Uri;Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "parse(url)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    invoke-static {p1, p2}, Lcg/j;->d(Landroid/net/Uri;Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;)Z

    move-result p1

    return p1
.end method
