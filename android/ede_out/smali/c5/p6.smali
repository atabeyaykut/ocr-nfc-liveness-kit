.class public final Lc5/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc5/y7;

.field public final synthetic d:Lcom/google/android/gms/internal/measurement/y0;

.field public final synthetic e:Lc5/t6;


# direct methods
.method public constructor <init>(Lc5/t6;Ljava/lang/String;Ljava/lang/String;Lc5/y7;Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 0

    iput-object p1, p0, Lc5/p6;->e:Lc5/t6;

    iput-object p2, p0, Lc5/p6;->a:Ljava/lang/String;

    iput-object p3, p0, Lc5/p6;->b:Ljava/lang/String;

    iput-object p4, p0, Lc5/p6;->c:Lc5/y7;

    iput-object p5, p0, Lc5/p6;->d:Lcom/google/android/gms/internal/measurement/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc5/p6;->c:Lc5/y7;

    .line 2
    .line 3
    iget-object v1, p0, Lc5/p6;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/p6;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lc5/p6;->d:Lcom/google/android/gms/internal/measurement/y0;

    .line 8
    .line 9
    iget-object v4, p0, Lc5/p6;->e:Lc5/t6;

    .line 10
    .line 11
    new-instance v5, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v6, v4, Lc5/t6;->d:Lc5/v2;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    iget-object v7, v4, Lc5/x4;->a:Lc5/z4;

    .line 19
    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    :try_start_1
    move-object v0, v7

    .line 23
    check-cast v0, Lc5/i4;

    .line 24
    .line 25
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 26
    .line 27
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 31
    .line 32
    const-string v6, "Failed to get conditional properties; not connected to service"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v6, v1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :goto_0
    check-cast v7, Lc5/i4;

    .line 38
    .line 39
    iget-object v0, v7, Lc5/i4;->m:Lc5/v7;

    .line 40
    .line 41
    :goto_1
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v5}, Lc5/v7;->z(Lcom/google/android/gms/internal/measurement/y0;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    :try_start_2
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v6, v2, v1, v0}, Lc5/v2;->b0(Ljava/lang/String;Ljava/lang/String;Lc5/y7;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lc5/v7;->q(Ljava/util/List;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v4}, Lc5/t6;->s()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_3
    iget-object v6, v4, Lc5/x4;->a:Lc5/z4;

    .line 67
    .line 68
    check-cast v6, Lc5/i4;

    .line 69
    .line 70
    iget-object v6, v6, Lc5/i4;->j:Lc5/e3;

    .line 71
    .line 72
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 73
    .line 74
    .line 75
    iget-object v6, v6, Lc5/e3;->f:Lc5/c3;

    .line 76
    .line 77
    const-string v7, "Failed to get conditional properties; remote exception"

    .line 78
    .line 79
    invoke-virtual {v6, v7, v2, v1, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .line 81
    .line 82
    iget-object v0, v4, Lc5/x4;->a:Lc5/z4;

    .line 83
    .line 84
    check-cast v0, Lc5/i4;

    .line 85
    .line 86
    iget-object v0, v0, Lc5/i4;->m:Lc5/v7;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :goto_2
    iget-object v1, v4, Lc5/x4;->a:Lc5/z4;

    .line 90
    .line 91
    check-cast v1, Lc5/i4;

    .line 92
    .line 93
    iget-object v1, v1, Lc5/i4;->m:Lc5/v7;

    .line 94
    .line 95
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3, v5}, Lc5/v7;->z(Lcom/google/android/gms/internal/measurement/y0;Ljava/util/ArrayList;)V

    .line 99
    .line 100
    .line 101
    throw v0
.end method
