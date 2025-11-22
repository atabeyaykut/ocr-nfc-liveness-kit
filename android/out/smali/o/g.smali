.class public final Lo/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# instance fields
.field public final a:Landroid/net/ConnectivityManager;

.field public final b:Lo/f$a;

.field public final c:Lo/g$a;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lo/f$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/g;->a:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lo/g;->b:Lo/f$a;

    new-instance p2, Lo/g$a;

    invoke-direct {p2, p0}, Lo/g$a;-><init>(Lo/g;)V

    iput-object p2, p0, Lo/g;->c:Lo/g$a;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static final a(Lo/g;Landroid/net/Network;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/g;->a:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :cond_0
    if-ge v3, v1, :cond_3

    .line 11
    .line 12
    aget-object v4, v0, v3

    .line 13
    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    invoke-static {v4, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    move v4, p2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v5, p0, Lo/g;->a:Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    const/16 v5, 0xc

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v4, 0x0

    .line 44
    :goto_0
    if-eqz v4, :cond_0

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    :cond_3
    iget-object p0, p0, Lo/g;->b:Lo/f$a;

    .line 48
    .line 49
    invoke-interface {p0, v2}, Lo/f$a;->a(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lo/g;->a:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :cond_0
    if-ge v4, v2, :cond_2

    .line 11
    .line 12
    aget-object v5, v1, v4

    .line 13
    .line 14
    add-int/lit8 v4, v4, 0x1

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    const/16 v7, 0xc

    .line 24
    .line 25
    invoke-virtual {v5, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v5, 0x0

    .line 34
    :goto_0
    if-eqz v5, :cond_0

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    :cond_2
    return v3
.end method

.method public final shutdown()V
    .locals 2

    iget-object v0, p0, Lo/g;->a:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lo/g;->c:Lo/g$a;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
