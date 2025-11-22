.class public Led/a;
.super Led/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Led/a$b;,
        Led/a$a;
    }
.end annotation


# static fields
.field public static final h:J

.field public static final i:J

.field public static j:Led/a;


# instance fields
.field public e:Z

.field public f:Led/a;

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Led/a;->h:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Led/a;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Led/k0;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 10

    .line 1
    iget-wide v0, p0, Led/k0;->c:J

    .line 2
    .line 3
    iget-boolean v2, p0, Led/k0;->a:Z

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v5, v0, v3

    .line 8
    .line 9
    if-nez v5, :cond_0

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-class v3, Led/a;

    .line 15
    .line 16
    monitor-enter v3

    .line 17
    :try_start_0
    iget-boolean v4, p0, Led/a;->e:Z

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    xor-int/2addr v4, v6

    .line 21
    if-eqz v4, :cond_8

    .line 22
    .line 23
    iput-boolean v6, p0, Led/a;->e:Z

    .line 24
    .line 25
    sget-object v4, Led/a;->j:Led/a;

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    new-instance v4, Led/a;

    .line 30
    .line 31
    invoke-direct {v4}, Led/a;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v4, Led/a;->j:Led/a;

    .line 35
    .line 36
    new-instance v4, Led/a$b;

    .line 37
    .line 38
    invoke-direct {v4}, Led/a$b;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Led/k0;->c()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    sub-long/2addr v4, v6

    .line 57
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    if-eqz v5, :cond_3

    .line 63
    .line 64
    :goto_0
    add-long/2addr v0, v6

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    if-eqz v2, :cond_7

    .line 67
    .line 68
    invoke-virtual {p0}, Led/k0;->c()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    :goto_1
    iput-wide v0, p0, Led/a;->g:J

    .line 73
    .line 74
    sub-long/2addr v0, v6

    .line 75
    sget-object v2, Led/a;->j:Led/a;

    .line 76
    .line 77
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v2, Led/a;->f:Led/a;

    .line 81
    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    iget-wide v8, v4, Led/a;->g:J

    .line 85
    .line 86
    sub-long/2addr v8, v6

    .line 87
    cmp-long v5, v0, v8

    .line 88
    .line 89
    if-gez v5, :cond_4

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    move-object v2, v4

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    :goto_3
    iput-object v4, p0, Led/a;->f:Led/a;

    .line 95
    .line 96
    iput-object p0, v2, Led/a;->f:Led/a;

    .line 97
    .line 98
    sget-object v0, Led/a;->j:Led/a;

    .line 99
    .line 100
    if-ne v2, v0, :cond_6

    .line 101
    .line 102
    const-class v0, Led/a;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 105
    .line 106
    .line 107
    :cond_6
    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    monitor-exit v3

    .line 110
    return-void

    .line 111
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_8
    const-string v0, "Unbalanced enter/exit"

    .line 118
    .line 119
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    monitor-exit v3

    .line 131
    throw v0
.end method

.method public final i()Z
    .locals 4

    .line 1
    const-class v0, Led/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Led/a;->e:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iput-boolean v2, p0, Led/a;->e:Z

    .line 11
    .line 12
    sget-object v1, Led/a;->j:Led/a;

    .line 13
    .line 14
    :goto_0
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v3, v1, Led/a;->f:Led/a;

    .line 17
    .line 18
    if-ne v3, p0, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Led/a;->f:Led/a;

    .line 21
    .line 22
    iput-object v3, v1, Led/a;->f:Led/a;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Led/a;->f:Led/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    move-object v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    monitor-exit v0

    .line 32
    const/4 v2, 0x1

    .line 33
    :goto_2
    return v2

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0

    .line 36
    throw v1
.end method

.method public j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method
