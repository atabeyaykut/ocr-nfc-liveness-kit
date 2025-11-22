.class public final Lh6/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lh6/c0;

.field public final c:J

.field public d:Lx0/t;

.field public e:Lx0/t;

.field public f:Lh6/t;

.field public final g:Lh6/g0;

.field public final h:Lm6/f;

.field public final i:Lg6/b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final j:Lf6/a;

.field public final k:Ljava/util/concurrent/ExecutorService;

.field public final l:Lh6/f;

.field public final m:Le6/a;


# direct methods
.method public constructor <init>(Lx5/c;Lh6/g0;Le6/c;Lh6/c0;Landroidx/camera/camera2/interop/c;Landroidx/camera/camera2/interop/d;Lm6/f;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lh6/x;->b:Lh6/c0;

    .line 5
    .line 6
    invoke-virtual {p1}, Lx5/c;->a()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lx5/c;->a:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p1, p0, Lh6/x;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lh6/x;->g:Lh6/g0;

    .line 14
    .line 15
    iput-object p3, p0, Lh6/x;->m:Le6/a;

    .line 16
    .line 17
    iput-object p5, p0, Lh6/x;->i:Lg6/b;

    .line 18
    .line 19
    iput-object p6, p0, Lh6/x;->j:Lf6/a;

    .line 20
    .line 21
    iput-object p8, p0, Lh6/x;->k:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    iput-object p7, p0, Lh6/x;->h:Lm6/f;

    .line 24
    .line 25
    new-instance p1, Lh6/f;

    .line 26
    .line 27
    invoke-direct {p1, p8}, Lh6/f;-><init>(Ljava/util/concurrent/Executor;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lh6/x;->l:Lh6/f;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    iput-wide p1, p0, Lh6/x;->c:J

    .line 37
    .line 38
    return-void
.end method

.method public static a(Lh6/x;Lo6/d;)Lh5/k;
    .locals 4

    .line 1
    iget-object v0, p0, Lh6/x;->l:Lh6/f;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v0, v0, Lh6/f;->d:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lh6/x;->d:Lx0/t;

    .line 18
    .line 19
    invoke-virtual {v0}, Lx0/t;->a()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    const-string v1, "FirebaseCrashlytics"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v0, "Initialization marker file was created."

    .line 33
    .line 34
    invoke-static {v1, v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lh6/x;->i:Lg6/b;

    .line 38
    .line 39
    new-instance v3, Lh6/u;

    .line 40
    .line 41
    invoke-direct {v3, p0}, Lh6/u;-><init>(Lh6/x;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v3}, Lg6/b;->a(Lg6/a;)V

    .line 45
    .line 46
    .line 47
    check-cast p1, Lo6/c;

    .line 48
    .line 49
    iget-object v0, p1, Lo6/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lp6/d;

    .line 56
    .line 57
    invoke-interface {v0}, Lp6/d;->a()Lp6/b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-boolean v0, v0, Lp6/b;->a:Z

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    const/4 p1, 0x3

    .line 66
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 67
    .line 68
    .line 69
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    :try_start_1
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lh5/n;->d(Ljava/lang/Exception;)Lh5/z;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lh6/x;->f:Lh6/t;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lh6/t;->d(Lo6/d;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    const-string v0, "Previous sessions could not be finalized."

    .line 96
    .line 97
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Lh6/x;->f:Lh6/t;

    .line 101
    .line 102
    iget-object p1, p1, Lo6/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lh5/l;

    .line 109
    .line 110
    iget-object p1, p1, Lh5/l;->a:Lh5/z;

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Lh6/t;->e(Lh5/z;)Lh5/k;

    .line 113
    .line 114
    .line 115
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    goto :goto_1

    .line 119
    :catch_0
    move-exception p1

    .line 120
    :try_start_2
    const-string v0, "Crashlytics encountered a problem during asynchronous initialization."

    .line 121
    .line 122
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lh5/n;->d(Ljava/lang/Exception;)Lh5/z;

    .line 126
    .line 127
    .line 128
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :goto_0
    invoke-virtual {p0}, Lh6/x;->b()V

    .line 130
    .line 131
    .line 132
    return-object p1

    .line 133
    :goto_1
    invoke-virtual {p0}, Lh6/x;->b()V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    const-string p1, "Not running on background worker thread as intended."

    .line 140
    .line 141
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    new-instance v0, Lh6/x$a;

    invoke-direct {v0, p0}, Lh6/x$a;-><init>(Lh6/x;)V

    iget-object v1, p0, Lh6/x;->l:Lh6/f;

    invoke-virtual {v1, v0}, Lh6/f;->a(Ljava/util/concurrent/Callable;)Lh5/k;

    return-void
.end method
