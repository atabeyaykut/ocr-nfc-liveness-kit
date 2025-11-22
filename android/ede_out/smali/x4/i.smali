.class public final Lx4/i;
.super Lz3/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public final e:Landroidx/fragment/app/Fragment;

.field public f:Lcom/airbnb/epoxy/a;

.field public g:Landroid/app/Activity;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lz3/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx4/i;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lx4/i;->e:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx4/i;->g:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lx4/i;->f:Lcom/airbnb/epoxy/a;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lz3/a;->a:Lz3/c;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    :try_start_0
    sget-boolean v1, Lx4/d;->a:Z

    .line 14
    .line 15
    const-class v1, Lx4/d;

    .line 16
    .line 17
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lm3/g; {:try_start_0 .. :try_end_0} :catch_2

    .line 18
    :try_start_1
    invoke-static {v0}, Lx4/d;->a(Landroid/app/Activity;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_2
    monitor-exit v1

    .line 22
    iget-object v0, p0, Lx4/i;->g:Landroid/app/Activity;

    .line 23
    .line 24
    invoke-static {v0}, Ly4/j;->a(Landroid/app/Activity;)Ly4/l;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lx4/i;->g:Landroid/app/Activity;

    .line 29
    .line 30
    new-instance v2, Lz3/d;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v2}, Ly4/l;->c0(Lz3/d;)Ly4/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lx4/i;->f:Lcom/airbnb/epoxy/a;

    .line 43
    .line 44
    new-instance v2, Lx4/h;

    .line 45
    .line 46
    iget-object v3, p0, Lx4/i;->e:Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    invoke-direct {v2, v3, v0}, Lx4/h;-><init>(Landroidx/fragment/app/Fragment;Ly4/c;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/airbnb/epoxy/a;->d(Lx4/h;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lx4/i;->h:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lx4/e;

    .line 71
    .line 72
    iget-object v2, p0, Lz3/a;->a:Lz3/c;

    .line 73
    .line 74
    check-cast v2, Lx4/h;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lm3/g; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    .line 78
    .line 79
    :try_start_3
    iget-object v2, v2, Lx4/h;->b:Ly4/c;

    .line 80
    .line 81
    new-instance v3, Lx4/g;

    .line 82
    .line 83
    invoke-direct {v3, v1}, Lx4/g;-><init>(Lx4/e;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v2, v3}, Ly4/c;->B(Lx4/g;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lm3/g; {:try_start_3 .. :try_end_3} :catch_2

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_4
    new-instance v1, Lz4/g;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget-object v0, p0, Lx4/i;->h:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    monitor-exit v1

    .line 107
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lm3/g; {:try_start_4 .. :try_end_4} :catch_2

    .line 108
    :catch_2
    return-void

    .line 109
    :goto_1
    new-instance v1, Lz4/g;

    .line 110
    .line 111
    invoke-direct {v1, v0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :cond_2
    return-void
.end method
