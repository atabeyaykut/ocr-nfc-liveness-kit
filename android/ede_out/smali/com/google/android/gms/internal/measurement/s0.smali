.class public final Lcom/google/android/gms/internal/measurement/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/t2;

.field public b:Lcom/google/android/gms/internal/measurement/s3;

.field public final c:Lcom/google/android/gms/internal/measurement/c;

.field public final d:Lqd/f;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/t2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s0;->a:Lcom/google/android/gms/internal/measurement/t2;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/t2;->b:Lcom/google/android/gms/internal/measurement/s3;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/s3;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/s0;->b:Lcom/google/android/gms/internal/measurement/s3;

    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/internal/measurement/c;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/c;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/s0;->c:Lcom/google/android/gms/internal/measurement/c;

    .line 25
    .line 26
    new-instance v1, Lqd/f;

    .line 27
    .line 28
    invoke-direct {v1}, Lqd/f;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/s0;->d:Lqd/f;

    .line 32
    .line 33
    new-instance v1, Lcom/google/android/gms/internal/measurement/a;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/measurement/a;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/t2;->d:Lcom/google/android/gms/internal/measurement/w5;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/w5;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Ljava/util/Map;

    .line 44
    .line 45
    const-string v3, "internal.registerCallback"

    .line 46
    .line 47
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/google/android/gms/internal/measurement/a0;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/a0;-><init>(Lcom/google/android/gms/internal/measurement/s0;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/w5;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ljava/util/Map;

    .line 58
    .line 59
    const-string v2, "internal.eventLogger"

    .line 60
    .line 61
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/f4;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/n1;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s0;->a:Lcom/google/android/gms/internal/measurement/t2;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/t2;->b:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/s3;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/s0;->b:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f4;->t()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/s0;->b:Lcom/google/android/gms/internal/measurement/s3;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/google/android/gms/internal/measurement/i4;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/measurement/i4;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/t2;->a(Lcom/google/android/gms/internal/measurement/s3;[Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/measurement/h;

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f4;->r()Lcom/google/android/gms/internal/measurement/c4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c4;->u()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/e4;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e4;->t()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e4;->s()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/i4;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/s0;->b:Lcom/google/android/gms/internal/measurement/s3;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/i4;

    aput-object v4, v6, v3

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/measurement/t2;->a(Lcom/google/android/gms/internal/measurement/s3;[Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/m;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/s0;->b:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/s3;->g(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/s3;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/j;

    if-nez v6, :cond_3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid function name: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v5, Lcom/google/android/gms/internal/measurement/j;

    :goto_2
    if-nez v5, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Rule function is undefined: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_3
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/s0;->b:Lcom/google/android/gms/internal/measurement/s3;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/measurement/j;->a(Lcom/google/android/gms/internal/measurement/s3;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid rule definition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Program loading failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/n1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/n1;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/b;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/n1;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s0;->c:Lcom/google/android/gms/internal/measurement/c;

    .line 2
    .line 3
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/measurement/c;->a:Lcom/google/android/gms/internal/measurement/b;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b;->a()Lcom/google/android/gms/internal/measurement/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 10
    .line 11
    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/c;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/s0;->a:Lcom/google/android/gms/internal/measurement/t2;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/t2;->c:Lcom/google/android/gms/internal/measurement/s3;

    .line 19
    .line 20
    new-instance v1, Lcom/google/android/gms/internal/measurement/i;

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "runtime.counter"

    .line 32
    .line 33
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/s3;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/s0;->d:Lqd/f;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/s0;->b:Lcom/google/android/gms/internal/measurement/s3;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/s3;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1, v0}, Lqd/f;->e(Lcom/google/android/gms/internal/measurement/s3;Lcom/google/android/gms/internal/measurement/c;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/c;->b:Lcom/google/android/gms/internal/measurement/b;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/c;->a:Lcom/google/android/gms/internal/measurement/b;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/b;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v1, 0x1

    .line 56
    xor-int/2addr p1, v1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/c;->c:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    xor-int/2addr p1, v1

    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p1, 0x0

    .line 70
    return p1

    .line 71
    :cond_1
    :goto_0
    return v1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    new-instance v0, Lcom/google/android/gms/internal/measurement/n1;

    .line 74
    .line 75
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/n1;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method
