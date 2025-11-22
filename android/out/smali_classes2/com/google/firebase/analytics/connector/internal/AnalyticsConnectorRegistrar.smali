.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/i;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambda$getComponents$0(Lc6/e;)Lz5/a;
    .locals 6

    .line 1
    const-class v0, Lx5/c;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx5/c;

    .line 8
    .line 9
    const-class v1, Landroid/content/Context;

    .line 10
    .line 11
    invoke-interface {p0, v1}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/Context;

    .line 16
    .line 17
    const-class v2, Lx6/d;

    .line 18
    .line 19
    invoke-interface {p0, v2}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lx6/d;

    .line 24
    .line 25
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lz5/c;->c:Lz5/c;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    const-class v2, Lz5/c;

    .line 46
    .line 47
    monitor-enter v2

    .line 48
    :try_start_0
    sget-object v3, Lz5/c;->c:Lz5/c;

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    new-instance v3, Landroid/os/Bundle;

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lx5/c;->a()V

    .line 59
    .line 60
    .line 61
    const-string v4, "[DEFAULT]"

    .line 62
    .line 63
    iget-object v5, v0, Lx5/c;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    sget-object v4, Lz5/e;->a:Lz5/e;

    .line 72
    .line 73
    sget-object v5, Lz5/d;->a:Lz5/d;

    .line 74
    .line 75
    invoke-interface {p0, v4, v5}, Lx6/d;->a(Ljava/util/concurrent/Executor;Lx6/b;)V

    .line 76
    .line 77
    .line 78
    const-string p0, "dataCollectionDefaultEnabled"

    .line 79
    .line 80
    invoke-virtual {v0}, Lx5/c;->f()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {v3, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    :cond_0
    new-instance p0, Lz5/c;

    .line 88
    .line 89
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/d2;->c(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/d2;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/d2;->b:Lb5/a;

    .line 94
    .line 95
    invoke-direct {p0, v0}, Lz5/c;-><init>(Lb5/a;)V

    .line 96
    .line 97
    .line 98
    sput-object p0, Lz5/c;->c:Lz5/c;

    .line 99
    .line 100
    :cond_1
    monitor-exit v2

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_2
    :goto_0
    sget-object p0, Lz5/c;->c:Lz5/c;

    .line 106
    .line 107
    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc6/d<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lc6/d;

    .line 3
    .line 4
    const-class v2, Lz5/a;

    .line 5
    .line 6
    invoke-static {v2}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Lc6/o;

    .line 11
    .line 12
    const-class v4, Lx5/c;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-direct {v3, v5, v6, v4}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lc6/d$a;->a(Lc6/o;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lc6/o;

    .line 23
    .line 24
    const-class v4, Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {v3, v5, v6, v4}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lc6/d$a;->a(Lc6/o;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lc6/o;

    .line 33
    .line 34
    const-class v4, Lx6/d;

    .line 35
    .line 36
    invoke-direct {v3, v5, v6, v4}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lc6/d$a;->a(Lc6/o;)V

    .line 40
    .line 41
    .line 42
    sget-object v3, La6/a;->a:La6/a;

    .line 43
    .line 44
    iput-object v3, v2, Lc6/d$a;->e:Lc6/h;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lc6/d$a;->c(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lc6/d$a;->b()Lc6/d;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    aput-object v0, v1, v6

    .line 54
    .line 55
    const-string v0, "fire-analytics"

    .line 56
    .line 57
    const-string v2, "20.0.0"

    .line 58
    .line 59
    invoke-static {v0, v2}, Li7/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    aput-object v0, v1, v5

    .line 64
    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method
