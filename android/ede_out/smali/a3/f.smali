.class public final synthetic La3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La3/m;

.field public final synthetic b:Lu2/s;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(La3/m;Lu2/j;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/f;->a:La3/m;

    iput-object p2, p0, La3/f;->b:Lu2/s;

    iput p3, p0, La3/f;->c:I

    iput-object p4, p0, La3/f;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, La3/f;->b:Lu2/s;

    .line 2
    .line 3
    iget v1, p0, La3/f;->c:I

    .line 4
    .line 5
    iget-object v2, p0, La3/f;->d:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-object v3, p0, La3/f;->a:La3/m;

    .line 8
    .line 9
    iget-object v4, v3, La3/m;->f:Lc3/b;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    :try_start_0
    iget-object v6, v3, La3/m;->c:Lb3/d;

    .line 13
    .line 14
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    new-instance v7, Landroidx/camera/core/impl/utils/futures/a;

    .line 18
    .line 19
    invoke-direct {v7, v5, v6}, Landroidx/camera/core/impl/utils/futures/a;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v4, v7}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object v6, v3, La3/m;->a:Landroid/content/Context;

    .line 26
    .line 27
    const-string v7, "connectivity"

    .line 28
    .line 29
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v6, 0x0

    .line 50
    :goto_0
    if-nez v6, :cond_1

    .line 51
    .line 52
    new-instance v6, La3/g;

    .line 53
    .line 54
    invoke-direct {v6, v3, v0, v1}, La3/g;-><init>(La3/m;Lu2/s;I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v4, v6}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v3, v0, v1}, La3/m;->a(Lu2/s;I)V
    :try_end_0
    .catch Lc3/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    :try_start_1
    iget-object v3, v3, La3/m;->d:La3/p;

    .line 68
    .line 69
    add-int/2addr v1, v5

    .line 70
    invoke-interface {v3, v0, v1}, La3/p;->b(Lu2/s;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 78
    .line 79
    .line 80
    throw v0
.end method
