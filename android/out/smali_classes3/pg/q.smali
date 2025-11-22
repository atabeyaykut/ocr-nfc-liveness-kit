.class public final Lpg/q;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;)V
    .locals 0

    iput-object p1, p0, Lpg/q;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lpg/q;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 2
    .line 3
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->m0:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object p2, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->m0:Landroid/webkit/ValueCallback;

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_1
    const/4 p2, 0x1

    .line 20
    const/4 p3, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    array-length v0, v1

    .line 24
    if-ne v0, p2, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_3

    .line 30
    .line 31
    aget-object v0, v1, p3

    .line 32
    .line 33
    const-string v2, ""

    .line 34
    .line 35
    invoke-static {v0, v2}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    aget-object p3, v1, p3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const-string p3, "*/*"

    .line 45
    .line 46
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v1, 0x17

    .line 49
    .line 50
    if-lt v0, v1, :cond_6

    .line 51
    .line 52
    const/16 v1, 0x21

    .line 53
    .line 54
    if-lt v0, v1, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    sget-object v0, La0/b;->p:[Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, [Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p1, v1}, Ltd/a;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1, p3}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->y(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    new-instance v1, Lpg/t;

    .line 76
    .line 77
    invoke-direct {v1, p1, p3}, Lpg/t;-><init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sput-object v1, La0/b;->q:Lpg/t;

    .line 81
    .line 82
    const/4 p3, 0x3

    .line 83
    invoke-static {p1, v0, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    :goto_2
    invoke-virtual {p1, p3}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->y(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_3
    return p2
.end method
