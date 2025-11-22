.class public final Lc5/u1;
.super Lc5/t2;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/collection/ArrayMap;

.field public final c:Landroidx/collection/ArrayMap;

.field public d:J


# direct methods
.method public constructor <init>(Lc5/i4;)V
    .locals 0

    invoke-direct {p0, p1}, Lc5/t2;-><init>(Lc5/i4;)V

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/u1;->c:Landroidx/collection/ArrayMap;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/u1;->b:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final c(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast v0, Lc5/i4;

    .line 13
    .line 14
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 15
    .line 16
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lc5/a;

    .line 20
    .line 21
    invoke-direct {v1, p0, p3, p1, p2}, Lc5/a;-><init>(Lc5/u1;Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    check-cast v0, Lc5/i4;

    .line 29
    .line 30
    iget-object p1, v0, Lc5/i4;->j:Lc5/e3;

    .line 31
    .line 32
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 33
    .line 34
    .line 35
    const-string p2, "Ad unit id must be a non-empty string"

    .line 36
    .line 37
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast v0, Lc5/i4;

    .line 13
    .line 14
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 15
    .line 16
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lc5/x;

    .line 20
    .line 21
    invoke-direct {v1, p0, p3, p1, p2}, Lc5/x;-><init>(Lc5/u1;Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    check-cast v0, Lc5/i4;

    .line 29
    .line 30
    iget-object p1, v0, Lc5/i4;->j:Lc5/e3;

    .line 31
    .line 32
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 33
    .line 34
    .line 35
    const-string p2, "Ad unit id must be a non-empty string"

    .line 36
    .line 37
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final e(J)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    check-cast v0, Lc5/i4;

    .line 4
    .line 5
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 6
    .line 7
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lc5/f6;->o(Z)Lc5/b6;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lc5/u1;->b:Landroidx/collection/ArrayMap;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    sub-long v4, p1, v4

    .line 48
    .line 49
    invoke-virtual {p0, v3, v4, v5, v0}, Lc5/u1;->h(Ljava/lang/String;JLc5/b6;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    iget-wide v1, p0, Lc5/u1;->d:J

    .line 60
    .line 61
    sub-long v1, p1, v1

    .line 62
    .line 63
    invoke-virtual {p0, v1, v2, v0}, Lc5/u1;->g(JLc5/b6;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p0, p1, p2}, Lc5/u1;->n(J)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final g(JLc5/b6;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object p1, v0, Lc5/i4;->j:Lc5/e3;

    .line 8
    .line 9
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "Not logging ad exposure. No active activity"

    .line 13
    .line 14
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-wide/16 v1, 0x3e8

    .line 21
    .line 22
    cmp-long v3, p1, v1

    .line 23
    .line 24
    if-gez v3, :cond_1

    .line 25
    .line 26
    check-cast v0, Lc5/i4;

    .line 27
    .line 28
    iget-object p3, v0, Lc5/i4;->j:Lc5/e3;

    .line 29
    .line 30
    invoke-static {p3}, Lc5/i4;->e(Lc5/y4;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "Not logging ad exposure. Less than 1000 ms. exposure"

    .line 34
    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p3, Lc5/e3;->p:Lc5/c3;

    .line 40
    .line 41
    invoke-virtual {p2, p1, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "_xt"

    .line 51
    .line 52
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-static {p3, v1, p1}, Lc5/v7;->t(Lc5/b6;Landroid/os/Bundle;Z)V

    .line 57
    .line 58
    .line 59
    check-cast v0, Lc5/i4;

    .line 60
    .line 61
    iget-object p1, v0, Lc5/i4;->r:Lc5/v5;

    .line 62
    .line 63
    invoke-static {p1}, Lc5/i4;->d(Lc5/r3;)V

    .line 64
    .line 65
    .line 66
    const-string p2, "am"

    .line 67
    .line 68
    const-string p3, "_xa"

    .line 69
    .line 70
    invoke-virtual {p1, p2, p3, v1}, Lc5/v5;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final h(Ljava/lang/String;JLc5/b6;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object p1, v0, Lc5/i4;->j:Lc5/e3;

    .line 8
    .line 9
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "Not logging ad unit exposure. No active activity"

    .line 13
    .line 14
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-wide/16 v1, 0x3e8

    .line 21
    .line 22
    cmp-long v3, p2, v1

    .line 23
    .line 24
    if-gez v3, :cond_1

    .line 25
    .line 26
    check-cast v0, Lc5/i4;

    .line 27
    .line 28
    iget-object p1, v0, Lc5/i4;->j:Lc5/e3;

    .line 29
    .line 30
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 31
    .line 32
    .line 33
    const-string p4, "Not logging ad unit exposure. Less than 1000 ms. exposure"

    .line 34
    .line 35
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 40
    .line 41
    invoke-virtual {p1, p2, p4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "_ai"

    .line 51
    .line 52
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "_xt"

    .line 56
    .line 57
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-static {p4, v1, p1}, Lc5/v7;->t(Lc5/b6;Landroid/os/Bundle;Z)V

    .line 62
    .line 63
    .line 64
    check-cast v0, Lc5/i4;

    .line 65
    .line 66
    iget-object p1, v0, Lc5/i4;->r:Lc5/v5;

    .line 67
    .line 68
    invoke-static {p1}, Lc5/i4;->d(Lc5/r3;)V

    .line 69
    .line 70
    .line 71
    const-string p2, "am"

    .line 72
    .line 73
    const-string p3, "_xu"

    .line 74
    .line 75
    invoke-virtual {p1, p2, p3, v1}, Lc5/v5;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final n(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lc5/u1;->b:Landroidx/collection/ArrayMap;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iput-wide p1, p0, Lc5/u1;->d:J

    :cond_1
    return-void
.end method
