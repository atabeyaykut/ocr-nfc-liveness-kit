.class public final synthetic Ll3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lc5/w4;Lc5/y7;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/m;->a:I

    .line 1
    iput-object p1, p0, Ll3/m;->c:Landroid/os/IBinder;

    iput-object p2, p0, Ll3/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ll3/o;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll3/m;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll3/m;->c:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Ll3/m;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_3

    .line 8
    :pswitch_0
    iget-object v0, p0, Ll3/m;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ll3/o;

    .line 11
    .line 12
    iget-object v2, p0, Ll3/m;->c:Landroid/os/IBinder;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    :try_start_0
    const-string v2, "Null service connection"

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1, v2}, Ll3/o;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_1
    new-instance v3, Ll3/p;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Ll3/p;-><init>(Landroid/os/IBinder;)V

    .line 26
    .line 27
    .line 28
    iput-object v3, v0, Ll3/o;->c:Ll3/p;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    :try_start_2
    iput v2, v0, Ll3/o;->a:I

    .line 32
    .line 33
    iget-object v2, v0, Ll3/o;->f:Ll3/u;

    .line 34
    .line 35
    iget-object v2, v2, Ll3/u;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    .line 37
    new-instance v3, Ll3/l;

    .line 38
    .line 39
    invoke-direct {v3, v1, v0}, Ll3/l;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    throw v1

    .line 58
    :goto_3
    iget-object v0, p0, Ll3/m;->c:Landroid/os/IBinder;

    .line 59
    .line 60
    check-cast v0, Lc5/w4;

    .line 61
    .line 62
    iget-object v2, v0, Lc5/w4;->a:Lc5/o7;

    .line 63
    .line 64
    invoke-virtual {v2}, Lc5/o7;->a()V

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, Lc5/w4;->a:Lc5/o7;

    .line 68
    .line 69
    iget-object v2, p0, Ll3/m;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lc5/y7;

    .line 72
    .line 73
    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lc5/h4;->b()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lc5/o7;->b()V

    .line 81
    .line 82
    .line 83
    iget-object v3, v2, Lc5/y7;->a:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v3}, Lr3/r;->f(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v2, Lc5/y7;->y:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v3}, Lc5/f;->b(Ljava/lang/String;)Lc5/f;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object v4, v2, Lc5/y7;->a:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v0}, Lc5/o7;->m()Lc5/e3;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-string v7, "Setting consent, package, consent"

    .line 105
    .line 106
    iget-object v6, v6, Lc5/e3;->p:Lc5/c3;

    .line 107
    .line 108
    invoke-virtual {v6, v4, v7, v3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v4, v3}, Lc5/o7;->r(Ljava/lang/String;Lc5/f;)V

    .line 112
    .line 113
    .line 114
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    iget-object v6, v3, Lc5/f;->a:Ljava/lang/Boolean;

    .line 117
    .line 118
    if-ne v6, v4, :cond_1

    .line 119
    .line 120
    iget-object v6, v5, Lc5/f;->a:Ljava/lang/Boolean;

    .line 121
    .line 122
    if-ne v6, v4, :cond_2

    .line 123
    .line 124
    :cond_1
    iget-object v3, v3, Lc5/f;->b:Ljava/lang/Boolean;

    .line 125
    .line 126
    if-ne v3, v4, :cond_3

    .line 127
    .line 128
    iget-object v3, v5, Lc5/f;->b:Ljava/lang/Boolean;

    .line 129
    .line 130
    if-eq v3, v4, :cond_3

    .line 131
    .line 132
    :cond_2
    const/4 v1, 0x1

    .line 133
    :cond_3
    if-eqz v1, :cond_4

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lc5/o7;->p(Lc5/y7;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
