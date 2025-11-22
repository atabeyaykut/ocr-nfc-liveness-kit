.class public final Lpg/i;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;)V
    .locals 0

    iput-object p1, p0, Lpg/i;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

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
    iget-object p1, p0, Lpg/i;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    .line 2
    .line 3
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->w:Landroid/webkit/ValueCallback;

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
    iput-object p2, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->w:Landroid/webkit/ValueCallback;

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
    const/4 p2, 0x0

    .line 20
    const/4 p3, 0x1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    array-length v0, v1

    .line 24
    if-ne v0, p3, :cond_2

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
    aget-object v0, v1, p2

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
    aget-object v0, v1, p2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const-string v0, "*/*"

    .line 45
    .line 46
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v2, 0x17

    .line 49
    .line 50
    if-lt v1, v2, :cond_5

    .line 51
    .line 52
    sget-object v1, Lc5/u;->m:[Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, [Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1, v2}, Ltd/a;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->v(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    new-instance v2, Lpg/l;

    .line 71
    .line 72
    invoke-direct {v2, p1, v0}, Lpg/l;-><init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v2, Lc5/u;->n:Lpg/l;

    .line 76
    .line 77
    invoke-static {p1, v1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    invoke-virtual {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->v(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    return p3
.end method
