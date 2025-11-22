.class public final Landroid/support/v4/media/c;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/b;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v4/media/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$b$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/c;->a:Landroid/support/v4/media/b;

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/c;->a:Landroid/support/v4/media/b;

    .line 2
    .line 3
    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->a:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 6
    .line 7
    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$b;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 12
    .line 13
    iget-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->b:Landroid/media/browse/MediaBrowser;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const-string v4, "extra_service_version"

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    const-string v4, "extra_messenger"

    .line 29
    .line 30
    invoke-static {v3, v4}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$g;

    .line 37
    .line 38
    iget-object v6, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->c:Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v5, v4, v6}, Landroid/support/v4/media/MediaBrowserCompat$g;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    iput-object v5, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->f:Landroid/support/v4/media/MediaBrowserCompat$g;

    .line 44
    .line 45
    new-instance v4, Landroid/os/Messenger;

    .line 46
    .line 47
    iget-object v5, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    .line 48
    .line 49
    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 50
    .line 51
    .line 52
    iput-object v4, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->g:Landroid/os/Messenger;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$a;->b:Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    :try_start_0
    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->f:Landroid/support/v4/media/MediaBrowserCompat$g;

    .line 65
    .line 66
    iget-object v5, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->a:Landroid/content/Context;

    .line 67
    .line 68
    iget-object v6, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->g:Landroid/os/Messenger;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v7, Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v8, "data_package_name"

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v7, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v5, "data_root_hints"

    .line 88
    .line 89
    iget-object v8, v4, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/os/Bundle;

    .line 90
    .line 91
    invoke-virtual {v7, v5, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    const/4 v5, 0x6

    .line 95
    invoke-virtual {v4, v5, v7, v6}, Landroid/support/v4/media/MediaBrowserCompat$g;->a(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    const-string v4, "MediaBrowserCompat"

    .line 100
    .line 101
    const-string v5, "Remote error registering client messenger."

    .line 102
    .line 103
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    const-string v4, "extra_session_binder"

    .line 107
    .line 108
    invoke-static {v3, v4}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v3}, Landroid/support/v4/media/session/b$a;->w0(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a(Landroid/os/Parcelable;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 127
    .line 128
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->onConnected()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final onConnectionFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/c;->a:Landroid/support/v4/media/b;

    .line 2
    .line 3
    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->a:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 6
    .line 7
    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$b;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->onConnectionFailed()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/c;->a:Landroid/support/v4/media/b;

    .line 2
    .line 3
    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->a:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 6
    .line 7
    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$b;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->f:Landroid/support/v4/media/MediaBrowserCompat$g;

    .line 15
    .line 16
    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->g:Landroid/os/Messenger;

    .line 17
    .line 18
    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 19
    .line 20
    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$c;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$a;->b:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->onConnectionSuspended()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
