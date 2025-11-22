.class public final Lm4/q;
.super Lr3/h;
.source "SourceFile"


# instance fields
.field public final B:Landroidx/collection/SimpleArrayMap;

.field public final C:Landroidx/collection/SimpleArrayMap;

.field public final D:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Lo3/c;Lo3/j;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lr3/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILr3/e;Lo3/c;Lo3/j;)V

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lm4/q;->B:Landroidx/collection/SimpleArrayMap;

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lm4/q;->C:Landroidx/collection/SimpleArrayMap;

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lm4/q;->D:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm4/q;->B:Landroidx/collection/SimpleArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lm4/q;->B:Landroidx/collection/SimpleArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    iget-object v1, p0, Lm4/q;->C:Landroidx/collection/SimpleArrayMap;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_1
    iget-object v0, p0, Lm4/q;->C:Landroidx/collection/SimpleArrayMap;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 19
    .line 20
    .line 21
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    iget-object v0, p0, Lm4/q;->D:Landroidx/collection/SimpleArrayMap;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_2
    iget-object v1, p0, Lm4/q;->D:Landroidx/collection/SimpleArrayMap;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw v1

    .line 35
    :catchall_1
    move-exception v0

    .line 36
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    throw v0

    .line 38
    :catchall_2
    move-exception v1

    .line 39
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 40
    throw v1
.end method

.method public final E(Lo3/h$a;ZLh5/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm4/q;->C:Landroidx/collection/SimpleArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm4/q;->C:Landroidx/collection/SimpleArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    move-object v5, p1

    .line 11
    check-cast v5, Lm4/o;

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p3, p1}, Lh5/l;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, v5, Lm4/o;->b:Lm4/g;

    .line 23
    .line 24
    iget-object p1, p1, Lm4/g;->a:Lo3/h;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, p1, Lo3/h;->b:Ljava/lang/Object;

    .line 28
    .line 29
    iput-object v1, p1, Lo3/h;->c:Lo3/h$a;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    sget-object p1, Lw4/h;->c:Lm3/d;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lm4/q;->F(Lm3/d;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lr3/c;->w()Landroid/os/IInterface;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lm4/m0;

    .line 46
    .line 47
    new-instance p2, Lm4/r;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v2, 0x2

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    move-object v1, p2

    .line 55
    move-object v4, v5

    .line 56
    move-object v5, v6

    .line 57
    move-object v6, v7

    .line 58
    move-object v7, v8

    .line 59
    invoke-direct/range {v1 .. v7}, Lm4/r;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    new-instance v2, Lm4/h;

    .line 65
    .line 66
    invoke-direct {v2, v1, p3}, Lm4/h;-><init>(Ljava/lang/Boolean;Lh5/l;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, p2, v2}, Lm4/m0;->j(Lm4/r;Lm4/h;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lr3/c;->w()Landroid/os/IInterface;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lm4/m0;

    .line 78
    .line 79
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    .line 81
    new-instance v7, Lm4/j;

    .line 82
    .line 83
    invoke-direct {v7, p2, p3}, Lm4/j;-><init>(Ljava/lang/Boolean;Lh5/l;)V

    .line 84
    .line 85
    .line 86
    new-instance p2, Lm4/v;

    .line 87
    .line 88
    const/4 v2, 0x2

    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    move-object v1, p2

    .line 94
    invoke-direct/range {v1 .. v8}, Lm4/v;-><init>(ILm4/t;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, p2}, Lm4/m0;->E(Lm4/v;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {p3, p1}, Lh5/l;->b(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    monitor-exit v0

    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    throw p1
.end method

.method public final F(Lm3/d;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lr3/c;->m()[Lm3/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    array-length v2, v0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_2

    .line 12
    .line 13
    aget-object v4, v0, v3

    .line 14
    .line 15
    iget-object v5, p1, Lm3/d;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v6, v4, Lm3/d;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v4, 0x0

    .line 30
    :goto_1
    if-nez v4, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    invoke-virtual {v4}, Lm3/d;->E()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {p1}, Lm3/d;->E()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    cmp-long p1, v2, v4

    .line 42
    .line 43
    if-ltz p1, :cond_4

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_4
    return v1
.end method

.method public final l()I
    .locals 1

    const v0, 0xb2c988

    return v0
.end method

.method public final synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lm4/m0;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lm4/m0;

    goto :goto_0

    :cond_1
    new-instance v0, Lm4/l0;

    invoke-direct {v0, p1}, Lm4/l0;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final s()[Lm3/d;
    .locals 1

    sget-object v0, Lw4/h;->d:[Lm3/d;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method
