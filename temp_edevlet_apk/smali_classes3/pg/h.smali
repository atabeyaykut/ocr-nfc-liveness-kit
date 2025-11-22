.class public final synthetic Lpg/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

.field public final synthetic b:Landroid/content/BroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;Lpg/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg/h;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    iput-object p2, p0, Lpg/h;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 1
    sget p5, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->y:I

    .line 2
    .line 3
    const-string p5, "download"

    .line 4
    .line 5
    iget-object p6, p0, Lpg/h;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    .line 6
    .line 7
    const-string v0, "this$0"

    .line 8
    .line 9
    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lpg/h;->b:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    const-string v1, "$onComplete"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance v1, Landroid/app/DownloadManager$Request;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 29
    .line 30
    .line 31
    const-string v2, "cookie"

    .line 32
    .line 33
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 42
    .line 43
    .line 44
    const-string v2, "User-Agent"

    .line 45
    .line 46
    invoke-virtual {v1, v2, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p6, p5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-nez p3, :cond_0

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p2}, Lv9/d;->g0(Ljava/io/File;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p6}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 77
    .line 78
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 79
    .line 80
    const/16 p3, 0x8

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p6}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;

    .line 90
    .line 91
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 92
    .line 93
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p6}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 101
    .line 102
    const/4 p3, 0x0

    .line 103
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p6}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->b:Landroid/widget/ProgressBar;

    .line 111
    .line 112
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p6, p5, p1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 116
    .line 117
    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    const/16 p2, 0x21

    .line 121
    .line 122
    const-string p3, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 123
    .line 124
    if-lt p1, p2, :cond_2

    .line 125
    .line 126
    :try_start_1
    new-instance p1, Landroid/content/IntentFilter;

    .line 127
    .line 128
    invoke-direct {p1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/4 p2, 0x2

    .line 132
    invoke-virtual {p6, v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    new-instance p1, Landroid/content/IntentFilter;

    .line 137
    .line 138
    invoke-direct {p1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p6, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-virtual {p6, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string p2, "null cannot be cast to non-null type android.app.DownloadManager"

    .line 149
    .line 150
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    check-cast p1, Landroid/app/DownloadManager;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catch_0
    invoke-virtual {p6}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->y()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p6}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->A()V

    .line 163
    .line 164
    .line 165
    :goto_2
    return-void
.end method
