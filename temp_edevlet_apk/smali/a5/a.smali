.class public final La5/a;
.super La5/c;
.source "SourceFile"


# instance fields
.field public final a:Lc5/i4;

.field public final b:Lc5/v5;


# direct methods
.method public constructor <init>(Lc5/i4;)V
    .locals 0
    .param p1    # Lc5/i4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, La5/c;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, La5/a;->a:Lc5/i4;

    .line 8
    .line 9
    iget-object p1, p1, Lc5/i4;->r:Lc5/v5;

    .line 10
    .line 11
    invoke-static {p1}, Lc5/i4;->d(Lc5/r3;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, La5/a;->b:Lc5/v5;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 1
    iget-object v0, p0, La5/a;->a:Lc5/i4;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/i4;->m:Lc5/v7;

    .line 4
    .line 5
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc5/v7;->l0()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La5/a;->b:Lc5/v5;

    invoke-virtual {v0}, Lc5/v5;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->b:Lc5/v5;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lc5/f6;->c:Lc5/b6;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lc5/b6;->b:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La5/a;->b:Lc5/v5;

    invoke-virtual {v0}, Lc5/v5;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->b:Lc5/v5;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lc5/f6;->c:Lc5/b6;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lc5/b6;->a:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La5/a;->b:Lc5/v5;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v1, Lc5/i4;

    .line 6
    .line 7
    iget-object v2, v1, Lc5/i4;->k:Lc5/h4;

    .line 8
    .line 9
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lc5/h4;->r()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, v1, Lc5/i4;->j:Lc5/e3;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "Cannot get conditional user properties from analytics worker thread"

    .line 25
    .line 26
    iget-object p2, v3, Lc5/e3;->f:Lc5/c3;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/z;->c()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 44
    .line 45
    .line 46
    const-string p1, "Cannot get conditional user properties from main thread"

    .line 47
    .line 48
    iget-object p2, v3, Lc5/e3;->f:Lc5/c3;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v5, v1, Lc5/i4;->k:Lc5/h4;

    .line 65
    .line 66
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 67
    .line 68
    .line 69
    new-instance v10, Lc5/n5;

    .line 70
    .line 71
    invoke-direct {v10, v0, v2, p1, p2}, Lc5/n5;-><init>(Lc5/v5;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v7, 0x1388

    .line 75
    .line 76
    const-string v9, "get conditional user properties"

    .line 77
    .line 78
    move-object v6, v2

    .line 79
    invoke-virtual/range {v5 .. v10}, Lc5/h4;->h(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Ljava/util/List;

    .line 87
    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, v3, Lc5/e3;->f:Lc5/c3;

    .line 94
    .line 95
    const-string p2, "Timed out waiting for get conditional user properties"

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0, p2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p1}, Lc5/v7;->q(Ljava/util/List;)Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_0
    return-object p1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, La5/a;->b:Lc5/v5;

    .line 2
    .line 3
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v2, v0, Lc5/i4;->k:Lc5/h4;

    .line 8
    .line 9
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lc5/h4;->r()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v6, v0, Lc5/i4;->j:Lc5/e3;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "Cannot get user properties from analytics worker thread"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/z;->c()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 33
    .line 34
    .line 35
    const-string p1, "Cannot get user properties from main thread"

    .line 36
    .line 37
    :goto_0
    iget-object p2, v6, Lc5/e3;->f:Lc5/c3;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v8, v0, Lc5/i4;->k:Lc5/h4;

    .line 49
    .line 50
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 51
    .line 52
    .line 53
    new-instance v9, Lc5/o5;

    .line 54
    .line 55
    move-object v0, v9

    .line 56
    move-object v2, v7

    .line 57
    move-object v3, p1

    .line 58
    move-object v4, p2

    .line 59
    move v5, p3

    .line 60
    invoke-direct/range {v0 .. v5}, Lc5/o5;-><init>(Lc5/v5;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-wide/16 v2, 0x1388

    .line 64
    .line 65
    const-string v4, "get user properties"

    .line 66
    .line 67
    move-object v0, v8

    .line 68
    move-object v1, v7

    .line 69
    move-object v5, v9

    .line 70
    invoke-virtual/range {v0 .. v5}, Lc5/h4;->h(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/util/List;

    .line 78
    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p2, v6, Lc5/e3;->f:Lc5/c3;

    .line 89
    .line 90
    const-string p3, "Timed out waiting for handle get user properties, includeInternal"

    .line 91
    .line 92
    invoke-virtual {p2, p1, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    new-instance p2, Landroidx/collection/ArrayMap;

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    invoke-direct {p2, p3}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-eqz p3, :cond_4

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    check-cast p3, Lc5/r7;

    .line 124
    .line 125
    invoke-virtual {p3}, Lc5/r7;->E()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    iget-object p3, p3, Lc5/r7;->b:Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    move-object p1, p2

    .line 138
    :goto_3
    return-object p1
.end method

.method public final p(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, La5/a;->b:Lc5/v5;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v1, Lc5/i4;

    .line 6
    .line 7
    iget-object v1, v1, Lc5/i4;->p:Lc5/w;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, p1, v1, v2}, Lc5/v5;->r(Landroid/os/Bundle;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v4, 0x1

    .line 2
    const/4 v5, 0x1

    .line 3
    iget-object v0, p0, La5/a;->b:Lc5/v5;

    .line 4
    .line 5
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 6
    .line 7
    check-cast v1, Lc5/i4;

    .line 8
    .line 9
    iget-object v1, v1, Lc5/i4;->p:Lc5/w;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v6

    .line 18
    move-object v1, p1

    .line 19
    move-object v2, p2

    .line 20
    move-object v3, p3

    .line 21
    invoke-virtual/range {v0 .. v7}, Lc5/v5;->h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, La5/a;->a:Lc5/i4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/i4;->g()Lc5/u1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v1, v2, v3, p1}, Lc5/u1;->c(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->a:Lc5/i4;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 4
    .line 5
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lc5/v5;->D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, La5/a;->a:Lc5/i4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/i4;->g()Lc5/u1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v1, v2, v3, p1}, Lc5/u1;->d(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final u(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->b:Lc5/v5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v0, Lc5/x4;->a:Lc5/z4;

    .line 10
    .line 11
    check-cast p1, Lc5/i4;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x19

    .line 17
    .line 18
    return p1
.end method
