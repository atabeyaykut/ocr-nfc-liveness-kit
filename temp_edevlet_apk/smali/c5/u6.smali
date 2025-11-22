.class public final Lc5/u6;
.super Lc5/j7;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Z

.field public f:J

.field public final g:Lc5/o3;

.field public final h:Lc5/o3;

.field public final j:Lc5/o3;

.field public final k:Lc5/o3;

.field public final l:Lc5/o3;


# direct methods
.method public constructor <init>(Lc5/o7;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lc5/j7;-><init>(Lc5/o7;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lc5/o3;

    .line 5
    .line 6
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 7
    .line 8
    check-cast v0, Lc5/i4;

    .line 9
    .line 10
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 11
    .line 12
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "last_delete_stale"

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-direct {p1, v0, v1, v2, v3}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lc5/u6;->g:Lc5/o3;

    .line 23
    .line 24
    new-instance p1, Lc5/o3;

    .line 25
    .line 26
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 27
    .line 28
    check-cast v0, Lc5/i4;

    .line 29
    .line 30
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 31
    .line 32
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "backoff"

    .line 36
    .line 37
    invoke-direct {p1, v0, v1, v2, v3}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lc5/u6;->h:Lc5/o3;

    .line 41
    .line 42
    new-instance p1, Lc5/o3;

    .line 43
    .line 44
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 45
    .line 46
    check-cast v0, Lc5/i4;

    .line 47
    .line 48
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 49
    .line 50
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "last_upload"

    .line 54
    .line 55
    invoke-direct {p1, v0, v1, v2, v3}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lc5/u6;->j:Lc5/o3;

    .line 59
    .line 60
    new-instance p1, Lc5/o3;

    .line 61
    .line 62
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 63
    .line 64
    check-cast v0, Lc5/i4;

    .line 65
    .line 66
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 67
    .line 68
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "last_upload_attempt"

    .line 72
    .line 73
    invoke-direct {p1, v0, v1, v2, v3}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lc5/u6;->k:Lc5/o3;

    .line 77
    .line 78
    new-instance p1, Lc5/o3;

    .line 79
    .line 80
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 81
    .line 82
    check-cast v0, Lc5/i4;

    .line 83
    .line 84
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 85
    .line 86
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 87
    .line 88
    .line 89
    const-string v1, "midnight_offset"

    .line 90
    .line 91
    invoke-direct {p1, v0, v1, v2, v3}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lc5/u6;->l:Lc5/o3;

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 0

    return-void
.end method

.method public final g(Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc5/x4;->a:Lc5/z4;

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lc5/i4;

    .line 10
    .line 11
    iget-object v3, v2, Lc5/i4;->p:Lc5/w;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    iget-object v5, p0, Lc5/u6;->d:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    iget-wide v6, p0, Lc5/u6;->f:J

    .line 25
    .line 26
    cmp-long v8, v3, v6

    .line 27
    .line 28
    if-ltz v8, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Landroid/util/Pair;

    .line 32
    .line 33
    iget-boolean v0, p0, Lc5/u6;->e:Z

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    :goto_0
    iget-object v5, v2, Lc5/i4;->g:Lc5/e;

    .line 44
    .line 45
    sget-object v6, Lc5/r2;->b:Lc5/q2;

    .line 46
    .line 47
    invoke-virtual {v5, p1, v6}, Lc5/e;->h(Ljava/lang/String;Lc5/q2;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    add-long/2addr v5, v3

    .line 52
    iput-wide v5, p0, Lc5/u6;->f:J

    .line 53
    .line 54
    :try_start_0
    check-cast v1, Lc5/i4;

    .line 55
    .line 56
    iget-object p1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p1}, Lf3/a;->a(Landroid/content/Context;)Lf3/a$a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object v0, p0, Lc5/u6;->d:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p1, Lf3/a$a;->a:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iput-object v1, p0, Lc5/u6;->d:Ljava/lang/String;

    .line 69
    .line 70
    :cond_2
    iget-boolean p1, p1, Lf3/a$a;->b:Z

    .line 71
    .line 72
    iput-boolean p1, p0, Lc5/u6;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    iget-object v1, v2, Lc5/i4;->j:Lc5/e3;

    .line 77
    .line 78
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 79
    .line 80
    .line 81
    const-string v2, "Unable to get advertising id"

    .line 82
    .line 83
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 84
    .line 85
    invoke-virtual {v1, p1, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lc5/u6;->d:Ljava/lang/String;

    .line 89
    .line 90
    :goto_1
    new-instance p1, Landroid/util/Pair;

    .line 91
    .line 92
    iget-object v0, p0, Lc5/u6;->d:Ljava/lang/String;

    .line 93
    .line 94
    iget-boolean v1, p0, Lc5/u6;->e:Z

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object p1
.end method

.method public final h(Ljava/lang/String;Lc5/f;)Landroid/util/Pair;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc5/f;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lc5/f;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lc5/u6;->g(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Landroid/util/Pair;

    const-string p2, ""

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-virtual {p0, p1}, Lc5/u6;->g(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lc5/v7;->o()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v4, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
