.class public final Lc5/o7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/z4;


# static fields
.field public static volatile F:Lc5/o7;


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Ljava/util/ArrayList;

.field public C:J

.field public final D:Ljava/util/HashMap;

.field public final E:Lc5/b4;

.field public final a:Lc5/c4;

.field public final b:Lc5/j3;

.field public c:Lc5/i;

.field public d:Lc5/l3;

.field public e:Lc5/h7;

.field public f:Lc5/g8;

.field public final g:Lc5/q7;

.field public h:Lc5/a6;

.field public j:Lc5/u6;

.field public final k:Lc5/k7;

.field public l:Lc5/v3;

.field public final m:Lc5/i4;

.field public n:Z

.field public p:Z

.field public q:J

.field public r:Ljava/util/ArrayList;

.field public s:I

.field public t:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Ljava/nio/channels/FileLock;

.field public z:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Lc5/p7;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc5/o7;->n:Z

    new-instance v0, Lc5/b4;

    invoke-direct {v0, p0}, Lc5/b4;-><init>(Lc5/z4;)V

    iput-object v0, p0, Lc5/o7;->E:Lc5/b4;

    iget-object v0, p1, Lc5/p7;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lc5/i4;->r(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/e1;Ljava/lang/Long;)Lc5/i4;

    move-result-object v0

    iput-object v0, p0, Lc5/o7;->m:Lc5/i4;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc5/o7;->C:J

    new-instance v0, Lc5/k7;

    invoke-direct {v0, p0}, Lc5/k7;-><init>(Lc5/o7;)V

    iput-object v0, p0, Lc5/o7;->k:Lc5/k7;

    new-instance v0, Lc5/q7;

    invoke-direct {v0, p0}, Lc5/q7;-><init>(Lc5/o7;)V

    invoke-virtual {v0}, Lc5/j7;->d()V

    iput-object v0, p0, Lc5/o7;->g:Lc5/q7;

    new-instance v0, Lc5/j3;

    invoke-direct {v0, p0}, Lc5/j3;-><init>(Lc5/o7;)V

    invoke-virtual {v0}, Lc5/j7;->d()V

    iput-object v0, p0, Lc5/o7;->b:Lc5/j3;

    new-instance v0, Lc5/c4;

    invoke-direct {v0, p0}, Lc5/c4;-><init>(Lc5/o7;)V

    invoke-virtual {v0}, Lc5/j7;->d()V

    iput-object v0, p0, Lc5/o7;->a:Lc5/c4;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc5/o7;->D:Ljava/util/HashMap;

    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v0

    new-instance v1, Lc5/k;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lc5/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final I(Lc5/j7;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Lc5/j7;->c:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "Component not initialized: "

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "Upload Component not created"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static O(Landroid/content/Context;)Lc5/o7;
    .locals 2

    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    sget-object v0, Lc5/o7;->F:Lc5/o7;

    if-nez v0, :cond_1

    const-class v0, Lc5/o7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc5/o7;->F:Lc5/o7;

    if-nez v1, :cond_0

    new-instance v1, Lc5/p7;

    invoke-direct {v1, p0}, Lc5/p7;-><init>(Landroid/content/Context;)V

    new-instance p0, Lc5/o7;

    invoke-direct {p0, v1}, Lc5/o7;-><init>(Lc5/p7;)V

    sput-object p0, Lc5/o7;->F:Lc5/o7;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lc5/o7;->F:Lc5/o7;

    return-object p0
.end method

.method public static final v(Lcom/google/android/gms/internal/measurement/g3;ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/g3;->w()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v4, "_err"

    .line 12
    .line 13
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/android/gms/internal/measurement/l3;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->v()Lcom/google/android/gms/internal/measurement/k3;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/k3;->q(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    int-to-long v2, p1

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/k3;->p(J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/measurement/l3;

    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->v()Lcom/google/android/gms/internal/measurement/k3;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v2, "_ev"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/k3;->q(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/k3;->r(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lcom/google/android/gms/internal/measurement/l3;

    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 83
    .line 84
    .line 85
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 88
    .line 89
    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    .line 90
    .line 91
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/h3;->B(Lcom/google/android/gms/internal/measurement/h3;Lcom/google/android/gms/internal/measurement/l3;)V

    .line 92
    .line 93
    .line 94
    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 99
    .line 100
    .line 101
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 102
    .line 103
    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 104
    .line 105
    check-cast p0, Lcom/google/android/gms/internal/measurement/h3;

    .line 106
    .line 107
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/h3;->B(Lcom/google/android/gms/internal/measurement/h3;Lcom/google/android/gms/internal/measurement/l3;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public static final w(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/g3;->w()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/g3;->r(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v0

    invoke-virtual {v0}, Lc5/h4;->b()V

    iget-boolean v0, p0, Lc5/o7;->v:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lc5/o7;->w:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lc5/o7;->x:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc5/o7;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc5/o7;->r:Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v0

    iget-boolean v1, p0, Lc5/o7;->v:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lc5/o7;->w:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lc5/o7;->x:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Lcom/google/android/gms/internal/measurement/p3;JZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move/from16 v2, p4

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v3, v2, :cond_0

    .line 8
    .line 9
    const-string v4, "_lte"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v4, "_se"

    .line 13
    .line 14
    :goto_0
    iget-object v5, v0, Lc5/o7;->c:Lc5/i;

    .line 15
    .line 16
    invoke-static {v5}, Lc5/o7;->I(Lc5/j7;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/p3;->s()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v5, v6, v4}, Lc5/i;->I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    iget-object v5, v5, Lc5/t7;->e:Ljava/lang/Object;

    .line 30
    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance v12, Lc5/t7;

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/p3;->s()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const-string v7, "auto"

    .line 41
    .line 42
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Lc5/w;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    check-cast v5, Ljava/lang/Long;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v13

    .line 61
    add-long v13, v13, p2

    .line 62
    .line 63
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    move-object v5, v12

    .line 68
    move-object v8, v4

    .line 69
    invoke-direct/range {v5 .. v11}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    new-instance v12, Lc5/t7;

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/p3;->s()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const-string v7, "auto"

    .line 80
    .line 81
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Lc5/w;

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    move-object v5, v12

    .line 99
    move-object v8, v4

    .line 100
    invoke-direct/range {v5 .. v11}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/a4;->u()Lcom/google/android/gms/internal/measurement/z3;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/z3;->p(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Lc5/w;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/z3;->q(J)V

    .line 124
    .line 125
    .line 126
    iget-object v6, v12, Lc5/t7;->e:Ljava/lang/Object;

    .line 127
    .line 128
    move-object v7, v6

    .line 129
    check-cast v7, Ljava/lang/Long;

    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v7

    .line 135
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/z3;->n(J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Lcom/google/android/gms/internal/measurement/a4;

    .line 143
    .line 144
    invoke-static {v1, v4}, Lc5/q7;->v(Lcom/google/android/gms/internal/measurement/p3;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/4 v7, 0x0

    .line 149
    if-ltz v4, :cond_4

    .line 150
    .line 151
    iget-boolean v8, v1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 152
    .line 153
    if-eqz v8, :cond_3

    .line 154
    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 156
    .line 157
    .line 158
    iput-boolean v7, v1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 159
    .line 160
    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 161
    .line 162
    check-cast v1, Lcom/google/android/gms/internal/measurement/q3;

    .line 163
    .line 164
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/q3;->w0(Lcom/google/android/gms/internal/measurement/q3;ILcom/google/android/gms/internal/measurement/a4;)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_4
    iget-boolean v4, v1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 169
    .line 170
    if-eqz v4, :cond_5

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 173
    .line 174
    .line 175
    iput-boolean v7, v1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 176
    .line 177
    :cond_5
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 178
    .line 179
    check-cast v1, Lcom/google/android/gms/internal/measurement/q3;

    .line 180
    .line 181
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/measurement/q3;->x0(Lcom/google/android/gms/internal/measurement/q3;Lcom/google/android/gms/internal/measurement/a4;)V

    .line 182
    .line 183
    .line 184
    :goto_3
    const-wide/16 v4, 0x0

    .line 185
    .line 186
    cmp-long v1, p2, v4

    .line 187
    .line 188
    if-lez v1, :cond_7

    .line 189
    .line 190
    iget-object v1, v0, Lc5/o7;->c:Lc5/i;

    .line 191
    .line 192
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v12}, Lc5/i;->u(Lc5/t7;)Z

    .line 196
    .line 197
    .line 198
    if-eq v3, v2, :cond_6

    .line 199
    .line 200
    const-string v1, "lifetime"

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    const-string v1, "session-scoped"

    .line 204
    .line 205
    :goto_4
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    const-string v3, "Updated engagement user property. scope, value"

    .line 210
    .line 211
    iget-object v2, v2, Lc5/e3;->p:Lc5/c3;

    .line 212
    .line 213
    invoke-virtual {v2, v1, v3, v6}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    return-void
.end method

.method public final C(Lcom/google/android/gms/internal/measurement/g3;Lcom/google/android/gms/internal/measurement/g3;)V
    .locals 10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lr3/r;->a(Z)V

    iget-object v0, p0, Lc5/o7;->g:Lc5/q7;

    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/h3;

    const-string v2, "_et"

    invoke-static {v1, v2}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l3;->M()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide v3

    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v1, v2}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-lez v9, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_1
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, v2, v1}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 19
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->b()V

    .line 11
    .line 12
    .line 13
    iget-wide v2, v1, Lc5/o7;->q:J

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v0, v2, v4

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->i()Lw3/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lc5/w;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iget-wide v6, v1, Lc5/o7;->q:J

    .line 35
    .line 36
    sub-long/2addr v2, v6

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    const-wide/32 v6, 0x36ee80

    .line 42
    .line 43
    .line 44
    sub-long/2addr v6, v2

    .line 45
    cmp-long v0, v6, v4

    .line 46
    .line 47
    if-lez v0, :cond_0

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 58
    .line 59
    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 60
    .line 61
    invoke-virtual {v0, v2, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_10

    .line 65
    .line 66
    :cond_0
    iput-wide v4, v1, Lc5/o7;->q:J

    .line 67
    .line 68
    :cond_1
    iget-object v0, v1, Lc5/o7;->m:Lc5/i4;

    .line 69
    .line 70
    invoke-virtual {v0}, Lc5/i4;->b()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1c

    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->G()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    goto/16 :goto_e

    .line 83
    .line 84
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->i()Lw3/a;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lc5/w;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 98
    .line 99
    .line 100
    sget-object v0, Lc5/r2;->A:Lc5/q2;

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    invoke-virtual {v0, v6}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v7

    .line 113
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v7

    .line 117
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 118
    .line 119
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 120
    .line 121
    .line 122
    const-string v9, "select count(1) > 0 from raw_events where realtime = 1"

    .line 123
    .line 124
    invoke-virtual {v0, v9, v6}, Lc5/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v9

    .line 128
    cmp-long v0, v9, v4

    .line 129
    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    const/4 v0, 0x0

    .line 135
    :goto_0
    if-nez v0, :cond_6

    .line 136
    .line 137
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 138
    .line 139
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 140
    .line 141
    .line 142
    const-string v9, "select count(1) > 0 from queue where has_realtime = 1"

    .line 143
    .line 144
    invoke-virtual {v0, v9, v6}, Lc5/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v9

    .line 148
    cmp-long v0, v9, v4

    .line 149
    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    const/4 v0, 0x1

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    const/4 v0, 0x0

    .line 155
    :goto_1
    if-eqz v0, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    const/4 v0, 0x0

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    :goto_2
    const/4 v0, 0x1

    .line 161
    :goto_3
    if-eqz v0, :cond_8

    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    const-string v10, "debug.firebase.analytics.app"

    .line 168
    .line 169
    invoke-virtual {v9, v10}, Lc5/e;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-nez v10, :cond_7

    .line 178
    .line 179
    const-string v10, ".none."

    .line 180
    .line 181
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_7

    .line 186
    .line 187
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 188
    .line 189
    .line 190
    sget-object v9, Lc5/r2;->v:Lc5/q2;

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 194
    .line 195
    .line 196
    sget-object v9, Lc5/r2;->u:Lc5/q2;

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 200
    .line 201
    .line 202
    sget-object v9, Lc5/r2;->t:Lc5/q2;

    .line 203
    .line 204
    :goto_4
    invoke-virtual {v9, v6}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    check-cast v9, Ljava/lang/Long;

    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 211
    .line 212
    .line 213
    move-result-wide v9

    .line 214
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 215
    .line 216
    .line 217
    move-result-wide v9

    .line 218
    iget-object v13, v1, Lc5/o7;->j:Lc5/u6;

    .line 219
    .line 220
    iget-object v13, v13, Lc5/u6;->j:Lc5/o3;

    .line 221
    .line 222
    invoke-virtual {v13}, Lc5/o3;->a()J

    .line 223
    .line 224
    .line 225
    move-result-wide v13

    .line 226
    iget-object v15, v1, Lc5/o7;->j:Lc5/u6;

    .line 227
    .line 228
    iget-object v15, v15, Lc5/u6;->k:Lc5/o3;

    .line 229
    .line 230
    invoke-virtual {v15}, Lc5/o3;->a()J

    .line 231
    .line 232
    .line 233
    move-result-wide v15

    .line 234
    iget-object v11, v1, Lc5/o7;->c:Lc5/i;

    .line 235
    .line 236
    invoke-static {v11}, Lc5/o7;->I(Lc5/j7;)V

    .line 237
    .line 238
    .line 239
    const-string v12, "select max(bundle_end_timestamp) from queue"

    .line 240
    .line 241
    invoke-virtual {v11, v12, v6, v4, v5}, Lc5/i;->z(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 242
    .line 243
    .line 244
    move-result-wide v11

    .line 245
    iget-object v4, v1, Lc5/o7;->c:Lc5/i;

    .line 246
    .line 247
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 248
    .line 249
    .line 250
    const-string v5, "select max(timestamp) from raw_events"

    .line 251
    .line 252
    move-wide/from16 v17, v9

    .line 253
    .line 254
    const-wide/16 v9, 0x0

    .line 255
    .line 256
    invoke-virtual {v4, v5, v6, v9, v10}, Lc5/i;->z(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 257
    .line 258
    .line 259
    move-result-wide v4

    .line 260
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 261
    .line 262
    .line 263
    move-result-wide v4

    .line 264
    iget-object v11, v1, Lc5/o7;->g:Lc5/q7;

    .line 265
    .line 266
    cmp-long v12, v4, v9

    .line 267
    .line 268
    if-nez v12, :cond_9

    .line 269
    .line 270
    goto/16 :goto_7

    .line 271
    .line 272
    :cond_9
    sub-long/2addr v4, v2

    .line 273
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 274
    .line 275
    .line 276
    move-result-wide v4

    .line 277
    sub-long v4, v2, v4

    .line 278
    .line 279
    sub-long/2addr v13, v2

    .line 280
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v9

    .line 284
    sub-long/2addr v15, v2

    .line 285
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    .line 286
    .line 287
    .line 288
    move-result-wide v12

    .line 289
    sub-long v12, v2, v12

    .line 290
    .line 291
    sub-long/2addr v2, v9

    .line 292
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 293
    .line 294
    .line 295
    move-result-wide v2

    .line 296
    add-long/2addr v7, v4

    .line 297
    if-eqz v0, :cond_a

    .line 298
    .line 299
    const-wide/16 v9, 0x0

    .line 300
    .line 301
    cmp-long v0, v2, v9

    .line 302
    .line 303
    if-lez v0, :cond_a

    .line 304
    .line 305
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 306
    .line 307
    .line 308
    move-result-wide v7

    .line 309
    add-long v7, v7, v17

    .line 310
    .line 311
    :cond_a
    invoke-static {v11}, Lc5/o7;->I(Lc5/j7;)V

    .line 312
    .line 313
    .line 314
    move-wide/from16 v9, v17

    .line 315
    .line 316
    invoke-virtual {v11, v2, v3, v9, v10}, Lc5/q7;->J(JJ)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-nez v0, :cond_b

    .line 321
    .line 322
    add-long/2addr v2, v9

    .line 323
    goto :goto_5

    .line 324
    :cond_b
    move-wide v2, v7

    .line 325
    :goto_5
    const-wide/16 v7, 0x0

    .line 326
    .line 327
    cmp-long v0, v12, v7

    .line 328
    .line 329
    if-eqz v0, :cond_d

    .line 330
    .line 331
    cmp-long v0, v12, v4

    .line 332
    .line 333
    if-ltz v0, :cond_d

    .line 334
    .line 335
    const/4 v0, 0x0

    .line 336
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 337
    .line 338
    .line 339
    sget-object v4, Lc5/r2;->C:Lc5/q2;

    .line 340
    .line 341
    invoke-virtual {v4, v6}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    check-cast v4, Ljava/lang/Integer;

    .line 346
    .line 347
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    const/4 v5, 0x0

    .line 352
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    const/16 v5, 0x14

    .line 357
    .line 358
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    if-ge v0, v4, :cond_c

    .line 363
    .line 364
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 365
    .line 366
    .line 367
    sget-object v4, Lc5/r2;->B:Lc5/q2;

    .line 368
    .line 369
    invoke-virtual {v4, v6}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    check-cast v4, Ljava/lang/Long;

    .line 374
    .line 375
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 376
    .line 377
    .line 378
    move-result-wide v4

    .line 379
    const-wide/16 v7, 0x0

    .line 380
    .line 381
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 382
    .line 383
    .line 384
    move-result-wide v4

    .line 385
    const-wide/16 v7, 0x1

    .line 386
    .line 387
    shl-long/2addr v7, v0

    .line 388
    mul-long v4, v4, v7

    .line 389
    .line 390
    add-long/2addr v2, v4

    .line 391
    cmp-long v4, v2, v12

    .line 392
    .line 393
    if-gtz v4, :cond_d

    .line 394
    .line 395
    add-int/lit8 v0, v0, 0x1

    .line 396
    .line 397
    goto :goto_6

    .line 398
    :cond_c
    :goto_7
    const-wide/16 v2, 0x0

    .line 399
    .line 400
    :cond_d
    const-wide/16 v4, 0x0

    .line 401
    .line 402
    cmp-long v0, v2, v4

    .line 403
    .line 404
    if-eqz v0, :cond_1b

    .line 405
    .line 406
    iget-object v0, v1, Lc5/o7;->b:Lc5/j3;

    .line 407
    .line 408
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Lc5/j3;->g()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_19

    .line 416
    .line 417
    iget-object v0, v1, Lc5/o7;->j:Lc5/u6;

    .line 418
    .line 419
    iget-object v0, v0, Lc5/u6;->h:Lc5/o3;

    .line 420
    .line 421
    invoke-virtual {v0}, Lc5/o3;->a()J

    .line 422
    .line 423
    .line 424
    move-result-wide v4

    .line 425
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 426
    .line 427
    .line 428
    sget-object v0, Lc5/r2;->r:Lc5/q2;

    .line 429
    .line 430
    invoke-virtual {v0, v6}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Ljava/lang/Long;

    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 437
    .line 438
    .line 439
    move-result-wide v7

    .line 440
    const-wide/16 v9, 0x0

    .line 441
    .line 442
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 443
    .line 444
    .line 445
    move-result-wide v7

    .line 446
    invoke-static {v11}, Lc5/o7;->I(Lc5/j7;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v11, v4, v5, v7, v8}, Lc5/q7;->J(JJ)Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-nez v0, :cond_e

    .line 454
    .line 455
    add-long/2addr v4, v7

    .line 456
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 457
    .line 458
    .line 459
    move-result-wide v2

    .line 460
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->N()Lc5/l3;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lc5/l3;->a()V

    .line 465
    .line 466
    .line 467
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->i()Lw3/a;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    check-cast v0, Lc5/w;

    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 477
    .line 478
    .line 479
    move-result-wide v4

    .line 480
    sub-long/2addr v2, v4

    .line 481
    const-wide/16 v4, 0x0

    .line 482
    .line 483
    cmp-long v0, v2, v4

    .line 484
    .line 485
    if-gtz v0, :cond_f

    .line 486
    .line 487
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 488
    .line 489
    .line 490
    sget-object v0, Lc5/r2;->w:Lc5/q2;

    .line 491
    .line 492
    invoke-virtual {v0, v6}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    check-cast v0, Ljava/lang/Long;

    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 499
    .line 500
    .line 501
    move-result-wide v2

    .line 502
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 503
    .line 504
    .line 505
    move-result-wide v2

    .line 506
    iget-object v0, v1, Lc5/o7;->j:Lc5/u6;

    .line 507
    .line 508
    iget-object v0, v0, Lc5/u6;->j:Lc5/o3;

    .line 509
    .line 510
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->i()Lw3/a;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    check-cast v4, Lc5/w;

    .line 515
    .line 516
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 520
    .line 521
    .line 522
    move-result-wide v4

    .line 523
    invoke-virtual {v0, v4, v5}, Lc5/o3;->b(J)V

    .line 524
    .line 525
    .line 526
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 535
    .line 536
    const-string v5, "Upload scheduled in approximately ms"

    .line 537
    .line 538
    invoke-virtual {v0, v4, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    iget-object v0, v1, Lc5/o7;->e:Lc5/h7;

    .line 542
    .line 543
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0}, Lc5/j7;->c()V

    .line 547
    .line 548
    .line 549
    iget-object v4, v0, Lc5/x4;->a:Lc5/z4;

    .line 550
    .line 551
    check-cast v4, Lc5/i4;

    .line 552
    .line 553
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    iget-object v5, v4, Lc5/i4;->a:Landroid/content/Context;

    .line 557
    .line 558
    invoke-static {v5}, Lc5/v7;->U(Landroid/content/Context;)Z

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    if-nez v7, :cond_10

    .line 563
    .line 564
    iget-object v7, v4, Lc5/i4;->j:Lc5/e3;

    .line 565
    .line 566
    invoke-static {v7}, Lc5/i4;->e(Lc5/y4;)V

    .line 567
    .line 568
    .line 569
    const-string v8, "Receiver not registered/enabled"

    .line 570
    .line 571
    iget-object v7, v7, Lc5/e3;->n:Lc5/c3;

    .line 572
    .line 573
    invoke-virtual {v7, v8}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    :cond_10
    invoke-static {v5}, Lc5/v7;->V(Landroid/content/Context;)Z

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    if-nez v5, :cond_11

    .line 581
    .line 582
    iget-object v5, v4, Lc5/i4;->j:Lc5/e3;

    .line 583
    .line 584
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 585
    .line 586
    .line 587
    const-string v7, "Service not registered/enabled"

    .line 588
    .line 589
    iget-object v5, v5, Lc5/e3;->n:Lc5/c3;

    .line 590
    .line 591
    invoke-virtual {v5, v7}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :cond_11
    invoke-virtual {v0}, Lc5/h7;->g()V

    .line 595
    .line 596
    .line 597
    iget-object v5, v4, Lc5/i4;->j:Lc5/e3;

    .line 598
    .line 599
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 600
    .line 601
    .line 602
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 603
    .line 604
    .line 605
    move-result-object v7

    .line 606
    iget-object v5, v5, Lc5/e3;->p:Lc5/c3;

    .line 607
    .line 608
    const-string v8, "Scheduling upload, millis"

    .line 609
    .line 610
    invoke-virtual {v5, v7, v8}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    iget-object v5, v4, Lc5/i4;->p:Lc5/w;

    .line 614
    .line 615
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 619
    .line 620
    .line 621
    move-result-wide v7

    .line 622
    add-long v11, v7, v2

    .line 623
    .line 624
    sget-object v5, Lc5/r2;->x:Lc5/q2;

    .line 625
    .line 626
    invoke-virtual {v5, v6}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    check-cast v5, Ljava/lang/Long;

    .line 631
    .line 632
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 633
    .line 634
    .line 635
    move-result-wide v7

    .line 636
    const-wide/16 v9, 0x0

    .line 637
    .line 638
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 639
    .line 640
    .line 641
    move-result-wide v7

    .line 642
    cmp-long v5, v2, v7

    .line 643
    .line 644
    if-gez v5, :cond_13

    .line 645
    .line 646
    invoke-virtual {v0}, Lc5/h7;->o()Lc5/l;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    iget-wide v7, v5, Lc5/l;->c:J

    .line 651
    .line 652
    cmp-long v5, v7, v9

    .line 653
    .line 654
    if-eqz v5, :cond_12

    .line 655
    .line 656
    const/4 v5, 0x1

    .line 657
    goto :goto_8

    .line 658
    :cond_12
    const/4 v5, 0x0

    .line 659
    :goto_8
    if-nez v5, :cond_13

    .line 660
    .line 661
    invoke-virtual {v0}, Lc5/h7;->o()Lc5/l;

    .line 662
    .line 663
    .line 664
    move-result-object v5

    .line 665
    invoke-virtual {v5, v2, v3}, Lc5/l;->c(J)V

    .line 666
    .line 667
    .line 668
    :cond_13
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 669
    .line 670
    const/16 v7, 0x18

    .line 671
    .line 672
    if-lt v5, v7, :cond_17

    .line 673
    .line 674
    iget-object v4, v4, Lc5/i4;->a:Landroid/content/Context;

    .line 675
    .line 676
    new-instance v5, Landroid/content/ComponentName;

    .line 677
    .line 678
    const-string v6, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 679
    .line 680
    invoke-direct {v5, v4, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v0}, Lc5/h7;->h()I

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    new-instance v6, Landroid/os/PersistableBundle;

    .line 688
    .line 689
    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    .line 690
    .line 691
    .line 692
    const-string v7, "action"

    .line 693
    .line 694
    const-string v8, "com.google.android.gms.measurement.UPLOAD"

    .line 695
    .line 696
    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    new-instance v7, Landroid/app/job/JobInfo$Builder;

    .line 700
    .line 701
    invoke-direct {v7, v0, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v7, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    add-long/2addr v2, v2

    .line 709
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    sget-object v0, Lcom/google/android/gms/internal/measurement/p0;->a:Ljava/lang/reflect/Method;

    .line 722
    .line 723
    const-string v0, "jobscheduler"

    .line 724
    .line 725
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    move-object v3, v0

    .line 730
    check-cast v3, Landroid/app/job/JobScheduler;

    .line 731
    .line 732
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    sget-object v5, Lcom/google/android/gms/internal/measurement/p0;->a:Ljava/lang/reflect/Method;

    .line 736
    .line 737
    if-eqz v5, :cond_16

    .line 738
    .line 739
    invoke-static {v4}, Landroidx/appcompat/widget/h;->a(Landroid/content/Context;)I

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-eqz v0, :cond_14

    .line 744
    .line 745
    goto :goto_c

    .line 746
    :cond_14
    sget-object v0, Lcom/google/android/gms/internal/measurement/p0;->b:Ljava/lang/reflect/Method;

    .line 747
    .line 748
    if-eqz v0, :cond_15

    .line 749
    .line 750
    :try_start_0
    const-class v4, Landroid/os/UserHandle;

    .line 751
    .line 752
    const/4 v6, 0x0

    .line 753
    new-array v7, v6, [Ljava/lang/Object;

    .line 754
    .line 755
    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    check-cast v0, Ljava/lang/Integer;

    .line 760
    .line 761
    if-eqz v0, :cond_15

    .line 762
    .line 763
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 764
    .line 765
    .line 766
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    goto :goto_a

    .line 768
    :catch_0
    move-exception v0

    .line 769
    goto :goto_9

    .line 770
    :catch_1
    move-exception v0

    .line 771
    :goto_9
    const-string v4, "JobSchedulerCompat"

    .line 772
    .line 773
    const/4 v6, 0x6

    .line 774
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 775
    .line 776
    .line 777
    move-result v6

    .line 778
    if-eqz v6, :cond_15

    .line 779
    .line 780
    const-string v6, "myUserId invocation illegal"

    .line 781
    .line 782
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    .line 784
    .line 785
    :cond_15
    const/4 v0, 0x0

    .line 786
    :goto_a
    const-string v4, "com.google.android.gms"

    .line 787
    .line 788
    const-string v6, "UploadAlarm"

    .line 789
    .line 790
    const/4 v7, 0x4

    .line 791
    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    .line 792
    .line 793
    const/4 v8, 0x0

    .line 794
    aput-object v2, v7, v8

    .line 795
    .line 796
    const/4 v8, 0x1

    .line 797
    aput-object v4, v7, v8

    .line 798
    .line 799
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    const/4 v4, 0x2

    .line 804
    aput-object v0, v7, v4

    .line 805
    .line 806
    const/4 v0, 0x3

    .line 807
    aput-object v6, v7, v0

    .line 808
    .line 809
    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    check-cast v0, Ljava/lang/Integer;

    .line 814
    .line 815
    if-eqz v0, :cond_18

    .line 816
    .line 817
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 818
    .line 819
    .line 820
    goto :goto_d

    .line 821
    :catch_2
    move-exception v0

    .line 822
    goto :goto_b

    .line 823
    :catch_3
    move-exception v0

    .line 824
    :goto_b
    const-string v4, "error calling scheduleAsPackage"

    .line 825
    .line 826
    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    .line 828
    .line 829
    :cond_16
    :goto_c
    invoke-virtual {v3, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 830
    .line 831
    .line 832
    goto :goto_d

    .line 833
    :cond_17
    iget-object v9, v0, Lc5/h7;->d:Landroid/app/AlarmManager;

    .line 834
    .line 835
    if-eqz v9, :cond_18

    .line 836
    .line 837
    const/4 v10, 0x2

    .line 838
    sget-object v4, Lc5/r2;->s:Lc5/q2;

    .line 839
    .line 840
    invoke-virtual {v4, v6}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    check-cast v4, Ljava/lang/Long;

    .line 845
    .line 846
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 847
    .line 848
    .line 849
    move-result-wide v4

    .line 850
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 851
    .line 852
    .line 853
    move-result-wide v13

    .line 854
    invoke-virtual {v0}, Lc5/h7;->n()Landroid/app/PendingIntent;

    .line 855
    .line 856
    .line 857
    move-result-object v15

    .line 858
    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 859
    .line 860
    .line 861
    :cond_18
    :goto_d
    return-void

    .line 862
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    const-string v2, "No network"

    .line 867
    .line 868
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 869
    .line 870
    invoke-virtual {v0, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->N()Lc5/l3;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    iget-object v2, v0, Lc5/l3;->a:Lc5/o7;

    .line 878
    .line 879
    invoke-virtual {v2}, Lc5/o7;->b()V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v2}, Lc5/o7;->l()Lc5/h4;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    invoke-virtual {v3}, Lc5/h4;->b()V

    .line 887
    .line 888
    .line 889
    iget-boolean v3, v0, Lc5/l3;->b:Z

    .line 890
    .line 891
    if-eqz v3, :cond_1a

    .line 892
    .line 893
    goto :goto_11

    .line 894
    :cond_1a
    iget-object v3, v2, Lc5/o7;->m:Lc5/i4;

    .line 895
    .line 896
    iget-object v3, v3, Lc5/i4;->a:Landroid/content/Context;

    .line 897
    .line 898
    new-instance v4, Landroid/content/IntentFilter;

    .line 899
    .line 900
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 901
    .line 902
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 906
    .line 907
    .line 908
    iget-object v3, v2, Lc5/o7;->b:Lc5/j3;

    .line 909
    .line 910
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v3}, Lc5/j3;->g()Z

    .line 914
    .line 915
    .line 916
    move-result v3

    .line 917
    iput-boolean v3, v0, Lc5/l3;->c:Z

    .line 918
    .line 919
    invoke-virtual {v2}, Lc5/o7;->m()Lc5/e3;

    .line 920
    .line 921
    .line 922
    move-result-object v2

    .line 923
    iget-boolean v3, v0, Lc5/l3;->c:Z

    .line 924
    .line 925
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 926
    .line 927
    .line 928
    move-result-object v3

    .line 929
    iget-object v2, v2, Lc5/e3;->p:Lc5/c3;

    .line 930
    .line 931
    const-string v4, "Registering connectivity change receiver. Network connected"

    .line 932
    .line 933
    invoke-virtual {v2, v3, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    const/4 v2, 0x1

    .line 937
    iput-boolean v2, v0, Lc5/l3;->b:Z

    .line 938
    .line 939
    goto :goto_11

    .line 940
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    const-string v2, "Next upload time is 0"

    .line 945
    .line 946
    goto :goto_f

    .line 947
    :cond_1c
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    const-string v2, "Nothing to upload or uploading impossible"

    .line 952
    .line 953
    :goto_f
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 954
    .line 955
    invoke-virtual {v0, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->N()Lc5/l3;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    invoke-virtual {v0}, Lc5/l3;->a()V

    .line 963
    .line 964
    .line 965
    :goto_11
    iget-object v0, v1, Lc5/o7;->e:Lc5/h7;

    .line 966
    .line 967
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v0}, Lc5/h7;->g()V

    .line 971
    .line 972
    .line 973
    return-void
.end method

.method public final E(Lc5/y7;)Z
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    invoke-virtual {p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v0

    iget-object v1, p1, Lc5/y7;->a:Ljava/lang/String;

    sget-object v2, Lc5/r2;->c0:Lc5/q2;

    invoke-virtual {v0, v1, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p1, Lc5/y7;->s:Ljava/lang/String;

    iget-object v4, p1, Lc5/y7;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lc5/y7;->x:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public final F(J)Z
    .locals 85
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "_sn"

    const-string v3, "_npa"

    const-string v4, "1"

    const-string v5, "_ai"

    iget-object v6, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v6}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v6}, Lc5/i;->P()V

    :try_start_0
    new-instance v6, Lc5/n7;

    invoke-direct {v6, v1}, Lc5/n7;-><init>(Lc5/o7;)V

    iget-object v7, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    iget-wide v10, v1, Lc5/o7;->C:J

    move-wide/from16 v8, p1

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lc5/i;->v(JJLc5/n7;)V

    iget-object v7, v6, Lc5/n7;->c:Ljava/util/ArrayList;

    const/4 v8, 0x0

    if-eqz v7, :cond_d5

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_b2

    :cond_0
    iget-object v7, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/p3;

    .line 1
    iget-boolean v9, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2c

    if-eqz v9, :cond_1

    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    iput-boolean v8, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    move-object v2, v0

    goto/16 :goto_2e

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/q3;->u0(Lcom/google/android/gms/internal/measurement/q3;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2d

    .line 2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v9

    iget-object v10, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lc5/r2;->U:Lc5/q2;

    invoke-virtual {v9, v10, v11}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v9

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_2
    iget-object v8, v6, Lc5/n7;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2c

    const-wide/16 v21, 0x3e8

    move/from16 v24, v13

    const-string v13, "_fr"

    iget-object v12, v1, Lc5/o7;->m:Lc5/i4;

    move-object/from16 v28, v3

    const-string v3, "_et"

    move/from16 v29, v14

    const-string v14, "_e"

    move-wide/from16 v30, v15

    iget-object v15, v1, Lc5/o7;->a:Lc5/c4;

    move/from16 v16, v9

    iget-object v9, v1, Lc5/o7;->g:Lc5/q7;

    move-object/from16 v32, v2

    move/from16 v2, v24

    if-ge v2, v8, :cond_33

    :try_start_4
    iget-object v8, v6, Lc5/n7;->c:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    :try_start_5
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    :try_start_6
    check-cast v8, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/g3;

    invoke-static {v15}, Lc5/o7;->I(Lc5/j7;)V

    move/from16 v24, v2

    iget-object v2, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v2

    move/from16 v33, v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v2, v10}, Lc5/c4;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    const-string v10, "_err"

    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->o()Lc5/c3;

    move-result-object v2

    const-string v3, "Dropping blocked raw event. appId"

    iget-object v9, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v9

    invoke-virtual {v12}, Lc5/i4;->q()Lc5/z2;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v3, v12}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v15}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v2, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    :try_start_8
    const-string v3, "measurement.upload.blacklist_internal"

    .line 3
    invoke-virtual {v15, v2, v3}, Lc5/c4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v2, :cond_3

    .line 4
    :try_start_9
    invoke-static {v15}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v2, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    :try_start_a
    const-string v3, "measurement.upload.blacklist_public"

    .line 5
    invoke-virtual {v15, v2, v3}, Lc5/c4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    :try_start_b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    iget-object v2, v1, Lc5/o7;->E:Lc5/b4;

    iget-object v3, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0xb

    const-string v37, "_ev"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v34, v2

    invoke-static/range {v34 .. v39}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_1e

    :cond_3
    :goto_3
    move-object/from16 v34, v4

    move-object/from16 v23, v5

    move-object v4, v7

    move v12, v11

    move/from16 v5, v24

    move/from16 v14, v29

    move-object/from16 v11, v32

    move/from16 v10, v33

    goto/16 :goto_1c

    :catchall_2
    move-exception v0

    goto/16 :goto_1e

    :cond_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move-object/from16 v34, v4

    .line 7
    :try_start_c
    sget-object v4, La6/a;->e:[Ljava/lang/String;

    move-object/from16 v35, v3

    sget-object v3, La6/a;->c:[Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lb8/f;->H0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 8
    :try_start_d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/g3;->s(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->n()Lc5/c3;

    move-result-object v2

    const-string v3, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v3}, Lc5/c3;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->t()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    .line 9
    :goto_4
    :try_start_e
    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->s()I

    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-ge v2, v3, :cond_6

    :try_start_f
    const-string v3, "ad_platform"

    .line 10
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/g3;->u(I)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/g3;->u(I)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "admob"

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/g3;->u(I)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->p()Lc5/c3;

    move-result-object v3

    const-string v4, "AdMob ad impression logged from app. Potentially duplicative."

    invoke-virtual {v3, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_1e

    :cond_6
    invoke-static {v15}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v2, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Lc5/c4;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    const-string v3, "_c"

    if-nez v2, :cond_b

    :try_start_10
    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    move-object/from16 v23, v5

    const v5, 0x171c4

    if-eq v15, v5, :cond_9

    const v5, 0x17331

    if-eq v15, v5, :cond_8

    const v5, 0x17333

    if-eq v15, v5, :cond_7

    goto :goto_5

    :cond_7
    const-string v5, "_ui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const-string v5, "_ug"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    goto :goto_6

    :cond_9
    const-string v5, "_in"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v4, -0x1

    :goto_6
    if-eqz v4, :cond_c

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c

    move-object/from16 v36, v7

    move/from16 v25, v11

    move-object v7, v13

    move-object/from16 v37, v14

    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_b
    move-object/from16 v23, v5

    :cond_c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_7
    move-object/from16 v36, v7

    .line 11
    :try_start_11
    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v7, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h3;->s()I

    move-result v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    move/from16 v25, v11

    const-string v11, "_r"

    if-ge v4, v7, :cond_f

    .line 12
    :try_start_12
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/g3;->u(I)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/g3;->u(I)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/k3;

    move-object v7, v13

    move-object/from16 v37, v14

    const-wide/16 v13, 0x1

    invoke-virtual {v5, v13, v14}, Lcom/google/android/gms/internal/measurement/k3;->p(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/g3;->t(ILcom/google/android/gms/internal/measurement/l3;)V

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    move-object v7, v13

    move-object/from16 v37, v14

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/g3;->u(I)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/g3;->u(I)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/k3;

    const-wide/16 v13, 0x1

    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/internal/measurement/k3;->p(J)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v8, v4, v11}, Lcom/google/android/gms/internal/measurement/g3;->t(ILcom/google/android/gms/internal/measurement/l3;)V

    const/4 v15, 0x1

    :cond_e
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object v13, v7

    move/from16 v11, v25

    move-object/from16 v7, v36

    move-object/from16 v14, v37

    goto :goto_7

    :cond_f
    move-object v7, v13

    move-object/from16 v37, v14

    if-nez v5, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v4

    invoke-virtual {v4}, Lc5/e3;->n()Lc5/c3;

    move-result-object v4

    const-string v5, "Marking event as conversion"

    invoke-virtual {v12}, Lc5/i4;->q()Lc5/z2;

    move-result-object v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->v()Lcom/google/android/gms/internal/measurement/k3;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/k3;->q(Ljava/lang/String;)V

    const-wide/16 v13, 0x1

    invoke-virtual {v4, v13, v14}, Lcom/google/android/gms/internal/measurement/k3;->p(J)V

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/g3;->q(Lcom/google/android/gms/internal/measurement/k3;)V

    :cond_10
    if-nez v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v4

    invoke-virtual {v4}, Lc5/e3;->n()Lc5/c3;

    move-result-object v4

    const-string v5, "Marking event as real-time"

    invoke-virtual {v12}, Lc5/i4;->q()Lc5/z2;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->v()Lcom/google/android/gms/internal/measurement/k3;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/measurement/k3;->q(Ljava/lang/String;)V

    const-wide/16 v12, 0x1

    invoke-virtual {v4, v12, v13}, Lcom/google/android/gms/internal/measurement/k3;->p(J)V

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/g3;->q(Lcom/google/android/gms/internal/measurement/k3;)V

    :cond_11
    iget-object v4, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->x()J

    move-result-wide v39

    iget-object v5, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v43, 0x1

    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v43}, Lc5/i;->F(JLjava/lang/String;ZZ)Lc5/g;

    move-result-object v4

    iget-wide v4, v4, Lc5/g;->e:J

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v12

    iget-object v13, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lc5/r2;->o:Lc5/q2;

    invoke-virtual {v12, v13, v14}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v12

    int-to-long v12, v12

    cmp-long v14, v4, v12

    if-lez v14, :cond_12

    invoke-static {v8, v11}, Lc5/o7;->w(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    const/16 v19, 0x1

    :goto_9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc5/v7;->T(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v2, :cond_19

    iget-object v4, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->x()J

    move-result-wide v39

    iget-object v5, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v38, v4

    invoke-virtual/range {v38 .. v43}, Lc5/i;->F(JLjava/lang/String;ZZ)Lc5/g;

    move-result-object v4

    iget-wide v4, v4, Lc5/g;->c:J

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v11

    iget-object v12, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lc5/r2;->n:Lc5/q2;

    invoke-virtual {v11, v12, v13}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v11

    int-to-long v11, v11

    cmp-long v13, v4, v11

    if-lez v13, :cond_19

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v4

    invoke-virtual {v4}, Lc5/e3;->o()Lc5/c3;

    move-result-object v4

    const-string v5, "Too many conversions. Not logging as conversion. appId"

    iget-object v11, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v11

    invoke-virtual {v4, v11, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 13
    :goto_a
    :try_start_13
    iget-object v13, v8, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/h3;->s()I

    move-result v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-ge v5, v13, :cond_15

    .line 14
    :try_start_14
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/g3;->u(I)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/k3;

    move v12, v5

    goto :goto_b

    :cond_13
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    const/4 v11, 0x1

    :cond_14
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_15
    if-eqz v11, :cond_17

    if-eqz v4, :cond_16

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/g3;->r(I)V

    goto :goto_c

    :cond_16
    const/4 v4, 0x0

    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->j()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/k3;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/measurement/k3;->q(Ljava/lang/String;)V

    const-wide/16 v10, 0xa

    invoke-virtual {v4, v10, v11}, Lcom/google/android/gms/internal/measurement/k3;->p(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v8, v12, v4}, Lcom/google/android/gms/internal/measurement/g3;->t(ILcom/google/android/gms/internal/measurement/l3;)V

    goto :goto_c

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v4

    invoke-virtual {v4}, Lc5/e3;->h()Lc5/c3;

    move-result-object v4

    const-string v5, "Did not find conversion parameter. appId"

    iget-object v10, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v10

    invoke-virtual {v4, v10, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :catchall_4
    move-exception v0

    goto/16 :goto_1e

    :cond_19
    :goto_c
    if-eqz v2, :cond_21

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->w()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v10, -0x1

    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    const-string v12, "currency"

    const-string v13, "value"

    if-ge v4, v11, :cond_1c

    :try_start_15
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    move v5, v4

    goto :goto_e

    :cond_1a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    move v10, v4

    :cond_1b
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1c
    const/4 v4, -0x1

    if-ne v5, v4, :cond_1d

    goto/16 :goto_11

    :cond_1d
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l3;->M()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l3;->K()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->p()Lc5/c3;

    move-result-object v2

    const-string v4, "Value must be specified with a numeric type."

    invoke-virtual {v2, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/g3;->r(I)V

    invoke-static {v8, v3}, Lc5/o7;->w(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-static {v8, v2, v13}, Lc5/o7;->v(Lcom/google/android/gms/internal/measurement/g3;ILjava/lang/String;)V

    goto :goto_11

    :cond_1e
    const/4 v4, -0x1

    if-ne v10, v4, :cond_1f

    goto :goto_10

    :cond_1f
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v10, 0x3

    if-ne v4, v10, :cond_20

    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_21

    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(I)Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_f

    :cond_20
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->p()Lc5/c3;

    move-result-object v2

    const-string v4, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    invoke-virtual {v2, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/g3;->r(I)V

    invoke-static {v8, v3}, Lc5/o7;->w(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;)V

    const/16 v2, 0x13

    invoke-static {v8, v2, v12}, Lc5/o7;->v(Lcom/google/android/gms/internal/measurement/g3;ILjava/lang/String;)V

    :cond_21
    :goto_11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v37

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v2, v7}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v2

    if-nez v2, :cond_23

    if-eqz v18, :cond_22

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v10

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v2, v4, v21

    if-gtz v2, :cond_22

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/n6;->j()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/g3;

    invoke-virtual {v1, v8, v2}, Lc5/o7;->H(Lcom/google/android/gms/internal/measurement/g3;Lcom/google/android/gms/internal/measurement/g3;)Z

    move-result v4

    if-eqz v4, :cond_22

    move/from16 v12, v25

    move-object/from16 v4, v36

    invoke-virtual {v4, v12, v2}, Lcom/google/android/gms/internal/measurement/p3;->p(ILcom/google/android/gms/internal/measurement/g3;)V

    move/from16 v10, v33

    const/4 v2, 0x0

    const/16 v18, 0x0

    goto :goto_12

    :cond_22
    move/from16 v12, v25

    move-object/from16 v4, v36

    move-object v2, v8

    move/from16 v10, v29

    :goto_12
    move-object/from16 v17, v2

    move-object/from16 v11, v32

    move-object/from16 v5, v35

    goto/16 :goto_18

    :cond_23
    move/from16 v12, v25

    move-object/from16 v4, v36

    move/from16 v7, v33

    move-object/from16 v5, v35

    goto :goto_14

    :cond_24
    move/from16 v12, v25

    move-object/from16 v4, v36

    const-string v2, "_vs"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h3;

    move-object/from16 v5, v35

    invoke-static {v2, v5}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v2

    if-nez v2, :cond_28

    if-eqz v17, :cond_26

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v13

    sub-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v2, v10, v21

    if-gtz v2, :cond_26

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/n6;->j()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/g3;

    invoke-virtual {v1, v2, v8}, Lc5/o7;->H(Lcom/google/android/gms/internal/measurement/g3;Lcom/google/android/gms/internal/measurement/g3;)Z

    move-result v7

    if-eqz v7, :cond_25

    move/from16 v7, v33

    invoke-virtual {v4, v7, v2}, Lcom/google/android/gms/internal/measurement/p3;->p(ILcom/google/android/gms/internal/measurement/g3;)V

    move v11, v12

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto :goto_13

    :cond_25
    move/from16 v7, v33

    move-object v2, v8

    move/from16 v11, v29

    :goto_13
    move-object/from16 v18, v2

    move v10, v7

    move v12, v11

    move-object/from16 v11, v32

    goto/16 :goto_18

    :cond_26
    move/from16 v7, v33

    move-object/from16 v18, v8

    move/from16 v12, v29

    :cond_27
    :goto_14
    move-object/from16 v11, v32

    goto/16 :goto_17

    :cond_28
    move/from16 v7, v33

    goto :goto_14

    :cond_29
    move/from16 v7, v33

    move-object/from16 v5, v35

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v2

    iget-object v10, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lc5/r2;->f0:Lc5/q2;

    invoke-virtual {v2, v10, v11}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "_ab"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v2, v5}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v2

    if-nez v2, :cond_27

    if-eqz v17, :cond_27

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v13

    sub-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v13, 0xfa0

    cmp-long v2, v10, v13

    if-gtz v2, :cond_27

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/n6;->j()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/g3;

    invoke-virtual {v1, v2, v8}, Lc5/o7;->C(Lcom/google/android/gms/internal/measurement/g3;Lcom/google/android/gms/internal/measurement/g3;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lr3/r;->a(Z)V

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/h3;

    move-object/from16 v11, v32

    invoke-static {v10, v11}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v10

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/h3;

    const-string v14, "_sc"

    invoke-static {v13, v14}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v13

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/h3;

    const-string v15, "_si"

    invoke-static {v14, v15}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v14

    if-eqz v10, :cond_2a

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object v10

    goto :goto_15

    :cond_2a
    const-string v10, ""

    :goto_15
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2b

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-static {v8, v11, v10}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    if-eqz v13, :cond_2c

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object v10

    goto :goto_16

    :cond_2c
    const-string v10, ""

    :goto_16
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2d

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    const-string v13, "_sc"

    invoke-static {v8, v13, v10}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    if-eqz v14, :cond_2e

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    const-string v10, "_si"

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v8, v10, v13}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    invoke-virtual {v4, v7, v2}, Lcom/google/android/gms/internal/measurement/p3;->p(ILcom/google/android/gms/internal/measurement/g3;)V

    move v10, v7

    const/16 v17, 0x0

    goto :goto_18

    :goto_17
    move v10, v7

    :goto_18
    if-nez v16, :cond_31

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    if-eqz v2, :cond_31

    .line 15
    :try_start_16
    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v2, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/h3;->s()I

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-nez v2, :cond_2f

    .line 16
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->o()Lc5/c3;

    move-result-object v2

    const-string v3, "Engagement event does not contain any parameters. appId"

    iget-object v5, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v5

    :goto_19
    invoke-static {v5}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    goto :goto_1a

    :cond_2f
    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v2, v5}, Lc5/q7;->n(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_30

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->o()Lc5/c3;

    move-result-object v2

    const-string v3, "Engagement event does not include duration. appId"

    iget-object v5, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    :goto_1a
    invoke-virtual {v2, v5, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1b

    :cond_30
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v2, v30, v2

    move-wide/from16 v30, v2

    goto :goto_1b

    :catchall_5
    move-exception v0

    goto :goto_1e

    :cond_31
    :goto_1b
    iget-object v2, v6, Lc5/n7;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/h3;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move/from16 v5, v24

    :try_start_18
    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    add-int/lit8 v14, v29, 0x1

    .line 17
    :try_start_19
    iget-boolean v2, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v2, :cond_32

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_32
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v2, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/q3;->N(Lcom/google/android/gms/internal/measurement/q3;Lcom/google/android/gms/internal/measurement/h3;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :goto_1c
    add-int/lit8 v13, v5, 0x1

    move-object v7, v4

    move-object v2, v11

    move v11, v12

    move/from16 v9, v16

    move-object/from16 v5, v23

    move-object/from16 v3, v28

    move-wide/from16 v15, v30

    move-object/from16 v4, v34

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    goto :goto_1e

    :catchall_7
    move-exception v0

    goto :goto_1e

    :catchall_8
    move-exception v0

    goto :goto_1e

    :catchall_9
    move-exception v0

    move-object v14, v1

    :goto_1d
    move-object v1, v0

    goto/16 :goto_93

    :catchall_a
    move-exception v0

    :goto_1e
    move-object v2, v0

    move-object v14, v1

    goto/16 :goto_92

    :cond_33
    move-object v5, v3

    move-object v4, v7

    move-object v7, v13

    move-object v3, v14

    if-eqz v16, :cond_37

    move/from16 v14, v29

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v14, :cond_37

    .line 18
    :try_start_1a
    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v8, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/q3;->x1(I)Lcom/google/android/gms/internal/measurement/h3;

    move-result-object v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 19
    :try_start_1b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-static {v8, v7}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v10

    if-eqz v10, :cond_34

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/p3;->I(I)V

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    :cond_34
    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-static {v8, v5}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v8

    if-eqz v8, :cond_36

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l3;->M()Z

    move-result v10

    if-eqz v10, :cond_35

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_20

    :cond_35
    const/4 v8, 0x0

    :goto_20
    if-eqz v8, :cond_36

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v16, 0x0

    cmp-long v13, v10, v16

    if-lez v13, :cond_36

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    add-long v30, v30, v10

    :cond_36
    :goto_21
    const/4 v8, 0x1

    add-int/2addr v2, v8

    goto :goto_1f

    :catchall_b
    move-exception v0

    goto :goto_1e

    :cond_37
    move-wide/from16 v2, v30

    const/4 v5, 0x0

    :try_start_1c
    invoke-virtual {v1, v4, v2, v3, v5}, Lc5/o7;->B(Lcom/google/android/gms/internal/measurement/p3;JZ)V

    .line 20
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->F()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 21
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2c

    const-string v8, "_s"

    const-string v10, "_se"

    if-eqz v7, :cond_39

    :try_start_1d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    iget-object v5, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v5}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v10}, Lc5/i;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    :cond_39
    :try_start_1e
    const-string v5, "_sid"

    invoke-static {v4, v5}, Lc5/q7;->v(Lcom/google/android/gms/internal/measurement/p3;Ljava/lang/String;)I

    move-result v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2c

    if-ltz v5, :cond_3a

    const/4 v5, 0x1

    :try_start_1f
    invoke-virtual {v1, v4, v2, v3, v5}, Lc5/o7;->B(Lcom/google/android/gms/internal/measurement/p3;JZ)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    goto :goto_22

    :cond_3a
    :try_start_20
    invoke-static {v4, v10}, Lc5/q7;->v(Lcom/google/android/gms/internal/measurement/p3;Ljava/lang/String;)I

    move-result v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2c

    if-ltz v2, :cond_3b

    :try_start_21
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/p3;->J(I)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->h()Lc5/c3;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v5, v6, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    :cond_3b
    :goto_22
    :try_start_22
    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2c

    iget-object v2, v9, Lc5/i7;->b:Lc5/o7;

    iget-object v3, v9, Lc5/x4;->a:Lc5/z4;

    :try_start_23
    move-object v5, v3

    check-cast v5, Lc5/i4;

    invoke-virtual {v5}, Lc5/i4;->m()Lc5/e3;

    move-result-object v5

    invoke-virtual {v5}, Lc5/e3;->n()Lc5/c3;

    move-result-object v5

    const-string v7, "Checking account type status for ad personalization signals"

    invoke-virtual {v5, v7}, Lc5/c3;->a(Ljava/lang/String;)V

    iget-object v5, v2, Lc5/o7;->a:Lc5/c4;

    invoke-static {v5}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->s()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {v5}, Lc5/x4;->b()V

    invoke-virtual {v5, v7}, Lc5/c4;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w2;

    move-result-object v5

    if-nez v5, :cond_3c

    const/4 v5, 0x0

    goto :goto_23

    :cond_3c
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/w2;->E()Z

    move-result v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2c

    :goto_23
    if-eqz v5, :cond_47

    .line 23
    :try_start_24
    iget-object v2, v2, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    move-result-object v2

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Lc5/m4;->A()Z

    move-result v2

    if-eqz v2, :cond_47

    move-object v2, v3

    check-cast v2, Lc5/i4;

    invoke-virtual {v2}, Lc5/i4;->n()Lc5/m;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    :try_start_25
    const-string v5, "com.google"

    .line 24
    invoke-virtual {v2}, Lc5/x4;->b()V

    .line 25
    iget-object v7, v2, Lc5/x4;->a:Lc5/z4;

    check-cast v7, Lc5/i4;

    .line 26
    iget-object v13, v7, Lc5/i4;->p:Lc5/w;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    iget-object v14, v7, Lc5/i4;->a:Landroid/content/Context;

    .line 27
    :try_start_26
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v18, v12

    .line 29
    iget-wide v12, v2, Lc5/m;->g:J

    sub-long v12, v10, v12

    const-wide/32 v16, 0x5265c00

    cmp-long v24, v12, v16

    if-lez v24, :cond_3d

    const/4 v12, 0x0

    iput-object v12, v2, Lc5/m;->f:Ljava/lang/Boolean;

    :cond_3d
    iget-object v12, v2, Lc5/m;->f:Ljava/lang/Boolean;

    if-nez v12, :cond_42

    const-string v12, "android.permission.GET_ACCOUNTS"

    invoke-static {v14, v12}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    iget-object v7, v7, Lc5/i4;->j:Lc5/e3;

    if-eqz v12, :cond_3e

    .line 30
    :try_start_27
    invoke-static {v7}, Lc5/i4;->e(Lc5/y4;)V

    const-string v5, "Permission error checking for dasher/unicorn accounts"

    .line 31
    iget-object v7, v7, Lc5/e3;->k:Lc5/c3;

    invoke-virtual {v7, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    goto :goto_27

    :cond_3e
    iget-object v12, v2, Lc5/m;->e:Landroid/accounts/AccountManager;

    if-nez v12, :cond_3f

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v12

    iput-object v12, v2, Lc5/m;->e:Landroid/accounts/AccountManager;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    :cond_3f
    :try_start_28
    iget-object v12, v2, Lc5/m;->e:Landroid/accounts/AccountManager;

    const-string v13, "service_HOSTED"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v5, v13, v14, v14}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v12

    invoke-interface {v12}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/accounts/Account;

    if-eqz v12, :cond_40

    array-length v12, v12

    if-lez v12, :cond_40

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v2, Lc5/m;->f:Ljava/lang/Boolean;

    iput-wide v10, v2, Lc5/m;->g:J

    :goto_24
    const/4 v2, 0x1

    goto :goto_28

    :cond_40
    iget-object v12, v2, Lc5/m;->e:Landroid/accounts/AccountManager;

    const-string v13, "service_uca"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v5, v13, v14, v14}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v5

    invoke-interface {v5}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    if-eqz v5, :cond_41

    array-length v5, v5

    if-lez v5, :cond_41

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v2, Lc5/m;->f:Ljava/lang/Boolean;

    iput-wide v10, v2, Lc5/m;->g:J
    :try_end_28
    .catch Landroid/accounts/AuthenticatorException; {:try_start_28 .. :try_end_28} :catch_2
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    goto :goto_24

    :catch_0
    move-exception v0

    :goto_25
    move-object v5, v0

    goto :goto_26

    :catch_1
    move-exception v0

    goto :goto_25

    :catch_2
    move-exception v0

    goto :goto_25

    .line 32
    :goto_26
    :try_start_29
    invoke-static {v7}, Lc5/i4;->e(Lc5/y4;)V

    const-string v12, "Exception checking account types"

    .line 33
    iget-object v7, v7, Lc5/e3;->g:Lc5/c3;

    invoke-virtual {v7, v5, v12}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_41
    :goto_27
    iput-wide v10, v2, Lc5/m;->g:J

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v5, v2, Lc5/m;->f:Ljava/lang/Boolean;

    const/4 v2, 0x0

    goto :goto_28

    :cond_42
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    :goto_28
    if-eqz v2, :cond_48

    .line 34
    :try_start_2a
    move-object v2, v3

    check-cast v2, Lc5/i4;

    invoke-virtual {v2}, Lc5/i4;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->g()Lc5/c3;

    move-result-object v2

    const-string v5, "Turning off ad personalization due to account type"

    invoke-virtual {v2, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a4;->u()Lcom/google/android/gms/internal/measurement/z3;

    move-result-object v2

    move-object/from16 v5, v28

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/z3;->p(Ljava/lang/String;)V

    check-cast v3, Lc5/i4;

    invoke-virtual {v3}, Lc5/i4;->n()Lc5/m;

    move-result-object v3

    invoke-virtual {v3}, Lc5/m;->g()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/z3;->q(J)V

    const-wide/16 v10, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/z3;->n(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/a4;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    const/4 v3, 0x0

    .line 35
    :goto_29
    :try_start_2b
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v7, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q3;->l1()I

    move-result v7
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    if-ge v3, v7, :cond_45

    .line 36
    :try_start_2c
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v7, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/q3;->A1(I)Lcom/google/android/gms/internal/measurement/a4;

    move-result-object v7
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d

    .line 37
    :try_start_2d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a4;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    if-eqz v7, :cond_44

    .line 38
    :try_start_2e
    iget-boolean v5, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v5, :cond_43

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_43
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v5, v3, v2}, Lcom/google/android/gms/internal/measurement/q3;->w0(Lcom/google/android/gms/internal/measurement/q3;ILcom/google/android/gms/internal/measurement/a4;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_c

    goto :goto_2a

    :catchall_c
    move-exception v0

    goto/16 :goto_1e

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :catchall_d
    move-exception v0

    goto/16 :goto_1e

    .line 39
    :cond_45
    :try_start_2f
    iget-boolean v3, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v3, :cond_46

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_46
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/q3;->x0(Lcom/google/android/gms/internal/measurement/q3;Lcom/google/android/gms/internal/measurement/a4;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    goto :goto_2a

    :catchall_e
    move-exception v0

    goto/16 :goto_1e

    :catchall_f
    move-exception v0

    goto/16 :goto_1e

    :catchall_10
    move-exception v0

    goto/16 :goto_1e

    :cond_47
    move-object/from16 v18, v12

    .line 40
    :cond_48
    :goto_2a
    :try_start_30
    iget-boolean v2, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2c

    if-eqz v2, :cond_49

    :try_start_31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_11

    goto :goto_2c

    :goto_2b
    move-object v2, v0

    goto :goto_2e

    :catchall_11
    move-exception v0

    goto :goto_2b

    :cond_49
    :goto_2c
    :try_start_32
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v2, Lcom/google/android/gms/internal/measurement/q3;

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/q3;->A0(Lcom/google/android/gms/internal/measurement/q3;J)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_2d

    .line 41
    :try_start_33
    iget-boolean v2, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_2c

    if-eqz v2, :cond_4a

    :try_start_34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_12

    goto :goto_2f

    :goto_2d
    move-object v2, v0

    goto :goto_2e

    :catchall_12
    move-exception v0

    goto :goto_2d

    :goto_2e
    move-object v4, v1

    goto/16 :goto_b1

    :cond_4a
    :goto_2f
    :try_start_35
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v2, Lcom/google/android/gms/internal/measurement/q3;

    const-wide/high16 v10, -0x8000000000000000L

    invoke-static {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/q3;->B0(Lcom/google/android/gms/internal/measurement/q3;J)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2d

    const/4 v2, 0x0

    .line 42
    :goto_30
    :try_start_36
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->h1()I

    move-result v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_2c

    if-ge v2, v3, :cond_4f

    .line 43
    :try_start_37
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/q3;->x1(I)Lcom/google/android/gms/internal/measurement/h3;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_17

    .line 44
    :try_start_38
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->u()J

    move-result-wide v10
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_a

    .line 45
    :try_start_39
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->u1()J

    move-result-wide v12
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_16

    cmp-long v5, v10, v12

    if-gez v5, :cond_4c

    .line 46
    :try_start_3a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->u()J

    move-result-wide v10
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_a

    .line 47
    :try_start_3b
    iget-boolean v5, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v5, :cond_4b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_4b
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v5, v10, v11}, Lcom/google/android/gms/internal/measurement/q3;->A0(Lcom/google/android/gms/internal/measurement/q3;J)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_13

    goto :goto_31

    :catchall_13
    move-exception v0

    goto/16 :goto_1e

    .line 48
    :cond_4c
    :goto_31
    :try_start_3c
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->u()J

    move-result-wide v10
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_a

    .line 49
    :try_start_3d
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->q1()J

    move-result-wide v12
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_15

    cmp-long v5, v10, v12

    if-lez v5, :cond_4e

    .line 50
    :try_start_3e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->u()J

    move-result-wide v10
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_a

    .line 51
    :try_start_3f
    iget-boolean v3, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v3, :cond_4d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_4d
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v3, v10, v11}, Lcom/google/android/gms/internal/measurement/q3;->B0(Lcom/google/android/gms/internal/measurement/q3;J)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_14

    goto :goto_32

    :catchall_14
    move-exception v0

    goto/16 :goto_1e

    :cond_4e
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :catchall_15
    move-exception v0

    goto/16 :goto_1e

    :catchall_16
    move-exception v0

    goto/16 :goto_1e

    :catchall_17
    move-exception v0

    goto/16 :goto_1e

    .line 52
    :cond_4f
    :try_start_40
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->H()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->z()V

    iget-object v2, v1, Lc5/o7;->f:Lc5/g8;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->s()Ljava/lang/String;

    move-result-object v3

    .line 53
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->F()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 54
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v7, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q3;->G()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 55
    iget-object v10, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v10, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/q3;->u1()J

    move-result-wide v10

    .line 56
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 57
    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v11, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/q3;->q1()J

    move-result-wide v11

    .line 58
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "current_results"

    .line 59
    invoke-static {v3}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static {v5}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-static {v7}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object v3, v2, Lc5/g8;->d:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lc5/g8;->e:Ljava/util/HashSet;

    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, v2, Lc5/g8;->f:Landroidx/collection/ArrayMap;

    iput-object v10, v2, Lc5/g8;->g:Ljava/lang/Long;

    iput-object v11, v2, Lc5/g8;->h:Ljava/lang/Long;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_50

    const/4 v3, 0x1

    goto :goto_33

    :cond_51
    const/4 v3, 0x0

    :goto_33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()V

    iget-object v8, v2, Lc5/x4;->a:Lc5/z4;

    check-cast v8, Lc5/i4;

    invoke-virtual {v8}, Lc5/i4;->h()Lc5/e;

    move-result-object v10

    iget-object v11, v2, Lc5/g8;->d:Ljava/lang/String;

    sget-object v13, Lc5/r2;->Y:Lc5/q2;

    invoke-virtual {v10, v11, v13}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()V

    invoke-virtual {v8}, Lc5/i4;->h()Lc5/e;

    move-result-object v11

    iget-object v13, v2, Lc5/g8;->d:Ljava/lang/String;

    sget-object v14, Lc5/r2;->X:Lc5/q2;

    invoke-virtual {v11, v13, v14}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v11

    iget-object v13, v2, Lc5/i7;->b:Lc5/o7;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_2c

    if-eqz v3, :cond_52

    :try_start_41
    invoke-virtual {v13}, Lc5/o7;->M()Lc5/i;

    move-result-object v14

    move-object/from16 v24, v15

    iget-object v15, v2, Lc5/g8;->d:Ljava/lang/String;

    invoke-virtual {v14}, Lc5/j7;->c()V

    invoke-virtual {v14}, Lc5/x4;->b()V

    invoke-static {v15}, Lr3/r;->f(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v36, v9

    const-string v9, "current_session_count"

    move-object/from16 v37, v6

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_29

    :try_start_42
    invoke-virtual {v14}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_42} :catch_5
    .catchall {:try_start_42 .. :try_end_42} :catchall_29

    move-object/from16 v38, v4

    const/4 v9, 0x1

    :try_start_43
    new-array v4, v9, [Ljava/lang/String;

    aput-object v15, v4, v28

    const-string v9, "events"
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_43} :catch_4
    .catchall {:try_start_43 .. :try_end_43} :catchall_29

    move-object/from16 v39, v7

    :try_start_44
    const-string v7, "app_id = ?"

    invoke-virtual {v6, v9, v1, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_44} :catch_3
    .catchall {:try_start_44 .. :try_end_44} :catchall_29

    goto :goto_36

    :catch_3
    move-exception v0

    goto :goto_35

    :catch_4
    move-exception v0

    goto :goto_34

    :catch_5
    move-exception v0

    move-object/from16 v38, v4

    :goto_34
    move-object/from16 v39, v7

    :goto_35
    move-object v1, v0

    :try_start_45
    iget-object v4, v14, Lc5/x4;->a:Lc5/z4;

    check-cast v4, Lc5/i4;

    invoke-virtual {v4}, Lc5/i4;->m()Lc5/e3;

    move-result-object v4

    invoke-virtual {v4}, Lc5/e3;->h()Lc5/c3;

    move-result-object v4

    invoke-static {v15}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    const-string v7, "Error resetting session-scoped event counts. appId"

    invoke-virtual {v4, v6, v7, v1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    :cond_52
    move-object/from16 v38, v4

    move-object/from16 v37, v6

    move-object/from16 v39, v7

    move-object/from16 v36, v9

    move-object/from16 v24, v15

    :goto_36
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const-string v4, "Failed to merge filter. appId"

    const-string v6, "Database error querying filters. appId"

    const-string v7, "audience_id"
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_29

    const-string v9, "data"

    if-eqz v11, :cond_59

    if-eqz v10, :cond_59

    :try_start_46
    invoke-virtual {v13}, Lc5/o7;->M()Lc5/i;

    move-result-object v1

    iget-object v14, v1, Lc5/x4;->a:Lc5/z4;

    iget-object v15, v2, Lc5/g8;->d:Ljava/lang/String;

    invoke-static {v15}, Lr3/r;->f(Ljava/lang/String;)V

    move-object/from16 v40, v5

    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v1}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v28
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_29

    :try_start_47
    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v30
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_47} :catch_b
    .catchall {:try_start_47 .. :try_end_47} :catchall_18

    move-object/from16 v41, v9

    const/4 v1, 0x1

    :try_start_48
    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v15, v9, v1

    const-string v29, "event_filters"

    const-string v31, "app_id=?"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v32, v9

    invoke-virtual/range {v28 .. v35}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_48} :catch_a
    .catchall {:try_start_48 .. :try_end_48} :catchall_18

    :try_start_49
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_49} :catch_9
    .catchall {:try_start_49 .. :try_end_49} :catchall_19

    if-eqz v9, :cond_56

    :goto_37
    move/from16 v42, v10

    const/4 v9, 0x1

    :try_start_4a
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_4a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4a .. :try_end_4a} :catch_7
    .catchall {:try_start_4a .. :try_end_4a} :catchall_19

    :try_start_4b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h2;->t()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object v9

    invoke-static {v9, v10}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/g2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/h2;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_4b} :catch_7
    .catchall {:try_start_4b .. :try_end_4b} :catchall_19

    :try_start_4c
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v10

    if-nez v10, :cond_53

    move/from16 v43, v11

    goto :goto_39

    :cond_53
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_4c} :catch_7
    .catchall {:try_start_4c .. :try_end_4c} :catchall_19

    if-nez v28, :cond_54

    move/from16 v43, v11

    :try_start_4d
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_54
    move/from16 v43, v11

    move-object/from16 v11, v28

    :goto_38
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :catch_6
    move-exception v0

    move/from16 v43, v11

    move-object v9, v0

    move-object v10, v14

    check-cast v10, Lc5/i4;

    invoke-virtual {v10}, Lc5/i4;->m()Lc5/e3;

    move-result-object v10

    invoke-virtual {v10}, Lc5/e3;->h()Lc5/c3;

    move-result-object v10

    invoke-static {v15}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v11

    invoke-virtual {v10, v11, v4, v9}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_39
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_4d} :catch_8
    .catchall {:try_start_4d .. :try_end_4d} :catchall_19

    if-nez v9, :cond_55

    :try_start_4e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_21

    goto/16 :goto_41

    :cond_55
    move/from16 v10, v42

    move/from16 v11, v43

    goto :goto_37

    :catch_7
    move-exception v0

    :goto_3a
    move/from16 v43, v11

    :goto_3b
    move-object v5, v0

    goto :goto_3d

    :cond_56
    move/from16 v42, v10

    move/from16 v43, v11

    :try_start_4f
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_4f} :catch_8
    .catchall {:try_start_4f .. :try_end_4f} :catchall_19

    goto :goto_3e

    :catch_8
    move-exception v0

    goto :goto_3b

    :catch_9
    move-exception v0

    move/from16 v42, v10

    goto :goto_3a

    :catch_a
    move-exception v0

    goto :goto_3c

    :catchall_18
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    goto :goto_3f

    :catch_b
    move-exception v0

    move-object/from16 v41, v9

    :goto_3c
    move/from16 v42, v10

    move/from16 v43, v11

    move-object v5, v0

    const/4 v1, 0x0

    :goto_3d
    :try_start_50
    check-cast v14, Lc5/i4;

    invoke-virtual {v14}, Lc5/i4;->m()Lc5/e3;

    move-result-object v9

    invoke-virtual {v9}, Lc5/e3;->h()Lc5/c3;

    move-result-object v9

    invoke-static {v15}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v10

    invoke-virtual {v9, v10, v6, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_19

    if-eqz v1, :cond_57

    :goto_3e
    :try_start_51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_57
    move-object v1, v5

    goto :goto_40

    :catchall_19
    move-exception v0

    move-object v13, v1

    move-object v1, v0

    :goto_3f
    if-eqz v13, :cond_58

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v1

    :cond_59
    move-object/from16 v40, v5

    move-object/from16 v41, v9

    move/from16 v42, v10

    move/from16 v43, v11

    :goto_40
    move-object v5, v1

    :goto_41
    invoke-virtual {v13}, Lc5/o7;->M()Lc5/i;

    move-result-object v1

    iget-object v9, v1, Lc5/x4;->a:Lc5/z4;

    iget-object v10, v2, Lc5/g8;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lc5/j7;->c()V

    invoke-virtual {v1}, Lc5/x4;->b()V

    invoke-static {v10}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v28
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_29

    :try_start_52
    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v30

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v11, v1

    const-string v29, "audience_filter_values"

    const-string v31, "app_id=?"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v32, v11

    invoke-virtual/range {v28 .. v35}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_52} :catch_10
    .catchall {:try_start_52 .. :try_end_52} :catchall_1a

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_5a

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_53} :catch_f
    .catchall {:try_start_53 .. :try_end_53} :catchall_2b

    :try_start_54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_29

    move-object/from16 v45, v6

    move-object/from16 v44, v12

    goto/16 :goto_46

    :cond_5a
    :try_start_55
    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    :goto_42
    const/4 v14, 0x0

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_55} :catch_f
    .catchall {:try_start_55 .. :try_end_55} :catchall_2b

    move-object/from16 v44, v12

    const/4 v14, 0x1

    :try_start_56
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_56} :catch_e
    .catchall {:try_start_56 .. :try_end_56} :catchall_2b

    :try_start_57
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w3;->w()Lcom/google/android/gms/internal/measurement/v3;

    move-result-object v14

    invoke-static {v14, v12}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/w3;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_57} :catch_e
    .catchall {:try_start_57 .. :try_end_57} :catchall_2b

    :try_start_58
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v45, v6

    move-object/from16 v28, v11

    goto :goto_43

    :catch_c
    move-exception v0

    move-object v12, v0

    move-object v14, v9

    check-cast v14, Lc5/i4;

    invoke-virtual {v14}, Lc5/i4;->m()Lc5/e3;

    move-result-object v14

    invoke-virtual {v14}, Lc5/e3;->h()Lc5/c3;

    move-result-object v14

    move-object/from16 v28, v11

    const-string v11, "Failed to merge filter results. appId, audienceId, error"
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_58} :catch_e
    .catchall {:try_start_58 .. :try_end_58} :catchall_2b

    move-object/from16 v45, v6

    :try_start_59
    invoke-static {v10}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v11, v6, v15, v12}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_43
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_59} :catch_d
    .catchall {:try_start_59 .. :try_end_59} :catchall_2b

    if-nez v6, :cond_5b

    :try_start_5a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_21

    move-object/from16 v9, v28

    goto :goto_46

    :cond_5b
    move-object/from16 v11, v28

    move-object/from16 v12, v44

    move-object/from16 v6, v45

    goto :goto_42

    :catch_d
    move-exception v0

    :goto_44
    move-object v6, v0

    goto :goto_45

    :catch_e
    move-exception v0

    move-object/from16 v45, v6

    goto :goto_44

    :catch_f
    move-exception v0

    move-object/from16 v45, v6

    move-object/from16 v44, v12

    goto :goto_44

    :catchall_1a
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_b0

    :catch_10
    move-exception v0

    move-object/from16 v45, v6

    move-object/from16 v44, v12

    move-object v6, v0

    const/4 v1, 0x0

    :goto_45
    :try_start_5b
    check-cast v9, Lc5/i4;

    invoke-virtual {v9}, Lc5/i4;->m()Lc5/e3;

    move-result-object v9

    invoke-virtual {v9}, Lc5/e3;->h()Lc5/c3;

    move-result-object v9

    const-string v11, "Database error querying filter results. appId"

    invoke-static {v10}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v10

    invoke-virtual {v9, v10, v11, v6}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2b

    if-eqz v1, :cond_5c

    :try_start_5c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5c
    :goto_46
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5e

    :cond_5d
    move-object/from16 v48, v4

    move-object/from16 v50, v7

    move-object/from16 v49, v8

    goto/16 :goto_5a

    :cond_5e
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v3, :cond_6e

    iget-object v3, v2, Lc5/g8;->d:Ljava/lang/String;

    invoke-static {v3}, Lr3/r;->f(Ljava/lang/String;)V

    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5f

    goto/16 :goto_4f

    :cond_5f
    invoke-virtual {v13}, Lc5/o7;->M()Lc5/i;

    move-result-object v10

    invoke-virtual {v10}, Lc5/j7;->c()V

    invoke-virtual {v10}, Lc5/x4;->b()V

    invoke-static {v3}, Lr3/r;->f(Ljava/lang/String;)V

    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v10}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_29

    const/4 v14, 0x2

    :try_start_5d
    new-array v15, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v15, v14

    const/4 v14, 0x1

    aput-object v3, v15, v14

    const-string v14, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    invoke-virtual {v12, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_5d} :catch_12
    .catchall {:try_start_5d .. :try_end_5d} :catchall_1b

    :try_start_5e
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_62

    :cond_60
    const/4 v14, 0x0

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-nez v15, :cond_61

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    const/4 v14, 0x1

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_60

    goto :goto_48

    :cond_62
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5e .. :try_end_5e} :catch_11
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1c

    goto :goto_48

    :catch_11
    move-exception v0

    move-object v11, v0

    goto :goto_47

    :catchall_1b
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    goto/16 :goto_4e

    :catch_12
    move-exception v0

    move-object v11, v0

    const/4 v12, 0x0

    :goto_47
    :try_start_5f
    iget-object v10, v10, Lc5/x4;->a:Lc5/z4;

    check-cast v10, Lc5/i4;

    invoke-virtual {v10}, Lc5/i4;->m()Lc5/e3;

    move-result-object v10

    invoke-virtual {v10}, Lc5/e3;->h()Lc5/c3;

    move-result-object v10

    const-string v14, "Database error querying scoped filters. appId"

    invoke-static {v3}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v3

    invoke-virtual {v10, v3, v14, v11}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_1c

    if-eqz v12, :cond_63

    :goto_48
    :try_start_60
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_63
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/w3;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_6c

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_64

    goto/16 :goto_4c

    :cond_64
    invoke-virtual {v13}, Lc5/o7;->P()Lc5/q7;

    move-result-object v12

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/w3;->B()Ljava/util/List;

    move-result-object v28

    move-object/from16 v29, v3

    move-object/from16 v3, v28

    check-cast v3, Lcom/google/android/gms/internal/measurement/v6;

    invoke-virtual {v12, v3, v15}, Lc5/q7;->E(Lcom/google/android/gms/internal/measurement/v6;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/v3;->n()V

    check-cast v3, Ljava/util/List;

    move-object/from16 v28, v11

    .line 60
    iget-boolean v11, v12, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v11, :cond_65

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v11, 0x0

    iput-boolean v11, v12, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_65
    iget-object v11, v12, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v11, Lcom/google/android/gms/internal/measurement/w3;

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/measurement/w3;->G(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/List;)V

    .line 61
    invoke-virtual {v13}, Lc5/o7;->P()Lc5/q7;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/w3;->D()Lcom/google/android/gms/internal/measurement/v6;

    move-result-object v11

    invoke-virtual {v3, v11, v15}, Lc5/q7;->E(Lcom/google/android/gms/internal/measurement/v6;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/v3;->p()V

    check-cast v3, Ljava/util/List;

    .line 62
    iget-boolean v11, v12, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v11, :cond_66

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v11, 0x0

    iput-boolean v11, v12, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_66
    iget-object v11, v12, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v11, Lcom/google/android/gms/internal/measurement/w3;

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/measurement/w3;->E(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/List;)V

    const/4 v3, 0x0

    .line 63
    :goto_4a
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/w3;->r()I

    move-result v11

    if-ge v3, v11, :cond_68

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/w3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/f3;->r()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/v3;->q(I)V

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_68
    const/4 v3, 0x0

    :goto_4b
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/w3;->t()I

    move-result v11

    if-ge v3, v11, :cond_6a

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/w3;->z(I)Lcom/google/android/gms/internal/measurement/y3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y3;->s()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_69

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/v3;->r(I)V

    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_6a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/w3;

    invoke-interface {v6, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :cond_6b
    move-object/from16 v28, v11

    goto :goto_4d

    :cond_6c
    :goto_4c
    move-object/from16 v29, v3

    move-object/from16 v28, v11

    invoke-interface {v6, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4d
    move-object/from16 v11, v28

    move-object/from16 v3, v29

    goto/16 :goto_49

    :catchall_1c
    move-exception v0

    move-object v1, v0

    move-object v13, v12

    :goto_4e
    if-eqz v13, :cond_6d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6d
    throw v1
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_21

    :cond_6e
    move-object v6, v9

    :cond_6f
    :goto_4f
    :try_start_61
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/w3;

    new-instance v11, Ljava/util/BitSet;

    invoke-direct {v11}, Ljava/util/BitSet;-><init>()V

    new-instance v12, Ljava/util/BitSet;

    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    new-instance v14, Landroidx/collection/ArrayMap;

    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v10, :cond_73

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/w3;->r()I

    move-result v15
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_29

    if-nez v15, :cond_70

    goto :goto_53

    :cond_70
    :try_start_62
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/w3;->A()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_71
    :goto_51
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_73

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/measurement/f3;->y()Z

    move-result v29

    if-eqz v29, :cond_71

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/measurement/f3;->r()I

    move-result v29

    move-object/from16 v46, v1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/measurement/f3;->x()Z

    move-result v29

    if-eqz v29, :cond_72

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/measurement/f3;->s()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v47, v6

    move-object/from16 v6, v28

    goto :goto_52

    :cond_72
    move-object/from16 v47, v6

    const/4 v6, 0x0

    :goto_52
    invoke-interface {v14, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_21

    move-object/from16 v1, v46

    move-object/from16 v6, v47

    goto :goto_51

    :cond_73
    :goto_53
    move-object/from16 v46, v1

    move-object/from16 v47, v6

    :try_start_63
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_29

    if-eqz v10, :cond_76

    :try_start_64
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/w3;->t()I

    move-result v6

    if-nez v6, :cond_74

    goto :goto_55

    :cond_74
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/w3;->C()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_76

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/y3;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/y3;->z()Z

    move-result v28

    if-eqz v28, :cond_75

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/y3;->r()I

    move-result v28

    if-lez v28, :cond_75

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/y3;->s()I

    move-result v28

    move-object/from16 v29, v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/y3;->r()I

    move-result v28

    move-object/from16 v48, v4

    const/16 v20, -0x1

    add-int/lit8 v4, v28, -0x1

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/y3;->t(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v29

    move-object/from16 v4, v48

    goto :goto_54

    :cond_75
    const/16 v20, -0x1

    goto :goto_54

    :cond_76
    :goto_55
    move-object/from16 v48, v4

    const/16 v20, -0x1

    if-eqz v10, :cond_79

    const/4 v4, 0x0

    :goto_56
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/w3;->u()I

    move-result v6

    mul-int/lit8 v6, v6, 0x40

    if-ge v4, v6, :cond_79

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/w3;->D()Lcom/google/android/gms/internal/measurement/v6;

    move-result-object v6

    invoke-static {v4, v6}, Lc5/q7;->I(ILcom/google/android/gms/internal/measurement/v6;)Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-virtual {v8}, Lc5/i4;->m()Lc5/e3;

    move-result-object v6

    invoke-virtual {v6}, Lc5/e3;->n()Lc5/c3;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v49, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v50, v7

    const-string v7, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v6, v15, v7, v8}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12, v4}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/w3;->B()Ljava/util/List;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/v6;

    invoke-static {v4, v6}, Lc5/q7;->I(ILcom/google/android/gms/internal/measurement/v6;)Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_57

    :cond_77
    move-object/from16 v50, v7

    move-object/from16 v49, v8

    :cond_78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_57
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v49

    move-object/from16 v7, v50

    goto :goto_56

    :cond_79
    move-object/from16 v50, v7

    move-object/from16 v49, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v31, v6

    check-cast v31, Lcom/google/android/gms/internal/measurement/w3;

    if-eqz v43, :cond_7e

    if-eqz v42, :cond_7e

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_7e

    iget-object v6, v2, Lc5/g8;->h:Ljava/lang/Long;

    if-eqz v6, :cond_7e

    iget-object v6, v2, Lc5/g8;->g:Ljava/lang/Long;

    if-nez v6, :cond_7a

    goto :goto_59

    :cond_7a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7b
    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v7

    iget-object v8, v2, Lc5/g8;->h:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    div-long v28, v28, v21

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->C()Z

    move-result v6

    if-eqz v6, :cond_7c

    iget-object v6, v2, Lc5/g8;->g:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    div-long v28, v28, v21

    :cond_7c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v14, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    :cond_7e
    :goto_59
    new-instance v4, Lc5/b8;

    iget-object v6, v2, Lc5/g8;->d:Ljava/lang/String;

    move-object/from16 v28, v4

    move-object/from16 v29, v2

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v14

    move-object/from16 v35, v1

    invoke-direct/range {v28 .. v35}, Lc5/b8;-><init>(Lc5/g8;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w3;Ljava/util/BitSet;Ljava/util/BitSet;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    iget-object v1, v2, Lc5/g8;->f:Landroidx/collection/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_21

    move-object/from16 v1, v46

    move-object/from16 v6, v47

    move-object/from16 v4, v48

    move-object/from16 v8, v49

    move-object/from16 v7, v50

    goto/16 :goto_50

    :goto_5a
    :try_start_65
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, "Skipping failed audience ID"

    if-eqz v1, :cond_80

    :cond_7f
    move-object v10, v2

    move-object v9, v3

    move-object/from16 v14, v45

    goto/16 :goto_6e

    :cond_80
    new-instance v1, Lc5/c8;

    invoke-direct {v1, v2}, Lc5/c8;-><init>(Lc5/g8;)V

    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_81
    :goto_5b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/h3;

    iget-object v7, v2, Lc5/g8;->d:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lc5/c8;->a(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h3;

    move-result-object v7

    if-eqz v7, :cond_81

    invoke-virtual {v13}, Lc5/o7;->M()Lc5/i;

    move-result-object v8

    iget-object v9, v2, Lc5/g8;->d:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lc5/i;->H(Ljava/lang/String;Ljava/lang/String;)Lc5/o;

    move-result-object v11
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_29

    if-nez v11, :cond_82

    :try_start_66
    iget-object v8, v8, Lc5/x4;->a:Lc5/z4;

    check-cast v8, Lc5/i4;

    invoke-virtual {v8}, Lc5/i4;->m()Lc5/e3;

    move-result-object v11

    invoke-virtual {v11}, Lc5/e3;->o()Lc5/c3;

    move-result-object v11

    invoke-static {v9}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v12

    invoke-virtual {v8}, Lc5/i4;->q()Lc5/z2;

    move-result-object v8

    invoke-virtual {v8, v10}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v11, v12, v10, v8}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Lc5/o;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    move-result-object v53

    const-wide/16 v54, 0x1

    const-wide/16 v56, 0x1

    const-wide/16 v58, 0x1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h3;->u()J

    move-result-wide v60

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v51, v8

    move-object/from16 v52, v9

    invoke-direct/range {v51 .. v67}, Lc5/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v21, v1

    move-object v10, v2

    move-object/from16 v22, v3

    move-object/from16 v20, v5

    goto :goto_5c

    :cond_82
    new-instance v8, Lc5/o;

    iget-object v6, v11, Lc5/o;->a:Ljava/lang/String;

    iget-object v9, v11, Lc5/o;->b:Ljava/lang/String;

    iget-wide v14, v11, Lc5/o;->c:J

    const-wide/16 v20, 0x1

    add-long v71, v14, v20

    iget-wide v14, v11, Lc5/o;->d:J

    add-long v73, v14, v20

    iget-wide v14, v11, Lc5/o;->e:J

    add-long v75, v14, v20

    iget-wide v14, v11, Lc5/o;->f:J

    move-object v12, v1

    move-object v10, v2

    iget-wide v1, v11, Lc5/o;->g:J

    move-object/from16 v20, v5

    iget-object v5, v11, Lc5/o;->h:Ljava/lang/Long;

    move-object/from16 v21, v12

    iget-object v12, v11, Lc5/o;->i:Ljava/lang/Long;

    move-object/from16 v22, v3

    iget-object v3, v11, Lc5/o;->j:Ljava/lang/Long;

    iget-object v11, v11, Lc5/o;->k:Ljava/lang/Boolean;

    move-object/from16 v68, v8

    move-object/from16 v69, v6

    move-object/from16 v70, v9

    move-wide/from16 v77, v14

    move-wide/from16 v79, v1

    move-object/from16 v81, v5

    move-object/from16 v82, v12

    move-object/from16 v83, v3

    move-object/from16 v84, v11

    invoke-direct/range {v68 .. v84}, Lc5/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :goto_5c
    invoke-virtual {v13}, Lc5/o7;->M()Lc5/i;

    move-result-object v1

    invoke-virtual {v1, v8}, Lc5/i;->p(Lc5/o;)V

    iget-wide v1, v8, Lc5/o;->c:J

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_88

    invoke-virtual {v13}, Lc5/o7;->M()Lc5/i;

    move-result-object v5

    iget-object v6, v5, Lc5/x4;->a:Lc5/z4;

    iget-object v9, v10, Lc5/g8;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lc5/j7;->c()V

    invoke-virtual {v5}, Lc5/x4;->b()V

    invoke-static {v9}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static {v3}, Lr3/r;->f(Ljava/lang/String;)V

    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v5}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v28
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_21

    move-object/from16 v14, v41

    move-object/from16 v12, v50

    :try_start_67
    filled-new-array {v12, v14}, [Ljava/lang/String;

    move-result-object v30
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_67} :catch_1b
    .catchall {:try_start_67 .. :try_end_67} :catchall_1d

    const/4 v5, 0x2

    :try_start_68
    new-array v15, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v15, v5

    const/4 v5, 0x1

    aput-object v3, v15, v5

    const-string v29, "event_filters"

    const-string v31, "app_id=? AND event_name=?"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v32, v15

    invoke-virtual/range {v28 .. v35}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_68} :catch_1a
    .catchall {:try_start_68 .. :try_end_68} :catchall_1d

    :try_start_69
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15
    :try_end_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_69} :catch_19
    .catchall {:try_start_69 .. :try_end_69} :catchall_1e

    if-eqz v15, :cond_85

    :goto_5d
    move-object/from16 v50, v12

    const/4 v15, 0x1

    :try_start_6a
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_6a} :catch_17
    .catchall {:try_start_6a .. :try_end_6a} :catchall_1e

    :try_start_6b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h2;->t()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object v15

    invoke-static {v15, v12}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/g2;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/h2;
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6b} :catch_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6b .. :try_end_6b} :catch_14
    .catchall {:try_start_6b .. :try_end_6b} :catchall_1e

    const/4 v15, 0x0

    :try_start_6c
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6c .. :try_end_6c} :catch_14
    .catchall {:try_start_6c .. :try_end_6c} :catchall_1e

    if-nez v28, :cond_83

    move-object/from16 v41, v14

    :try_start_6d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :catch_13
    move-exception v0

    goto :goto_5f

    :cond_83
    move-object/from16 v41, v14

    move-object/from16 v14, v28

    :goto_5e
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6d .. :try_end_6d} :catch_13
    .catchall {:try_start_6d .. :try_end_6d} :catchall_1e

    move-object/from16 v28, v11

    move-object/from16 v11, v48

    goto :goto_60

    :catch_14
    move-exception v0

    move-object/from16 v41, v14

    :goto_5f
    move-object v12, v0

    move-object/from16 v11, v48

    goto/16 :goto_65

    :catch_15
    move-exception v0

    move-object/from16 v41, v14

    move-object v12, v0

    :try_start_6e
    move-object v14, v6

    check-cast v14, Lc5/i4;

    invoke-virtual {v14}, Lc5/i4;->m()Lc5/e3;

    move-result-object v14

    invoke-virtual {v14}, Lc5/e3;->h()Lc5/c3;

    move-result-object v14

    invoke-static {v9}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v15
    :try_end_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6e .. :try_end_6e} :catch_16
    .catchall {:try_start_6e .. :try_end_6e} :catchall_1e

    move-object/from16 v28, v11

    move-object/from16 v11, v48

    :try_start_6f
    invoke-virtual {v14, v15, v11, v12}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_60
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_84

    goto :goto_63

    :cond_84
    move-object/from16 v48, v11

    move-object/from16 v11, v28

    move-object/from16 v14, v41

    move-object/from16 v12, v50

    goto :goto_5d

    :catch_16
    move-exception v0

    goto :goto_61

    :catch_17
    move-exception v0

    move-object/from16 v41, v14

    :goto_61
    move-object/from16 v11, v48

    :goto_62
    move-object v12, v0

    goto :goto_65

    :cond_85
    move-object/from16 v50, v12

    move-object/from16 v41, v14

    move-object/from16 v11, v48

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6
    :try_end_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_6f} :catch_18
    .catchall {:try_start_6f .. :try_end_6f} :catchall_1e

    move-object/from16 v28, v6

    :goto_63
    :try_start_70
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_21

    move-object/from16 v5, v28

    move-object/from16 v14, v45

    goto :goto_66

    :catch_18
    move-exception v0

    goto :goto_62

    :catch_19
    move-exception v0

    move-object/from16 v50, v12

    move-object/from16 v41, v14

    goto :goto_61

    :catch_1a
    move-exception v0

    move-object/from16 v50, v12

    move-object/from16 v41, v14

    move-object/from16 v11, v48

    move-object v5, v0

    move-object v12, v5

    goto :goto_64

    :catchall_1d
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    goto :goto_67

    :catch_1b
    move-exception v0

    move-object/from16 v50, v12

    move-object/from16 v41, v14

    move-object/from16 v11, v48

    move-object v12, v0

    :goto_64
    const/4 v5, 0x0

    :goto_65
    :try_start_71
    check-cast v6, Lc5/i4;

    invoke-virtual {v6}, Lc5/i4;->m()Lc5/e3;

    move-result-object v6

    invoke-virtual {v6}, Lc5/e3;->h()Lc5/c3;

    move-result-object v6

    invoke-static {v9}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v9

    move-object/from16 v14, v45

    invoke-virtual {v6, v9, v14, v12}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_1e

    if-eqz v5, :cond_86

    :try_start_72
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_86
    move-object v5, v6

    :goto_66
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :catchall_1e
    move-exception v0

    move-object v1, v0

    move-object v13, v5

    :goto_67
    if-eqz v13, :cond_87

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_87
    throw v1

    :cond_88
    move-object/from16 v14, v45

    move-object/from16 v11, v48

    :goto_68
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v9, v10, Lc5/g8;->e:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_89

    invoke-virtual/range {v49 .. v49}, Lc5/i4;->m()Lc5/e3;

    move-result-object v6

    invoke-virtual {v6}, Lc5/e3;->n()Lc5/c3;

    move-result-object v6

    move-object/from16 v9, v22

    invoke-virtual {v6, v12, v9}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6a
    move-object/from16 v22, v9

    goto :goto_69

    :cond_89
    move-object/from16 v9, v22

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v15, 0x1

    :goto_6b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/h2;

    move-object/from16 v22, v3

    new-instance v3, Lc5/d8;

    move-object/from16 v40, v4

    iget-object v4, v10, Lc5/g8;->d:Ljava/lang/String;

    invoke-direct {v3, v10, v4, v6, v15}, Lc5/d8;-><init>(Lc5/g8;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/h2;)V

    iget-object v4, v10, Lc5/g8;->g:Ljava/lang/Long;

    move-object/from16 v42, v5

    iget-object v5, v10, Lc5/g8;->h:Ljava/lang/Long;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v15

    move-object/from16 v48, v11

    .line 64
    iget-object v11, v10, Lc5/g8;->f:Landroidx/collection/ArrayMap;

    move-object/from16 v43, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc5/b8;

    if-nez v11, :cond_8a

    const/16 v35, 0x0

    goto :goto_6c

    :cond_8a
    iget-object v11, v11, Lc5/b8;->d:Ljava/util/BitSet;

    invoke-virtual {v11, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    move/from16 v35, v11

    :goto_6c
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-wide/from16 v32, v1

    move-object/from16 v34, v8

    .line 65
    invoke-virtual/range {v28 .. v35}, Lc5/d8;->g(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/h3;JLc5/o;Z)Z

    move-result v15

    if-eqz v15, :cond_8b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Lc5/g8;->g(Ljava/lang/Integer;)Lc5/b8;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc5/b8;->b(Lc5/e8;)V

    move-object/from16 v3, v22

    move-object/from16 v4, v40

    move-object/from16 v5, v42

    move-object/from16 v12, v43

    move-object/from16 v11, v48

    goto :goto_6b

    :cond_8b
    iget-object v3, v10, Lc5/g8;->e:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_8c
    move-object/from16 v22, v3

    move-object/from16 v40, v4

    move-object/from16 v42, v5

    move-object/from16 v48, v11

    :goto_6d
    if-nez v15, :cond_8d

    iget-object v3, v10, Lc5/g8;->e:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_21

    :cond_8d
    move-object/from16 v3, v22

    move-object/from16 v4, v40

    move-object/from16 v5, v42

    move-object/from16 v11, v48

    goto/16 :goto_6a

    :cond_8e
    move-object v2, v10

    move-object/from16 v48, v11

    move-object/from16 v45, v14

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v3, v22

    goto/16 :goto_5b

    :goto_6e
    :try_start_73
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_90

    :cond_8f
    move-object/from16 v11, v50

    goto/16 :goto_84

    :cond_90
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_29

    if-eqz v3, :cond_8f

    :try_start_74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/a4;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/a4;->w()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_96

    invoke-virtual {v13}, Lc5/o7;->M()Lc5/i;

    move-result-object v5

    iget-object v6, v5, Lc5/x4;->a:Lc5/z4;

    iget-object v7, v10, Lc5/g8;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lc5/j7;->c()V

    invoke-virtual {v5}, Lc5/x4;->b()V

    invoke-static {v7}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static {v4}, Lr3/r;->f(Ljava/lang/String;)V

    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v5}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v28
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_21

    move-object/from16 v12, v41

    move-object/from16 v11, v50

    :try_start_75
    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v30

    const/4 v5, 0x2

    new-array v15, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v15, v5

    const/4 v5, 0x1

    aput-object v4, v15, v5

    const-string v29, "property_filters"

    const-string v31, "app_id=? AND property_name=?"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v32, v15

    invoke-virtual/range {v28 .. v35}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_75} :catch_20
    .catchall {:try_start_75 .. :try_end_75} :catchall_1f

    :try_start_76
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_76 .. :try_end_76} :catch_1f
    .catchall {:try_start_76 .. :try_end_76} :catchall_20

    move-object/from16 v20, v2

    if-eqz v15, :cond_93

    :goto_70
    const/4 v15, 0x1

    :try_start_77
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_77 .. :try_end_77} :catch_1d
    .catchall {:try_start_77 .. :try_end_77} :catchall_20

    :try_start_78
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o2;->t()Lcom/google/android/gms/internal/measurement/n2;

    move-result-object v15

    invoke-static {v15, v2}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/o2;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_78} :catch_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_78} :catch_1d
    .catchall {:try_start_78 .. :try_end_78} :catchall_20

    const/4 v15, 0x0

    :try_start_79
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;
    :try_end_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_79 .. :try_end_79} :catch_1d
    .catchall {:try_start_79 .. :try_end_79} :catchall_20

    if-nez v21, :cond_91

    move-object/from16 v41, v12

    :try_start_7a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    :cond_91
    move-object/from16 v41, v12

    move-object/from16 v12, v21

    :goto_71
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v8

    goto :goto_72

    :catch_1c
    move-exception v0

    move-object/from16 v41, v12

    move-object v2, v0

    move-object v12, v6

    check-cast v12, Lc5/i4;

    invoke-virtual {v12}, Lc5/i4;->m()Lc5/e3;

    move-result-object v12

    invoke-virtual {v12}, Lc5/e3;->h()Lc5/c3;

    move-result-object v12

    const-string v15, "Failed to merge filter"

    move-object/from16 v21, v8

    invoke-static {v7}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v8

    invoke-virtual {v12, v8, v15, v2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_72
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7a .. :try_end_7a} :catch_1e
    .catchall {:try_start_7a .. :try_end_7a} :catchall_20

    if-nez v2, :cond_92

    :try_start_7b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_21

    move-object/from16 v5, v21

    goto :goto_77

    :cond_92
    move-object/from16 v8, v21

    move-object/from16 v12, v41

    goto :goto_70

    :catch_1d
    move-exception v0

    goto :goto_74

    :cond_93
    move-object/from16 v41, v12

    :try_start_7c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2
    :try_end_7c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_7c} :catch_1e
    .catchall {:try_start_7c .. :try_end_7c} :catchall_20

    goto :goto_76

    :catch_1e
    move-exception v0

    :goto_73
    move-object v2, v0

    goto :goto_75

    :catch_1f
    move-exception v0

    move-object/from16 v20, v2

    :goto_74
    move-object/from16 v41, v12

    goto :goto_73

    :catchall_1f
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    goto :goto_78

    :catch_20
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v41, v12

    move-object v2, v0

    const/4 v5, 0x0

    :goto_75
    :try_start_7d
    check-cast v6, Lc5/i4;

    invoke-virtual {v6}, Lc5/i4;->m()Lc5/e3;

    move-result-object v6

    invoke-virtual {v6}, Lc5/e3;->h()Lc5/c3;

    move-result-object v6

    invoke-static {v7}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v7

    invoke-virtual {v6, v7, v14, v2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_20

    if-eqz v5, :cond_94

    :goto_76
    :try_start_7e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_94
    move-object v5, v2

    :goto_77
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    :catchall_20
    move-exception v0

    move-object v1, v0

    move-object v13, v5

    :goto_78
    if-eqz v13, :cond_95

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_95
    throw v1

    :cond_96
    move-object/from16 v20, v2

    move-object/from16 v11, v50

    :goto_79
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, v10, Lc5/g8;->e:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    invoke-virtual/range {v49 .. v49}, Lc5/i4;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->n()Lc5/c3;

    move-result-object v2

    invoke-virtual {v2, v7, v9}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_83

    :cond_97
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_7b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/o2;

    invoke-virtual/range {v49 .. v49}, Lc5/i4;->m()Lc5/e3;

    move-result-object v8

    invoke-virtual {v8}, Lc5/e3;->t()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x2

    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_99

    invoke-virtual/range {v49 .. v49}, Lc5/i4;->m()Lc5/e3;

    move-result-object v8

    invoke-virtual {v8}, Lc5/e3;->n()Lc5/c3;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/o2;->A()Z

    move-result v15

    if-eqz v15, :cond_98

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/o2;->r()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v21, v1

    goto :goto_7c

    :cond_98
    move-object/from16 v21, v1

    const/4 v15, 0x0

    :goto_7c
    invoke-virtual/range {v49 .. v49}, Lc5/i4;->q()Lc5/z2;

    move-result-object v1

    move-object/from16 v22, v2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/o2;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Evaluating filter. audience, filter, property"

    invoke-virtual {v8, v2, v12, v15, v1}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v49 .. v49}, Lc5/i4;->m()Lc5/e3;

    move-result-object v1

    invoke-virtual {v1}, Lc5/e3;->n()Lc5/c3;

    move-result-object v1

    invoke-virtual {v13}, Lc5/o7;->P()Lc5/q7;

    move-result-object v2

    invoke-virtual {v2, v7}, Lc5/q7;->C(Lcom/google/android/gms/internal/measurement/o2;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "Filter definition"

    invoke-virtual {v1, v2, v8}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7d

    :cond_99
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    :goto_7d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/o2;->A()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/o2;->r()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_9a

    goto :goto_7f

    :cond_9a
    new-instance v1, Lc5/f8;

    iget-object v2, v10, Lc5/g8;->d:Ljava/lang/String;

    invoke-direct {v1, v10, v2, v4, v7}, Lc5/f8;-><init>(Lc5/g8;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/o2;)V

    iget-object v2, v10, Lc5/g8;->g:Ljava/lang/Long;

    iget-object v8, v10, Lc5/g8;->h:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/o2;->r()I

    move-result v7

    .line 66
    iget-object v12, v10, Lc5/g8;->f:Landroidx/collection/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc5/b8;

    if-nez v12, :cond_9b

    const/4 v7, 0x0

    goto :goto_7e

    :cond_9b
    iget-object v12, v12, Lc5/b8;->d:Ljava/util/BitSet;

    invoke-virtual {v12, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    .line 67
    :goto_7e
    invoke-virtual {v1, v2, v8, v3, v7}, Lc5/f8;->g(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/a4;Z)Z

    move-result v7

    if-eqz v7, :cond_9c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Lc5/g8;->g(Ljava/lang/Integer;)Lc5/b8;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc5/b8;->b(Lc5/e8;)V

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_7b

    :cond_9c
    iget-object v1, v10, Lc5/g8;->e:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_9d
    :goto_7f
    invoke-virtual/range {v49 .. v49}, Lc5/i4;->m()Lc5/e3;

    move-result-object v1

    invoke-virtual {v1}, Lc5/e3;->o()Lc5/c3;

    move-result-object v1

    iget-object v2, v10, Lc5/g8;->d:Ljava/lang/String;

    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/o2;->A()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/o2;->r()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_80

    :cond_9e
    const/4 v6, 0x0

    :goto_80
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid property filter ID. appId, id"

    invoke-virtual {v1, v2, v7, v6}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_82

    :cond_9f
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    :goto_81
    if-nez v7, :cond_a0

    :goto_82
    iget-object v1, v10, Lc5/g8;->e:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_21

    :cond_a0
    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_7a

    :cond_a1
    :goto_83
    move-object/from16 v21, v1

    move-object/from16 v50, v11

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto/16 :goto_6f

    :catchall_21
    move-exception v0

    goto/16 :goto_9b

    :goto_84
    :try_start_7f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v10, Lc5/g8;->f:Landroidx/collection/ArrayMap;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, v10, Lc5/g8;->e:Ljava/util/HashSet;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_29

    const-string v4, "app_id"

    const-wide/16 v5, -0x1

    if-eqz v3, :cond_a3

    :try_start_80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v7, v10, Lc5/g8;->f:Landroidx/collection/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc5/b8;

    invoke-static {v7}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Lc5/b8;->a(I)Lcom/google/android/gms/internal/measurement/d3;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lc5/o7;->M()Lc5/i;

    move-result-object v7

    iget-object v9, v7, Lc5/x4;->a:Lc5/z4;

    iget-object v12, v10, Lc5/g8;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/d3;->u()Lcom/google/android/gms/internal/measurement/w3;

    move-result-object v3

    invoke-virtual {v7}, Lc5/j7;->c()V

    invoke-virtual {v7}, Lc5/x4;->b()V

    invoke-static {v12}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    move-result-object v3

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v4, v44

    invoke-virtual {v14, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_21

    :try_start_81
    invoke-virtual {v7}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v7, "audience_filter_values"
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_81 .. :try_end_81} :catch_22
    .catchall {:try_start_81 .. :try_end_81} :catchall_21

    const/4 v8, 0x5

    const/4 v15, 0x0

    :try_start_82
    invoke-virtual {v3, v7, v15, v14, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v20

    cmp-long v3, v20, v5

    if-nez v3, :cond_a2

    move-object v3, v9

    check-cast v3, Lc5/i4;

    invoke-virtual {v3}, Lc5/i4;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->h()Lc5/c3;

    move-result-object v3

    const-string v5, "Failed to insert filter results (got -1). appId"

    invoke-static {v12}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_82 .. :try_end_82} :catch_21
    .catchall {:try_start_82 .. :try_end_82} :catchall_21

    goto :goto_88

    :catch_21
    move-exception v0

    :goto_86
    move-object v3, v0

    goto :goto_87

    :catch_22
    move-exception v0

    const/4 v8, 0x5

    goto :goto_86

    :goto_87
    :try_start_83
    check-cast v9, Lc5/i4;

    invoke-virtual {v9}, Lc5/i4;->m()Lc5/e3;

    move-result-object v5

    invoke-virtual {v5}, Lc5/e3;->h()Lc5/c3;

    move-result-object v5

    invoke-static {v12}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    const-string v7, "Error storing filter results. appId"

    invoke-virtual {v5, v6, v7, v3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_21

    :cond_a2
    :goto_88
    move-object/from16 v44, v4

    goto/16 :goto_85

    :cond_a3
    move-object/from16 v7, v38

    .line 68
    :try_start_84
    iget-boolean v2, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_29

    if-eqz v2, :cond_a4

    :try_start_85
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_22

    goto :goto_89

    :catchall_22
    move-exception v0

    goto/16 :goto_9b

    :cond_a4
    :goto_89
    :try_start_86
    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v2, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/q3;->d0(Lcom/google/android/gms/internal/measurement/q3;Ljava/util/ArrayList;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v1

    move-object/from16 v2, v37

    iget-object v3, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc5/e;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    move-result-object v8

    invoke-virtual {v8}, Lc5/v7;->p()Ljava/security/SecureRandom;

    move-result-object v8

    const/4 v9, 0x0

    .line 70
    :goto_8a
    iget-object v10, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v10, Lcom/google/android/gms/internal/measurement/q3;
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_29

    :try_start_87
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/q3;->h1()I

    move-result v10
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_28

    if-ge v9, v10, :cond_bc

    .line 71
    :try_start_88
    iget-object v10, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v10, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/q3;->x1(I)Lcom/google/android/gms/internal/measurement/h3;

    move-result-object v10
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_26

    .line 72
    :try_start_89
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/g3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_ep"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_29

    const-string v12, "_sr"

    if-eqz v11, :cond_aa

    :try_start_8a
    invoke-static/range {v36 .. v36}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/h3;

    const-string v13, "_en"

    invoke-static {v11, v13}, Lc5/q7;->n(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc5/o;
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_23

    if-nez v13, :cond_a5

    move-object/from16 v14, p0

    :try_start_8b
    iget-object v13, v14, Lc5/o7;->c:Lc5/i;

    invoke-static {v13}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v15, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v13, v15, v11}, Lc5/i;->H(Ljava/lang/String;Ljava/lang/String;)Lc5/o;

    move-result-object v13

    if-eqz v13, :cond_a6

    invoke-virtual {v1, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    :cond_a5
    move-object/from16 v14, p0

    :cond_a6
    :goto_8b
    if-eqz v13, :cond_a9

    iget-object v11, v13, Lc5/o;->i:Ljava/lang/Long;

    if-nez v11, :cond_a9

    iget-object v11, v13, Lc5/o;->j:Ljava/lang/Long;

    if-eqz v11, :cond_a7

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x1

    cmp-long v11, v20, v22

    if-lez v11, :cond_a7

    invoke-static/range {v36 .. v36}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v11, v13, Lc5/o;->j:Ljava/lang/Long;

    invoke-static {v10, v12, v11}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a7
    iget-object v11, v13, Lc5/o;->k:Ljava/lang/Boolean;

    if-eqz v11, :cond_a8

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_a8

    invoke-static/range {v36 .. v36}, Lc5/o7;->I(Lc5/j7;)V

    const-string v11, "_efs"

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v10, v11, v15}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a8
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a9
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/p3;->p(ILcom/google/android/gms/internal/measurement/g3;)V
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_24

    move-object/from16 v22, v4

    goto/16 :goto_96

    :catchall_23
    move-exception v0

    move-object/from16 v14, p0

    :goto_8c
    move-object v2, v0

    goto/16 :goto_92

    :cond_aa
    move-object/from16 v14, p0

    :try_start_8c
    invoke-static/range {v24 .. v24}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v11, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v11

    const-string v13, "measurement.account.time_zone_offset_minutes"

    move-object/from16 v15, v24

    invoke-virtual {v15, v11, v13}, Lc5/c4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_29

    if-nez v20, :cond_ab

    :try_start_8d
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_8d} :catch_23
    .catchall {:try_start_8d .. :try_end_8d} :catchall_24

    move-wide/from16 v5, v20

    goto :goto_8e

    :catchall_24
    move-exception v0

    goto :goto_8c

    :catch_23
    move-exception v0

    move-object v13, v0

    :try_start_8e
    iget-object v5, v15, Lc5/x4;->a:Lc5/z4;

    check-cast v5, Lc5/i4;
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_25

    :try_start_8f
    invoke-virtual {v5}, Lc5/i4;->m()Lc5/e3;

    move-result-object v5

    invoke-virtual {v5}, Lc5/e3;->o()Lc5/c3;

    move-result-object v5

    const-string v6, "Unable to parse timezone offset. appId"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v11

    invoke-virtual {v5, v11, v6, v13}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_24

    goto :goto_8d

    :catchall_25
    move-exception v0

    goto/16 :goto_1d

    :cond_ab
    :goto_8d
    const-wide/16 v5, 0x0

    :goto_8e
    :try_start_90
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v22

    const-wide/32 v28, 0xea60

    mul-long v5, v5, v28

    add-long v22, v5, v22

    move-object v11, v4

    move-wide/from16 v28, v5

    const-wide/32 v16, 0x5265c00

    .line 73
    div-long v4, v22, v16

    .line 74
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/h3;

    const-wide/16 v22, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v22, v11

    const-string v11, "_dbg"

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_29

    if-nez v23, :cond_ae

    :try_start_91
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h3;->z()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/gms/internal/measurement/l3;

    move-object/from16 v24, v6

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_24

    if-nez v6, :cond_ac

    goto :goto_90

    :cond_ac
    const/4 v6, 0x1

    goto :goto_91

    :cond_ad
    move-object/from16 v6, v24

    goto :goto_8f

    :cond_ae
    :goto_90
    :try_start_92
    invoke-static {v15}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v6, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v6, v11}, Lc5/c4;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_29

    :goto_91
    if-gtz v6, :cond_af

    :try_start_93
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v4

    invoke-virtual {v4}, Lc5/e3;->o()Lc5/c3;

    move-result-object v4

    const-string v5, "Sample rate must be positive. event, rate"

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v11, v5, v6}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/p3;->p(ILcom/google/android/gms/internal/measurement/g3;)V
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_24

    move-object/from16 v24, v15

    goto/16 :goto_96

    :goto_92
    move-object v1, v2

    :goto_93
    move-object v4, v14

    goto/16 :goto_b3

    :cond_af
    :try_start_94
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc5/o;

    if-nez v11, :cond_b0

    iget-object v11, v14, Lc5/o7;->c:Lc5/i;

    invoke-static {v11}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v13, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v24, v15

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Lc5/i;->H(Ljava/lang/String;Ljava/lang/String;)Lc5/o;

    move-result-object v11

    if-nez v11, :cond_b1

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v11

    invoke-virtual {v11}, Lc5/e3;->o()Lc5/c3;

    move-result-object v11

    const-string v13, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v15, v13, v14}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v11, Lc5/o;

    iget-object v13, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v43

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v44

    const-wide/16 v45, 0x1

    const-wide/16 v47, 0x1

    const-wide/16 v49, 0x1

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v51

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v42, v11

    invoke-direct/range {v42 .. v58}, Lc5/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_94

    :cond_b0
    move-object/from16 v24, v15

    :cond_b1
    :goto_94
    invoke-static/range {v36 .. v36}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/h3;

    const-string v14, "_eid"

    invoke-static {v13, v14}, Lc5/q7;->n(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_b2

    const/4 v14, 0x1

    goto :goto_95

    :cond_b2
    const/4 v14, 0x0

    :goto_95
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    if-ne v6, v15, :cond_b5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b4

    iget-object v4, v11, Lc5/o;->i:Ljava/lang/Long;

    if-nez v4, :cond_b3

    iget-object v4, v11, Lc5/o;->j:Ljava/lang/Long;

    if-nez v4, :cond_b3

    iget-object v4, v11, Lc5/o;->k:Ljava/lang/Boolean;

    if-eqz v4, :cond_b4

    :cond_b3
    const/4 v4, 0x0

    invoke-virtual {v11, v4, v4, v4}, Lc5/o;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lc5/o;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b4
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/p3;->p(ILcom/google/android/gms/internal/measurement/g3;)V

    :goto_96
    const-wide/32 v15, 0x5265c00

    goto/16 :goto_9a

    :cond_b5
    invoke-virtual {v8, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_b7

    invoke-static/range {v36 .. v36}, Lc5/o7;->I(Lc5/j7;)V

    move-object/from16 v38, v7

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10, v12, v6}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b6

    const/4 v7, 0x0

    invoke-virtual {v11, v7, v6, v7}, Lc5/o;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lc5/o;

    move-result-object v11

    :cond_b6
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13, v4, v5}, Lc5/o;->b(JJ)Lc5/o;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v38

    const-wide/32 v15, 0x5265c00

    goto/16 :goto_99

    :cond_b7
    move-object/from16 v38, v7

    iget-object v7, v11, Lc5/o;->h:Ljava/lang/Long;

    if-eqz v7, :cond_b8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/32 v15, 0x5265c00

    goto :goto_97

    :cond_b8
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->n()J

    move-result-wide v30

    add-long v28, v28, v30

    const-wide/32 v15, 0x5265c00

    .line 75
    div-long v28, v28, v15

    :goto_97
    cmp-long v7, v28, v4

    if-eqz v7, :cond_ba

    .line 76
    invoke-static/range {v36 .. v36}, Lc5/o7;->I(Lc5/j7;)V

    const-string v7, "_efs"

    const-wide/16 v26, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v10, v7, v13}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {v36 .. v36}, Lc5/o7;->I(Lc5/j7;)V

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10, v12, v6}, Lc5/q7;->g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b9

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6, v7}, Lc5/o;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lc5/o;

    move-result-object v11

    :cond_b9
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->p()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13, v4, v5}, Lc5/o;->b(JJ)Lc5/o;

    move-result-object v4

    goto :goto_98

    :cond_ba
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    invoke-virtual {v11, v13, v4, v4}, Lc5/o;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lc5/o;

    move-result-object v5

    move-object v4, v5

    :goto_98
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bb
    move-object/from16 v7, v38

    :goto_99
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/p3;->p(ILcom/google/android/gms/internal/measurement/g3;)V

    :goto_9a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v22

    const-wide/16 v5, -0x1

    goto/16 :goto_8a

    :catchall_26
    move-exception v0

    :goto_9b
    move-object v1, v0

    move-object/from16 v4, p0

    goto/16 :goto_b3

    :cond_bc
    move-object/from16 v22, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 77
    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_29

    :try_start_95
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->h1()I

    move-result v5
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_28

    if-ge v4, v5, :cond_be

    .line 78
    :try_start_96
    iget-boolean v4, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v4, :cond_bd

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v4, 0x0

    iput-boolean v4, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_bd
    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v4, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/q3;->u0(Lcom/google/android/gms/internal/measurement/q3;)V
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_27

    .line 79
    :try_start_97
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/p3;->u(Ljava/util/ArrayList;)V

    goto :goto_9c

    :catchall_27
    move-exception v0

    goto :goto_9b

    :cond_be
    :goto_9c
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_29

    move-object/from16 v4, p0

    :try_start_98
    iget-object v5, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v5}, Lc5/o7;->I(Lc5/j7;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc5/o;

    invoke-virtual {v5, v3}, Lc5/i;->p(Lc5/o;)V

    goto :goto_9d

    :cond_bf
    :goto_9e
    move-object/from16 v4, p0

    goto :goto_a1

    :catchall_28
    move-exception v0

    goto :goto_a0

    :goto_9f
    move-object v1, v0

    goto/16 :goto_b3

    :catchall_29
    move-exception v0

    :goto_a0
    move-object/from16 v4, p0

    goto :goto_9f

    :cond_c0
    move-object/from16 v22, v4

    goto :goto_9e

    :goto_a1
    iget-object v1, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v3, v1}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    move-result-object v3

    if-nez v3, :cond_c1

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->h()Lc5/c3;

    move-result-object v3

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_2a

    goto/16 :goto_a8

    :cond_c1
    iget-object v5, v3, Lc5/m4;->a:Lc5/i4;

    .line 80
    :try_start_99
    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->h1()I

    move-result v6

    if-lez v6, :cond_ca

    .line 81
    iget-object v6, v5, Lc5/i4;->k:Lc5/h4;

    .line 82
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 83
    invoke-virtual {v6}, Lc5/h4;->b()V

    iget-wide v8, v3, Lc5/m4;->i:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_c3

    .line 84
    iget-boolean v6, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_c2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    goto :goto_a2

    :catchall_2a
    move-exception v0

    goto :goto_9f

    :cond_c2
    :goto_a2
    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/q3;->E0(Lcom/google/android/gms/internal/measurement/q3;J)V

    goto :goto_a3

    .line 85
    :cond_c3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/p3;->D()V

    .line 86
    :goto_a3
    iget-object v6, v5, Lc5/i4;->k:Lc5/h4;

    .line 87
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 88
    invoke-virtual {v6}, Lc5/h4;->b()V

    iget-wide v10, v3, Lc5/m4;->h:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-nez v6, :cond_c4

    goto :goto_a4

    :cond_c4
    move-wide v8, v10

    :goto_a4
    cmp-long v6, v8, v12

    if-eqz v6, :cond_c6

    .line 89
    iget-boolean v6, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_c5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_c5
    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/q3;->C0(Lcom/google/android/gms/internal/measurement/q3;J)V

    goto :goto_a5

    .line 90
    :cond_c6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/p3;->F()V

    .line 91
    :goto_a5
    iget-object v6, v5, Lc5/i4;->k:Lc5/h4;

    .line 92
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 93
    invoke-virtual {v6}, Lc5/h4;->b()V

    iget-wide v8, v3, Lc5/m4;->g:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const-wide/32 v10, 0x7fffffff

    cmp-long v6, v8, v10

    if-lez v6, :cond_c7

    .line 94
    iget-object v6, v5, Lc5/i4;->j:Lc5/e3;

    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 95
    iget-object v8, v3, Lc5/m4;->b:Ljava/lang/String;

    invoke-static {v8}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v8

    iget-object v6, v6, Lc5/e3;->j:Lc5/c3;

    const-string v9, "Bundle index overflow. appId"

    invoke-virtual {v6, v8, v9}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v10, v12

    goto :goto_a6

    :cond_c7
    move-wide v10, v8

    :goto_a6
    const/4 v6, 0x1

    iput-boolean v6, v3, Lc5/m4;->D:Z

    iput-wide v10, v3, Lc5/m4;->g:J

    .line 96
    iget-object v5, v5, Lc5/i4;->k:Lc5/h4;

    .line 97
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 98
    invoke-virtual {v5}, Lc5/h4;->b()V

    iget-wide v5, v3, Lc5/m4;->g:J

    long-to-int v6, v5

    .line 99
    iget-boolean v5, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v5, :cond_c8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_c8
    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/q3;->Y(Lcom/google/android/gms/internal/measurement/q3;I)V

    .line 100
    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->u1()J

    move-result-wide v5

    .line 101
    invoke-virtual {v3, v5, v6}, Lc5/m4;->w(J)V

    .line 102
    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->q1()J

    move-result-wide v5

    .line 103
    invoke-virtual {v3, v5, v6}, Lc5/m4;->u(J)V

    invoke-virtual {v3}, Lc5/m4;->E()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c9

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/p3;->q(Ljava/lang/String;)V

    goto :goto_a7

    :cond_c9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/p3;->B()V

    :goto_a7
    iget-object v5, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v5}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v5, v3}, Lc5/i;->o(Lc5/m4;)V

    .line 104
    :cond_ca
    :goto_a8
    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->h1()I

    move-result v3

    if-lez v3, :cond_d3

    .line 105
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v24 .. v24}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v3, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v24

    invoke-virtual {v5, v3}, Lc5/c4;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w2;

    move-result-object v3

    if-eqz v3, :cond_cd

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/w2;->G()Z

    move-result v5

    if-nez v5, :cond_cb

    goto :goto_aa

    :cond_cb
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/w2;->t()J

    move-result-wide v5

    .line 106
    iget-boolean v3, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v3, :cond_cc

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_cc
    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    :goto_a9
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/q3;->j0(Lcom/google/android/gms/internal/measurement/q3;J)V

    goto :goto_ab

    .line 107
    :cond_cd
    :goto_aa
    iget-object v3, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 108
    iget-boolean v3, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v3, :cond_ce

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_ce
    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    const-wide/16 v5, -0x1

    goto :goto_a9

    .line 109
    :cond_cf
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->o()Lc5/c3;

    move-result-object v3

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_ab
    iget-object v3, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_2a

    iget-object v5, v3, Lc5/x4;->a:Lc5/z4;

    :try_start_9a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v3}, Lc5/x4;->b()V

    invoke-virtual {v3}, Lc5/j7;->c()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->V0()Z

    move-result v7

    invoke-static {v7}, Lr3/r;->l(Z)V

    invoke-virtual {v3}, Lc5/i;->g()V

    move-object v7, v5

    check-cast v7, Lc5/i4;

    invoke-virtual {v7}, Lc5/i4;->i()Lw3/a;

    move-result-object v7

    check-cast v7, Lc5/w;

    invoke-virtual {v7}, Lc5/w;->k()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->q1()J

    move-result-wide v9

    move-object v11, v5

    check-cast v11, Lc5/i4;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    sget-object v11, Lc5/r2;->D:Lc5/q2;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v7, v12

    cmp-long v14, v9, v12

    if-ltz v14, :cond_d0

    .line 111
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->q1()J

    move-result-wide v9

    move-object v12, v5

    check-cast v12, Lc5/i4;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    .line 112
    invoke-virtual {v11, v12}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v11, v7

    cmp-long v13, v9, v11

    if-lez v13, :cond_d1

    .line 113
    :cond_d0
    move-object v9, v5

    check-cast v9, Lc5/i4;

    invoke-virtual {v9}, Lc5/i4;->m()Lc5/e3;

    move-result-object v9

    invoke-virtual {v9}, Lc5/e3;->o()Lc5/c3;

    move-result-object v9

    const-string v10, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->q1()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v10, v11, v7, v8}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    move-result-object v7
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_2a

    :try_start_9b
    iget-object v8, v3, Lc5/i7;->b:Lc5/o7;

    iget-object v8, v8, Lc5/o7;->g:Lc5/q7;

    invoke-static {v8}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v8, v7}, Lc5/q7;->L([B)[B

    move-result-object v7
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9b} :catch_25
    .catchall {:try_start_9b .. :try_end_9b} :catchall_2a

    :try_start_9c
    move-object v8, v5

    check-cast v8, Lc5/i4;

    invoke-virtual {v8}, Lc5/i4;->m()Lc5/e3;

    move-result-object v8

    invoke-virtual {v8}, Lc5/e3;->n()Lc5/c3;

    move-result-object v8

    const-string v9, "Saving bundle, size"

    array-length v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v22

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "bundle_end_timestamp"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->q1()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v9, v41

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v7, "has_realtime"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->b1()Z

    move-result v7

    if-eqz v7, :cond_d2

    const-string v7, "retry_count"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->j1()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_2a

    :cond_d2
    :try_start_9d
    invoke-virtual {v3}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v7, "queue"

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-nez v3, :cond_d3

    move-object v3, v5

    check-cast v3, Lc5/i4;

    invoke-virtual {v3}, Lc5/i4;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->h()Lc5/c3;

    move-result-object v3

    const-string v7, "Failed to insert bundle (got -1). appId"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9d .. :try_end_9d} :catch_24
    .catchall {:try_start_9d .. :try_end_9d} :catchall_2a

    goto :goto_ae

    :catch_24
    move-exception v0

    move-object v3, v0

    :try_start_9e
    check-cast v5, Lc5/i4;

    invoke-virtual {v5}, Lc5/i4;->m()Lc5/e3;

    move-result-object v5

    invoke-virtual {v5}, Lc5/e3;->h()Lc5/c3;

    move-result-object v5

    const-string v7, "Error storing bundle. appId"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v6

    :goto_ac
    invoke-static {v6}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    goto :goto_ad

    :catch_25
    move-exception v0

    move-object v3, v0

    check-cast v5, Lc5/i4;

    invoke-virtual {v5}, Lc5/i4;->m()Lc5/e3;

    move-result-object v5

    invoke-virtual {v5}, Lc5/e3;->h()Lc5/c3;

    move-result-object v5

    const-string v7, "Data loss. Failed to serialize bundle. appId"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v6

    goto :goto_ac

    :goto_ad
    invoke-virtual {v5, v6, v7, v3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d3
    :goto_ae
    iget-object v3, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v2, v2, Lc5/n7;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lc5/i;->Q(Ljava/util/ArrayList;)V

    iget-object v2, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_2a

    const/4 v5, 0x2

    :try_start_9f
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9f .. :try_end_9f} :catch_26
    .catchall {:try_start_9f .. :try_end_9f} :catchall_2a

    goto :goto_af

    :catch_26
    move-exception v0

    move-object v3, v0

    :try_start_a0
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    check-cast v2, Lc5/i4;

    invoke-virtual {v2}, Lc5/i4;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->h()Lc5/c3;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v1

    invoke-virtual {v2, v1, v5, v3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_af
    iget-object v1, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v1}, Lc5/i;->n()V
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_2a

    iget-object v1, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v1}, Lc5/i;->R()V

    const/4 v1, 0x1

    return v1

    :catchall_2b
    move-exception v0

    move-object/from16 v4, p0

    move-object v13, v1

    move-object v1, v0

    :goto_b0
    if-eqz v13, :cond_d4

    .line 114
    :try_start_a1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_d4
    throw v1

    :catchall_2c
    move-exception v0

    move-object v4, v1

    goto/16 :goto_9f

    :catchall_2d
    move-exception v0

    move-object v4, v1

    move-object v2, v0

    :goto_b1
    move-object v1, v2

    goto :goto_b3

    :cond_d5
    :goto_b2
    move-object v4, v1

    .line 115
    iget-object v1, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v1}, Lc5/i;->n()V
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_2a

    iget-object v1, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v1}, Lc5/i;->R()V

    const/4 v1, 0x0

    return v1

    :goto_b3
    iget-object v2, v4, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->R()V

    throw v1
.end method

.method public final G()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lc5/o7;->b()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    .line 12
    .line 13
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "select count(1) > 0 from raw_events"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Lc5/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    cmp-long v6, v0, v2

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    .line 37
    .line 38
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lc5/i;->K()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    return v5

    .line 53
    :cond_2
    :goto_1
    return v4
.end method

.method public final H(Lcom/google/android/gms/internal/measurement/g3;Lcom/google/android/gms/internal/measurement/g3;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/g3;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lr3/r;->a(Z)V

    iget-object v0, p0, Lc5/o7;->g:Lc5/q7;

    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/h3;

    const-string v2, "_sc"

    invoke-static {v1, v2}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    const-string v3, "_pc"

    invoke-static {v0, v3}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lc5/o7;->C(Lcom/google/android/gms/internal/measurement/g3;Lcom/google/android/gms/internal/measurement/g3;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final J(Lc5/y7;)Lc5/m4;
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lc5/o7;->b()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lc5/y7;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 20
    .line 21
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v0}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p1, Lc5/y7;->y:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v3}, Lc5/f;->b(Ljava/lang/String;)Lc5/f;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lc5/f;->c(Lc5/f;)Lc5/f;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lc5/f;->e()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    iget-object v3, p0, Lc5/o7;->j:Lc5/u6;

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Lc5/u6;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v3, ""

    .line 56
    .line 57
    :goto_0
    const/4 v4, 0x0

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    new-instance v1, Lc5/m4;

    .line 61
    .line 62
    iget-object v5, p0, Lc5/o7;->m:Lc5/i4;

    .line 63
    .line 64
    invoke-direct {v1, v5, v0}, Lc5/m4;-><init>(Lc5/i4;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lc5/f;->f()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lc5/o7;->R(Lc5/f;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Lc5/m4;->c(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {v2}, Lc5/f;->e()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lc5/m4;->y(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_2
    invoke-virtual {v2}, Lc5/f;->e()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    iget-object v5, v1, Lc5/m4;->a:Lc5/i4;

    .line 100
    .line 101
    iget-object v5, v5, Lc5/i4;->k:Lc5/h4;

    .line 102
    .line 103
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Lc5/h4;->b()V

    .line 107
    .line 108
    .line 109
    iget-object v5, v1, Lc5/m4;->e:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_5

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Lc5/m4;->y(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d9;->c()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lc5/o7;->K()Lc5/e;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    sget-object v5, Lc5/r2;->s0:Lc5/q2;

    .line 128
    .line 129
    invoke-virtual {v3, v4, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    const-string v6, "00000000-0000-0000-0000-000000000000"

    .line 134
    .line 135
    if-eqz v3, :cond_3

    .line 136
    .line 137
    invoke-virtual {p0}, Lc5/o7;->K()Lc5/e;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    sget-object v7, Lc5/r2;->v0:Lc5/q2;

    .line 142
    .line 143
    invoke-virtual {v3, v4, v7}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_3

    .line 148
    .line 149
    iget-object v3, p0, Lc5/o7;->j:Lc5/u6;

    .line 150
    .line 151
    invoke-virtual {v3, v0, v2}, Lc5/u6;->h(Ljava/lang/String;Lc5/f;)Landroid/util/Pair;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 156
    .line 157
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_4

    .line 162
    .line 163
    :cond_3
    invoke-virtual {p0, v2}, Lc5/o7;->R(Lc5/f;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v1, v3}, Lc5/m4;->c(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d9;->c()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lc5/o7;->K()Lc5/e;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3, v4, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_6

    .line 182
    .line 183
    iget-object v3, p0, Lc5/o7;->j:Lc5/u6;

    .line 184
    .line 185
    invoke-virtual {v3, v0, v2}, Lc5/u6;->h(Ljava/lang/String;Lc5/f;)Landroid/util/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 190
    .line 191
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_6

    .line 196
    .line 197
    iget-object v2, p0, Lc5/o7;->c:Lc5/i;

    .line 198
    .line 199
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 200
    .line 201
    .line 202
    const-string v3, "_id"

    .line 203
    .line 204
    invoke-virtual {v2, v0, v3}, Lc5/i;->I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    if-eqz v2, :cond_6

    .line 209
    .line 210
    iget-object v2, p0, Lc5/o7;->c:Lc5/i;

    .line 211
    .line 212
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 213
    .line 214
    .line 215
    const-string v3, "_lair"

    .line 216
    .line 217
    invoke-virtual {v2, v0, v3}, Lc5/i;->I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-nez v0, :cond_6

    .line 222
    .line 223
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lc5/w;

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 233
    .line 234
    .line 235
    move-result-wide v9

    .line 236
    new-instance v0, Lc5/t7;

    .line 237
    .line 238
    iget-object v6, p1, Lc5/y7;->a:Ljava/lang/String;

    .line 239
    .line 240
    const-string v7, "auto"

    .line 241
    .line 242
    const-string v8, "_lair"

    .line 243
    .line 244
    const-wide/16 v2, 0x1

    .line 245
    .line 246
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    move-object v5, v0

    .line 251
    invoke-direct/range {v5 .. v11}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lc5/o7;->c:Lc5/i;

    .line 255
    .line 256
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v0}, Lc5/i;->u(Lc5/t7;)Z

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_5
    invoke-virtual {v1}, Lc5/m4;->G()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_6

    .line 272
    .line 273
    invoke-virtual {v2}, Lc5/f;->f()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_6

    .line 278
    .line 279
    invoke-virtual {p0, v2}, Lc5/o7;->R(Lc5/f;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v1, v0}, Lc5/m4;->c(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_6
    :goto_1
    iget-object v0, p1, Lc5/y7;->b:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v1, v0}, Lc5/m4;->r(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, p1, Lc5/y7;->s:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v1, v0}, Lc5/m4;->a(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Lc5/o7;->K()Lc5/e;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v1}, Lc5/m4;->F()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    sget-object v3, Lc5/r2;->c0:Lc5/q2;

    .line 308
    .line 309
    invoke-virtual {v0, v2, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_7

    .line 314
    .line 315
    iget-object v0, p1, Lc5/y7;->x:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v1, v0}, Lc5/m4;->q(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :cond_7
    iget-object v0, p1, Lc5/y7;->l:Ljava/lang/String;

    .line 321
    .line 322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-nez v2, :cond_8

    .line 327
    .line 328
    invoke-virtual {v1, v0}, Lc5/m4;->p(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :cond_8
    const-wide/16 v2, 0x0

    .line 332
    .line 333
    iget-wide v5, p1, Lc5/y7;->e:J

    .line 334
    .line 335
    cmp-long v0, v5, v2

    .line 336
    .line 337
    if-eqz v0, :cond_9

    .line 338
    .line 339
    invoke-virtual {v1, v5, v6}, Lc5/m4;->s(J)V

    .line 340
    .line 341
    .line 342
    :cond_9
    iget-object v0, p1, Lc5/y7;->c:Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-nez v2, :cond_a

    .line 349
    .line 350
    invoke-virtual {v1, v0}, Lc5/m4;->e(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_a
    iget-wide v2, p1, Lc5/y7;->k:J

    .line 354
    .line 355
    invoke-virtual {v1, v2, v3}, Lc5/m4;->f(J)V

    .line 356
    .line 357
    .line 358
    iget-object v0, p1, Lc5/y7;->d:Ljava/lang/String;

    .line 359
    .line 360
    if-eqz v0, :cond_b

    .line 361
    .line 362
    invoke-virtual {v1, v0}, Lc5/m4;->d(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :cond_b
    iget-wide v2, p1, Lc5/y7;->f:J

    .line 366
    .line 367
    invoke-virtual {v1, v2, v3}, Lc5/m4;->n(J)V

    .line 368
    .line 369
    .line 370
    iget-boolean v0, p1, Lc5/y7;->h:Z

    .line 371
    .line 372
    invoke-virtual {v1, v0}, Lc5/m4;->x(Z)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p1, Lc5/y7;->g:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-nez v2, :cond_c

    .line 382
    .line 383
    invoke-virtual {v1, v0}, Lc5/m4;->t(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    :cond_c
    invoke-virtual {p0}, Lc5/o7;->K()Lc5/e;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    sget-object v2, Lc5/r2;->l0:Lc5/q2;

    .line 391
    .line 392
    invoke-virtual {v0, v4, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-nez v0, :cond_d

    .line 397
    .line 398
    iget-wide v2, p1, Lc5/y7;->m:J

    .line 399
    .line 400
    invoke-virtual {v1, v2, v3}, Lc5/m4;->b(J)V

    .line 401
    .line 402
    .line 403
    :cond_d
    iget-object v0, v1, Lc5/m4;->a:Lc5/i4;

    .line 404
    .line 405
    iget-object v2, v0, Lc5/i4;->k:Lc5/h4;

    .line 406
    .line 407
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2}, Lc5/h4;->b()V

    .line 411
    .line 412
    .line 413
    iget-boolean v2, v1, Lc5/m4;->D:Z

    .line 414
    .line 415
    iget-boolean v3, v1, Lc5/m4;->q:Z

    .line 416
    .line 417
    const/4 v4, 0x0

    .line 418
    const/4 v5, 0x1

    .line 419
    iget-boolean v6, p1, Lc5/y7;->q:Z

    .line 420
    .line 421
    if-eq v3, v6, :cond_e

    .line 422
    .line 423
    const/4 v3, 0x1

    .line 424
    goto :goto_2

    .line 425
    :cond_e
    const/4 v3, 0x0

    .line 426
    :goto_2
    or-int/2addr v2, v3

    .line 427
    iput-boolean v2, v1, Lc5/m4;->D:Z

    .line 428
    .line 429
    iput-boolean v6, v1, Lc5/m4;->q:Z

    .line 430
    .line 431
    iget-object v2, v0, Lc5/i4;->k:Lc5/h4;

    .line 432
    .line 433
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2}, Lc5/h4;->b()V

    .line 437
    .line 438
    .line 439
    iget-boolean v2, v1, Lc5/m4;->D:Z

    .line 440
    .line 441
    iget-object v3, v1, Lc5/m4;->s:Ljava/lang/Boolean;

    .line 442
    .line 443
    iget-object v6, p1, Lc5/y7;->t:Ljava/lang/Boolean;

    .line 444
    .line 445
    if-nez v3, :cond_f

    .line 446
    .line 447
    if-nez v6, :cond_f

    .line 448
    .line 449
    const/4 v4, 0x1

    .line 450
    goto :goto_3

    .line 451
    :cond_f
    if-nez v3, :cond_10

    .line 452
    .line 453
    goto :goto_3

    .line 454
    :cond_10
    invoke-virtual {v3, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    :goto_3
    xor-int/lit8 v3, v4, 0x1

    .line 459
    .line 460
    or-int/2addr v2, v3

    .line 461
    iput-boolean v2, v1, Lc5/m4;->D:Z

    .line 462
    .line 463
    iput-object v6, v1, Lc5/m4;->s:Ljava/lang/Boolean;

    .line 464
    .line 465
    iget-wide v2, p1, Lc5/y7;->v:J

    .line 466
    .line 467
    invoke-virtual {v1, v2, v3}, Lc5/m4;->o(J)V

    .line 468
    .line 469
    .line 470
    iget-object p1, v0, Lc5/i4;->k:Lc5/h4;

    .line 471
    .line 472
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1}, Lc5/h4;->b()V

    .line 476
    .line 477
    .line 478
    iget-boolean p1, v1, Lc5/m4;->D:Z

    .line 479
    .line 480
    if-eqz p1, :cond_11

    .line 481
    .line 482
    iget-object p1, p0, Lc5/o7;->c:Lc5/i;

    .line 483
    .line 484
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1, v1}, Lc5/i;->o(Lc5/m4;)V

    .line 488
    .line 489
    .line 490
    :cond_11
    return-object v1
.end method

.method public final K()Lc5/e;
    .locals 1

    iget-object v0, p0, Lc5/o7;->m:Lc5/i4;

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    return-object v0
.end method

.method public final L(Ljava/lang/String;)Lc5/f;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lc5/o7;->b()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc5/o7;->D:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lc5/f;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    .line 22
    .line 23
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lc5/j7;->c()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    new-array v1, v1, [Ljava/lang/String;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object p1, v1, v2

    .line 40
    .line 41
    invoke-virtual {v0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "select consent_state from consent_settings where app_id=? limit 1;"

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    :try_start_0
    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 67
    .line 68
    .line 69
    const-string v0, "G1"

    .line 70
    .line 71
    :goto_0
    invoke-static {v0}, Lc5/f;->b(Ljava/lang/String;)Lc5/f;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, p1, v0}, Lc5/o7;->r(Ljava/lang/String;Lc5/f;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p1

    .line 82
    :try_start_1
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 83
    .line 84
    check-cast v0, Lc5/i4;

    .line 85
    .line 86
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 87
    .line 88
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 92
    .line 93
    const-string v1, "Database error"

    .line 94
    .line 95
    invoke-virtual {v0, v4, v1, p1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_1
    if-eqz v5, :cond_1

    .line 100
    .line 101
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 102
    .line 103
    .line 104
    :cond_1
    throw p1

    .line 105
    :cond_2
    :goto_2
    return-object v0
.end method

.method public final M()Lc5/i;
    .locals 1

    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    return-object v0
.end method

.method public final N()Lc5/l3;
    .locals 2

    iget-object v0, p0, Lc5/o7;->d:Lc5/l3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final P()Lc5/q7;
    .locals 1

    iget-object v0, p0, Lc5/o7;->g:Lc5/q7;

    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    return-object v0
.end method

.method public final Q()Lc5/v7;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o7;->m:Lc5/i4;

    .line 2
    .line 3
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->m:Lc5/v7;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final R(Lc5/f;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lc5/f;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {p0}, Lc5/o7;->Q()Lc5/v7;

    move-result-object v0

    invoke-virtual {v0}, Lc5/v7;->p()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    const-string p1, "%032x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lc5/o7;->b()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lc5/o7;->p:Z

    .line 12
    .line 13
    if-nez v0, :cond_b

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lc5/o7;->p:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lc5/h4;->b()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lc5/o7;->y:Ljava/nio/channels/FileLock;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iget-object v3, p0, Lc5/o7;->m:Lc5/i4;

    .line 29
    .line 30
    const-string v4, "Storage concurrent access okay"

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 52
    .line 53
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 54
    .line 55
    check-cast v1, Lc5/i4;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v1, v3, Lc5/i4;->a:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v5, Ljava/io/File;

    .line 67
    .line 68
    const-string v6, "google_app_measurement.db"

    .line 69
    .line 70
    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 74
    .line 75
    const-string v6, "rw"

    .line 76
    .line 77
    invoke-direct {v1, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, p0, Lc5/o7;->z:Ljava/nio/channels/FileChannel;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iput-object v1, p0, Lc5/o7;->y:Ljava/nio/channels/FileLock;

    .line 91
    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    const/4 v1, 0x1

    .line 104
    goto :goto_5

    .line 105
    :cond_2
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 110
    .line 111
    const-string v4, "Storage concurrent data access panic"

    .line 112
    .line 113
    invoke-virtual {v1, v4}, Lc5/c3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    const-string v5, "Storage lock already acquired"

    .line 123
    .line 124
    iget-object v4, v4, Lc5/e3;->j:Lc5/c3;

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :catch_1
    move-exception v1

    .line 128
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const-string v5, "Failed to access storage lock file"

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catch_2
    move-exception v1

    .line 136
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-string v5, "Failed to acquire storage lock"

    .line 141
    .line 142
    :goto_2
    iget-object v4, v4, Lc5/e3;->f:Lc5/c3;

    .line 143
    .line 144
    :goto_3
    invoke-virtual {v4, v1, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_4
    const/4 v1, 0x0

    .line 148
    :goto_5
    if-eqz v1, :cond_b

    .line 149
    .line 150
    iget-object v1, p0, Lc5/o7;->z:Ljava/nio/channels/FileChannel;

    .line 151
    .line 152
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 157
    .line 158
    .line 159
    const-wide/16 v4, 0x0

    .line 160
    .line 161
    const-string v6, "Bad channel to read from"

    .line 162
    .line 163
    const/4 v7, 0x4

    .line 164
    if-eqz v1, :cond_5

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-nez v8, :cond_3

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eq v1, v7, :cond_4

    .line 185
    .line 186
    const/4 v8, -0x1

    .line 187
    if-eq v1, v8, :cond_6

    .line 188
    .line 189
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    iget-object v8, v8, Lc5/e3;->j:Lc5/c3;

    .line 194
    .line 195
    const-string v9, "Unexpected data length. Bytes read"

    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v8, v1, v9}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_4
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 209
    .line 210
    .line 211
    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 212
    goto :goto_7

    .line 213
    :catch_3
    move-exception v1

    .line 214
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    const-string v9, "Failed to read from channel"

    .line 219
    .line 220
    iget-object v8, v8, Lc5/e3;->f:Lc5/c3;

    .line 221
    .line 222
    invoke-virtual {v8, v1, v9}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 231
    .line 232
    invoke-virtual {v1, v6}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_6
    :goto_7
    invoke-virtual {v3}, Lc5/i4;->o()Lc5/w2;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lc5/r3;->c()V

    .line 240
    .line 241
    .line 242
    iget v1, v1, Lc5/w2;->e:I

    .line 243
    .line 244
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lc5/h4;->b()V

    .line 249
    .line 250
    .line 251
    if-le v2, v1, :cond_7

    .line 252
    .line 253
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 266
    .line 267
    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 268
    .line 269
    goto/16 :goto_a

    .line 270
    .line 271
    :cond_7
    if-ge v2, v1, :cond_b

    .line 272
    .line 273
    iget-object v3, p0, Lc5/o7;->z:Ljava/nio/channels/FileChannel;

    .line 274
    .line 275
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-virtual {v8}, Lc5/h4;->b()V

    .line 280
    .line 281
    .line 282
    if-eqz v3, :cond_a

    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-nez v8, :cond_8

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 299
    .line 300
    .line 301
    :try_start_2
    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lc5/o7;->K()Lc5/e;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    sget-object v5, Lc5/r2;->k0:Lc5/q2;

    .line 309
    .line 310
    const/4 v7, 0x0

    .line 311
    invoke-virtual {v4, v7, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    .line 321
    .line 322
    .line 323
    move-result-wide v4

    .line 324
    const-wide/16 v6, 0x4

    .line 325
    .line 326
    cmp-long v0, v4, v6

    .line 327
    .line 328
    if-eqz v0, :cond_9

    .line 329
    .line 330
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 335
    .line 336
    const-string v4, "Error writing to channel. Bytes written"

    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    .line 339
    .line 340
    .line 341
    move-result-wide v5

    .line 342
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v0, v3, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 347
    .line 348
    .line 349
    :cond_9
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 362
    .line 363
    const-string v3, "Storage version upgraded. Previous, current version"

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :catch_4
    move-exception v0

    .line 367
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    const-string v4, "Failed to write to channel"

    .line 372
    .line 373
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 374
    .line 375
    invoke-virtual {v3, v0, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :cond_a
    :goto_8
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 384
    .line 385
    invoke-virtual {v0, v6}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :goto_9
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 401
    .line 402
    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 403
    .line 404
    :goto_a
    invoke-virtual {v0, v2, v3, v1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    :cond_b
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lc5/o7;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lc5/m4;)V
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/o7;->a:Lc5/c4;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lc5/h4;->b()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lc5/o7;->K()Lc5/e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lc5/r2;->c0:Lc5/q2;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lc5/m4;->K()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lc5/m4;->J()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lc5/m4;->D()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/16 v6, 0xcc

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    move-object v4, p0

    .line 73
    invoke-virtual/range {v4 .. v9}, Lc5/o7;->g(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Lc5/m4;->K()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1}, Lc5/m4;->D()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v5}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const/16 v6, 0xcc

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    const/4 v9, 0x0

    .line 109
    move-object v4, p0

    .line 110
    invoke-virtual/range {v4 .. v9}, Lc5/o7;->g(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_2
    :goto_0
    new-instance v1, Landroid/net/Uri$Builder;

    .line 115
    .line 116
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lc5/m4;->K()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    iget-object v5, p0, Lc5/o7;->k:Lc5/k7;

    .line 128
    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    .line 132
    .line 133
    .line 134
    iget-object v2, v5, Lc5/x4;->a:Lc5/z4;

    .line 135
    .line 136
    check-cast v2, Lc5/i4;

    .line 137
    .line 138
    iget-object v2, v2, Lc5/i4;->g:Lc5/e;

    .line 139
    .line 140
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    invoke-virtual {p1}, Lc5/m4;->J()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_4

    .line 159
    .line 160
    :cond_3
    invoke-virtual {p1}, Lc5/m4;->D()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :cond_4
    sget-object v3, Lc5/r2;->e:Lc5/q2;

    .line 165
    .line 166
    const/4 v4, 0x0

    .line 167
    invoke-virtual {v3, v4}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    sget-object v6, Lc5/r2;->f:Lc5/q2;

    .line 178
    .line 179
    invoke-virtual {v6, v4}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    const-string v7, "config/app/"

    .line 198
    .line 199
    if-eqz v6, :cond_5

    .line 200
    .line 201
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    goto :goto_1

    .line 206
    :cond_5
    new-instance v2, Ljava/lang/String;

    .line 207
    .line 208
    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :goto_1
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p1}, Lc5/m4;->G()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    const-string v6, "app_instance_id"

    .line 220
    .line 221
    invoke-virtual {v2, v6, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    const-string v3, "platform"

    .line 226
    .line 227
    const-string v6, "android"

    .line 228
    .line 229
    invoke-virtual {v2, v3, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    iget-object v3, v5, Lc5/x4;->a:Lc5/z4;

    .line 234
    .line 235
    check-cast v3, Lc5/i4;

    .line 236
    .line 237
    iget-object v3, v3, Lc5/i4;->g:Lc5/e;

    .line 238
    .line 239
    invoke-virtual {v3}, Lc5/e;->g()V

    .line 240
    .line 241
    .line 242
    const-wide/32 v6, 0xb3b0

    .line 243
    .line 244
    .line 245
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    const-string v6, "gmp_version"

    .line 250
    .line 251
    invoke-virtual {v2, v6, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 252
    .line 253
    .line 254
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qb;->c()V

    .line 255
    .line 256
    .line 257
    iget-object v2, v5, Lc5/x4;->a:Lc5/z4;

    .line 258
    .line 259
    check-cast v2, Lc5/i4;

    .line 260
    .line 261
    iget-object v2, v2, Lc5/i4;->g:Lc5/e;

    .line 262
    .line 263
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    sget-object v5, Lc5/r2;->q0:Lc5/q2;

    .line 268
    .line 269
    invoke-virtual {v2, v3, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_6

    .line 274
    .line 275
    const-string v2, "runtime_version"

    .line 276
    .line 277
    const-string v3, "0"

    .line 278
    .line 279
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 280
    .line 281
    .line 282
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    :try_start_0
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-static {v7}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    new-instance v8, Ljava/net/URL;

    .line 298
    .line 299
    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    iget-object v2, v2, Lc5/e3;->p:Lc5/c3;

    .line 307
    .line 308
    const-string v3, "Fetching remote configuration"

    .line 309
    .line 310
    invoke-virtual {v2, v7, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v7}, Lc5/c4;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w2;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 324
    .line 325
    .line 326
    iget-object v0, v0, Lc5/c4;->l:Landroidx/collection/ArrayMap;

    .line 327
    .line 328
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Ljava/lang/String;

    .line 333
    .line 334
    if-eqz v2, :cond_7

    .line 335
    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-nez v2, :cond_7

    .line 341
    .line 342
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 343
    .line 344
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v2, "If-Modified-Since"

    .line 348
    .line 349
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    :cond_7
    move-object v10, v4

    .line 353
    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lc5/o7;->v:Z

    .line 355
    .line 356
    iget-object v6, p0, Lc5/o7;->b:Lc5/j3;

    .line 357
    .line 358
    invoke-static {v6}, Lc5/o7;->I(Lc5/j7;)V

    .line 359
    .line 360
    .line 361
    new-instance v11, Lc5/x4;

    .line 362
    .line 363
    invoke-direct {v11, p0}, Lc5/x4;-><init>(Lc5/o7;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6}, Lc5/x4;->b()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6}, Lc5/j7;->c()V

    .line 370
    .line 371
    .line 372
    iget-object v0, v6, Lc5/x4;->a:Lc5/z4;

    .line 373
    .line 374
    check-cast v0, Lc5/i4;

    .line 375
    .line 376
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 377
    .line 378
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 379
    .line 380
    .line 381
    new-instance v2, Lc5/i3;

    .line 382
    .line 383
    const/4 v9, 0x0

    .line 384
    move-object v5, v2

    .line 385
    invoke-direct/range {v5 .. v11}, Lc5/i3;-><init>(Lc5/j3;Ljava/lang/String;Ljava/net/URL;[BLandroidx/collection/ArrayMap;Lc5/g3;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v2}, Lc5/h4;->o(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :catch_0
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 405
    .line 406
    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 407
    .line 408
    invoke-virtual {v0, p1, v2, v1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    return-void
.end method

.method public final d(Lc5/s;Lc5/y7;)V
    .locals 19
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-static/range {p2 .. p2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lc5/y7;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lc5/h4;->b()V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->b()V

    .line 21
    .line 22
    .line 23
    move-object/from16 v3, p1

    .line 24
    .line 25
    iget-wide v10, v3, Lc5/s;->d:J

    .line 26
    .line 27
    sget-object v4, Lcom/google/android/gms/internal/measurement/zb;->b:Lcom/google/android/gms/internal/measurement/zb;

    .line 28
    .line 29
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zb;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 30
    .line 31
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/google/android/gms/internal/measurement/ac;

    .line 36
    .line 37
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/ac;->a()V

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sget-object v5, Lc5/r2;->w0:Lc5/q2;

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-virtual {v4, v6, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Lc5/f3;->b(Lc5/s;)Lc5/f3;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 63
    .line 64
    .line 65
    iget-object v4, v3, Lc5/f3;->d:Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-static {v6, v4, v5}, Lc5/v7;->t(Lc5/b6;Landroid/os/Bundle;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lc5/f3;->a()Lc5/s;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_0
    iget-object v4, v1, Lc5/o7;->g:Lc5/q7;

    .line 75
    .line 76
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 77
    .line 78
    .line 79
    iget-object v4, v0, Lc5/y7;->b:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const/4 v12, 0x1

    .line 86
    if-eqz v4, :cond_1

    .line 87
    .line 88
    iget-object v4, v0, Lc5/y7;->s:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 v4, 0x1

    .line 99
    :goto_0
    if-nez v4, :cond_2

    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    iget-boolean v4, v0, Lc5/y7;->h:Z

    .line 103
    .line 104
    if-nez v4, :cond_3

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    iget-object v4, v0, Lc5/y7;->w:Ljava/util/List;

    .line 111
    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    iget-object v6, v3, Lc5/s;->a:Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_4

    .line 121
    .line 122
    iget-object v4, v3, Lc5/s;->b:Lc5/q;

    .line 123
    .line 124
    invoke-virtual {v4}, Lc5/q;->E()Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const-string v6, "ga_safelisted"

    .line 129
    .line 130
    const-wide/16 v7, 0x1

    .line 131
    .line 132
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 133
    .line 134
    .line 135
    new-instance v6, Lc5/s;

    .line 136
    .line 137
    iget-object v14, v3, Lc5/s;->a:Ljava/lang/String;

    .line 138
    .line 139
    new-instance v15, Lc5/q;

    .line 140
    .line 141
    invoke-direct {v15, v4}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    iget-object v4, v3, Lc5/s;->c:Ljava/lang/String;

    .line 145
    .line 146
    iget-wide v7, v3, Lc5/s;->d:J

    .line 147
    .line 148
    move-object v13, v6

    .line 149
    move-object/from16 v16, v4

    .line 150
    .line 151
    move-wide/from16 v17, v7

    .line 152
    .line 153
    invoke-direct/range {v13 .. v18}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v3, v3, Lc5/s;->c:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    .line 164
    .line 165
    const-string v4, "Dropping non-safelisted event. appId, event name, origin"

    .line 166
    .line 167
    invoke-virtual {v0, v4, v2, v6, v3}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_5
    move-object v13, v3

    .line 172
    :goto_1
    iget-object v3, v1, Lc5/o7;->c:Lc5/i;

    .line 173
    .line 174
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Lc5/i;->P()V

    .line 178
    .line 179
    .line 180
    :try_start_0
    iget-object v3, v1, Lc5/o7;->c:Lc5/i;

    .line 181
    .line 182
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Lc5/x4;->b()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Lc5/j7;->c()V

    .line 192
    .line 193
    .line 194
    const-wide/16 v6, 0x0

    .line 195
    .line 196
    const/4 v4, 0x2

    .line 197
    cmp-long v8, v10, v6

    .line 198
    .line 199
    if-gez v8, :cond_6

    .line 200
    .line 201
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 202
    .line 203
    check-cast v3, Lc5/i4;

    .line 204
    .line 205
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 206
    .line 207
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 208
    .line 209
    .line 210
    iget-object v3, v3, Lc5/e3;->j:Lc5/c3;

    .line 211
    .line 212
    const-string v6, "Invalid time querying timed out conditional properties"

    .line 213
    .line 214
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-virtual {v3, v7, v6, v9}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    goto :goto_2

    .line 230
    :cond_6
    new-array v6, v4, [Ljava/lang/String;

    .line 231
    .line 232
    aput-object v2, v6, v5

    .line 233
    .line 234
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    aput-object v7, v6, v12

    .line 239
    .line 240
    const-string v7, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 241
    .line 242
    invoke-virtual {v3, v7, v6}, Lc5/i;->M(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v14, v1, Lc5/o7;->m:Lc5/i4;

    .line 255
    .line 256
    if-eqz v6, :cond_9

    .line 257
    .line 258
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    check-cast v6, Lc5/b;

    .line 263
    .line 264
    if-eqz v6, :cond_7

    .line 265
    .line 266
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    iget-object v7, v7, Lc5/e3;->p:Lc5/c3;

    .line 271
    .line 272
    const-string v9, "User property timed out"

    .line 273
    .line 274
    iget-object v15, v6, Lc5/b;->a:Ljava/lang/String;

    .line 275
    .line 276
    iget-object v14, v14, Lc5/i4;->n:Lc5/z2;

    .line 277
    .line 278
    iget-object v12, v6, Lc5/b;->c:Lc5/r7;

    .line 279
    .line 280
    iget-object v12, v12, Lc5/r7;->b:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v14, v12}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    iget-object v14, v6, Lc5/b;->c:Lc5/r7;

    .line 287
    .line 288
    invoke-virtual {v14}, Lc5/r7;->E()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    invoke-virtual {v7, v9, v15, v12, v14}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    iget-object v7, v6, Lc5/b;->g:Lc5/s;

    .line 296
    .line 297
    if-eqz v7, :cond_8

    .line 298
    .line 299
    new-instance v9, Lc5/s;

    .line 300
    .line 301
    invoke-direct {v9, v7, v10, v11}, Lc5/s;-><init>(Lc5/s;J)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v9, v0}, Lc5/o7;->u(Lc5/s;Lc5/y7;)V

    .line 305
    .line 306
    .line 307
    :cond_8
    iget-object v7, v1, Lc5/o7;->c:Lc5/i;

    .line 308
    .line 309
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    .line 310
    .line 311
    .line 312
    iget-object v6, v6, Lc5/b;->c:Lc5/r7;

    .line 313
    .line 314
    iget-object v6, v6, Lc5/r7;->b:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v7, v2, v6}, Lc5/i;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const/4 v12, 0x1

    .line 320
    goto :goto_3

    .line 321
    :cond_9
    iget-object v3, v1, Lc5/o7;->c:Lc5/i;

    .line 322
    .line 323
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3}, Lc5/x4;->b()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3}, Lc5/j7;->c()V

    .line 333
    .line 334
    .line 335
    if-gez v8, :cond_a

    .line 336
    .line 337
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 338
    .line 339
    check-cast v3, Lc5/i4;

    .line 340
    .line 341
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 342
    .line 343
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 344
    .line 345
    .line 346
    iget-object v3, v3, Lc5/e3;->j:Lc5/c3;

    .line 347
    .line 348
    const-string v6, "Invalid time querying expired conditional properties"

    .line 349
    .line 350
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    invoke-virtual {v3, v7, v6, v9}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    goto :goto_4

    .line 366
    :cond_a
    new-array v6, v4, [Ljava/lang/String;

    .line 367
    .line 368
    aput-object v2, v6, v5

    .line 369
    .line 370
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    const/4 v9, 0x1

    .line 375
    aput-object v7, v6, v9

    .line 376
    .line 377
    const-string v7, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 378
    .line 379
    invoke-virtual {v3, v7, v6}, Lc5/i;->M(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 386
    .line 387
    .line 388
    move-result v7

    .line 389
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    .line 391
    .line 392
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    :cond_b
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    if-eqz v7, :cond_d

    .line 401
    .line 402
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    check-cast v7, Lc5/b;

    .line 407
    .line 408
    if-eqz v7, :cond_b

    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    iget-object v9, v9, Lc5/e3;->p:Lc5/c3;

    .line 415
    .line 416
    const-string v12, "User property expired"

    .line 417
    .line 418
    iget-object v15, v7, Lc5/b;->a:Ljava/lang/String;

    .line 419
    .line 420
    iget-object v4, v14, Lc5/i4;->n:Lc5/z2;

    .line 421
    .line 422
    iget-object v5, v7, Lc5/b;->c:Lc5/r7;

    .line 423
    .line 424
    iget-object v5, v5, Lc5/r7;->b:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v4, v5}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    iget-object v5, v7, Lc5/b;->c:Lc5/r7;

    .line 431
    .line 432
    invoke-virtual {v5}, Lc5/r7;->E()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-virtual {v9, v12, v15, v4, v5}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    iget-object v4, v1, Lc5/o7;->c:Lc5/i;

    .line 440
    .line 441
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 442
    .line 443
    .line 444
    iget-object v5, v7, Lc5/b;->c:Lc5/r7;

    .line 445
    .line 446
    iget-object v5, v5, Lc5/r7;->b:Ljava/lang/String;

    .line 447
    .line 448
    invoke-virtual {v4, v2, v5}, Lc5/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    iget-object v4, v7, Lc5/b;->l:Lc5/s;

    .line 452
    .line 453
    if-eqz v4, :cond_c

    .line 454
    .line 455
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    :cond_c
    iget-object v4, v1, Lc5/o7;->c:Lc5/i;

    .line 459
    .line 460
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 461
    .line 462
    .line 463
    iget-object v5, v7, Lc5/b;->c:Lc5/r7;

    .line 464
    .line 465
    iget-object v5, v5, Lc5/r7;->b:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v4, v2, v5}, Lc5/i;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    const/4 v4, 0x2

    .line 471
    const/4 v5, 0x0

    .line 472
    goto :goto_5

    .line 473
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    if-eqz v4, :cond_e

    .line 482
    .line 483
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    check-cast v4, Lc5/s;

    .line 488
    .line 489
    new-instance v5, Lc5/s;

    .line 490
    .line 491
    invoke-direct {v5, v4, v10, v11}, Lc5/s;-><init>(Lc5/s;J)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v5, v0}, Lc5/o7;->u(Lc5/s;Lc5/y7;)V

    .line 495
    .line 496
    .line 497
    goto :goto_6

    .line 498
    :cond_e
    iget-object v3, v1, Lc5/o7;->c:Lc5/i;

    .line 499
    .line 500
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    .line 502
    .line 503
    iget-object v4, v3, Lc5/x4;->a:Lc5/z4;

    .line 504
    .line 505
    :try_start_2
    iget-object v5, v13, Lc5/s;->a:Ljava/lang/String;

    .line 506
    .line 507
    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-static {v5}, Lr3/r;->f(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v3}, Lc5/x4;->b()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3}, Lc5/j7;->c()V

    .line 517
    .line 518
    .line 519
    if-gez v8, :cond_f

    .line 520
    .line 521
    move-object v3, v4

    .line 522
    check-cast v3, Lc5/i4;

    .line 523
    .line 524
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 525
    .line 526
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 527
    .line 528
    .line 529
    iget-object v3, v3, Lc5/e3;->j:Lc5/c3;

    .line 530
    .line 531
    const-string v6, "Invalid time querying triggered conditional properties"

    .line 532
    .line 533
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    check-cast v4, Lc5/i4;

    .line 538
    .line 539
    iget-object v4, v4, Lc5/i4;->n:Lc5/z2;

    .line 540
    .line 541
    invoke-virtual {v4, v5}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    invoke-virtual {v3, v6, v2, v4, v5}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    goto :goto_7

    .line 557
    :cond_f
    const/4 v4, 0x3

    .line 558
    new-array v4, v4, [Ljava/lang/String;

    .line 559
    .line 560
    const/4 v6, 0x0

    .line 561
    aput-object v2, v4, v6

    .line 562
    .line 563
    const/4 v2, 0x1

    .line 564
    aput-object v5, v4, v2

    .line 565
    .line 566
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    const/4 v5, 0x2

    .line 571
    aput-object v2, v4, v5

    .line 572
    .line 573
    const-string v2, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 574
    .line 575
    invoke-virtual {v3, v2, v4}, Lc5/i;->M(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    :goto_7
    new-instance v12, Ljava/util/ArrayList;

    .line 580
    .line 581
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 586
    .line 587
    .line 588
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    :cond_10
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    if-eqz v3, :cond_13

    .line 597
    .line 598
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    move-object v15, v3

    .line 603
    check-cast v15, Lc5/b;

    .line 604
    .line 605
    if-eqz v15, :cond_10

    .line 606
    .line 607
    iget-object v3, v15, Lc5/b;->c:Lc5/r7;

    .line 608
    .line 609
    new-instance v9, Lc5/t7;

    .line 610
    .line 611
    iget-object v4, v15, Lc5/b;->a:Ljava/lang/String;

    .line 612
    .line 613
    invoke-static {v4}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    iget-object v5, v15, Lc5/b;->b:Ljava/lang/String;

    .line 617
    .line 618
    iget-object v6, v3, Lc5/r7;->b:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v3}, Lc5/r7;->E()Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v16

    .line 624
    invoke-static/range {v16 .. v16}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    move-object v3, v9

    .line 628
    move-wide v7, v10

    .line 629
    move-object/from16 v17, v2

    .line 630
    .line 631
    move-object v2, v9

    .line 632
    move-object/from16 v9, v16

    .line 633
    .line 634
    invoke-direct/range {v3 .. v9}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    iget-object v3, v2, Lc5/t7;->e:Ljava/lang/Object;

    .line 638
    .line 639
    iget-object v4, v2, Lc5/t7;->c:Ljava/lang/String;

    .line 640
    .line 641
    iget-object v5, v1, Lc5/o7;->c:Lc5/i;

    .line 642
    .line 643
    invoke-static {v5}, Lc5/o7;->I(Lc5/j7;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v5, v2}, Lc5/i;->u(Lc5/t7;)Z

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    if-eqz v5, :cond_11

    .line 651
    .line 652
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    iget-object v5, v5, Lc5/e3;->p:Lc5/c3;

    .line 657
    .line 658
    const-string v6, "User property triggered"

    .line 659
    .line 660
    iget-object v7, v15, Lc5/b;->a:Ljava/lang/String;

    .line 661
    .line 662
    iget-object v8, v14, Lc5/i4;->n:Lc5/z2;

    .line 663
    .line 664
    :goto_9
    invoke-virtual {v8, v4}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v4

    .line 668
    goto :goto_a

    .line 669
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    iget-object v5, v5, Lc5/e3;->f:Lc5/c3;

    .line 674
    .line 675
    const-string v6, "Too many active user properties, ignoring"

    .line 676
    .line 677
    iget-object v7, v15, Lc5/b;->a:Ljava/lang/String;

    .line 678
    .line 679
    invoke-static {v7}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 680
    .line 681
    .line 682
    move-result-object v7

    .line 683
    iget-object v8, v14, Lc5/i4;->n:Lc5/z2;

    .line 684
    .line 685
    goto :goto_9

    .line 686
    :goto_a
    invoke-virtual {v5, v6, v7, v4, v3}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    iget-object v3, v15, Lc5/b;->j:Lc5/s;

    .line 690
    .line 691
    if-eqz v3, :cond_12

    .line 692
    .line 693
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    :cond_12
    new-instance v3, Lc5/r7;

    .line 697
    .line 698
    invoke-direct {v3, v2}, Lc5/r7;-><init>(Lc5/t7;)V

    .line 699
    .line 700
    .line 701
    iput-object v3, v15, Lc5/b;->c:Lc5/r7;

    .line 702
    .line 703
    const/4 v2, 0x1

    .line 704
    iput-boolean v2, v15, Lc5/b;->e:Z

    .line 705
    .line 706
    iget-object v3, v1, Lc5/o7;->c:Lc5/i;

    .line 707
    .line 708
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v3, v15}, Lc5/i;->t(Lc5/b;)Z

    .line 712
    .line 713
    .line 714
    move-object/from16 v2, v17

    .line 715
    .line 716
    goto :goto_8

    .line 717
    :cond_13
    invoke-virtual {v1, v13, v0}, Lc5/o7;->u(Lc5/s;Lc5/y7;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    if-eqz v3, :cond_14

    .line 729
    .line 730
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    check-cast v3, Lc5/s;

    .line 735
    .line 736
    new-instance v4, Lc5/s;

    .line 737
    .line 738
    invoke-direct {v4, v3, v10, v11}, Lc5/s;-><init>(Lc5/s;J)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v1, v4, v0}, Lc5/o7;->u(Lc5/s;Lc5/y7;)V

    .line 742
    .line 743
    .line 744
    goto :goto_b

    .line 745
    :cond_14
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 746
    .line 747
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0}, Lc5/i;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 751
    .line 752
    .line 753
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 754
    .line 755
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0}, Lc5/i;->R()V

    .line 759
    .line 760
    .line 761
    return-void

    .line 762
    :catchall_0
    move-exception v0

    .line 763
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    .line 764
    .line 765
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v2}, Lc5/i;->R()V

    .line 769
    .line 770
    .line 771
    throw v0
.end method

.method public final e(Lc5/s;Ljava/lang/String;)V
    .locals 36
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget-object v2, v0, Lc5/o7;->c:Lc5/i;

    .line 8
    .line 9
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    invoke-virtual {v2}, Lc5/m4;->H()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0, v2}, Lc5/o7;->z(Lc5/m4;)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    const-string v4, "_ui"

    .line 37
    .line 38
    iget-object v5, v1, Lc5/s;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget-object v4, v4, Lc5/e3;->j:Lc5/c3;

    .line 55
    .line 56
    const-string v6, "Could not find package. appId"

    .line 57
    .line 58
    invoke-virtual {v4, v5, v6}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 77
    .line 78
    const-string v3, "App version does not match; dropping event. appId"

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    :goto_0
    new-instance v14, Lc5/y7;

    .line 85
    .line 86
    invoke-virtual {v2}, Lc5/m4;->K()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v2}, Lc5/m4;->H()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v2}, Lc5/m4;->B()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    iget-object v8, v2, Lc5/m4;->a:Lc5/i4;

    .line 99
    .line 100
    iget-object v9, v8, Lc5/i4;->k:Lc5/h4;

    .line 101
    .line 102
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Lc5/h4;->b()V

    .line 106
    .line 107
    .line 108
    iget-object v9, v2, Lc5/m4;->l:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v10, v8, Lc5/i4;->k:Lc5/h4;

    .line 111
    .line 112
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10}, Lc5/h4;->b()V

    .line 116
    .line 117
    .line 118
    iget-wide v10, v2, Lc5/m4;->m:J

    .line 119
    .line 120
    iget-object v12, v8, Lc5/i4;->k:Lc5/h4;

    .line 121
    .line 122
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v12}, Lc5/h4;->b()V

    .line 126
    .line 127
    .line 128
    iget-wide v12, v2, Lc5/m4;->n:J

    .line 129
    .line 130
    iget-object v15, v8, Lc5/i4;->k:Lc5/h4;

    .line 131
    .line 132
    invoke-static {v15}, Lc5/i4;->e(Lc5/y4;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v15}, Lc5/h4;->b()V

    .line 136
    .line 137
    .line 138
    iget-boolean v15, v2, Lc5/m4;->o:Z

    .line 139
    .line 140
    invoke-virtual {v2}, Lc5/m4;->I()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v16

    .line 144
    move-wide/from16 v17, v12

    .line 145
    .line 146
    iget-object v12, v8, Lc5/i4;->k:Lc5/h4;

    .line 147
    .line 148
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12}, Lc5/h4;->b()V

    .line 152
    .line 153
    .line 154
    iget-wide v12, v2, Lc5/m4;->p:J

    .line 155
    .line 156
    invoke-virtual {v2}, Lc5/m4;->A()Z

    .line 157
    .line 158
    .line 159
    move-result v22

    .line 160
    invoke-virtual {v2}, Lc5/m4;->D()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v24

    .line 164
    move-wide/from16 v19, v12

    .line 165
    .line 166
    iget-object v12, v8, Lc5/i4;->k:Lc5/h4;

    .line 167
    .line 168
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12}, Lc5/h4;->b()V

    .line 172
    .line 173
    .line 174
    iget-object v12, v2, Lc5/m4;->s:Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v2}, Lc5/m4;->C()J

    .line 177
    .line 178
    .line 179
    move-result-wide v26

    .line 180
    iget-object v8, v8, Lc5/i4;->k:Lc5/h4;

    .line 181
    .line 182
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8}, Lc5/h4;->b()V

    .line 186
    .line 187
    .line 188
    iget-object v8, v2, Lc5/m4;->u:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    move-object/from16 v25, v8

    .line 198
    .line 199
    invoke-virtual {v2}, Lc5/m4;->F()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    move-object/from16 v28, v12

    .line 204
    .line 205
    sget-object v12, Lc5/r2;->c0:Lc5/q2;

    .line 206
    .line 207
    invoke-virtual {v13, v8, v12}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_3

    .line 212
    .line 213
    invoke-virtual {v2}, Lc5/m4;->J()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    goto :goto_1

    .line 218
    :cond_3
    const/4 v2, 0x0

    .line 219
    :goto_1
    move-object/from16 v29, v2

    .line 220
    .line 221
    const/4 v13, 0x0

    .line 222
    move-wide/from16 v31, v19

    .line 223
    .line 224
    const/4 v2, 0x0

    .line 225
    move/from16 v33, v15

    .line 226
    .line 227
    move v15, v2

    .line 228
    const-wide/16 v19, 0x0

    .line 229
    .line 230
    const/16 v21, 0x0

    .line 231
    .line 232
    const/16 v23, 0x0

    .line 233
    .line 234
    invoke-virtual {v0, v3}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, Lc5/f;->d()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v30

    .line 242
    move-object v2, v14

    .line 243
    move-object/from16 v3, p2

    .line 244
    .line 245
    move-object/from16 v34, v25

    .line 246
    .line 247
    move-object v8, v9

    .line 248
    move-wide v9, v10

    .line 249
    move-object/from16 v25, v28

    .line 250
    .line 251
    move-wide/from16 v11, v17

    .line 252
    .line 253
    move-object/from16 v35, v14

    .line 254
    .line 255
    move/from16 v14, v33

    .line 256
    .line 257
    move-wide/from16 v17, v31

    .line 258
    .line 259
    move-object/from16 v28, v34

    .line 260
    .line 261
    invoke-direct/range {v2 .. v30}, Lc5/y7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    move-object/from16 v2, v35

    .line 265
    .line 266
    invoke-virtual {v0, v1, v2}, Lc5/o7;->f(Lc5/s;Lc5/y7;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    const-string v2, "No app data available; dropping event"

    .line 275
    .line 276
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 277
    .line 278
    invoke-virtual {v1, v3, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public final f(Lc5/s;Lc5/y7;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p2, Lc5/y7;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lc5/f3;->b(Lc5/s;)Lc5/f3;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lc5/o7;->Q()Lc5/v7;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 15
    .line 16
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p2, Lc5/y7;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, v1, Lc5/x4;->a:Lc5/z4;

    .line 22
    .line 23
    invoke-virtual {v1}, Lc5/x4;->b()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lc5/j7;->c()V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    :try_start_0
    invoke-virtual {v1}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/4 v6, 0x1

    .line 35
    new-array v6, v6, [Ljava/lang/String;

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    aput-object v2, v6, v7

    .line 39
    .line 40
    const-string v8, "select parameters from default_event_params where app_id=?"

    .line 41
    .line 42
    invoke-virtual {v5, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    .line 44
    .line 45
    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_0

    .line 51
    .line 52
    move-object v1, v3

    .line 53
    check-cast v1, Lc5/i4;

    .line 54
    .line 55
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 56
    .line 57
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 61
    .line 62
    const-string v6, "Default event parameters not found"

    .line 63
    .line 64
    invoke-virtual {v1, v6}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_0
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 70
    .line 71
    .line 72
    move-result-object v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h3;->v()Lcom/google/android/gms/internal/measurement/g3;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-static {v7, v6}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Lcom/google/android/gms/internal/measurement/g3;

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Lcom/google/android/gms/internal/measurement/h3;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    .line 89
    :try_start_3
    iget-object v1, v1, Lc5/i7;->b:Lc5/o7;

    .line 90
    .line 91
    invoke-virtual {v1}, Lc5/o7;->P()Lc5/q7;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h3;->z()Lcom/google/android/gms/internal/measurement/w6;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v6, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_5

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Lcom/google/android/gms/internal/measurement/l3;

    .line 118
    .line 119
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->K()Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_2

    .line 128
    .line 129
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->r()D

    .line 130
    .line 131
    .line 132
    move-result-wide v9

    .line 133
    invoke-virtual {v6, v8, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->L()Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-eqz v9, :cond_3

    .line 142
    .line 143
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->s()F

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->O()Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_4

    .line 156
    .line 157
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->M()Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-eqz v9, :cond_1

    .line 170
    .line 171
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    .line 172
    .line 173
    .line 174
    move-result-wide v9

    .line 175
    invoke-virtual {v6, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 180
    .line 181
    .line 182
    move-object v4, v6

    .line 183
    goto :goto_3

    .line 184
    :catch_0
    move-exception v1

    .line 185
    :try_start_4
    move-object v6, v3

    .line 186
    check-cast v6, Lc5/i4;

    .line 187
    .line 188
    iget-object v6, v6, Lc5/i4;->j:Lc5/e3;

    .line 189
    .line 190
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 191
    .line 192
    .line 193
    iget-object v6, v6, Lc5/e3;->f:Lc5/c3;

    .line 194
    .line 195
    const-string v7, "Failed to retrieve default event parameters. appId"

    .line 196
    .line 197
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v6, v8, v7, v1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_1
    move-exception v1

    .line 206
    goto :goto_1

    .line 207
    :catchall_0
    move-exception p1

    .line 208
    goto/16 :goto_5

    .line 209
    .line 210
    :catch_2
    move-exception v1

    .line 211
    move-object v5, v4

    .line 212
    :goto_1
    :try_start_5
    check-cast v3, Lc5/i4;

    .line 213
    .line 214
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 215
    .line 216
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 217
    .line 218
    .line 219
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 220
    .line 221
    const-string v6, "Error selecting default event parameters"

    .line 222
    .line 223
    invoke-virtual {v3, v1, v6}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 224
    .line 225
    .line 226
    if-eqz v5, :cond_6

    .line 227
    .line 228
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 229
    .line 230
    .line 231
    :cond_6
    :goto_3
    iget-object v1, p1, Lc5/f3;->d:Landroid/os/Bundle;

    .line 232
    .line 233
    invoke-virtual {v0, v1, v4}, Lc5/v7;->u(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lc5/o7;->Q()Lc5/v7;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lc5/o7;->K()Lc5/e;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    sget-object v3, Lc5/r2;->I:Lc5/q2;

    .line 248
    .line 249
    invoke-virtual {v1, v2, v3}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    const/16 v2, 0x64

    .line 254
    .line 255
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    const/16 v2, 0x19

    .line 260
    .line 261
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {v0, p1, v1}, Lc5/v7;->v(Lc5/f3;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Lc5/f3;->a()Lc5/s;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    const-string v0, "_cmp"

    .line 273
    .line 274
    iget-object v1, p1, Lc5/s;->a:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-nez v0, :cond_7

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_7
    iget-object v0, p1, Lc5/s;->b:Lc5/q;

    .line 284
    .line 285
    iget-object v1, v0, Lc5/q;->a:Landroid/os/Bundle;

    .line 286
    .line 287
    const-string v2, "_cis"

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    const-string v2, "referrer API v2"

    .line 294
    .line 295
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_8

    .line 300
    .line 301
    iget-object v0, v0, Lc5/q;->a:Landroid/os/Bundle;

    .line 302
    .line 303
    const-string v1, "gclid"

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-nez v0, :cond_8

    .line 314
    .line 315
    new-instance v0, Lc5/r7;

    .line 316
    .line 317
    const-string v6, "_lgclid"

    .line 318
    .line 319
    iget-wide v3, p1, Lc5/s;->d:J

    .line 320
    .line 321
    const-string v7, "auto"

    .line 322
    .line 323
    move-object v2, v0

    .line 324
    invoke-direct/range {v2 .. v7}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v0, p2}, Lc5/o7;->s(Lc5/r7;Lc5/y7;)V

    .line 328
    .line 329
    .line 330
    :cond_8
    :goto_4
    invoke-virtual {p0, p1, p2}, Lc5/o7;->d(Lc5/s;Lc5/y7;)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :catchall_1
    move-exception p1

    .line 335
    move-object v4, v5

    .line 336
    :goto_5
    if-eqz v4, :cond_9

    .line 337
    .line 338
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 339
    .line 340
    .line 341
    :cond_9
    throw p1
.end method

.method public final g(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lc5/o7;->b()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p4, :cond_0

    .line 16
    .line 17
    :try_start_0
    new-array p4, v0, [B

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 24
    .line 25
    array-length v2, p4

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "onConfigFetched. Response size"

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 36
    .line 37
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lc5/i;->P()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 44
    .line 45
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/16 v3, 0xc8

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    const/16 v5, 0x130

    .line 56
    .line 57
    if-eq p2, v3, :cond_1

    .line 58
    .line 59
    const/16 v3, 0xcc

    .line 60
    .line 61
    if-eq p2, v3, :cond_1

    .line 62
    .line 63
    if-ne p2, v5, :cond_2

    .line 64
    .line 65
    const/16 p2, 0x130

    .line 66
    .line 67
    :cond_1
    if-nez p3, :cond_2

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v3, 0x0

    .line 72
    :goto_0
    if-nez v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iget-object p2, p2, Lc5/e3;->j:Lc5/c3;

    .line 79
    .line 80
    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 81
    .line 82
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2, p1, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto/16 :goto_9

    .line 90
    .line 91
    :cond_3
    const/16 v6, 0x194

    .line 92
    .line 93
    iget-object v7, p0, Lc5/o7;->a:Lc5/c4;

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    if-nez v3, :cond_7

    .line 97
    .line 98
    if-ne p2, v6, :cond_4

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    check-cast p4, Lc5/w;

    .line 107
    .line 108
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide p4

    .line 115
    iget-object v2, v1, Lc5/m4;->a:Lc5/i4;

    .line 116
    .line 117
    iget-object v2, v2, Lc5/i4;->k:Lc5/h4;

    .line 118
    .line 119
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lc5/h4;->b()V

    .line 123
    .line 124
    .line 125
    iget-boolean v2, v1, Lc5/m4;->D:Z

    .line 126
    .line 127
    iget-wide v5, v1, Lc5/m4;->F:J

    .line 128
    .line 129
    cmp-long v3, v5, p4

    .line 130
    .line 131
    if-eqz v3, :cond_5

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    const/4 v4, 0x0

    .line 135
    :goto_1
    or-int/2addr v2, v4

    .line 136
    iput-boolean v2, v1, Lc5/m4;->D:Z

    .line 137
    .line 138
    iput-wide p4, v1, Lc5/m4;->F:J

    .line 139
    .line 140
    iget-object p4, p0, Lc5/o7;->c:Lc5/i;

    .line 141
    .line 142
    invoke-static {p4}, Lc5/o7;->I(Lc5/j7;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p4, v1}, Lc5/i;->o(Lc5/m4;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    iget-object p4, p4, Lc5/e3;->p:Lc5/c3;

    .line 153
    .line 154
    const-string p5, "Fetching config failed. code, error"

    .line 155
    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p4, v1, p5, p3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7}, Lc5/x4;->b()V

    .line 167
    .line 168
    .line 169
    iget-object p3, v7, Lc5/c4;->l:Landroidx/collection/ArrayMap;

    .line 170
    .line 171
    invoke-interface {p3, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lc5/o7;->j:Lc5/u6;

    .line 175
    .line 176
    iget-object p1, p1, Lc5/u6;->k:Lc5/o3;

    .line 177
    .line 178
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    check-cast p3, Lc5/w;

    .line 183
    .line 184
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 188
    .line 189
    .line 190
    move-result-wide p3

    .line 191
    invoke-virtual {p1, p3, p4}, Lc5/o3;->b(J)V

    .line 192
    .line 193
    .line 194
    const/16 p1, 0x1f7

    .line 195
    .line 196
    if-eq p2, p1, :cond_6

    .line 197
    .line 198
    const/16 p1, 0x1ad

    .line 199
    .line 200
    if-ne p2, p1, :cond_e

    .line 201
    .line 202
    :cond_6
    iget-object p1, p0, Lc5/o7;->j:Lc5/u6;

    .line 203
    .line 204
    iget-object p1, p1, Lc5/u6;->h:Lc5/o3;

    .line 205
    .line 206
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    check-cast p2, Lc5/w;

    .line 211
    .line 212
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 216
    .line 217
    .line 218
    move-result-wide p2

    .line 219
    invoke-virtual {p1, p2, p3}, Lc5/o3;->b(J)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_8

    .line 223
    .line 224
    :catchall_0
    move-exception p1

    .line 225
    goto/16 :goto_a

    .line 226
    .line 227
    :cond_7
    :goto_2
    if-eqz p5, :cond_8

    .line 228
    .line 229
    const-string p3, "Last-Modified"

    .line 230
    .line 231
    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    check-cast p3, Ljava/util/List;

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_8
    move-object p3, v8

    .line 239
    :goto_3
    if-eqz p3, :cond_9

    .line 240
    .line 241
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 242
    .line 243
    .line 244
    move-result p5

    .line 245
    if-lez p5, :cond_9

    .line 246
    .line 247
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    check-cast p3, Ljava/lang/String;

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_9
    move-object p3, v8

    .line 255
    :goto_4
    if-eq p2, v6, :cond_b

    .line 256
    .line 257
    if-ne p2, v5, :cond_a

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_a
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7, p4, p1, p3}, Lc5/c4;->q([BLjava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_b
    :goto_5
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, p1}, Lc5/c4;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w2;

    .line 271
    .line 272
    .line 273
    move-result-object p3

    .line 274
    if-nez p3, :cond_c

    .line 275
    .line 276
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v8, p1, v8}, Lc5/c4;->q([BLjava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 283
    .line 284
    .line 285
    move-result-object p3

    .line 286
    check-cast p3, Lc5/w;

    .line 287
    .line 288
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 292
    .line 293
    .line 294
    move-result-wide p3

    .line 295
    invoke-virtual {v1, p3, p4}, Lc5/m4;->g(J)V

    .line 296
    .line 297
    .line 298
    iget-object p3, p0, Lc5/o7;->c:Lc5/i;

    .line 299
    .line 300
    invoke-static {p3}, Lc5/o7;->I(Lc5/j7;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3, v1}, Lc5/i;->o(Lc5/m4;)V

    .line 304
    .line 305
    .line 306
    if-ne p2, v6, :cond_d

    .line 307
    .line 308
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    iget-object p2, p2, Lc5/e3;->l:Lc5/c3;

    .line 313
    .line 314
    const-string p3, "Config not found. Using empty config. appId"

    .line 315
    .line 316
    invoke-virtual {p2, p1, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_d
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 325
    .line 326
    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 327
    .line 328
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    invoke-virtual {p1, p2, p3, v2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    :goto_7
    iget-object p1, p0, Lc5/o7;->b:Lc5/j3;

    .line 336
    .line 337
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1}, Lc5/j3;->g()Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_e

    .line 345
    .line 346
    invoke-virtual {p0}, Lc5/o7;->G()Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-eqz p1, :cond_e

    .line 351
    .line 352
    invoke-virtual {p0}, Lc5/o7;->t()V

    .line 353
    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_e
    :goto_8
    invoke-virtual {p0}, Lc5/o7;->D()V

    .line 357
    .line 358
    .line 359
    :goto_9
    iget-object p1, p0, Lc5/o7;->c:Lc5/i;

    .line 360
    .line 361
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1}, Lc5/i;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    .line 366
    .line 367
    :try_start_3
    iget-object p1, p0, Lc5/o7;->c:Lc5/i;

    .line 368
    .line 369
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1}, Lc5/i;->R()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    .line 374
    .line 375
    iput-boolean v0, p0, Lc5/o7;->v:Z

    .line 376
    .line 377
    invoke-virtual {p0}, Lc5/o7;->A()V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :goto_a
    :try_start_4
    iget-object p2, p0, Lc5/o7;->c:Lc5/i;

    .line 382
    .line 383
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p2}, Lc5/i;->R()V

    .line 387
    .line 388
    .line 389
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 390
    :catchall_1
    move-exception p1

    .line 391
    iput-boolean v0, p0, Lc5/o7;->v:Z

    .line 392
    .line 393
    invoke-virtual {p0}, Lc5/o7;->A()V

    .line 394
    .line 395
    .line 396
    throw p1
.end method

.method public final h(Lc5/y7;)V
    .locals 27
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "_sysu"

    .line 6
    .line 7
    const-string v4, "_sys"

    .line 8
    .line 9
    const-string v5, "com.android.vending"

    .line 10
    .line 11
    const-string v6, "_pfo"

    .line 12
    .line 13
    const-string v7, "_uwa"

    .line 14
    .line 15
    const-string v0, "app_id=?"

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual {v8}, Lc5/h4;->b()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->b()V

    .line 25
    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v8, v2, Lc5/y7;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v8}, Lr3/r;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p1}, Lc5/o7;->E(Lc5/y7;)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-eqz v9, :cond_27

    .line 40
    .line 41
    iget-object v9, v1, Lc5/o7;->c:Lc5/i;

    .line 42
    .line 43
    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9, v8}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    const-wide/16 v10, 0x0

    .line 51
    .line 52
    iget-object v12, v2, Lc5/y7;->b:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v9, :cond_0

    .line 55
    .line 56
    invoke-virtual {v9}, Lc5/m4;->K()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    if-eqz v13, :cond_0

    .line 65
    .line 66
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    if-nez v13, :cond_0

    .line 71
    .line 72
    invoke-virtual {v9, v10, v11}, Lc5/m4;->g(J)V

    .line 73
    .line 74
    .line 75
    iget-object v13, v1, Lc5/o7;->c:Lc5/i;

    .line 76
    .line 77
    invoke-static {v13}, Lc5/o7;->I(Lc5/j7;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v13, v9}, Lc5/i;->o(Lc5/m4;)V

    .line 81
    .line 82
    .line 83
    iget-object v9, v1, Lc5/o7;->a:Lc5/c4;

    .line 84
    .line 85
    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Lc5/x4;->b()V

    .line 89
    .line 90
    .line 91
    iget-object v9, v9, Lc5/c4;->g:Landroidx/collection/ArrayMap;

    .line 92
    .line 93
    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-boolean v9, v2, Lc5/y7;->h:Z

    .line 97
    .line 98
    if-nez v9, :cond_1

    .line 99
    .line 100
    invoke-virtual/range {p0 .. p1}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    iget-wide v13, v2, Lc5/y7;->n:J

    .line 105
    .line 106
    cmp-long v9, v13, v10

    .line 107
    .line 108
    if-nez v9, :cond_2

    .line 109
    .line 110
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->i()Lw3/a;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    check-cast v9, Lc5/w;

    .line 115
    .line 116
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v13

    .line 123
    :cond_2
    iget-object v9, v1, Lc5/o7;->m:Lc5/i4;

    .line 124
    .line 125
    invoke-virtual {v9}, Lc5/i4;->n()Lc5/m;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    iget-object v9, v9, Lc5/i4;->a:Landroid/content/Context;

    .line 130
    .line 131
    invoke-virtual {v15}, Lc5/x4;->b()V

    .line 132
    .line 133
    .line 134
    move-object/from16 v21, v9

    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    iput-object v9, v15, Lc5/m;->f:Ljava/lang/Boolean;

    .line 138
    .line 139
    iput-wide v10, v15, Lc5/m;->g:J

    .line 140
    .line 141
    const/4 v9, 0x1

    .line 142
    iget v15, v2, Lc5/y7;->p:I

    .line 143
    .line 144
    if-eqz v15, :cond_3

    .line 145
    .line 146
    if-eq v15, v9, :cond_3

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-static {v8}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v15

    .line 160
    iget-object v10, v10, Lc5/e3;->j:Lc5/c3;

    .line 161
    .line 162
    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    .line 163
    .line 164
    invoke-virtual {v10, v11, v9, v15}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    const/4 v9, 0x0

    .line 168
    goto :goto_0

    .line 169
    :cond_3
    move v9, v15

    .line 170
    :goto_0
    iget-object v10, v1, Lc5/o7;->c:Lc5/i;

    .line 171
    .line 172
    invoke-static {v10}, Lc5/o7;->I(Lc5/j7;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10}, Lc5/i;->P()V

    .line 176
    .line 177
    .line 178
    :try_start_0
    iget-object v10, v1, Lc5/o7;->c:Lc5/i;

    .line 179
    .line 180
    invoke-static {v10}, Lc5/o7;->I(Lc5/j7;)V

    .line 181
    .line 182
    .line 183
    const-string v11, "_npa"

    .line 184
    .line 185
    invoke-virtual {v10, v8, v11}, Lc5/i;->I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    move-object v11, v3

    .line 190
    move-object/from16 v22, v4

    .line 191
    .line 192
    if-eqz v10, :cond_5

    .line 193
    .line 194
    const-string v15, "auto"

    .line 195
    .line 196
    iget-object v3, v10, Lc5/t7;->b:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_4

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_4
    const/4 v3, 0x0

    .line 206
    goto :goto_3

    .line 207
    :cond_5
    :goto_1
    iget-object v3, v2, Lc5/y7;->t:Ljava/lang/Boolean;

    .line 208
    .line 209
    if-eqz v3, :cond_8

    .line 210
    .line 211
    new-instance v4, Lc5/r7;

    .line 212
    .line 213
    const-string v19, "_npa"

    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    const/4 v15, 0x1

    .line 220
    if-eq v15, v3, :cond_6

    .line 221
    .line 222
    const-wide/16 v17, 0x0

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_6
    const-wide/16 v17, 0x1

    .line 226
    .line 227
    :goto_2
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v18

    .line 231
    const-string v20, "auto"

    .line 232
    .line 233
    const/4 v3, 0x0

    .line 234
    move-object v15, v4

    .line 235
    move-wide/from16 v16, v13

    .line 236
    .line 237
    invoke-direct/range {v15 .. v20}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    if-eqz v10, :cond_7

    .line 241
    .line 242
    iget-object v10, v10, Lc5/t7;->e:Ljava/lang/Object;

    .line 243
    .line 244
    iget-object v15, v4, Lc5/r7;->d:Ljava/lang/Long;

    .line 245
    .line 246
    invoke-virtual {v10, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    if-nez v10, :cond_9

    .line 251
    .line 252
    :cond_7
    invoke-virtual {v1, v4, v2}, Lc5/o7;->s(Lc5/r7;Lc5/y7;)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_8
    const/4 v3, 0x0

    .line 257
    if-eqz v10, :cond_9

    .line 258
    .line 259
    new-instance v4, Lc5/r7;

    .line 260
    .line 261
    const-string v19, "_npa"

    .line 262
    .line 263
    const/16 v18, 0x0

    .line 264
    .line 265
    const-string v20, "auto"

    .line 266
    .line 267
    move-object v15, v4

    .line 268
    move-wide/from16 v16, v13

    .line 269
    .line 270
    invoke-direct/range {v15 .. v20}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v4, v2}, Lc5/o7;->o(Lc5/r7;Lc5/y7;)V

    .line 274
    .line 275
    .line 276
    :cond_9
    :goto_3
    iget-object v4, v1, Lc5/o7;->c:Lc5/i;

    .line 277
    .line 278
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v8}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v8}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    if-eqz v4, :cond_b

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Lc5/m4;->K()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    iget-object v15, v2, Lc5/y7;->s:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v4}, Lc5/m4;->D()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {v12, v10, v15, v3}, Lc5/v7;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_b

    .line 308
    .line 309
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    iget-object v3, v3, Lc5/e3;->j:Lc5/c3;

    .line 314
    .line 315
    const-string v10, "New GMP App Id passed in. Removing cached database data. appId"

    .line 316
    .line 317
    invoke-virtual {v4}, Lc5/m4;->F()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v12

    .line 321
    invoke-static {v12}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    invoke-virtual {v3, v12, v10}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget-object v3, v1, Lc5/o7;->c:Lc5/i;

    .line 329
    .line 330
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .line 332
    .line 333
    iget-object v10, v3, Lc5/x4;->a:Lc5/z4;

    .line 334
    .line 335
    :try_start_1
    invoke-virtual {v4}, Lc5/m4;->F()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v3}, Lc5/j7;->c()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3}, Lc5/x4;->b()V

    .line 343
    .line 344
    .line 345
    invoke-static {v4}, Lr3/r;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    .line 347
    .line 348
    :try_start_2
    invoke-virtual {v3}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    const/4 v12, 0x1

    .line 353
    new-array v15, v12, [Ljava/lang/String;

    .line 354
    .line 355
    const/4 v12, 0x0

    .line 356
    aput-object v4, v15, v12

    .line 357
    .line 358
    const-string v12, "events"

    .line 359
    .line 360
    invoke-virtual {v3, v12, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    move-object/from16 v23, v11

    .line 365
    .line 366
    :try_start_3
    const-string v11, "user_attributes"

    .line 367
    .line 368
    invoke-virtual {v3, v11, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    add-int/2addr v12, v11

    .line 373
    const-string v11, "conditional_properties"

    .line 374
    .line 375
    invoke-virtual {v3, v11, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result v11

    .line 379
    add-int/2addr v12, v11

    .line 380
    const-string v11, "apps"

    .line 381
    .line 382
    invoke-virtual {v3, v11, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v11

    .line 386
    add-int/2addr v12, v11

    .line 387
    const-string v11, "raw_events"

    .line 388
    .line 389
    invoke-virtual {v3, v11, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    move-result v11

    .line 393
    add-int/2addr v12, v11

    .line 394
    const-string v11, "raw_events_metadata"

    .line 395
    .line 396
    invoke-virtual {v3, v11, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    move-result v11

    .line 400
    add-int/2addr v12, v11

    .line 401
    const-string v11, "event_filters"

    .line 402
    .line 403
    invoke-virtual {v3, v11, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    add-int/2addr v12, v11

    .line 408
    const-string v11, "property_filters"

    .line 409
    .line 410
    invoke-virtual {v3, v11, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    move-result v11

    .line 414
    add-int/2addr v12, v11

    .line 415
    const-string v11, "audience_filter_values"

    .line 416
    .line 417
    invoke-virtual {v3, v11, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    move-result v11

    .line 421
    add-int/2addr v12, v11

    .line 422
    const-string v11, "consent_settings"

    .line 423
    .line 424
    invoke-virtual {v3, v11, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    add-int/2addr v12, v0

    .line 429
    if-lez v12, :cond_a

    .line 430
    .line 431
    move-object v0, v10

    .line 432
    check-cast v0, Lc5/i4;

    .line 433
    .line 434
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 435
    .line 436
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 437
    .line 438
    .line 439
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 440
    .line 441
    const-string v3, "Deleted application data. app, records"

    .line 442
    .line 443
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    invoke-virtual {v0, v4, v3, v11}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    .line 449
    .line 450
    goto :goto_5

    .line 451
    :catch_0
    move-exception v0

    .line 452
    goto :goto_4

    .line 453
    :catch_1
    move-exception v0

    .line 454
    move-object/from16 v23, v11

    .line 455
    .line 456
    :goto_4
    :try_start_4
    check-cast v10, Lc5/i4;

    .line 457
    .line 458
    iget-object v3, v10, Lc5/i4;->j:Lc5/e3;

    .line 459
    .line 460
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 461
    .line 462
    .line 463
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 464
    .line 465
    const-string v10, "Error deleting application data. appId, error"

    .line 466
    .line 467
    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v3, v4, v10, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    :cond_a
    :goto_5
    const/4 v4, 0x0

    .line 475
    goto :goto_6

    .line 476
    :cond_b
    move-object/from16 v23, v11

    .line 477
    .line 478
    :goto_6
    if-eqz v4, :cond_f

    .line 479
    .line 480
    invoke-virtual {v4}, Lc5/m4;->B()J

    .line 481
    .line 482
    .line 483
    move-result-wide v10

    .line 484
    const-wide/32 v15, -0x80000000

    .line 485
    .line 486
    .line 487
    cmp-long v0, v10, v15

    .line 488
    .line 489
    if-eqz v0, :cond_c

    .line 490
    .line 491
    invoke-virtual {v4}, Lc5/m4;->B()J

    .line 492
    .line 493
    .line 494
    move-result-wide v10

    .line 495
    move-object v3, v6

    .line 496
    move-object v12, v7

    .line 497
    iget-wide v6, v2, Lc5/y7;->k:J

    .line 498
    .line 499
    cmp-long v0, v10, v6

    .line 500
    .line 501
    if-eqz v0, :cond_d

    .line 502
    .line 503
    const/4 v0, 0x1

    .line 504
    goto :goto_7

    .line 505
    :cond_c
    move-object v3, v6

    .line 506
    move-object v12, v7

    .line 507
    :cond_d
    const/4 v0, 0x0

    .line 508
    :goto_7
    invoke-virtual {v4}, Lc5/m4;->H()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    invoke-virtual {v4}, Lc5/m4;->B()J

    .line 513
    .line 514
    .line 515
    move-result-wide v10

    .line 516
    cmp-long v4, v10, v15

    .line 517
    .line 518
    if-nez v4, :cond_e

    .line 519
    .line 520
    if-eqz v6, :cond_e

    .line 521
    .line 522
    iget-object v4, v2, Lc5/y7;->c:Ljava/lang/String;

    .line 523
    .line 524
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    if-nez v4, :cond_e

    .line 529
    .line 530
    const/4 v15, 0x1

    .line 531
    goto :goto_8

    .line 532
    :cond_e
    const/4 v15, 0x0

    .line 533
    :goto_8
    or-int/2addr v0, v15

    .line 534
    if-eqz v0, :cond_10

    .line 535
    .line 536
    new-instance v0, Landroid/os/Bundle;

    .line 537
    .line 538
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 539
    .line 540
    .line 541
    const-string v4, "_pv"

    .line 542
    .line 543
    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    new-instance v4, Lc5/s;

    .line 547
    .line 548
    new-instance v6, Lc5/q;

    .line 549
    .line 550
    invoke-direct {v6, v0}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 551
    .line 552
    .line 553
    const-string v16, "_au"

    .line 554
    .line 555
    const-string v18, "auto"

    .line 556
    .line 557
    move-object v15, v4

    .line 558
    move-object/from16 v17, v6

    .line 559
    .line 560
    move-wide/from16 v19, v13

    .line 561
    .line 562
    invoke-direct/range {v15 .. v20}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v4, v2}, Lc5/o7;->d(Lc5/s;Lc5/y7;)V

    .line 566
    .line 567
    .line 568
    goto :goto_9

    .line 569
    :cond_f
    move-object v3, v6

    .line 570
    move-object v12, v7

    .line 571
    :cond_10
    :goto_9
    invoke-virtual/range {p0 .. p1}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 572
    .line 573
    .line 574
    if-nez v9, :cond_11

    .line 575
    .line 576
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 577
    .line 578
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 579
    .line 580
    .line 581
    const-string v4, "_f"

    .line 582
    .line 583
    invoke-virtual {v0, v8, v4}, Lc5/i;->H(Ljava/lang/String;Ljava/lang/String;)Lc5/o;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    const/4 v15, 0x0

    .line 588
    goto :goto_a

    .line 589
    :cond_11
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 590
    .line 591
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 592
    .line 593
    .line 594
    const-string v4, "_v"

    .line 595
    .line 596
    invoke-virtual {v0, v8, v4}, Lc5/i;->H(Ljava/lang/String;Ljava/lang/String;)Lc5/o;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    const/4 v15, 0x1

    .line 601
    :goto_a
    if-nez v0, :cond_25

    .line 602
    .line 603
    const-wide/32 v6, 0x36ee80

    .line 604
    .line 605
    .line 606
    div-long v9, v13, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 607
    .line 608
    const-wide/16 v16, 0x1

    .line 609
    .line 610
    add-long v9, v9, v16

    .line 611
    .line 612
    mul-long v9, v9, v6

    .line 613
    .line 614
    const-string v4, "_dac"

    .line 615
    .line 616
    const-string v6, "_r"

    .line 617
    .line 618
    const-string v7, "_c"

    .line 619
    .line 620
    const-string v11, "_et"

    .line 621
    .line 622
    move-object/from16 v24, v4

    .line 623
    .line 624
    iget-boolean v4, v2, Lc5/y7;->r:Z

    .line 625
    .line 626
    if-nez v15, :cond_23

    .line 627
    .line 628
    :try_start_5
    new-instance v0, Lc5/r7;

    .line 629
    .line 630
    const-string v19, "_fot"

    .line 631
    .line 632
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 633
    .line 634
    .line 635
    move-result-object v18

    .line 636
    const-string v20, "auto"

    .line 637
    .line 638
    move-object v15, v0

    .line 639
    move-wide/from16 v16, v13

    .line 640
    .line 641
    invoke-direct/range {v15 .. v20}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1, v0, v2}, Lc5/o7;->s(Lc5/r7;Lc5/y7;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 652
    .line 653
    .line 654
    iget-object v0, v1, Lc5/o7;->l:Lc5/v3;

    .line 655
    .line 656
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 660
    .line 661
    .line 662
    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 663
    iget-object v10, v0, Lc5/v3;->a:Lc5/i4;

    .line 664
    .line 665
    if-eqz v9, :cond_12

    .line 666
    .line 667
    :try_start_6
    iget-object v0, v10, Lc5/i4;->j:Lc5/e3;

    .line 668
    .line 669
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 670
    .line 671
    .line 672
    iget-object v0, v0, Lc5/e3;->k:Lc5/c3;

    .line 673
    .line 674
    const-string v5, "Install Referrer Reporter was called with invalid app package name"

    .line 675
    .line 676
    move-wide/from16 v25, v13

    .line 677
    .line 678
    goto/16 :goto_b

    .line 679
    .line 680
    :cond_12
    iget-object v9, v10, Lc5/i4;->k:Lc5/h4;

    .line 681
    .line 682
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v9}, Lc5/h4;->b()V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0}, Lc5/v3;->a()Z

    .line 689
    .line 690
    .line 691
    move-result v9

    .line 692
    if-nez v9, :cond_13

    .line 693
    .line 694
    iget-object v0, v10, Lc5/i4;->j:Lc5/e3;

    .line 695
    .line 696
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 697
    .line 698
    .line 699
    iget-object v0, v0, Lc5/e3;->m:Lc5/c3;

    .line 700
    .line 701
    const-string v5, "Install Referrer Reporter is not available"

    .line 702
    .line 703
    invoke-virtual {v0, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    move-wide/from16 v25, v13

    .line 707
    .line 708
    goto/16 :goto_c

    .line 709
    .line 710
    :cond_13
    new-instance v9, Lc5/u3;

    .line 711
    .line 712
    invoke-direct {v9, v0, v8}, Lc5/u3;-><init>(Lc5/v3;Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    iget-object v15, v10, Lc5/i4;->k:Lc5/h4;

    .line 716
    .line 717
    invoke-static {v15}, Lc5/i4;->e(Lc5/y4;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 718
    .line 719
    .line 720
    iget-object v2, v10, Lc5/i4;->a:Landroid/content/Context;

    .line 721
    .line 722
    :try_start_7
    invoke-virtual {v15}, Lc5/h4;->b()V

    .line 723
    .line 724
    .line 725
    new-instance v15, Landroid/content/Intent;

    .line 726
    .line 727
    move-wide/from16 v25, v13

    .line 728
    .line 729
    const-string v13, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 730
    .line 731
    invoke-direct {v15, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    new-instance v13, Landroid/content/ComponentName;

    .line 735
    .line 736
    const-string v14, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 737
    .line 738
    invoke-direct {v13, v5, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v15, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 745
    .line 746
    .line 747
    move-result-object v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 748
    iget-object v10, v10, Lc5/i4;->j:Lc5/e3;

    .line 749
    .line 750
    if-nez v13, :cond_14

    .line 751
    .line 752
    :try_start_8
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    .line 753
    .line 754
    .line 755
    iget-object v0, v10, Lc5/e3;->k:Lc5/c3;

    .line 756
    .line 757
    const-string v5, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 758
    .line 759
    goto :goto_b

    .line 760
    :cond_14
    const/4 v14, 0x0

    .line 761
    invoke-virtual {v13, v15, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 762
    .line 763
    .line 764
    move-result-object v13

    .line 765
    if-eqz v13, :cond_17

    .line 766
    .line 767
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 768
    .line 769
    .line 770
    move-result v16

    .line 771
    if-nez v16, :cond_17

    .line 772
    .line 773
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v13

    .line 777
    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 778
    .line 779
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 780
    .line 781
    if-eqz v13, :cond_18

    .line 782
    .line 783
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 784
    .line 785
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 786
    .line 787
    if-eqz v13, :cond_16

    .line 788
    .line 789
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v5

    .line 793
    if-eqz v5, :cond_16

    .line 794
    .line 795
    invoke-virtual {v0}, Lc5/v3;->a()Z

    .line 796
    .line 797
    .line 798
    move-result v0

    .line 799
    if-eqz v0, :cond_16

    .line 800
    .line 801
    new-instance v0, Landroid/content/Intent;

    .line 802
    .line 803
    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 804
    .line 805
    .line 806
    :try_start_9
    invoke-static {}, Lv3/a;->b()Lv3/a;

    .line 807
    .line 808
    .line 809
    move-result-object v5

    .line 810
    const/4 v13, 0x1

    .line 811
    invoke-virtual {v5, v2, v0, v9, v13}, Lv3/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    .line 816
    .line 817
    .line 818
    iget-object v2, v10, Lc5/e3;->p:Lc5/c3;

    .line 819
    .line 820
    const-string v5, "Install Referrer Service is"
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 821
    .line 822
    :try_start_a
    const-string v9, "available"

    .line 823
    .line 824
    const-string v13, "not available"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 825
    .line 826
    const/4 v14, 0x1

    .line 827
    if-eq v14, v0, :cond_15

    .line 828
    .line 829
    move-object v9, v13

    .line 830
    :cond_15
    :try_start_b
    invoke-virtual {v2, v9, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 831
    .line 832
    .line 833
    goto :goto_c

    .line 834
    :catch_2
    move-exception v0

    .line 835
    :try_start_c
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    .line 836
    .line 837
    .line 838
    iget-object v2, v10, Lc5/e3;->f:Lc5/c3;

    .line 839
    .line 840
    const-string v5, "Exception occurred while binding to Install Referrer Service"

    .line 841
    .line 842
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-virtual {v2, v0, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    goto :goto_c

    .line 850
    :cond_16
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    .line 851
    .line 852
    .line 853
    iget-object v0, v10, Lc5/e3;->j:Lc5/c3;

    .line 854
    .line 855
    const-string v5, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 856
    .line 857
    goto :goto_b

    .line 858
    :cond_17
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    .line 859
    .line 860
    .line 861
    iget-object v0, v10, Lc5/e3;->m:Lc5/c3;

    .line 862
    .line 863
    const-string v5, "Play Service for fetching Install Referrer is unavailable on device"

    .line 864
    .line 865
    :goto_b
    invoke-virtual {v0, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    :cond_18
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 873
    .line 874
    .line 875
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->b()V

    .line 876
    .line 877
    .line 878
    new-instance v2, Landroid/os/Bundle;

    .line 879
    .line 880
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 881
    .line 882
    .line 883
    const-wide/16 v9, 0x1

    .line 884
    .line 885
    invoke-virtual {v2, v7, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v2, v6, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 889
    .line 890
    .line 891
    const-wide/16 v5, 0x0

    .line 892
    .line 893
    invoke-virtual {v2, v12, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 897
    .line 898
    .line 899
    move-object/from16 v7, v22

    .line 900
    .line 901
    invoke-virtual {v2, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 902
    .line 903
    .line 904
    move-object/from16 v9, v23

    .line 905
    .line 906
    invoke-virtual {v2, v9, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 907
    .line 908
    .line 909
    const-wide/16 v5, 0x1

    .line 910
    .line 911
    invoke-virtual {v2, v11, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 912
    .line 913
    .line 914
    if-eqz v4, :cond_19

    .line 915
    .line 916
    move-object/from16 v13, v24

    .line 917
    .line 918
    invoke-virtual {v2, v13, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 919
    .line 920
    .line 921
    :cond_19
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 922
    .line 923
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 924
    .line 925
    .line 926
    invoke-static {v8}, Lr3/r;->f(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v0}, Lc5/j7;->c()V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v0, v8}, Lc5/i;->A(Ljava/lang/String;)J

    .line 936
    .line 937
    .line 938
    move-result-wide v5

    .line 939
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    if-nez v0, :cond_1a

    .line 944
    .line 945
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 950
    .line 951
    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    .line 952
    .line 953
    invoke-static {v8}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 954
    .line 955
    .line 956
    move-result-object v7

    .line 957
    invoke-virtual {v0, v7, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 958
    .line 959
    .line 960
    move-object/from16 v22, v11

    .line 961
    .line 962
    move-object/from16 v11, p1

    .line 963
    .line 964
    goto/16 :goto_13

    .line 965
    .line 966
    :cond_1a
    :try_start_d
    invoke-static/range {v21 .. v21}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    const/4 v4, 0x0

    .line 971
    invoke-virtual {v0, v4, v8}, Ly3/b;->b(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 972
    .line 973
    .line 974
    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 975
    goto :goto_d

    .line 976
    :catch_3
    move-exception v0

    .line 977
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 978
    .line 979
    .line 980
    move-result-object v4

    .line 981
    iget-object v4, v4, Lc5/e3;->f:Lc5/c3;

    .line 982
    .line 983
    const-string v10, "Package info is null, first open report might be inaccurate. appId"

    .line 984
    .line 985
    invoke-static {v8}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 986
    .line 987
    .line 988
    move-result-object v13

    .line 989
    invoke-virtual {v4, v13, v10, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 990
    .line 991
    .line 992
    const/4 v0, 0x0

    .line 993
    :goto_d
    if-eqz v0, :cond_1f

    .line 994
    .line 995
    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 996
    .line 997
    const-wide/16 v15, 0x0

    .line 998
    .line 999
    cmp-long v4, v13, v15

    .line 1000
    .line 1001
    if-eqz v4, :cond_1f

    .line 1002
    .line 1003
    move-object/from16 v22, v11

    .line 1004
    .line 1005
    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1006
    .line 1007
    cmp-long v0, v13, v10

    .line 1008
    .line 1009
    if-eqz v0, :cond_1d

    .line 1010
    .line 1011
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    sget-object v4, Lc5/r2;->g0:Lc5/q2;

    .line 1016
    .line 1017
    const/4 v10, 0x0

    .line 1018
    invoke-virtual {v0, v10, v4}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    if-eqz v0, :cond_1b

    .line 1023
    .line 1024
    const-wide/16 v13, 0x0

    .line 1025
    .line 1026
    cmp-long v0, v5, v13

    .line 1027
    .line 1028
    if-nez v0, :cond_1c

    .line 1029
    .line 1030
    const-wide/16 v13, 0x1

    .line 1031
    .line 1032
    invoke-virtual {v2, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1033
    .line 1034
    .line 1035
    const-wide/16 v5, 0x0

    .line 1036
    .line 1037
    goto :goto_e

    .line 1038
    :cond_1b
    const-wide/16 v13, 0x1

    .line 1039
    .line 1040
    invoke-virtual {v2, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1041
    .line 1042
    .line 1043
    :cond_1c
    :goto_e
    const/4 v15, 0x0

    .line 1044
    goto :goto_f

    .line 1045
    :cond_1d
    const/4 v10, 0x0

    .line 1046
    const/4 v15, 0x1

    .line 1047
    :goto_f
    new-instance v0, Lc5/r7;

    .line 1048
    .line 1049
    const-string v19, "_fi"

    .line 1050
    .line 1051
    const/4 v4, 0x1

    .line 1052
    if-eq v4, v15, :cond_1e

    .line 1053
    .line 1054
    const-wide/16 v11, 0x0

    .line 1055
    .line 1056
    goto :goto_10

    .line 1057
    :cond_1e
    const-wide/16 v11, 0x1

    .line 1058
    .line 1059
    :goto_10
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v18

    .line 1063
    const-string v20, "auto"

    .line 1064
    .line 1065
    move-object v15, v0

    .line 1066
    move-wide/from16 v16, v25

    .line 1067
    .line 1068
    invoke-direct/range {v15 .. v20}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    move-object/from16 v11, p1

    .line 1072
    .line 1073
    invoke-virtual {v1, v0, v11}, Lc5/o7;->s(Lc5/r7;Lc5/y7;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1074
    .line 1075
    .line 1076
    goto :goto_11

    .line 1077
    :cond_1f
    move-object/from16 v22, v11

    .line 1078
    .line 1079
    const/4 v10, 0x0

    .line 1080
    move-object/from16 v11, p1

    .line 1081
    .line 1082
    :goto_11
    :try_start_f
    invoke-static/range {v21 .. v21}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    const/4 v4, 0x0

    .line 1087
    invoke-virtual {v0, v4, v8}, Ly3/b;->a(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1091
    goto :goto_12

    .line 1092
    :catch_4
    move-exception v0

    .line 1093
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v4

    .line 1097
    iget-object v4, v4, Lc5/e3;->f:Lc5/c3;

    .line 1098
    .line 1099
    const-string v12, "Application info is null, first open report might be inaccurate. appId"

    .line 1100
    .line 1101
    invoke-static {v8}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v13

    .line 1105
    invoke-virtual {v4, v13, v12, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1106
    .line 1107
    .line 1108
    move-object v0, v10

    .line 1109
    :goto_12
    if-eqz v0, :cond_21

    .line 1110
    .line 1111
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1112
    .line 1113
    const/4 v10, 0x1

    .line 1114
    and-int/2addr v4, v10

    .line 1115
    if-eqz v4, :cond_20

    .line 1116
    .line 1117
    const-wide/16 v12, 0x1

    .line 1118
    .line 1119
    invoke-virtual {v2, v7, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1120
    .line 1121
    .line 1122
    :cond_20
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1123
    .line 1124
    and-int/lit16 v0, v0, 0x80

    .line 1125
    .line 1126
    if-eqz v0, :cond_21

    .line 1127
    .line 1128
    const-wide/16 v12, 0x1

    .line 1129
    .line 1130
    invoke-virtual {v2, v9, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1131
    .line 1132
    .line 1133
    :cond_21
    :goto_13
    const-wide/16 v9, 0x0

    .line 1134
    .line 1135
    cmp-long v0, v5, v9

    .line 1136
    .line 1137
    if-ltz v0, :cond_22

    .line 1138
    .line 1139
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1140
    .line 1141
    .line 1142
    :cond_22
    new-instance v0, Lc5/s;

    .line 1143
    .line 1144
    new-instance v3, Lc5/q;

    .line 1145
    .line 1146
    invoke-direct {v3, v2}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 1147
    .line 1148
    .line 1149
    const-string v16, "_f"

    .line 1150
    .line 1151
    const-string v18, "auto"

    .line 1152
    .line 1153
    move-object v15, v0

    .line 1154
    move-object/from16 v17, v3

    .line 1155
    .line 1156
    move-wide/from16 v19, v25

    .line 1157
    .line 1158
    invoke-direct/range {v15 .. v20}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v1, v0, v11}, Lc5/o7;->f(Lc5/s;Lc5/y7;)V

    .line 1162
    .line 1163
    .line 1164
    move-object/from16 v5, v22

    .line 1165
    .line 1166
    goto :goto_14

    .line 1167
    :cond_23
    move-object/from16 v22, v11

    .line 1168
    .line 1169
    move-wide/from16 v25, v13

    .line 1170
    .line 1171
    move-object/from16 v13, v24

    .line 1172
    .line 1173
    move-object v11, v2

    .line 1174
    new-instance v0, Lc5/r7;

    .line 1175
    .line 1176
    const-string v19, "_fvt"

    .line 1177
    .line 1178
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v18

    .line 1182
    const-string v20, "auto"

    .line 1183
    .line 1184
    move-object v15, v0

    .line 1185
    move-wide/from16 v16, v25

    .line 1186
    .line 1187
    invoke-direct/range {v15 .. v20}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v1, v0, v11}, Lc5/o7;->s(Lc5/r7;Lc5/y7;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->b()V

    .line 1201
    .line 1202
    .line 1203
    new-instance v0, Landroid/os/Bundle;

    .line 1204
    .line 1205
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1206
    .line 1207
    .line 1208
    const-wide/16 v2, 0x1

    .line 1209
    .line 1210
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v0, v6, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1214
    .line 1215
    .line 1216
    move-object/from16 v5, v22

    .line 1217
    .line 1218
    invoke-virtual {v0, v5, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1219
    .line 1220
    .line 1221
    if-eqz v4, :cond_24

    .line 1222
    .line 1223
    invoke-virtual {v0, v13, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1224
    .line 1225
    .line 1226
    :cond_24
    new-instance v2, Lc5/s;

    .line 1227
    .line 1228
    new-instance v3, Lc5/q;

    .line 1229
    .line 1230
    invoke-direct {v3, v0}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 1231
    .line 1232
    .line 1233
    const-string v16, "_v"

    .line 1234
    .line 1235
    const-string v18, "auto"

    .line 1236
    .line 1237
    move-object v15, v2

    .line 1238
    move-object/from16 v17, v3

    .line 1239
    .line 1240
    move-wide/from16 v19, v25

    .line 1241
    .line 1242
    invoke-direct/range {v15 .. v20}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v1, v2, v11}, Lc5/o7;->f(Lc5/s;Lc5/y7;)V

    .line 1246
    .line 1247
    .line 1248
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v0

    .line 1252
    sget-object v2, Lc5/r2;->U:Lc5/q2;

    .line 1253
    .line 1254
    invoke-virtual {v0, v8, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v0

    .line 1258
    if-nez v0, :cond_26

    .line 1259
    .line 1260
    new-instance v0, Landroid/os/Bundle;

    .line 1261
    .line 1262
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1263
    .line 1264
    .line 1265
    const-wide/16 v2, 0x1

    .line 1266
    .line 1267
    invoke-virtual {v0, v5, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1268
    .line 1269
    .line 1270
    const-string v4, "_fr"

    .line 1271
    .line 1272
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1273
    .line 1274
    .line 1275
    new-instance v2, Lc5/s;

    .line 1276
    .line 1277
    const-string v16, "_e"

    .line 1278
    .line 1279
    new-instance v3, Lc5/q;

    .line 1280
    .line 1281
    invoke-direct {v3, v0}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 1282
    .line 1283
    .line 1284
    const-string v18, "auto"

    .line 1285
    .line 1286
    move-object v15, v2

    .line 1287
    move-object/from16 v17, v3

    .line 1288
    .line 1289
    move-wide/from16 v19, v25

    .line 1290
    .line 1291
    invoke-direct/range {v15 .. v20}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    .line 1292
    .line 1293
    .line 1294
    goto :goto_15

    .line 1295
    :cond_25
    move-object v11, v2

    .line 1296
    move-wide/from16 v25, v13

    .line 1297
    .line 1298
    iget-boolean v0, v11, Lc5/y7;->j:Z

    .line 1299
    .line 1300
    if-eqz v0, :cond_26

    .line 1301
    .line 1302
    new-instance v0, Landroid/os/Bundle;

    .line 1303
    .line 1304
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1305
    .line 1306
    .line 1307
    new-instance v2, Lc5/s;

    .line 1308
    .line 1309
    new-instance v3, Lc5/q;

    .line 1310
    .line 1311
    invoke-direct {v3, v0}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 1312
    .line 1313
    .line 1314
    const-string v16, "_cd"

    .line 1315
    .line 1316
    const-string v18, "auto"

    .line 1317
    .line 1318
    move-object v15, v2

    .line 1319
    move-object/from16 v17, v3

    .line 1320
    .line 1321
    move-wide/from16 v19, v25

    .line 1322
    .line 1323
    invoke-direct/range {v15 .. v20}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    .line 1324
    .line 1325
    .line 1326
    :goto_15
    invoke-virtual {v1, v2, v11}, Lc5/o7;->f(Lc5/s;Lc5/y7;)V

    .line 1327
    .line 1328
    .line 1329
    :cond_26
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 1330
    .line 1331
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v0}, Lc5/i;->n()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1335
    .line 1336
    .line 1337
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 1338
    .line 1339
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v0}, Lc5/i;->R()V

    .line 1343
    .line 1344
    .line 1345
    return-void

    .line 1346
    :catchall_0
    move-exception v0

    .line 1347
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    .line 1348
    .line 1349
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v2}, Lc5/i;->R()V

    .line 1353
    .line 1354
    .line 1355
    throw v0

    .line 1356
    :cond_27
    return-void
.end method

.method public final i()Lw3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o7;->m:Lc5/i4;

    .line 2
    .line 3
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 7
    .line 8
    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/clearcut/z;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final k()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc5/o7;->m:Lc5/i4;

    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final l()Lc5/h4;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o7;->m:Lc5/i4;

    .line 2
    .line 3
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final m()Lc5/e3;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o7;->m:Lc5/i4;

    .line 2
    .line 3
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final n(Lc5/b;Lc5/y7;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lc5/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lc5/b;->c:Lc5/r7;

    .line 10
    .line 11
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lc5/b;->c:Lc5/r7;

    .line 15
    .line 16
    iget-object v0, v0, Lc5/r7;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lc5/o7;->b()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lc5/o7;->E(Lc5/y7;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-boolean v0, p2, Lc5/y7;->h:Z

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    .line 43
    .line 44
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lc5/i;->P()V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {p0, p2}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 51
    .line 52
    .line 53
    iget-object v2, p1, Lc5/b;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    .line 59
    .line 60
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p1, Lc5/b;->c:Lc5/r7;

    .line 64
    .line 65
    iget-object v1, v1, Lc5/r7;->b:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Lc5/i;->E(Ljava/lang/String;Ljava/lang/String;)Lc5/b;

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v1, p0, Lc5/o7;->m:Lc5/i4;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    :try_start_1
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v3, v3, Lc5/e3;->n:Lc5/c3;

    .line 80
    .line 81
    const-string v4, "Removing conditional user property"

    .line 82
    .line 83
    iget-object v5, p1, Lc5/b;->a:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, v1, Lc5/i4;->n:Lc5/z2;

    .line 86
    .line 87
    iget-object v6, p1, Lc5/b;->c:Lc5/r7;

    .line 88
    .line 89
    iget-object v6, v6, Lc5/r7;->b:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v6}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v3, v5, v4, v1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 99
    .line 100
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p1, Lc5/b;->c:Lc5/r7;

    .line 104
    .line 105
    iget-object v3, v3, Lc5/r7;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1, v2, v3}, Lc5/i;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v1, v0, Lc5/b;->e:Z

    .line 111
    .line 112
    if-eqz v1, :cond_1

    .line 113
    .line 114
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 115
    .line 116
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p1, Lc5/b;->c:Lc5/r7;

    .line 120
    .line 121
    iget-object v3, v3, Lc5/r7;->b:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v2, v3}, Lc5/i;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    .line 126
    :cond_1
    iget-object p1, p1, Lc5/b;->l:Lc5/s;

    .line 127
    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    :try_start_2
    iget-object v1, p1, Lc5/s;->b:Lc5/q;

    .line 131
    .line 132
    if-eqz v1, :cond_2

    .line 133
    .line 134
    invoke-virtual {v1}, Lc5/q;->E()Landroid/os/Bundle;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    const/4 v1, 0x0

    .line 140
    :goto_0
    move-object v4, v1

    .line 141
    invoke-virtual {p0}, Lc5/o7;->Q()Lc5/v7;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v3, p1, Lc5/s;->a:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v5, v0, Lc5/b;->b:Ljava/lang/String;

    .line 148
    .line 149
    iget-wide v6, p1, Lc5/s;->d:J

    .line 150
    .line 151
    const/4 v8, 0x1

    .line 152
    invoke-virtual/range {v1 .. v8}, Lc5/v7;->p0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc5/s;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1, p2}, Lc5/o7;->u(Lc5/s;Lc5/y7;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    iget-object p2, p2, Lc5/e3;->j:Lc5/c3;

    .line 168
    .line 169
    const-string v0, "Conditional user property doesn\'t exist"

    .line 170
    .line 171
    iget-object v2, p1, Lc5/b;->a:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-object v1, v1, Lc5/i4;->n:Lc5/z2;

    .line 178
    .line 179
    iget-object p1, p1, Lc5/b;->c:Lc5/r7;

    .line 180
    .line 181
    iget-object p1, p1, Lc5/r7;->b:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v1, p1}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p2, v2, v0, p1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_1
    iget-object p1, p0, Lc5/o7;->c:Lc5/i;

    .line 191
    .line 192
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lc5/i;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lc5/o7;->c:Lc5/i;

    .line 199
    .line 200
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lc5/i;->R()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :catchall_0
    move-exception p1

    .line 208
    iget-object p2, p0, Lc5/o7;->c:Lc5/i;

    .line 209
    .line 210
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Lc5/i;->R()V

    .line 214
    .line 215
    .line 216
    throw p1

    .line 217
    :cond_5
    invoke-virtual {p0, p2}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 218
    .line 219
    .line 220
    return-void
.end method

.method public final o(Lc5/r7;Lc5/y7;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lc5/o7;->b()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lc5/o7;->E(Lc5/y7;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean v0, p2, Lc5/y7;->h:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p1, Lc5/r7;->b:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "_npa"

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p2, Lc5/y7;->t:Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "Falling back to manifest metadata value for ad personalization"

    .line 45
    .line 46
    iget-object p1, p1, Lc5/e3;->n:Lc5/c3;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lc5/r7;

    .line 52
    .line 53
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lc5/w;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eq v1, v0, :cond_2

    .line 72
    .line 73
    const-wide/16 v0, 0x0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-wide/16 v0, 0x1

    .line 77
    .line 78
    :goto_0
    const-string v6, "_npa"

    .line 79
    .line 80
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string v7, "auto"

    .line 85
    .line 86
    move-object v2, p1

    .line 87
    invoke-direct/range {v2 .. v7}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lc5/o7;->s(Lc5/r7;Lc5/y7;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lc5/o7;->m:Lc5/i4;

    .line 99
    .line 100
    iget-object v2, v1, Lc5/i4;->n:Lc5/z2;

    .line 101
    .line 102
    iget-object v3, v1, Lc5/i4;->g:Lc5/e;

    .line 103
    .line 104
    iget-object p1, p1, Lc5/r7;->b:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2, p1}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    .line 111
    .line 112
    const-string v4, "Removing user property"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    .line 118
    .line 119
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lc5/i;->P()V

    .line 123
    .line 124
    .line 125
    :try_start_0
    invoke-virtual {p0, p2}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 126
    .line 127
    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d9;->c()V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lc5/r2;->s0:Lc5/q2;

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-virtual {v3, v2, v0}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 135
    .line 136
    .line 137
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object p2, p2, Lc5/y7;->a:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    :try_start_1
    sget-object v0, Lc5/r2;->u0:Lc5/q2;

    .line 143
    .line 144
    invoke-virtual {v3, v2, v0}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    const-string v0, "_id"

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    .line 159
    .line 160
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 161
    .line 162
    .line 163
    invoke-static {p2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    const-string v2, "_lair"

    .line 167
    .line 168
    invoke-virtual {v0, p2, v2}, Lc5/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    .line 172
    .line 173
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p2, p1}, Lc5/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object p2, p0, Lc5/o7;->c:Lc5/i;

    .line 183
    .line 184
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Lc5/i;->n()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    iget-object p2, p2, Lc5/e3;->n:Lc5/c3;

    .line 195
    .line 196
    const-string v0, "User property removed"

    .line 197
    .line 198
    iget-object v1, v1, Lc5/i4;->n:Lc5/z2;

    .line 199
    .line 200
    invoke-virtual {v1, p1}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p2, p1, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lc5/o7;->c:Lc5/i;

    .line 208
    .line 209
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lc5/i;->R()V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :catchall_0
    move-exception p1

    .line 217
    iget-object p2, p0, Lc5/o7;->c:Lc5/i;

    .line 218
    .line 219
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Lc5/i;->R()V

    .line 223
    .line 224
    .line 225
    throw p1
.end method

.method public final p(Lc5/y7;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const-string v0, "app_id=?"

    .line 2
    .line 3
    iget-object v1, p0, Lc5/o7;->A:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lc5/o7;->B:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v2, p0, Lc5/o7;->A:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 20
    .line 21
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    iget-object v3, p1, Lc5/y7;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lr3/r;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lc5/x4;->b()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lc5/j7;->c()V

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v1}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v4, 0x1

    .line 45
    new-array v4, v4, [Ljava/lang/String;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v3, v4, v5

    .line 49
    .line 50
    const-string v5, "apps"

    .line 51
    .line 52
    invoke-virtual {v1, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const-string v6, "events"

    .line 57
    .line 58
    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    add-int/2addr v5, v6

    .line 63
    const-string v6, "user_attributes"

    .line 64
    .line 65
    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    add-int/2addr v5, v6

    .line 70
    const-string v6, "conditional_properties"

    .line 71
    .line 72
    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    add-int/2addr v5, v6

    .line 77
    const-string v6, "raw_events"

    .line 78
    .line 79
    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    add-int/2addr v5, v6

    .line 84
    const-string v6, "raw_events_metadata"

    .line 85
    .line 86
    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    add-int/2addr v5, v6

    .line 91
    const-string v6, "queue"

    .line 92
    .line 93
    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    add-int/2addr v5, v6

    .line 98
    const-string v6, "audience_filter_values"

    .line 99
    .line 100
    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    add-int/2addr v5, v6

    .line 105
    const-string v6, "main_event_params"

    .line 106
    .line 107
    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    add-int/2addr v5, v6

    .line 112
    const-string v6, "default_event_params"

    .line 113
    .line 114
    invoke-virtual {v1, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    add-int/2addr v5, v0

    .line 119
    if-lez v5, :cond_1

    .line 120
    .line 121
    move-object v0, v2

    .line 122
    check-cast v0, Lc5/i4;

    .line 123
    .line 124
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 125
    .line 126
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 130
    .line 131
    const-string v1, "Reset analytics data. app, records"

    .line 132
    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v0, v3, v1, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    check-cast v2, Lc5/i4;

    .line 143
    .line 144
    iget-object v1, v2, Lc5/i4;->j:Lc5/e3;

    .line 145
    .line 146
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v3}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 154
    .line 155
    const-string v3, "Error resetting analytics data. appId, error"

    .line 156
    .line 157
    invoke-virtual {v1, v2, v3, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lc5/y7;->h:Z

    .line 161
    .line 162
    if-eqz v0, :cond_2

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lc5/o7;->h(Lc5/y7;)V

    .line 165
    .line 166
    .line 167
    :cond_2
    return-void
.end method

.method public final q(Lc5/b;Lc5/y7;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lc5/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lc5/b;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lc5/b;->c:Lc5/r7;

    .line 15
    .line 16
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lc5/b;->c:Lc5/r7;

    .line 20
    .line 21
    iget-object v0, v0, Lc5/r7;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lc5/o7;->b()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lc5/o7;->E(Lc5/y7;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-boolean v0, p2, Lc5/y7;->h:Z

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance v0, Lc5/b;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lc5/b;-><init>(Lc5/b;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput-boolean p1, v0, Lc5/b;->e:Z

    .line 58
    .line 59
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 60
    .line 61
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lc5/i;->P()V

    .line 65
    .line 66
    .line 67
    :try_start_0
    iget-object v1, p0, Lc5/o7;->c:Lc5/i;

    .line 68
    .line 69
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v0, Lc5/b;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v0, Lc5/b;->c:Lc5/r7;

    .line 78
    .line 79
    iget-object v3, v3, Lc5/r7;->b:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v1, v2, v3}, Lc5/i;->E(Ljava/lang/String;Ljava/lang/String;)Lc5/b;

    .line 82
    .line 83
    .line 84
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v2, p0, Lc5/o7;->m:Lc5/i4;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    :try_start_1
    iget-object v3, v1, Lc5/b;->b:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v4, v0, Lc5/b;->b:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_2

    .line 98
    .line 99
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget-object v3, v3, Lc5/e3;->j:Lc5/c3;

    .line 104
    .line 105
    const-string v4, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 106
    .line 107
    iget-object v5, v2, Lc5/i4;->n:Lc5/z2;

    .line 108
    .line 109
    iget-object v6, v0, Lc5/b;->c:Lc5/r7;

    .line 110
    .line 111
    iget-object v6, v6, Lc5/r7;->b:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object v6, v0, Lc5/b;->b:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v7, v1, Lc5/b;->b:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v3, v4, v5, v6, v7}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    const/4 v3, 0x1

    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    iget-boolean v4, v1, Lc5/b;->e:Z

    .line 128
    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    iget-object v4, v1, Lc5/b;->b:Ljava/lang/String;

    .line 132
    .line 133
    iput-object v4, v0, Lc5/b;->b:Ljava/lang/String;

    .line 134
    .line 135
    iget-wide v4, v1, Lc5/b;->d:J

    .line 136
    .line 137
    iput-wide v4, v0, Lc5/b;->d:J

    .line 138
    .line 139
    iget-wide v4, v1, Lc5/b;->h:J

    .line 140
    .line 141
    iput-wide v4, v0, Lc5/b;->h:J

    .line 142
    .line 143
    iget-object v4, v1, Lc5/b;->f:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v4, v0, Lc5/b;->f:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v4, v1, Lc5/b;->j:Lc5/s;

    .line 148
    .line 149
    iput-object v4, v0, Lc5/b;->j:Lc5/s;

    .line 150
    .line 151
    iput-boolean v3, v0, Lc5/b;->e:Z

    .line 152
    .line 153
    new-instance v3, Lc5/r7;

    .line 154
    .line 155
    iget-object v4, v0, Lc5/b;->c:Lc5/r7;

    .line 156
    .line 157
    iget-object v9, v4, Lc5/r7;->b:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v5, v1, Lc5/b;->c:Lc5/r7;

    .line 160
    .line 161
    iget-wide v6, v5, Lc5/r7;->c:J

    .line 162
    .line 163
    invoke-virtual {v4}, Lc5/r7;->E()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    iget-object v1, v1, Lc5/b;->c:Lc5/r7;

    .line 168
    .line 169
    iget-object v10, v1, Lc5/r7;->f:Ljava/lang/String;

    .line 170
    .line 171
    move-object v5, v3

    .line 172
    invoke-direct/range {v5 .. v10}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iput-object v3, v0, Lc5/b;->c:Lc5/r7;

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_3
    iget-object v1, v0, Lc5/b;->f:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_4

    .line 185
    .line 186
    new-instance p1, Lc5/r7;

    .line 187
    .line 188
    iget-object v1, v0, Lc5/b;->c:Lc5/r7;

    .line 189
    .line 190
    iget-object v8, v1, Lc5/r7;->b:Ljava/lang/String;

    .line 191
    .line 192
    iget-wide v5, v0, Lc5/b;->d:J

    .line 193
    .line 194
    invoke-virtual {v1}, Lc5/r7;->E()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    iget-object v1, v0, Lc5/b;->c:Lc5/r7;

    .line 199
    .line 200
    iget-object v9, v1, Lc5/r7;->f:Ljava/lang/String;

    .line 201
    .line 202
    move-object v4, p1

    .line 203
    invoke-direct/range {v4 .. v9}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iput-object p1, v0, Lc5/b;->c:Lc5/r7;

    .line 207
    .line 208
    iput-boolean v3, v0, Lc5/b;->e:Z

    .line 209
    .line 210
    const/4 p1, 0x1

    .line 211
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lc5/b;->e:Z

    .line 212
    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    iget-object v1, v0, Lc5/b;->c:Lc5/r7;

    .line 216
    .line 217
    new-instance v10, Lc5/t7;

    .line 218
    .line 219
    iget-object v4, v0, Lc5/b;->a:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v4}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-object v5, v0, Lc5/b;->b:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v6, v1, Lc5/r7;->b:Ljava/lang/String;

    .line 227
    .line 228
    iget-wide v7, v1, Lc5/r7;->c:J

    .line 229
    .line 230
    invoke-virtual {v1}, Lc5/r7;->E()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-static {v9}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    move-object v3, v10

    .line 238
    invoke-direct/range {v3 .. v9}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v10, Lc5/t7;->e:Ljava/lang/Object;

    .line 242
    .line 243
    iget-object v3, v10, Lc5/t7;->c:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v4, p0, Lc5/o7;->c:Lc5/i;

    .line 246
    .line 247
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v10}, Lc5/i;->u(Lc5/t7;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_5

    .line 255
    .line 256
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    iget-object v4, v4, Lc5/e3;->n:Lc5/c3;

    .line 261
    .line 262
    const-string v5, "User property updated immediately"

    .line 263
    .line 264
    iget-object v6, v0, Lc5/b;->a:Ljava/lang/String;

    .line 265
    .line 266
    iget-object v7, v2, Lc5/i4;->n:Lc5/z2;

    .line 267
    .line 268
    :goto_1
    invoke-virtual {v7, v3}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    goto :goto_2

    .line 273
    :cond_5
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    iget-object v4, v4, Lc5/e3;->f:Lc5/c3;

    .line 278
    .line 279
    const-string v5, "(2)Too many active user properties, ignoring"

    .line 280
    .line 281
    iget-object v6, v0, Lc5/b;->a:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v6}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    iget-object v7, v2, Lc5/i4;->n:Lc5/z2;

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :goto_2
    invoke-virtual {v4, v5, v6, v3, v1}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    if-eqz p1, :cond_6

    .line 294
    .line 295
    iget-object p1, v0, Lc5/b;->j:Lc5/s;

    .line 296
    .line 297
    if-eqz p1, :cond_6

    .line 298
    .line 299
    new-instance v1, Lc5/s;

    .line 300
    .line 301
    iget-wide v3, v0, Lc5/b;->d:J

    .line 302
    .line 303
    invoke-direct {v1, p1, v3, v4}, Lc5/s;-><init>(Lc5/s;J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, v1, p2}, Lc5/o7;->u(Lc5/s;Lc5/y7;)V

    .line 307
    .line 308
    .line 309
    :cond_6
    iget-object p1, p0, Lc5/o7;->c:Lc5/i;

    .line 310
    .line 311
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v0}, Lc5/i;->t(Lc5/b;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_7

    .line 319
    .line 320
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iget-object p1, p1, Lc5/e3;->n:Lc5/c3;

    .line 325
    .line 326
    const-string p2, "Conditional property added"

    .line 327
    .line 328
    iget-object v1, v0, Lc5/b;->a:Ljava/lang/String;

    .line 329
    .line 330
    iget-object v2, v2, Lc5/i4;->n:Lc5/z2;

    .line 331
    .line 332
    iget-object v3, v0, Lc5/b;->c:Lc5/r7;

    .line 333
    .line 334
    iget-object v3, v3, Lc5/r7;->b:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v2, v3}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    iget-object v0, v0, Lc5/b;->c:Lc5/r7;

    .line 341
    .line 342
    :goto_3
    invoke-virtual {v0}, Lc5/r7;->E()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    goto :goto_4

    .line 347
    :cond_7
    invoke-virtual {p0}, Lc5/o7;->m()Lc5/e3;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 352
    .line 353
    const-string p2, "Too many conditional properties, ignoring"

    .line 354
    .line 355
    iget-object v1, v0, Lc5/b;->a:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    iget-object v2, v2, Lc5/i4;->n:Lc5/z2;

    .line 362
    .line 363
    iget-object v3, v0, Lc5/b;->c:Lc5/r7;

    .line 364
    .line 365
    iget-object v3, v3, Lc5/r7;->b:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {v2, v3}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    iget-object v0, v0, Lc5/b;->c:Lc5/r7;

    .line 372
    .line 373
    goto :goto_3

    .line 374
    :goto_4
    invoke-virtual {p1, p2, v1, v2, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lc5/o7;->c:Lc5/i;

    .line 378
    .line 379
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1}, Lc5/i;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    .line 384
    .line 385
    iget-object p1, p0, Lc5/o7;->c:Lc5/i;

    .line 386
    .line 387
    invoke-static {p1}, Lc5/o7;->I(Lc5/j7;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1}, Lc5/i;->R()V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :catchall_0
    move-exception p1

    .line 395
    iget-object p2, p0, Lc5/o7;->c:Lc5/i;

    .line 396
    .line 397
    invoke-static {p2}, Lc5/o7;->I(Lc5/j7;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2}, Lc5/i;->R()V

    .line 401
    .line 402
    .line 403
    throw p1
.end method

.method public final r(Ljava/lang/String;Lc5/f;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/o7;->l()Lc5/h4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lc5/o7;->b()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc5/o7;->D:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lc5/o7;->c:Lc5/i;

    .line 17
    .line 18
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 22
    .line 23
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lc5/j7;->c()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroid/content/ContentValues;

    .line 33
    .line 34
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "app_id"

    .line 38
    .line 39
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v3, "consent_state"

    .line 43
    .line 44
    invoke-virtual {p2}, Lc5/f;->d()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "consent_settings"

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x5

    .line 59
    invoke-virtual {p2, v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    const-wide/16 v4, -0x1

    .line 64
    .line 65
    cmp-long p2, v2, v4

    .line 66
    .line 67
    if-nez p2, :cond_0

    .line 68
    .line 69
    move-object p2, v1

    .line 70
    check-cast p2, Lc5/i4;

    .line 71
    .line 72
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 73
    .line 74
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p2, Lc5/e3;->f:Lc5/c3;

    .line 78
    .line 79
    const-string v0, "Failed to insert/update consent setting (got -1). appId"

    .line 80
    .line 81
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p2, v2, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void

    .line 89
    :catch_0
    move-exception p2

    .line 90
    check-cast v1, Lc5/i4;

    .line 91
    .line 92
    iget-object v0, v1, Lc5/i4;->j:Lc5/e3;

    .line 93
    .line 94
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 102
    .line 103
    const-string v1, "Error storing consent setting. appId, error"

    .line 104
    .line 105
    invoke-virtual {v0, p1, v1, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final s(Lc5/r7;Lc5/y7;)V
    .locals 17
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lc5/h4;->b()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->b()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lc5/o7;->E(Lc5/y7;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-boolean v3, v2, Lc5/y7;->h:Z

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, v0, Lc5/r7;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lc5/v7;->i0(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    iget-object v8, v1, Lc5/o7;->E:Lc5/b4;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x1

    .line 46
    const/16 v5, 0x18

    .line 47
    .line 48
    iget-object v6, v0, Lc5/r7;->b:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 56
    .line 57
    .line 58
    invoke-static {v5, v6, v4}, Lc5/v7;->n(ILjava/lang/String;Z)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    move v10, v0

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v10, 0x0

    .line 71
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    .line 72
    .line 73
    .line 74
    iget-object v6, v2, Lc5/y7;->a:Ljava/lang/String;

    .line 75
    .line 76
    const-string v0, "_ev"

    .line 77
    .line 78
    move-object v5, v8

    .line 79
    move-object v8, v0

    .line 80
    invoke-static/range {v5 .. v10}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual/range {p1 .. p1}, Lc5/r7;->E()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v7, v9, v6}, Lc5/v7;->e0(Ljava/lang/Object;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-eqz v10, :cond_6

    .line 97
    .line 98
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 102
    .line 103
    .line 104
    invoke-static {v5, v6, v4}, Lc5/v7;->n(ILjava/lang/String;Z)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    invoke-virtual/range {p1 .. p1}, Lc5/r7;->E()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    instance-of v4, v0, Ljava/lang/String;

    .line 115
    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    instance-of v4, v0, Ljava/lang/CharSequence;

    .line 119
    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    move v13, v0

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    const/4 v13, 0x0

    .line 133
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    .line 134
    .line 135
    .line 136
    iget-object v9, v2, Lc5/y7;->a:Ljava/lang/String;

    .line 137
    .line 138
    const-string v11, "_ev"

    .line 139
    .line 140
    invoke-static/range {v8 .. v13}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual/range {p1 .. p1}, Lc5/r7;->E()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v3, v4, v6}, Lc5/v7;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-nez v3, :cond_7

    .line 157
    .line 158
    return-void

    .line 159
    :cond_7
    const-string v4, "_sid"

    .line 160
    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    iget-object v5, v2, Lc5/y7;->a:Ljava/lang/String;

    .line 166
    .line 167
    if-eqz v4, :cond_b

    .line 168
    .line 169
    iget-wide v10, v0, Lc5/r7;->c:J

    .line 170
    .line 171
    iget-object v14, v0, Lc5/r7;->f:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v5}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object v4, v1, Lc5/o7;->c:Lc5/i;

    .line 177
    .line 178
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 179
    .line 180
    .line 181
    const-string v6, "_sno"

    .line 182
    .line 183
    invoke-virtual {v4, v5, v6}, Lc5/i;->I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    if-eqz v4, :cond_8

    .line 188
    .line 189
    iget-object v6, v4, Lc5/t7;->e:Ljava/lang/Object;

    .line 190
    .line 191
    instance-of v7, v6, Ljava/lang/Long;

    .line 192
    .line 193
    if-eqz v7, :cond_8

    .line 194
    .line 195
    check-cast v6, Ljava/lang/Long;

    .line 196
    .line 197
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 198
    .line 199
    .line 200
    move-result-wide v6

    .line 201
    goto :goto_2

    .line 202
    :cond_8
    if-eqz v4, :cond_9

    .line 203
    .line 204
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    iget-object v4, v4, Lc5/t7;->e:Ljava/lang/Object;

    .line 209
    .line 210
    iget-object v6, v6, Lc5/e3;->j:Lc5/c3;

    .line 211
    .line 212
    const-string v7, "Retrieved last session number from database does not contain a valid (long) value"

    .line 213
    .line 214
    invoke-virtual {v6, v4, v7}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_9
    iget-object v4, v1, Lc5/o7;->c:Lc5/i;

    .line 218
    .line 219
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 220
    .line 221
    .line 222
    const-string v6, "_s"

    .line 223
    .line 224
    invoke-virtual {v4, v5, v6}, Lc5/i;->H(Ljava/lang/String;Ljava/lang/String;)Lc5/o;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    if-eqz v4, :cond_a

    .line 229
    .line 230
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    iget-wide v12, v4, Lc5/o;->c:J

    .line 235
    .line 236
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iget-object v6, v6, Lc5/e3;->p:Lc5/c3;

    .line 241
    .line 242
    const-string v7, "Backfill the session number. Last used session number"

    .line 243
    .line 244
    invoke-virtual {v6, v4, v7}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    move-wide v6, v12

    .line 248
    goto :goto_2

    .line 249
    :cond_a
    const-wide/16 v6, 0x0

    .line 250
    .line 251
    :goto_2
    new-instance v4, Lc5/r7;

    .line 252
    .line 253
    const-string v13, "_sno"

    .line 254
    .line 255
    const-wide/16 v15, 0x1

    .line 256
    .line 257
    add-long/2addr v6, v15

    .line 258
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    move-object v9, v4

    .line 263
    invoke-direct/range {v9 .. v14}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v4, v2}, Lc5/o7;->s(Lc5/r7;Lc5/y7;)V

    .line 267
    .line 268
    .line 269
    :cond_b
    new-instance v4, Lc5/t7;

    .line 270
    .line 271
    invoke-static {v5}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object v11, v0, Lc5/r7;->f:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v11}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    iget-object v12, v0, Lc5/r7;->b:Ljava/lang/String;

    .line 280
    .line 281
    iget-wide v13, v0, Lc5/r7;->c:J

    .line 282
    .line 283
    move-object v9, v4

    .line 284
    move-object v10, v5

    .line 285
    move-object v15, v3

    .line 286
    invoke-direct/range {v9 .. v15}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    iget-object v6, v1, Lc5/o7;->m:Lc5/i4;

    .line 294
    .line 295
    iget-object v7, v6, Lc5/i4;->n:Lc5/z2;

    .line 296
    .line 297
    iget-object v9, v4, Lc5/t7;->c:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v7, v9}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 304
    .line 305
    const-string v10, "Setting user property"

    .line 306
    .line 307
    invoke-virtual {v0, v7, v10, v3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 311
    .line 312
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Lc5/i;->P()V

    .line 316
    .line 317
    .line 318
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d9;->c()V

    .line 319
    .line 320
    .line 321
    iget-object v0, v6, Lc5/i4;->g:Lc5/e;

    .line 322
    .line 323
    sget-object v3, Lc5/r2;->s0:Lc5/q2;

    .line 324
    .line 325
    const/4 v7, 0x0

    .line 326
    invoke-virtual {v0, v7, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_c

    .line 331
    .line 332
    const-string v0, "_id"

    .line 333
    .line 334
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_c

    .line 339
    .line 340
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 341
    .line 342
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 343
    .line 344
    .line 345
    const-string v3, "_lair"

    .line 346
    .line 347
    invoke-virtual {v0, v5, v3}, Lc5/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :cond_c
    invoke-virtual {v1, v2}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 351
    .line 352
    .line 353
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 354
    .line 355
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v4}, Lc5/i;->u(Lc5/t7;)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    iget-object v3, v1, Lc5/o7;->c:Lc5/i;

    .line 363
    .line 364
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3}, Lc5/i;->n()V

    .line 368
    .line 369
    .line 370
    if-nez v0, :cond_d

    .line 371
    .line 372
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 377
    .line 378
    const-string v3, "Too many unique user properties are set. Ignoring user property"

    .line 379
    .line 380
    iget-object v5, v6, Lc5/i4;->n:Lc5/z2;

    .line 381
    .line 382
    invoke-virtual {v5, v9}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    iget-object v4, v4, Lc5/t7;->e:Ljava/lang/Object;

    .line 387
    .line 388
    invoke-virtual {v0, v5, v3, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    .line 392
    .line 393
    .line 394
    iget-object v9, v2, Lc5/y7;->a:Ljava/lang/String;

    .line 395
    .line 396
    const/16 v10, 0x9

    .line 397
    .line 398
    const/4 v11, 0x0

    .line 399
    const/4 v12, 0x0

    .line 400
    const/4 v13, 0x0

    .line 401
    invoke-static/range {v8 .. v13}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    .line 403
    .line 404
    :cond_d
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 405
    .line 406
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lc5/i;->R()V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :catchall_0
    move-exception v0

    .line 414
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    .line 415
    .line 416
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2}, Lc5/i;->R()V

    .line 420
    .line 421
    .line 422
    throw v0
.end method

.method public final t()V
    .locals 23
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v3, v1, Lc5/o7;->b:Lc5/j3;

    .line 4
    .line 5
    iget-object v0, v1, Lc5/o7;->m:Lc5/i4;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lc5/h4;->b()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->b()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, v1, Lc5/o7;->x:Z

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lc5/t6;->e:Ljava/lang/Boolean;

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 37
    .line 38
    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 52
    .line 53
    const-string v2, "Upload called in the client side when service should be used"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-wide v4, v1, Lc5/o7;->q:J

    .line 57
    .line 58
    const-wide/16 v6, 0x0

    .line 59
    .line 60
    cmp-long v0, v4, v6

    .line 61
    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 70
    .line 71
    .line 72
    iget-object v0, v1, Lc5/o7;->A:Ljava/util/ArrayList;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 81
    .line 82
    const-string v2, "Uploading requested multiple times"

    .line 83
    .line 84
    :goto_0
    invoke-virtual {v0, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lc5/j3;->g()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 102
    .line 103
    const-string v2, "Network not connected, ignoring upload request"

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 109
    .line 110
    .line 111
    :goto_2
    iput-boolean v9, v1, Lc5/o7;->x:Z

    .line 112
    .line 113
    goto/16 :goto_21

    .line 114
    .line 115
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->i()Lw3/a;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lc5/w;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v8, Lc5/r2;->Q:Lc5/q2;

    .line 133
    .line 134
    const/4 v10, 0x0

    .line 135
    invoke-virtual {v0, v10, v8}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 140
    .line 141
    .line 142
    sget-object v8, Lc5/r2;->d:Lc5/q2;

    .line 143
    .line 144
    invoke-virtual {v8, v10}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    check-cast v8, Ljava/lang/Long;

    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide v11

    .line 154
    sub-long v11, v4, v11

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    :goto_3
    if-ge v8, v0, :cond_5

    .line 158
    .line 159
    invoke-virtual {v1, v11, v12}, Lc5/o7;->F(J)Z

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    if-eqz v13, :cond_5

    .line 164
    .line 165
    add-int/lit8 v8, v8, 0x1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    iget-object v0, v1, Lc5/o7;->j:Lc5/u6;

    .line 169
    .line 170
    iget-object v0, v0, Lc5/u6;->j:Lc5/o3;

    .line 171
    .line 172
    invoke-virtual {v0}, Lc5/o3;->a()J

    .line 173
    .line 174
    .line 175
    move-result-wide v11

    .line 176
    cmp-long v0, v11, v6

    .line 177
    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    .line 185
    .line 186
    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    .line 187
    .line 188
    sub-long v7, v4, v11

    .line 189
    .line 190
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 191
    .line 192
    .line 193
    move-result-wide v7

    .line 194
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v0, v7, v6}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_6
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 202
    .line 203
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lc5/i;->K()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    const-wide/16 v6, -0x1

    .line 215
    .line 216
    if-nez v0, :cond_27

    .line 217
    .line 218
    iget-wide v12, v1, Lc5/o7;->C:J

    .line 219
    .line 220
    cmp-long v0, v12, v6

    .line 221
    .line 222
    if-nez v0, :cond_a

    .line 223
    .line 224
    iget-object v8, v1, Lc5/o7;->c:Lc5/i;

    .line 225
    .line 226
    invoke-static {v8}, Lc5/o7;->I(Lc5/j7;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 227
    .line 228
    .line 229
    :try_start_2
    invoke-virtual {v8}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const-string v12, "select rowid from raw_events order by rowid desc limit 1;"

    .line 234
    .line 235
    invoke-virtual {v0, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 236
    .line 237
    .line 238
    move-result-object v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_7

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_7
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 247
    .line 248
    .line 249
    move-result-wide v6
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 250
    goto :goto_5

    .line 251
    :catch_0
    move-exception v0

    .line 252
    goto :goto_4

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    goto :goto_6

    .line 255
    :catch_1
    move-exception v0

    .line 256
    move-object v12, v10

    .line 257
    :goto_4
    :try_start_4
    iget-object v8, v8, Lc5/x4;->a:Lc5/z4;

    .line 258
    .line 259
    check-cast v8, Lc5/i4;

    .line 260
    .line 261
    iget-object v8, v8, Lc5/i4;->j:Lc5/e3;

    .line 262
    .line 263
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 264
    .line 265
    .line 266
    iget-object v8, v8, Lc5/e3;->f:Lc5/c3;

    .line 267
    .line 268
    const-string v13, "Error querying raw events"

    .line 269
    .line 270
    invoke-virtual {v8, v0, v13}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 271
    .line 272
    .line 273
    if-eqz v12, :cond_8

    .line 274
    .line 275
    :goto_5
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 276
    .line 277
    .line 278
    :cond_8
    iput-wide v6, v1, Lc5/o7;->C:J

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :catchall_1
    move-exception v0

    .line 282
    move-object v10, v12

    .line 283
    :goto_6
    if-eqz v10, :cond_9

    .line 284
    .line 285
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 286
    .line 287
    .line 288
    :cond_9
    throw v0

    .line 289
    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sget-object v6, Lc5/r2;->g:Lc5/q2;

    .line 294
    .line 295
    invoke-virtual {v0, v11, v6}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    sget-object v7, Lc5/r2;->h:Lc5/q2;

    .line 304
    .line 305
    invoke-virtual {v6, v11, v7}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    iget-object v7, v1, Lc5/o7;->c:Lc5/i;

    .line 314
    .line 315
    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 316
    .line 317
    .line 318
    iget-object v8, v7, Lc5/x4;->a:Lc5/z4;

    .line 319
    .line 320
    :try_start_6
    invoke-virtual {v7}, Lc5/x4;->b()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7}, Lc5/j7;->c()V

    .line 324
    .line 325
    .line 326
    if-lez v0, :cond_b

    .line 327
    .line 328
    const/4 v12, 0x1

    .line 329
    goto :goto_8

    .line 330
    :cond_b
    const/4 v12, 0x0

    .line 331
    :goto_8
    invoke-static {v12}, Lr3/r;->a(Z)V

    .line 332
    .line 333
    .line 334
    if-lez v6, :cond_c

    .line 335
    .line 336
    const/4 v12, 0x1

    .line 337
    goto :goto_9

    .line 338
    :cond_c
    const/4 v12, 0x0

    .line 339
    :goto_9
    invoke-static {v12}, Lr3/r;->a(Z)V

    .line 340
    .line 341
    .line 342
    invoke-static {v11}, Lr3/r;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 343
    .line 344
    .line 345
    :try_start_7
    invoke-virtual {v7}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    const-string v14, "rowid"

    .line 350
    .line 351
    const-string v15, "data"

    .line 352
    .line 353
    const-string v10, "retry_count"

    .line 354
    .line 355
    filled-new-array {v14, v15, v10}, [Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v15

    .line 359
    new-array v10, v2, [Ljava/lang/String;

    .line 360
    .line 361
    aput-object v11, v10, v9

    .line 362
    .line 363
    const-string v14, "queue"

    .line 364
    .line 365
    const-string v16, "app_id=?"

    .line 366
    .line 367
    const/16 v18, 0x0

    .line 368
    .line 369
    const/16 v19, 0x0

    .line 370
    .line 371
    const-string v20, "rowid"

    .line 372
    .line 373
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v21

    .line 377
    move-object/from16 v17, v10

    .line 378
    .line 379
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 380
    .line 381
    .line 382
    move-result-object v10
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 383
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-nez v0, :cond_d

    .line 388
    .line 389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 393
    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 394
    .line 395
    .line 396
    move-object/from16 v21, v3

    .line 397
    .line 398
    goto/16 :goto_13

    .line 399
    .line 400
    :cond_d
    :try_start_a
    new-instance v13, Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .line 404
    .line 405
    const/4 v14, 0x0

    .line 406
    :goto_a
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 407
    .line 408
    .line 409
    move-result-wide v15
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 410
    :try_start_b
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    iget-object v2, v7, Lc5/i7;->b:Lc5/o7;

    .line 415
    .line 416
    iget-object v2, v2, Lc5/o7;->g:Lc5/q7;

    .line 417
    .line 418
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 419
    .line 420
    .line 421
    :try_start_c
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 422
    .line 423
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 424
    .line 425
    .line 426
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 427
    .line 428
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 429
    .line 430
    .line 431
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    .line 432
    .line 433
    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 434
    .line 435
    .line 436
    move-object/from16 v20, v7

    .line 437
    .line 438
    const/16 v7, 0x400

    .line 439
    .line 440
    :try_start_d
    new-array v7, v7, [B
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 441
    .line 442
    move-object/from16 v21, v3

    .line 443
    .line 444
    :goto_b
    :try_start_e
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-gtz v3, :cond_10

    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 457
    .line 458
    .line 459
    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 460
    :try_start_f
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-nez v2, :cond_e

    .line 465
    .line 466
    array-length v2, v0
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 467
    add-int/2addr v2, v14

    .line 468
    if-le v2, v6, :cond_e

    .line 469
    .line 470
    goto/16 :goto_11

    .line 471
    .line 472
    :cond_e
    :try_start_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q3;->y1()Lcom/google/android/gms/internal/measurement/p3;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-static {v2, v0}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Lcom/google/android/gms/internal/measurement/p3;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 481
    .line 482
    const/4 v3, 0x2

    .line 483
    :try_start_11
    invoke-interface {v10, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    if-nez v7, :cond_f

    .line 488
    .line 489
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 490
    .line 491
    .line 492
    move-result v7

    .line 493
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/p3;->r(I)V

    .line 494
    .line 495
    .line 496
    :cond_f
    array-length v0, v0

    .line 497
    add-int/2addr v14, v0

    .line 498
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    check-cast v0, Lcom/google/android/gms/internal/measurement/q3;

    .line 503
    .line 504
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    goto :goto_10

    .line 516
    :catchall_2
    move-exception v0

    .line 517
    goto/16 :goto_1c

    .line 518
    .line 519
    :catch_2
    move-exception v0

    .line 520
    goto/16 :goto_12

    .line 521
    .line 522
    :catch_3
    move-exception v0

    .line 523
    move-object v2, v8

    .line 524
    check-cast v2, Lc5/i4;

    .line 525
    .line 526
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 527
    .line 528
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 529
    .line 530
    .line 531
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 532
    .line 533
    const-string v3, "Failed to merge queued bundle. appId"

    .line 534
    .line 535
    :goto_c
    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 536
    .line 537
    .line 538
    move-result-object v7
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 539
    goto :goto_f

    .line 540
    :cond_10
    move-object/from16 v22, v9

    .line 541
    .line 542
    const/4 v9, 0x0

    .line 543
    :try_start_12
    invoke-virtual {v12, v7, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 544
    .line 545
    .line 546
    move-object/from16 v9, v22

    .line 547
    .line 548
    goto :goto_b

    .line 549
    :catch_4
    move-exception v0

    .line 550
    goto :goto_d

    .line 551
    :catch_5
    move-exception v0

    .line 552
    move-object/from16 v21, v3

    .line 553
    .line 554
    goto :goto_12

    .line 555
    :catch_6
    move-exception v0

    .line 556
    move-object/from16 v21, v3

    .line 557
    .line 558
    goto :goto_d

    .line 559
    :catch_7
    move-exception v0

    .line 560
    move-object/from16 v21, v3

    .line 561
    .line 562
    move-object/from16 v20, v7

    .line 563
    .line 564
    :goto_d
    :try_start_13
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 565
    .line 566
    check-cast v2, Lc5/i4;

    .line 567
    .line 568
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 569
    .line 570
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 571
    .line 572
    .line 573
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 574
    .line 575
    const-string v3, "Failed to ungzip content"

    .line 576
    .line 577
    invoke-virtual {v2, v0, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 581
    :catch_8
    move-exception v0

    .line 582
    goto :goto_e

    .line 583
    :catch_9
    move-exception v0

    .line 584
    move-object/from16 v21, v3

    .line 585
    .line 586
    move-object/from16 v20, v7

    .line 587
    .line 588
    :goto_e
    :try_start_14
    move-object v2, v8

    .line 589
    check-cast v2, Lc5/i4;

    .line 590
    .line 591
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 592
    .line 593
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 594
    .line 595
    .line 596
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 597
    .line 598
    const-string v3, "Failed to unzip queued bundle. appId"

    .line 599
    .line 600
    goto :goto_c

    .line 601
    :goto_f
    invoke-virtual {v2, v7, v3, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    :goto_10
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 605
    .line 606
    .line 607
    move-result v0
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 608
    if-eqz v0, :cond_12

    .line 609
    .line 610
    if-le v14, v6, :cond_11

    .line 611
    .line 612
    goto :goto_11

    .line 613
    :cond_11
    move-object/from16 v7, v20

    .line 614
    .line 615
    move-object/from16 v3, v21

    .line 616
    .line 617
    const/4 v2, 0x1

    .line 618
    const/4 v9, 0x0

    .line 619
    goto/16 :goto_a

    .line 620
    .line 621
    :cond_12
    :goto_11
    :try_start_15
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 622
    .line 623
    .line 624
    move-object v0, v13

    .line 625
    goto :goto_13

    .line 626
    :catchall_3
    move-exception v0

    .line 627
    const/4 v10, 0x0

    .line 628
    goto/16 :goto_1c

    .line 629
    .line 630
    :catch_a
    move-exception v0

    .line 631
    move-object/from16 v21, v3

    .line 632
    .line 633
    const/4 v10, 0x0

    .line 634
    :goto_12
    :try_start_16
    check-cast v8, Lc5/i4;

    .line 635
    .line 636
    iget-object v2, v8, Lc5/i4;->j:Lc5/e3;

    .line 637
    .line 638
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 639
    .line 640
    .line 641
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 642
    .line 643
    const-string v3, "Error querying bundles. appId"

    .line 644
    .line 645
    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    invoke-virtual {v2, v6, v3, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 653
    .line 654
    .line 655
    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 656
    if-eqz v10, :cond_13

    .line 657
    .line 658
    :try_start_17
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 659
    .line 660
    .line 661
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    if-nez v2, :cond_2a

    .line 666
    .line 667
    invoke-virtual {v1, v11}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    invoke-virtual {v2}, Lc5/f;->e()Z

    .line 672
    .line 673
    .line 674
    move-result v2

    .line 675
    if-eqz v2, :cond_18

    .line 676
    .line 677
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 682
    .line 683
    .line 684
    move-result v3

    .line 685
    if-eqz v3, :cond_15

    .line 686
    .line 687
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    check-cast v3, Landroid/util/Pair;

    .line 692
    .line 693
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    .line 696
    .line 697
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 702
    .line 703
    .line 704
    move-result v6

    .line 705
    if-nez v6, :cond_14

    .line 706
    .line 707
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    goto :goto_14

    .line 712
    :cond_15
    const/4 v2, 0x0

    .line 713
    :goto_14
    if-eqz v2, :cond_18

    .line 714
    .line 715
    const/4 v3, 0x0

    .line 716
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 717
    .line 718
    .line 719
    move-result v6

    .line 720
    if-ge v3, v6, :cond_18

    .line 721
    .line 722
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v6

    .line 726
    check-cast v6, Landroid/util/Pair;

    .line 727
    .line 728
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 729
    .line 730
    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    .line 731
    .line 732
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v7

    .line 736
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 737
    .line 738
    .line 739
    move-result v7

    .line 740
    if-eqz v7, :cond_16

    .line 741
    .line 742
    goto :goto_16

    .line 743
    :cond_16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q3;->C()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v6

    .line 747
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v6

    .line 751
    if-nez v6, :cond_17

    .line 752
    .line 753
    const/4 v6, 0x0

    .line 754
    invoke-interface {v0, v6, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    goto :goto_17

    .line 759
    :cond_17
    :goto_16
    add-int/lit8 v3, v3, 0x1

    .line 760
    .line 761
    goto :goto_15

    .line 762
    :cond_18
    :goto_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o3;->r()Lcom/google/android/gms/internal/measurement/n3;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    new-instance v6, Ljava/util/ArrayList;

    .line 771
    .line 772
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 773
    .line 774
    .line 775
    move-result v7

    .line 776
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 777
    .line 778
    .line 779
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 780
    .line 781
    .line 782
    move-result-object v7

    .line 783
    iget-object v7, v7, Lc5/e;->c:Lc5/d;

    .line 784
    .line 785
    const-string v8, "gaia_collection_enabled"

    .line 786
    .line 787
    invoke-interface {v7, v11, v8}, Lc5/d;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v7

    .line 791
    const-string v8, "1"

    .line 792
    .line 793
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v7

    .line 797
    if-eqz v7, :cond_19

    .line 798
    .line 799
    invoke-virtual {v1, v11}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    .line 800
    .line 801
    .line 802
    move-result-object v7

    .line 803
    invoke-virtual {v7}, Lc5/f;->e()Z

    .line 804
    .line 805
    .line 806
    move-result v7

    .line 807
    if-eqz v7, :cond_19

    .line 808
    .line 809
    const/4 v7, 0x1

    .line 810
    goto :goto_18

    .line 811
    :cond_19
    const/4 v7, 0x0

    .line 812
    :goto_18
    invoke-virtual {v1, v11}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    .line 813
    .line 814
    .line 815
    move-result-object v8

    .line 816
    invoke-virtual {v8}, Lc5/f;->e()Z

    .line 817
    .line 818
    .line 819
    move-result v8

    .line 820
    invoke-virtual {v1, v11}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    .line 821
    .line 822
    .line 823
    move-result-object v9

    .line 824
    invoke-virtual {v9}, Lc5/f;->f()Z

    .line 825
    .line 826
    .line 827
    move-result v9
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 828
    const/4 v10, 0x0

    .line 829
    :goto_19
    iget-object v12, v1, Lc5/o7;->g:Lc5/q7;

    .line 830
    .line 831
    if-ge v10, v3, :cond_22

    .line 832
    .line 833
    :try_start_18
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v13

    .line 837
    check-cast v13, Landroid/util/Pair;

    .line 838
    .line 839
    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 840
    .line 841
    check-cast v13, Lcom/google/android/gms/internal/measurement/q3;

    .line 842
    .line 843
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    .line 844
    .line 845
    .line 846
    move-result-object v13

    .line 847
    check-cast v13, Lcom/google/android/gms/internal/measurement/p3;

    .line 848
    .line 849
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v14

    .line 853
    check-cast v14, Landroid/util/Pair;

    .line 854
    .line 855
    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v14, Ljava/lang/Long;

    .line 858
    .line 859
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 863
    .line 864
    .line 865
    move-result-object v14

    .line 866
    invoke-virtual {v14}, Lc5/e;->g()V

    .line 867
    .line 868
    .line 869
    iget-boolean v14, v13, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 870
    .line 871
    if-eqz v14, :cond_1a

    .line 872
    .line 873
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 874
    .line 875
    .line 876
    const/4 v14, 0x0

    .line 877
    iput-boolean v14, v13, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 878
    .line 879
    :cond_1a
    iget-object v14, v13, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 880
    .line 881
    check-cast v14, Lcom/google/android/gms/internal/measurement/q3;

    .line 882
    .line 883
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/q3;->P0(Lcom/google/android/gms/internal/measurement/q3;)V

    .line 884
    .line 885
    .line 886
    iget-boolean v14, v13, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 887
    .line 888
    if-eqz v14, :cond_1b

    .line 889
    .line 890
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 891
    .line 892
    .line 893
    const/4 v14, 0x0

    .line 894
    iput-boolean v14, v13, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 895
    .line 896
    :cond_1b
    iget-object v14, v13, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 897
    .line 898
    check-cast v14, Lcom/google/android/gms/internal/measurement/q3;

    .line 899
    .line 900
    invoke-static {v14, v4, v5}, Lcom/google/android/gms/internal/measurement/q3;->z0(Lcom/google/android/gms/internal/measurement/q3;J)V

    .line 901
    .line 902
    .line 903
    iget-boolean v14, v13, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 904
    .line 905
    if-eqz v14, :cond_1c

    .line 906
    .line 907
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 908
    .line 909
    .line 910
    const/4 v14, 0x0

    .line 911
    iput-boolean v14, v13, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 912
    .line 913
    :cond_1c
    iget-object v14, v13, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 914
    .line 915
    check-cast v14, Lcom/google/android/gms/internal/measurement/q3;

    .line 916
    .line 917
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/q3;->c0(Lcom/google/android/gms/internal/measurement/q3;)V

    .line 918
    .line 919
    .line 920
    if-nez v7, :cond_1d

    .line 921
    .line 922
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/p3;->A()V

    .line 923
    .line 924
    .line 925
    :cond_1d
    if-nez v8, :cond_1e

    .line 926
    .line 927
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/p3;->G()V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/p3;->C()V

    .line 931
    .line 932
    .line 933
    :cond_1e
    if-nez v9, :cond_1f

    .line 934
    .line 935
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/p3;->x()V

    .line 936
    .line 937
    .line 938
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 939
    .line 940
    .line 941
    move-result-object v14

    .line 942
    sget-object v15, Lc5/r2;->V:Lc5/q2;

    .line 943
    .line 944
    invoke-virtual {v14, v11, v15}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 945
    .line 946
    .line 947
    move-result v14

    .line 948
    if-eqz v14, :cond_20

    .line 949
    .line 950
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 951
    .line 952
    .line 953
    move-result-object v14

    .line 954
    check-cast v14, Lcom/google/android/gms/internal/measurement/q3;

    .line 955
    .line 956
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    .line 957
    .line 958
    .line 959
    move-result-object v14

    .line 960
    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v12, v14}, Lc5/q7;->w([B)J

    .line 964
    .line 965
    .line 966
    move-result-wide v14

    .line 967
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/p3;->n(J)V

    .line 968
    .line 969
    .line 970
    :cond_20
    iget-boolean v12, v2, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 971
    .line 972
    if-eqz v12, :cond_21

    .line 973
    .line 974
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 975
    .line 976
    .line 977
    const/4 v12, 0x0

    .line 978
    iput-boolean v12, v2, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 979
    .line 980
    :cond_21
    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 981
    .line 982
    check-cast v12, Lcom/google/android/gms/internal/measurement/o3;

    .line 983
    .line 984
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 985
    .line 986
    .line 987
    move-result-object v13

    .line 988
    check-cast v13, Lcom/google/android/gms/internal/measurement/q3;

    .line 989
    .line 990
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/o3;->v(Lcom/google/android/gms/internal/measurement/o3;Lcom/google/android/gms/internal/measurement/q3;)V

    .line 991
    .line 992
    .line 993
    add-int/lit8 v10, v10, 0x1

    .line 994
    .line 995
    goto/16 :goto_19

    .line 996
    .line 997
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    invoke-virtual {v0}, Lc5/e3;->t()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    const/4 v7, 0x2

    .line 1006
    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v0

    .line 1010
    if-eqz v0, :cond_23

    .line 1011
    .line 1012
    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    check-cast v0, Lcom/google/android/gms/internal/measurement/o3;

    .line 1020
    .line 1021
    invoke-virtual {v12, v0}, Lc5/q7;->B(Lcom/google/android/gms/internal/measurement/o3;)Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v0

    .line 1025
    goto :goto_1a

    .line 1026
    :cond_23
    const/4 v0, 0x0

    .line 1027
    :goto_1a
    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v7

    .line 1034
    check-cast v7, Lcom/google/android/gms/internal/measurement/o3;

    .line 1035
    .line 1036
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    .line 1037
    .line 1038
    .line 1039
    move-result-object v7

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 1041
    .line 1042
    .line 1043
    sget-object v8, Lc5/r2;->q:Lc5/q2;

    .line 1044
    .line 1045
    const/4 v9, 0x0

    .line 1046
    invoke-virtual {v8, v9}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v8

    .line 1050
    move-object v9, v8

    .line 1051
    check-cast v9, Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 1052
    .line 1053
    :try_start_19
    new-instance v8, Ljava/net/URL;

    .line 1054
    .line 1055
    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v10

    .line 1062
    const/4 v12, 0x1

    .line 1063
    xor-int/2addr v10, v12

    .line 1064
    invoke-static {v10}, Lr3/r;->a(Z)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v10, v1, Lc5/o7;->A:Ljava/util/ArrayList;

    .line 1068
    .line 1069
    if-eqz v10, :cond_24

    .line 1070
    .line 1071
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v6

    .line 1075
    invoke-virtual {v6}, Lc5/e3;->h()Lc5/c3;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v6

    .line 1079
    const-string v10, "Set uploading progress before finishing the previous upload"

    .line 1080
    .line 1081
    invoke-virtual {v6, v10}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    goto :goto_1b

    .line 1085
    :cond_24
    new-instance v10, Ljava/util/ArrayList;

    .line 1086
    .line 1087
    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1088
    .line 1089
    .line 1090
    iput-object v10, v1, Lc5/o7;->A:Ljava/util/ArrayList;

    .line 1091
    .line 1092
    :goto_1b
    iget-object v6, v1, Lc5/o7;->j:Lc5/u6;

    .line 1093
    .line 1094
    iget-object v6, v6, Lc5/u6;->k:Lc5/o3;

    .line 1095
    .line 1096
    invoke-virtual {v6, v4, v5}, Lc5/o3;->b(J)V

    .line 1097
    .line 1098
    .line 1099
    const-string v4, "?"

    .line 1100
    .line 1101
    if-lez v3, :cond_25

    .line 1102
    .line 1103
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->n()Lcom/google/android/gms/internal/measurement/q3;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v2

    .line 1107
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v4

    .line 1111
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v2

    .line 1115
    invoke-virtual {v2}, Lc5/e3;->n()Lc5/c3;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v2

    .line 1119
    const-string v3, "Uploading data. app, uncompressed size, data"

    .line 1120
    .line 1121
    array-length v5, v7

    .line 1122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v5

    .line 1126
    invoke-virtual {v2, v3, v4, v5, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1127
    .line 1128
    .line 1129
    const/4 v2, 0x1

    .line 1130
    iput-boolean v2, v1, Lc5/o7;->w:Z

    .line 1131
    .line 1132
    invoke-static/range {v21 .. v21}, Lc5/o7;->I(Lc5/j7;)V

    .line 1133
    .line 1134
    .line 1135
    new-instance v0, Ll3/w;

    .line 1136
    .line 1137
    invoke-direct {v0, v1, v11}, Ll3/w;-><init>(Lc5/o7;Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual/range {v21 .. v21}, Lc5/x4;->b()V

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual/range {v21 .. v21}, Lc5/j7;->c()V

    .line 1144
    .line 1145
    .line 1146
    move-object/from16 v3, v21

    .line 1147
    .line 1148
    iget-object v2, v3, Lc5/x4;->a:Lc5/z4;

    .line 1149
    .line 1150
    check-cast v2, Lc5/i4;

    .line 1151
    .line 1152
    invoke-virtual {v2}, Lc5/i4;->l()Lc5/h4;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v10

    .line 1156
    new-instance v12, Lc5/i3;

    .line 1157
    .line 1158
    const/4 v13, 0x0

    .line 1159
    move-object v2, v12

    .line 1160
    move-object v4, v11

    .line 1161
    move-object v5, v8

    .line 1162
    move-object v6, v7

    .line 1163
    move-object v7, v13

    .line 1164
    move-object v8, v0

    .line 1165
    invoke-direct/range {v2 .. v8}, Lc5/i3;-><init>(Lc5/j3;Ljava/lang/String;Ljava/net/URL;[BLandroidx/collection/ArrayMap;Lc5/g3;)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v10, v12}, Lc5/h4;->o(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 1169
    .line 1170
    .line 1171
    goto/16 :goto_20

    .line 1172
    .line 1173
    :catch_b
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Lc5/e3;->h()Lc5/c3;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    .line 1182
    .line 1183
    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v3

    .line 1187
    invoke-virtual {v0, v3, v2, v9}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    .line 1189
    .line 1190
    goto/16 :goto_20

    .line 1191
    .line 1192
    :goto_1c
    if-eqz v10, :cond_26

    .line 1193
    .line 1194
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1195
    .line 1196
    .line 1197
    :cond_26
    throw v0

    .line 1198
    :cond_27
    iput-wide v6, v1, Lc5/o7;->C:J

    .line 1199
    .line 1200
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 1201
    .line 1202
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 1203
    .line 1204
    .line 1205
    iget-object v2, v0, Lc5/x4;->a:Lc5/z4;

    .line 1206
    .line 1207
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 1208
    .line 1209
    .line 1210
    sget-object v3, Lc5/r2;->d:Lc5/q2;

    .line 1211
    .line 1212
    const/4 v9, 0x0

    .line 1213
    invoke-virtual {v3, v9}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v3

    .line 1217
    check-cast v3, Ljava/lang/Long;

    .line 1218
    .line 1219
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 1220
    .line 1221
    .line 1222
    move-result-wide v6

    .line 1223
    sub-long/2addr v4, v6

    .line 1224
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0}, Lc5/j7;->c()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 1228
    .line 1229
    .line 1230
    :try_start_1c
    invoke-virtual {v0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    const/4 v3, 0x1

    .line 1235
    new-array v3, v3, [Ljava/lang/String;

    .line 1236
    .line 1237
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v4

    .line 1241
    const/4 v5, 0x0

    .line 1242
    aput-object v4, v3, v5

    .line 1243
    .line 1244
    const-string v4, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 1245
    .line 1246
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v3
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 1250
    :try_start_1d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    if-nez v0, :cond_28

    .line 1255
    .line 1256
    move-object v0, v2

    .line 1257
    check-cast v0, Lc5/i4;

    .line 1258
    .line 1259
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 1260
    .line 1261
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 1262
    .line 1263
    .line 1264
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 1265
    .line 1266
    const-string v4, "No expired configs for apps with pending events"

    .line 1267
    .line 1268
    invoke-virtual {v0, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    goto :goto_1e

    .line 1272
    :catch_c
    move-exception v0

    .line 1273
    goto :goto_1d

    .line 1274
    :cond_28
    const/4 v4, 0x0

    .line 1275
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v10
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 1279
    :try_start_1e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 1280
    .line 1281
    .line 1282
    goto :goto_1f

    .line 1283
    :catchall_4
    move-exception v0

    .line 1284
    move-object v10, v9

    .line 1285
    goto :goto_22

    .line 1286
    :catch_d
    move-exception v0

    .line 1287
    move-object v3, v9

    .line 1288
    :goto_1d
    :try_start_1f
    check-cast v2, Lc5/i4;

    .line 1289
    .line 1290
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 1291
    .line 1292
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 1293
    .line 1294
    .line 1295
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 1296
    .line 1297
    const-string v4, "Error selecting expired configs"

    .line 1298
    .line 1299
    invoke-virtual {v2, v0, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 1300
    .line 1301
    .line 1302
    if-eqz v3, :cond_29

    .line 1303
    .line 1304
    :goto_1e
    :try_start_20
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1305
    .line 1306
    .line 1307
    :cond_29
    move-object v10, v9

    .line 1308
    :goto_1f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v0

    .line 1312
    if-nez v0, :cond_2a

    .line 1313
    .line 1314
    iget-object v0, v1, Lc5/o7;->c:Lc5/i;

    .line 1315
    .line 1316
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v0, v10}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v0

    .line 1323
    if-eqz v0, :cond_2a

    .line 1324
    .line 1325
    invoke-virtual {v1, v0}, Lc5/o7;->c(Lc5/m4;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 1326
    .line 1327
    .line 1328
    :cond_2a
    :goto_20
    const/4 v2, 0x0

    .line 1329
    iput-boolean v2, v1, Lc5/o7;->x:Z

    .line 1330
    .line 1331
    :goto_21
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->A()V

    .line 1332
    .line 1333
    .line 1334
    return-void

    .line 1335
    :catchall_5
    move-exception v0

    .line 1336
    move-object v10, v3

    .line 1337
    :goto_22
    if-eqz v10, :cond_2b

    .line 1338
    .line 1339
    :try_start_21
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1340
    .line 1341
    .line 1342
    :cond_2b
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    .line 1343
    :catchall_6
    move-exception v0

    .line 1344
    const/4 v2, 0x0

    .line 1345
    iput-boolean v2, v1, Lc5/o7;->x:Z

    .line 1346
    .line 1347
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->A()V

    .line 1348
    .line 1349
    .line 1350
    throw v0
.end method

.method public final u(Lc5/s;Lc5/y7;)V
    .locals 41
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "raw_events"

    const-string v5, "_sno"

    invoke-static/range {p2 .. p2}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v6, v3, Lc5/y7;->c:Ljava/lang/String;

    iget-object v7, v3, Lc5/y7;->d:Ljava/lang/String;

    iget-object v8, v3, Lc5/y7;->a:Ljava/lang/String;

    invoke-static {v8}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v11

    invoke-virtual {v11}, Lc5/h4;->b()V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->b()V

    iget-object v11, v3, Lc5/y7;->a:Ljava/lang/String;

    iget-object v15, v1, Lc5/o7;->g:Lc5/q7;

    invoke-static {v15}, Lc5/o7;->I(Lc5/j7;)V

    .line 1
    iget-object v14, v3, Lc5/y7;->b:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v29, 0x1

    move-wide/from16 v30, v9

    iget-object v9, v3, Lc5/y7;->s:Ljava/lang/String;

    if-eqz v12, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    :goto_0
    if-nez v10, :cond_1

    return-void

    .line 2
    :cond_1
    iget-boolean v10, v3, Lc5/y7;->h:Z

    if-eqz v10, :cond_61

    iget-object v12, v1, Lc5/o7;->a:Lc5/c4;

    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v13, v2, Lc5/s;->a:Ljava/lang/String;

    invoke-virtual {v12, v11, v13}, Lc5/c4;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v32, v10

    iget-object v10, v1, Lc5/o7;->E:Lc5/b4;

    move-object/from16 v33, v9

    const-string v9, "_err"

    move-object/from16 v34, v6

    iget-object v6, v1, Lc5/o7;->m:Lc5/i4;

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->o()Lc5/c3;

    move-result-object v3

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    invoke-virtual {v6}, Lc5/i4;->q()Lc5/z2;

    move-result-object v5

    invoke-virtual {v5, v13}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blocked event. appId"

    invoke-virtual {v3, v4, v6, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    const-string v3, "measurement.upload.blacklist_internal"

    .line 3
    invoke-virtual {v12, v11, v3}, Lc5/c4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4
    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    const-string v3, "measurement.upload.blacklist_public"

    .line 5
    invoke-virtual {v12, v11, v3}, Lc5/c4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    const/16 v14, 0xb

    const-string v15, "_ev"

    iget-object v2, v2, Lc5/s;->a:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v11

    move-object/from16 v16, v2

    invoke-static/range {v12 .. v17}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    :goto_1
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2, v11}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    iget-object v3, v2, Lc5/m4;->a:Lc5/i4;

    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 8
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 9
    invoke-virtual {v4}, Lc5/h4;->b()V

    iget-wide v4, v2, Lc5/m4;->F:J

    .line 10
    iget-object v3, v3, Lc5/i4;->k:Lc5/h4;

    .line 11
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 12
    invoke-virtual {v3}, Lc5/h4;->b()V

    iget-wide v6, v2, Lc5/m4;->E:J

    .line 13
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->i()Lw3/a;

    move-result-object v5

    check-cast v5, Lc5/w;

    invoke-virtual {v5}, Lc5/w;->k()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    sget-object v5, Lc5/r2;->z:Lc5/q2;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->g()Lc5/c3;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc5/o7;->c(Lc5/m4;)V

    :cond_4
    return-void

    :cond_5
    invoke-static/range {p1 .. p1}, Lc5/f3;->b(Lc5/s;)Lc5/f3;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    move-result-object v13

    move-object/from16 v17, v12

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v14

    .line 14
    sget-object v14, Lc5/r2;->I:Lc5/q2;

    .line 15
    invoke-virtual {v12, v11, v14}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v12

    const/16 v14, 0x64

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/16 v14, 0x19

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 16
    invoke-virtual {v13, v2, v12}, Lc5/v7;->v(Lc5/f3;I)V

    invoke-virtual {v2}, Lc5/f3;->a()Lc5/s;

    move-result-object v2

    iget-object v14, v2, Lc5/s;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v12

    invoke-virtual {v12}, Lc5/e3;->t()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v12

    invoke-virtual {v12}, Lc5/e3;->n()Lc5/c3;

    move-result-object v12

    invoke-virtual {v6}, Lc5/i4;->q()Lc5/z2;

    move-result-object v13

    invoke-virtual {v13, v2}, Lc5/z2;->c(Lc5/s;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v15

    const-string v15, "Logging event"

    invoke-virtual {v12, v13, v15}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object/from16 v19, v15

    :goto_2
    iget-object v12, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v12}, Lc5/i;->P()V

    :try_start_0
    invoke-virtual {v1, v3}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/d9;->c()V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v12

    sget-object v13, Lc5/r2;->s0:Lc5/q2;

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v13}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v12

    sget-object v13, Lc5/r2;->t0:Lc5/q2;

    invoke-virtual {v12, v15, v13}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    const-string v13, "_lair"

    invoke-virtual {v12, v8, v13}, Lc5/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v12, "ecommerce_purchase"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v13, "refund"

    if-nez v12, :cond_9

    :try_start_1
    const-string v12, "purchase"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v12, 0x1

    :goto_4
    const-string v15, "_iap"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, v2, Lc5/s;->b:Lc5/q;

    if-nez v15, :cond_b

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v36, v4

    move-object/from16 v24, v5

    move-object/from16 v35, v7

    goto/16 :goto_f

    :cond_b
    :goto_5
    :try_start_2
    const-string v15, "currency"

    move-object/from16 v35, v7

    .line 17
    iget-object v7, v3, Lc5/q;->a:Landroid/os/Bundle;

    .line 18
    invoke-virtual {v7, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v15, "value"

    move-object/from16 v36, v4

    .line 19
    iget-object v4, v3, Lc5/q;->a:Landroid/os/Bundle;

    if-eqz v12, :cond_e

    :try_start_3
    invoke-virtual {v3}, Lc5/q;->Z()Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide v22, 0x412e848000000000L    # 1000000.0

    mul-double v20, v20, v22

    const-wide/16 v24, 0x0

    cmpl-double v12, v20, v24

    if-nez v12, :cond_c

    .line 20
    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v24, v5

    .line 21
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v20, v4, v22

    goto :goto_6

    :cond_c
    move-object/from16 v24, v5

    :goto_6
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v12, v20, v4

    if-gtz v12, :cond_d

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v12, v20, v4

    if-ltz v12, :cond_d

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    neg-long v4, v4

    goto :goto_7

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->o()Lc5/c3;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->R()V

    return-void

    :cond_e
    move-object/from16 v24, v5

    .line 22
    :try_start_4
    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_f
    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "[A-Z]{3}"

    invoke-virtual {v7, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    const-string v12, "_ltv_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_10
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object v15, v7

    iget-object v7, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v7, v11, v15}, Lc5/i;->I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, v7, Lc5/t7;->e:Ljava/lang/Object;

    instance-of v12, v7, Ljava/lang/Long;

    if-nez v12, :cond_12

    :cond_11
    move-object/from16 p1, v14

    move-object/from16 v14, v17

    move-object/from16 v37, v18

    move-object/from16 v38, v19

    const/4 v7, 0x0

    goto :goto_9

    :cond_12
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    new-instance v7, Lc5/t7;

    move-object/from16 v20, v14

    iget-object v14, v2, Lc5/s;->c:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->i()Lw3/a;

    move-result-object v21

    check-cast v21, Lc5/w;

    invoke-virtual/range {v21 .. v21}, Lc5/w;->k()J

    move-result-wide v21

    add-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v5, v17

    move-object v12, v7

    move-object/from16 v23, v7

    const/4 v7, 0x0

    move-object v13, v11

    move-object/from16 v37, v18

    move-object/from16 p1, v20

    move-object/from16 v38, v19

    move-wide/from16 v16, v21

    move-object/from16 v18, v4

    invoke-direct/range {v12 .. v18}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v39, v8

    move-object/from16 v7, v23

    const/4 v8, 0x2

    goto/16 :goto_e

    :goto_9
    iget-object v12, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v13

    sget-object v7, Lc5/r2;->E:Lc5/q2;

    invoke-virtual {v13, v11, v7}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v11}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v12}, Lc5/x4;->b()V

    invoke-virtual {v12}, Lc5/j7;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v12}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v17, v14

    const/4 v14, 0x3

    :try_start_6
    new-array v14, v14, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v11, v14, v16

    aput-object v11, v14, v29

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v39, v8

    const/4 v8, 0x2

    :try_start_7
    aput-object v7, v14, v8

    const-string v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    invoke-virtual {v13, v7, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v39, v8

    :goto_a
    const/4 v8, 0x2

    :goto_b
    move-object v7, v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v39, v8

    move-object/from16 v17, v14

    goto :goto_a

    :goto_c
    :try_start_8
    iget-object v12, v12, Lc5/x4;->a:Lc5/z4;

    check-cast v12, Lc5/i4;

    invoke-virtual {v12}, Lc5/i4;->m()Lc5/e3;

    move-result-object v12

    invoke-virtual {v12}, Lc5/e3;->h()Lc5/c3;

    move-result-object v12

    const-string v13, "Error pruning currencies. appId"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v14

    invoke-virtual {v12, v14, v13, v7}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_d
    new-instance v7, Lc5/t7;

    iget-object v14, v2, Lc5/s;->c:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->i()Lw3/a;

    move-result-object v12

    check-cast v12, Lc5/w;

    invoke-virtual {v12}, Lc5/w;->k()J

    move-result-wide v18

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v12, v7

    move-object v13, v11

    move-object/from16 v5, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v4

    invoke-direct/range {v12 .. v18}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_e
    iget-object v4, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v4, v7}, Lc5/i;->u(Lc5/t7;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v4

    invoke-virtual {v4}, Lc5/e3;->h()Lc5/c3;

    move-result-object v4

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v13

    invoke-virtual {v6}, Lc5/i4;->q()Lc5/z2;

    move-result-object v14

    iget-object v15, v7, Lc5/t7;->c:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v7, v7, Lc5/t7;->e:Ljava/lang/Object;

    invoke-virtual {v4, v12, v13, v14, v7}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v11

    invoke-static/range {v12 .. v17}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_10

    :cond_13
    :goto_f
    move-object/from16 v39, v8

    move-object/from16 p1, v14

    move-object/from16 v5, v17

    move-object/from16 v37, v18

    move-object/from16 v38, v19

    const/4 v8, 0x2

    :cond_14
    :goto_10
    invoke-static/range {p1 .. p1}, Lc5/v7;->T(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v7, p1

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    if-nez v3, :cond_15

    const-wide/16 v15, 0x0

    goto :goto_12

    .line 24
    :cond_15
    iget-object v12, v3, Lc5/q;->a:Landroid/os/Bundle;

    .line 25
    invoke-virtual {v12}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v15, 0x0

    .line 26
    :cond_16
    :goto_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 27
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Ljava/lang/String;

    .line 28
    iget-object v14, v3, Lc5/q;->a:Landroid/os/Bundle;

    invoke-virtual {v14, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 29
    instance-of v14, v13, [Landroid/os/Parcelable;

    if-eqz v14, :cond_16

    check-cast v13, [Landroid/os/Parcelable;

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v15, v13

    goto :goto_11

    :cond_17
    :goto_12
    const-wide/16 v25, 0x1

    add-long v16, v15, v25

    iget-object v12, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v12}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->x()J

    move-result-wide v13

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v11

    move/from16 v18, v20

    move/from16 v19, v4

    move/from16 v20, v21

    move/from16 v21, v9

    invoke-virtual/range {v12 .. v22}, Lc5/i;->G(JLjava/lang/String;JZZZZZ)Lc5/g;

    move-result-object v12

    iget-wide v13, v12, Lc5/g;->b:J

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    sget-object v15, Lc5/r2;->k:Lc5/q2;

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 p1, v5

    move-object/from16 v40, v6

    int-to-long v5, v8

    sub-long/2addr v13, v5

    const-wide/16 v5, 0x0

    cmp-long v8, v13, v5

    if-lez v8, :cond_19

    const-wide/16 v15, 0x3e8

    rem-long/2addr v13, v15

    cmp-long v2, v13, v25

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->h()Lc5/c3;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    iget-wide v5, v12, Lc5/g;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->n()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->R()V

    return-void

    :cond_19
    if-eqz v4, :cond_1b

    :try_start_9
    iget-wide v13, v12, Lc5/g;->a:J

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    sget-object v8, Lc5/r2;->m:Lc5/q2;

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v20, v7

    int-to-long v7, v8

    sub-long/2addr v13, v7

    cmp-long v7, v13, v5

    if-lez v7, :cond_1c

    const-wide/16 v7, 0x3e8

    rem-long/2addr v13, v7

    cmp-long v3, v13, v25

    if-nez v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->h()Lc5/c3;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    iget-wide v6, v12, Lc5/g;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    const/16 v14, 0x10

    const-string v15, "_ev"

    iget-object v2, v2, Lc5/s;->a:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v11

    move-object/from16 v16, v2

    invoke-static/range {v12 .. v17}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->n()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->R()V

    return-void

    :cond_1b
    move-object/from16 v20, v7

    :cond_1c
    const v7, 0xf4240

    if-eqz v9, :cond_1e

    :try_start_a
    iget-wide v8, v12, Lc5/g;->d:J

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v13

    sget-object v14, Lc5/r2;->l:Lc5/q2;

    move-object/from16 v15, v39

    invoke-virtual {v13, v15, v14}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v8, v13

    cmp-long v13, v8, v5

    if-lez v13, :cond_1f

    cmp-long v2, v8, v25

    if-nez v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->h()Lc5/c3;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    iget-wide v5, v12, Lc5/g;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->n()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->R()V

    return-void

    :cond_1e
    move-object/from16 v15, v39

    :cond_1f
    :try_start_b
    invoke-virtual {v3}, Lc5/q;->E()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    move-result-object v8

    const-string v9, "_o"

    iget-object v12, v2, Lc5/s;->c:Ljava/lang/String;

    invoke-virtual {v8, v3, v9, v12}, Lc5/v7;->x(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    move-result-object v8

    invoke-virtual {v8, v11}, Lc5/v7;->P(Ljava/lang/String;)Z

    move-result v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-string v9, "_r"

    if-eqz v8, :cond_20

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    move-result-object v8

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "_dbg"

    invoke-virtual {v8, v3, v13, v12}, Lc5/v7;->x(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    move-result-object v8

    invoke-virtual {v8, v3, v9, v12}, Lc5/v7;->x(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    const-string v8, "_s"

    move-object/from16 v12, v20

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    iget-object v8, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v8}, Lc5/o7;->I(Lc5/j7;)V

    move-object/from16 v12, v24

    invoke-virtual {v8, v15, v12}, Lc5/i;->I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;

    move-result-object v8

    if-eqz v8, :cond_21

    iget-object v13, v8, Lc5/t7;->e:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/Long;

    if-eqz v13, :cond_21

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    move-result-object v13

    iget-object v8, v8, Lc5/t7;->e:Ljava/lang/Object;

    invoke-virtual {v13, v3, v12, v8}, Lc5/v7;->x(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    iget-object v8, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v8}, Lc5/o7;->I(Lc5/j7;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    iget-object v12, v8, Lc5/x4;->a:Lc5/z4;

    :try_start_d
    invoke-static {v11}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v8}, Lc5/x4;->b()V

    invoke-virtual {v8}, Lc5/j7;->c()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v8}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    move-object v13, v12

    check-cast v13, Lc5/i4;

    invoke-virtual {v13}, Lc5/i4;->h()Lc5/e;

    move-result-object v13

    sget-object v14, Lc5/r2;->p:Lc5/q2;

    invoke-virtual {v13, v11, v14}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v13, 0x0

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    aput-object v11, v14, v13

    aput-object v7, v14, v29

    const-string v7, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object/from16 v13, v36

    :try_start_f
    invoke-virtual {v8, v13, v7, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    int-to-long v7, v7

    goto :goto_14

    :catch_3
    move-exception v0

    goto :goto_13

    :catch_4
    move-exception v0

    move-object/from16 v13, v36

    :goto_13
    move-object v7, v0

    :try_start_10
    check-cast v12, Lc5/i4;

    invoke-virtual {v12}, Lc5/i4;->m()Lc5/e3;

    move-result-object v8

    invoke-virtual {v8}, Lc5/e3;->h()Lc5/c3;

    move-result-object v8

    const-string v12, "Error deleting over the limit events. appId"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v14

    invoke-virtual {v8, v14, v12, v7}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v7, v5

    :goto_14
    cmp-long v12, v7, v5

    if-lez v12, :cond_22

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v12

    invoke-virtual {v12}, Lc5/e3;->o()Lc5/c3;

    move-result-object v12

    const-string v14, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v14, v6}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    new-instance v5, Lc5/n;

    iget-object v6, v1, Lc5/o7;->m:Lc5/i4;

    iget-object v14, v2, Lc5/s;->c:Ljava/lang/String;

    iget-object v7, v2, Lc5/s;->a:Ljava/lang/String;

    move-object/from16 v36, v9

    iget-wide v8, v2, Lc5/s;->d:J

    move-object v12, v5

    move-object v2, v13

    move-object v13, v6

    move-object v6, v15

    move-object v15, v11

    move-object/from16 v16, v7

    move-wide/from16 v17, v8

    move-object/from16 v19, v3

    invoke-direct/range {v12 .. v19}, Lc5/n;-><init>(Lc5/i4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    iget-object v3, v5, Lc5/n;->b:Ljava/lang/String;

    iget-object v7, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v7, v11, v3}, Lc5/i;->H(Ljava/lang/String;Ljava/lang/String;)Lc5/o;

    move-result-object v7

    if-nez v7, :cond_24

    iget-object v7, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v7, v11}, Lc5/i;->B(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    sget-object v12, Lc5/r2;->H:Lc5/q2;

    .line 31
    invoke-virtual {v9, v11, v12}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v9

    const/16 v13, 0x7d0

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/16 v14, 0x1f4

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v14, v9

    cmp-long v9, v7, v14

    if-ltz v9, :cond_23

    if-eqz v4, :cond_23

    .line 32
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->h()Lc5/c3;

    move-result-object v2

    const-string v4, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v11}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    invoke-virtual/range {v40 .. v40}, Lc5/i4;->q()Lc5/z2;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-virtual {v6, v11, v12}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v6

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/16 v7, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v3, v6}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->Q()Lc5/v7;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v11

    invoke-static/range {v12 .. v17}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->R()V

    return-void

    :cond_23
    :try_start_11
    new-instance v3, Lc5/o;

    iget-object v14, v5, Lc5/n;->b:Ljava/lang/String;

    iget-wide v7, v5, Lc5/n;->d:J

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v12, v3

    move-object v13, v11

    move-wide/from16 v21, v7

    invoke-direct/range {v12 .. v28}, Lc5/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v28, v2

    move-object/from16 v39, v6

    goto :goto_15

    :cond_24
    iget-wide v3, v7, Lc5/o;->f:J

    move-object/from16 v8, v40

    invoke-virtual {v5, v8, v3, v4}, Lc5/n;->a(Lc5/i4;J)Lc5/n;

    move-result-object v5

    iget-wide v3, v5, Lc5/n;->d:J

    .line 35
    new-instance v26, Lc5/o;

    iget-object v10, v7, Lc5/o;->a:Ljava/lang/String;

    iget-object v11, v7, Lc5/o;->b:Ljava/lang/String;

    iget-wide v12, v7, Lc5/o;->c:J

    iget-wide v14, v7, Lc5/o;->d:J

    move-object/from16 v27, v5

    move-object/from16 v39, v6

    iget-wide v5, v7, Lc5/o;->e:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object/from16 v28, v2

    :try_start_12
    iget-wide v1, v7, Lc5/o;->g:J

    iget-object v9, v7, Lc5/o;->h:Ljava/lang/Long;

    move-object/from16 v40, v8

    iget-object v8, v7, Lc5/o;->i:Ljava/lang/Long;

    move-object/from16 v23, v8

    iget-object v8, v7, Lc5/o;->j:Ljava/lang/Long;

    iget-object v7, v7, Lc5/o;->k:Ljava/lang/Boolean;

    move-object/from16 v22, v9

    move-object/from16 v9, v26

    move-wide/from16 v16, v5

    move-wide/from16 v18, v3

    move-wide/from16 v20, v1

    move-object/from16 v24, v8

    move-object/from16 v25, v7

    invoke-direct/range {v9 .. v25}, Lc5/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    .line 36
    :goto_15
    :try_start_13
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2, v3}, Lc5/i;->p(Lc5/o;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->l()Lc5/h4;

    move-result-object v2

    invoke-virtual {v2}, Lc5/h4;->b()V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->b()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    iget-object v2, v5, Lc5/n;->a:Ljava/lang/String;

    :try_start_14
    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    move-object/from16 v3, v39

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lr3/r;->a(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q3;->y1()Lcom/google/android/gms/internal/measurement/p3;

    move-result-object v4

    .line 37
    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_25

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_25
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/q3;->h0(Lcom/google/android/gms/internal/measurement/q3;)V

    .line 39
    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_26

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_26
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/q3;->G0(Lcom/google/android/gms/internal/measurement/q3;)V

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 41
    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_27

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_27
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/measurement/q3;->M0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    .line 42
    :cond_28
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 43
    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_29

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_29
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    move-object/from16 v7, v35

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/q3;->L0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    goto :goto_16

    :cond_2a
    move-object/from16 v7, v35

    .line 44
    :goto_16
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 45
    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_2b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_2b
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    move-object/from16 v8, v34

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/measurement/q3;->N0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    goto :goto_17

    :cond_2c
    move-object/from16 v8, v34

    :goto_17
    move-object/from16 v6, p2

    .line 46
    iget-wide v9, v6, Lc5/y7;->k:J

    const-wide/32 v11, -0x80000000

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2e

    long-to-int v10, v9

    .line 47
    iget-boolean v9, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v9, :cond_2d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_2d
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/q3;->g0(Lcom/google/android/gms/internal/measurement/q3;I)V

    .line 48
    :cond_2e
    iget-wide v9, v6, Lc5/y7;->e:J

    .line 49
    iget-boolean v11, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v11, :cond_2f

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_2f
    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v11, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v11, v9, v10}, Lcom/google/android/gms/internal/measurement/q3;->O0(Lcom/google/android/gms/internal/measurement/q3;J)V

    .line 50
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_31

    .line 51
    iget-boolean v9, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v9, :cond_30

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_30
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/q3;

    move-object/from16 v10, v37

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/q3;->b0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    goto :goto_18

    :cond_31
    move-object/from16 v10, v37

    .line 52
    :goto_18
    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    move-result-object v9

    iget-object v11, v6, Lc5/y7;->y:Ljava/lang/String;

    invoke-static {v11}, Lc5/f;->b(Ljava/lang/String;)Lc5/f;

    move-result-object v11

    invoke-virtual {v9, v11}, Lc5/f;->c(Lc5/f;)Lc5/f;

    move-result-object v9

    invoke-virtual {v9}, Lc5/f;->d()Ljava/lang/String;

    move-result-object v9

    .line 53
    iget-boolean v11, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v11, :cond_32

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_32
    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v11, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v11, v9}, Lcom/google/android/gms/internal/measurement/q3;->s0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v9

    sget-object v11, Lc5/r2;->c0:Lc5/q2;

    invoke-virtual {v9, v3, v11}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 55
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/q3;->y()Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_34

    iget-object v9, v6, Lc5/y7;->x:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_34

    iget-object v9, v6, Lc5/y7;->x:Ljava/lang/String;

    .line 57
    iget-boolean v11, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v11, :cond_33

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_33
    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v11, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v11, v9}, Lcom/google/android/gms/internal/measurement/q3;->r0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    .line 58
    :cond_34
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/q3;->y()Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->t()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_36

    goto :goto_19

    .line 60
    :cond_35
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/q3;->y()Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_36

    :goto_19
    move-object/from16 v9, v33

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/p3;->K(Ljava/lang/String;)V

    :cond_36
    iget-wide v11, v6, Lc5/y7;->f:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_38

    .line 62
    iget-boolean v9, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v9, :cond_37

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_37
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/q3;->X(Lcom/google/android/gms/internal/measurement/q3;J)V

    .line 63
    :cond_38
    iget-wide v11, v6, Lc5/y7;->v:J

    .line 64
    iget-boolean v9, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v9, :cond_39

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_39
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/q3;->O(Lcom/google/android/gms/internal/measurement/q3;J)V

    .line 65
    invoke-static/range {v38 .. v38}, Lc5/o7;->I(Lc5/j7;)V

    move-object/from16 v9, v38

    iget-object v11, v9, Lc5/i7;->b:Lc5/o7;

    iget-object v11, v11, Lc5/o7;->m:Lc5/i4;

    invoke-virtual {v11}, Lc5/i4;->k()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lc5/r2;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    iget-object v12, v9, Lc5/x4;->a:Lc5/z4;

    if-eqz v11, :cond_3d

    :try_start_15
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v13

    if-nez v13, :cond_3a

    goto/16 :goto_1c

    :cond_3a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v14, Lc5/r2;->P:Lc5/q2;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    move-object/from16 v16, v2

    const-string v2, "measurement.id."

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v2, :cond_3b

    :try_start_16
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v14, :cond_3b

    move-object v2, v12

    check-cast v2, Lc5/i4;

    invoke-virtual {v2}, Lc5/i4;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->o()Lc5/c3;

    move-result-object v2

    const-string v11, "Too many experiment IDs. Number of IDs"

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v15, v11}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_1b

    :catch_5
    move-exception v0

    move-object v2, v0

    :try_start_17
    move-object v11, v12

    check-cast v11, Lc5/i4;

    invoke-virtual {v11}, Lc5/i4;->m()Lc5/e3;

    move-result-object v11

    invoke-virtual {v11}, Lc5/e3;->o()Lc5/c3;

    move-result-object v11

    const-string v15, "Experiment ID NumberFormatException"

    invoke-virtual {v11, v2, v15}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3b
    move-object/from16 v2, v16

    move-object/from16 v11, v17

    goto :goto_1a

    :cond_3c
    move-object/from16 v16, v2

    :goto_1b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_1d

    :cond_3d
    :goto_1c
    move-object/from16 v16, v2

    :goto_1d
    const/4 v13, 0x0

    :cond_3e
    if-eqz v13, :cond_3f

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/measurement/p3;->v(Ljava/util/ArrayList;)V

    :cond_3f
    invoke-virtual {v1, v3}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    move-result-object v2

    iget-object v11, v6, Lc5/y7;->y:Ljava/lang/String;

    invoke-static {v11}, Lc5/f;->b(Ljava/lang/String;)Lc5/f;

    move-result-object v11

    invoke-virtual {v2, v11}, Lc5/f;->c(Lc5/f;)Lc5/f;

    move-result-object v2

    invoke-virtual {v2}, Lc5/f;->e()Z

    move-result v11

    if-eqz v11, :cond_42

    iget-object v11, v1, Lc5/o7;->j:Lc5/u6;

    invoke-virtual {v11, v3, v2}, Lc5/u6;->h(Ljava/lang/String;Lc5/f;)Landroid/util/Pair;

    move-result-object v11

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_42

    iget-boolean v13, v6, Lc5/y7;->q:Z

    if-eqz v13, :cond_42

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 66
    iget-boolean v14, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v14, :cond_40

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v14, 0x0

    iput-boolean v14, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_40
    iget-object v14, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v14, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v14, v13}, Lcom/google/android/gms/internal/measurement/q3;->R(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    .line 67
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v11, :cond_42

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 68
    iget-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v13, :cond_41

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_41
    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/measurement/q3;->T(Lcom/google/android/gms/internal/measurement/q3;Z)V

    .line 69
    :cond_42
    invoke-virtual/range {v40 .. v40}, Lc5/i4;->n()Lc5/m;

    move-result-object v11

    invoke-virtual {v11}, Lc5/y4;->d()V

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 70
    iget-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v13, :cond_43

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_43
    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/measurement/q3;->I0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {v40 .. v40}, Lc5/i4;->n()Lc5/m;

    move-result-object v11

    invoke-virtual {v11}, Lc5/y4;->d()V

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 72
    iget-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v13, :cond_44

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_44
    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/measurement/q3;->H0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {v40 .. v40}, Lc5/i4;->n()Lc5/m;

    move-result-object v11

    invoke-virtual {v11}, Lc5/m;->h()J

    move-result-wide v13

    long-to-int v11, v13

    .line 74
    iget-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v13, :cond_45

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_45
    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/measurement/q3;->K0(Lcom/google/android/gms/internal/measurement/q3;I)V

    .line 75
    invoke-virtual/range {v40 .. v40}, Lc5/i4;->n()Lc5/m;

    move-result-object v11

    invoke-virtual {v11}, Lc5/m;->n()Ljava/lang/String;

    move-result-object v11

    .line 76
    iget-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v13, :cond_46

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_46
    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/measurement/q3;->J0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v11

    sget-object v13, Lc5/r2;->l0:Lc5/q2;

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v13}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v11

    if-nez v11, :cond_47

    iget-wide v14, v6, Lc5/y7;->m:J

    invoke-virtual {v4, v14, v15}, Lcom/google/android/gms/internal/measurement/p3;->L(J)V

    :cond_47
    invoke-virtual/range {v40 .. v40}, Lc5/i4;->a()Z

    move-result v11

    if-eqz v11, :cond_4a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->s()Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_48

    goto :goto_1f

    .line 78
    :cond_48
    iget-boolean v2, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-nez v2, :cond_49

    goto :goto_1e

    :cond_49
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :goto_1e
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v2, Lcom/google/android/gms/internal/measurement/q3;

    const/4 v2, 0x0

    throw v2

    .line 79
    :cond_4a
    :goto_1f
    iget-object v11, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v11}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v11, v3}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    move-result-object v11

    if-nez v11, :cond_4d

    new-instance v11, Lc5/m4;

    move-object/from16 v14, v40

    invoke-direct {v11, v14, v3}, Lc5/m4;-><init>(Lc5/i4;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc5/o7;->R(Lc5/f;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lc5/m4;->c(Ljava/lang/String;)V

    iget-object v14, v6, Lc5/y7;->l:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lc5/m4;->p(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lc5/m4;->r(Ljava/lang/String;)V

    invoke-virtual {v2}, Lc5/f;->e()Z

    move-result v10

    if-eqz v10, :cond_4b

    iget-object v10, v1, Lc5/o7;->j:Lc5/u6;

    invoke-virtual {v10, v3}, Lc5/u6;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lc5/m4;->y(Ljava/lang/String;)V

    :cond_4b
    const-wide/16 v14, 0x0

    invoke-virtual {v11, v14, v15}, Lc5/m4;->v(J)V

    invoke-virtual {v11, v14, v15}, Lc5/m4;->w(J)V

    invoke-virtual {v11, v14, v15}, Lc5/m4;->u(J)V

    invoke-virtual {v11, v8}, Lc5/m4;->e(Ljava/lang/String;)V

    iget-wide v14, v6, Lc5/y7;->k:J

    invoke-virtual {v11, v14, v15}, Lc5/m4;->f(J)V

    invoke-virtual {v11, v7}, Lc5/m4;->d(Ljava/lang/String;)V

    iget-wide v7, v6, Lc5/y7;->e:J

    invoke-virtual {v11, v7, v8}, Lc5/m4;->s(J)V

    iget-wide v7, v6, Lc5/y7;->f:J

    invoke-virtual {v11, v7, v8}, Lc5/m4;->n(J)V

    move/from16 v7, v32

    invoke-virtual {v11, v7}, Lc5/m4;->x(Z)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v13}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v7

    if-nez v7, :cond_4c

    iget-wide v7, v6, Lc5/y7;->m:J

    invoke-virtual {v11, v7, v8}, Lc5/m4;->b(J)V

    :cond_4c
    iget-wide v6, v6, Lc5/y7;->v:J

    invoke-virtual {v11, v6, v7}, Lc5/m4;->o(J)V

    iget-object v6, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v6}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v6, v11}, Lc5/i;->o(Lc5/m4;)V

    :cond_4d
    invoke-virtual {v2}, Lc5/f;->f()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v11}, Lc5/m4;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {v11}, Lc5/m4;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 80
    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_4e

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_4e
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/measurement/q3;->V(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    .line 81
    :cond_4f
    invoke-virtual {v11}, Lc5/m4;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    invoke-virtual {v11}, Lc5/m4;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 82
    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_50

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_50
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/measurement/q3;->f0(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)V

    .line 83
    :cond_51
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2, v3}, Lc5/i;->N(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x0

    :goto_20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_5a

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a4;->u()Lcom/google/android/gms/internal/measurement/z3;

    move-result-object v3

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc5/t7;

    iget-object v6, v6, Lc5/t7;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/z3;->p(Ljava/lang/String;)V

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc5/t7;

    iget-wide v6, v6, Lc5/t7;->d:J

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/z3;->q(J)V

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc5/t7;

    iget-object v6, v6, Lc5/t7;->e:Ljava/lang/Object;

    .line 84
    invoke-static {v6}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 85
    iget-boolean v7, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v7, :cond_52

    .line 86
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_52
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v7, Lcom/google/android/gms/internal/measurement/a4;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/a4;->B(Lcom/google/android/gms/internal/measurement/a4;)V

    .line 87
    iget-boolean v7, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v7, :cond_53

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_53
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v7, Lcom/google/android/gms/internal/measurement/a4;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/a4;->D(Lcom/google/android/gms/internal/measurement/a4;)V

    .line 88
    iget-boolean v7, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v7, :cond_54

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_54
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v7, Lcom/google/android/gms/internal/measurement/a4;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/a4;->F(Lcom/google/android/gms/internal/measurement/a4;)V

    .line 89
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_56

    check-cast v6, Ljava/lang/String;

    .line 90
    iget-boolean v7, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v7, :cond_55

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_55
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v7, Lcom/google/android/gms/internal/measurement/a4;

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/measurement/a4;->A(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;)V

    goto :goto_21

    .line 91
    :cond_56
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_57

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/z3;->n(J)V

    goto :goto_21

    :cond_57
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_59

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 92
    iget-boolean v8, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v8, :cond_58

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_58
    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v8, Lcom/google/android/gms/internal/measurement/a4;

    invoke-static {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/a4;->E(Lcom/google/android/gms/internal/measurement/a4;D)V

    goto :goto_21

    .line 93
    :cond_59
    move-object v7, v12

    check-cast v7, Lc5/i4;

    .line 94
    iget-object v7, v7, Lc5/i4;->j:Lc5/e3;

    .line 95
    invoke-static {v7}, Lc5/i4;->e(Lc5/y4;)V

    const-string v8, "Ignoring invalid (type) user attribute value"

    .line 96
    iget-object v7, v7, Lc5/e3;->f:Lc5/c3;

    invoke-virtual {v7, v6, v8}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    :goto_21
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/p3;->w(Lcom/google/android/gms/internal/measurement/z3;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_20

    :cond_5a
    :try_start_18
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v2}, Lc5/x4;->b()V

    invoke-virtual {v2}, Lc5/j7;->c()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    move-result-object v6

    iget-object v7, v2, Lc5/i7;->b:Lc5/o7;

    iget-object v7, v7, Lc5/o7;->g:Lc5/q7;

    invoke-static {v7}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v7, v6}, Lc5/q7;->w([B)J

    move-result-wide v7

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "app_id"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "metadata_fingerprint"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "metadata"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :try_start_19
    invoke-virtual {v2}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v10, "raw_events_metadata"

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v12, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v3, v5, Lc5/n;->f:Lc5/q;

    .line 98
    iget-object v3, v3, Lc5/q;->a:Landroid/os/Bundle;

    .line 99
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 100
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 101
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v6, v36

    .line 102
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    move-object/from16 v4, v16

    goto :goto_23

    :cond_5b
    move-object/from16 v36, v6

    goto :goto_22

    :cond_5c
    invoke-static/range {p1 .. p1}, Lc5/o7;->I(Lc5/j7;)V

    iget-object v3, v5, Lc5/n;->b:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v4, v16

    invoke-virtual {v6, v4, v3}, Lc5/c4;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v9, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v9}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->x()J

    move-result-wide v10

    iget-object v12, v5, Lc5/n;->a:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lc5/i;->F(JLjava/lang/String;ZZ)Lc5/g;

    move-result-object v6

    if-eqz v3, :cond_5d

    iget-wide v9, v6, Lc5/g;->e:J

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    move-result-object v3

    sget-object v6, Lc5/r2;->o:Lc5/q2;

    invoke-virtual {v3, v4, v6}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v3

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-gez v3, :cond_5d

    goto :goto_23

    :cond_5d
    const/16 v29, 0x0

    :goto_23
    invoke-virtual {v2}, Lc5/x4;->b()V

    invoke-virtual {v2}, Lc5/j7;->c()V

    invoke-static {v4}, Lr3/r;->f(Ljava/lang/String;)V

    iget-object v3, v2, Lc5/i7;->b:Lc5/o7;

    iget-object v3, v3, Lc5/o7;->g:Lc5/q7;

    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h3;->v()Lcom/google/android/gms/internal/measurement/g3;

    move-result-object v6

    .line 104
    iget-boolean v9, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v9, :cond_5e

    .line 105
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_5e
    iget-object v9, v6, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/h3;

    iget-wide v10, v5, Lc5/n;->e:J

    invoke-static {v10, v11, v9}, Lcom/google/android/gms/internal/measurement/h3;->H(JLcom/google/android/gms/internal/measurement/h3;)V

    .line 106
    iget-object v9, v5, Lc5/n;->f:Lc5/q;

    iget-object v10, v9, Lc5/q;->a:Landroid/os/Bundle;

    .line 107
    invoke-virtual {v10}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 108
    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 109
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->v()Lcom/google/android/gms/internal/measurement/k3;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/measurement/k3;->q(Ljava/lang/String;)V

    .line 111
    iget-object v13, v9, Lc5/q;->a:Landroid/os/Bundle;

    invoke-virtual {v13, v11}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 112
    invoke-static {v11}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v3, v12, v11}, Lc5/q7;->H(Lcom/google/android/gms/internal/measurement/k3;Ljava/lang/Object;)V

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/measurement/g3;->q(Lcom/google/android/gms/internal/measurement/k3;)V

    goto :goto_24

    :cond_5f
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/h3;

    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    move-result-object v3

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "app_id"

    invoke-virtual {v6, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "name"

    iget-object v10, v5, Lc5/n;->b:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "timestamp"

    iget-wide v10, v5, Lc5/n;->d:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "metadata_fingerprint"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "data"

    invoke-virtual {v6, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "realtime"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    invoke-virtual {v2}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object/from16 v5, v28

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_60

    iget-object v3, v2, Lc5/x4;->a:Lc5/z4;

    check-cast v3, Lc5/i4;

    invoke-virtual {v3}, Lc5/i4;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->h()Lc5/c3;

    move-result-object v3

    const-string v5, "Failed to insert raw event (got -1). appId"

    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto :goto_25

    :cond_60
    const-wide/16 v2, 0x0

    :try_start_1c
    iput-wide v2, v1, Lc5/o7;->q:J

    goto :goto_25

    :catch_6
    move-exception v0

    move-object v3, v0

    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    check-cast v2, Lc5/i4;

    invoke-virtual {v2}, Lc5/i4;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->h()Lc5/c3;

    move-result-object v2

    const-string v5, "Error storing raw event. appId"

    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    invoke-virtual {v2, v4, v5, v3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto :goto_25

    :catch_7
    move-exception v0

    move-object v5, v0

    :try_start_1d
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    check-cast v2, Lc5/i4;

    invoke-virtual {v2}, Lc5/i4;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->h()Lc5/c3;

    move-result-object v2

    const-string v6, "Error storing raw event metadata. appId"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    throw v5
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :catch_8
    move-exception v0

    move-object v2, v0

    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v3

    invoke-virtual {v3}, Lc5/e3;->h()Lc5/c3;

    move-result-object v3

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_25
    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->n()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    iget-object v2, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v2}, Lc5/i;->R()V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->D()V

    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e3;->n()Lc5/c3;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v30

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    invoke-virtual {v2, v3, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_26

    :catchall_1
    move-exception v0

    :goto_26
    move-object v2, v0

    iget-object v3, v1, Lc5/o7;->c:Lc5/i;

    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    invoke-virtual {v3}, Lc5/i;->R()V

    throw v2

    :cond_61
    move-object v6, v3

    invoke-virtual {v1, v6}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    return-void
.end method

.method public final x()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc5/o7;->i()Lw3/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lc5/w;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lc5/o7;->j:Lc5/u6;

    .line 15
    .line 16
    invoke-virtual {v2}, Lc5/j7;->c()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lc5/x4;->b()V

    .line 20
    .line 21
    .line 22
    iget-object v3, v2, Lc5/u6;->l:Lc5/o3;

    .line 23
    .line 24
    invoke-virtual {v3}, Lc5/o3;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    const-wide/16 v6, 0x0

    .line 29
    .line 30
    cmp-long v8, v4, v6

    .line 31
    .line 32
    if-nez v8, :cond_0

    .line 33
    .line 34
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 35
    .line 36
    check-cast v2, Lc5/i4;

    .line 37
    .line 38
    iget-object v2, v2, Lc5/i4;->m:Lc5/v7;

    .line 39
    .line 40
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lc5/v7;->p()Ljava/security/SecureRandom;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v4, 0x5265c00

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    int-to-long v4, v2

    .line 55
    const-wide/16 v6, 0x1

    .line 56
    .line 57
    add-long/2addr v4, v6

    .line 58
    invoke-virtual {v3, v4, v5}, Lc5/o3;->b(J)V

    .line 59
    .line 60
    .line 61
    :cond_0
    add-long/2addr v0, v4

    .line 62
    const-wide/16 v2, 0x3e8

    .line 63
    .line 64
    div-long/2addr v0, v2

    .line 65
    const-wide/16 v2, 0x3c

    .line 66
    .line 67
    div-long/2addr v0, v2

    .line 68
    div-long/2addr v0, v2

    .line 69
    const-wide/16 v2, 0x18

    .line 70
    .line 71
    div-long/2addr v0, v2

    .line 72
    return-wide v0
.end method

.method public final y(Ljava/lang/String;)Lc5/y7;
    .locals 35
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v0, Lc5/o7;->c:Lc5/i;

    .line 6
    .line 7
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-virtual {v1}, Lc5/m4;->H()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Lc5/o7;->z(Lc5/m4;)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 50
    .line 51
    const-string v4, "App version does not match; dropping. appId"

    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_2
    :goto_0
    new-instance v30, Lc5/y7;

    .line 56
    .line 57
    invoke-virtual {v1}, Lc5/m4;->K()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v1}, Lc5/m4;->H()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v1}, Lc5/m4;->B()J

    .line 66
    .line 67
    .line 68
    move-result-wide v6

    .line 69
    iget-object v8, v1, Lc5/m4;->a:Lc5/i4;

    .line 70
    .line 71
    iget-object v9, v8, Lc5/i4;->k:Lc5/h4;

    .line 72
    .line 73
    invoke-static {v9}, Lc5/i4;->e(Lc5/y4;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9}, Lc5/h4;->b()V

    .line 77
    .line 78
    .line 79
    iget-object v9, v1, Lc5/m4;->l:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v10, v8, Lc5/i4;->k:Lc5/h4;

    .line 82
    .line 83
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10}, Lc5/h4;->b()V

    .line 87
    .line 88
    .line 89
    iget-wide v10, v1, Lc5/m4;->m:J

    .line 90
    .line 91
    iget-object v12, v8, Lc5/i4;->k:Lc5/h4;

    .line 92
    .line 93
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v12}, Lc5/h4;->b()V

    .line 97
    .line 98
    .line 99
    iget-wide v13, v1, Lc5/m4;->n:J

    .line 100
    .line 101
    iget-object v12, v8, Lc5/i4;->k:Lc5/h4;

    .line 102
    .line 103
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12}, Lc5/h4;->b()V

    .line 107
    .line 108
    .line 109
    iget-boolean v15, v1, Lc5/m4;->o:Z

    .line 110
    .line 111
    invoke-virtual {v1}, Lc5/m4;->I()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v16

    .line 115
    iget-object v12, v8, Lc5/i4;->k:Lc5/h4;

    .line 116
    .line 117
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12}, Lc5/h4;->b()V

    .line 121
    .line 122
    .line 123
    move-wide/from16 v17, v13

    .line 124
    .line 125
    move v13, v15

    .line 126
    iget-wide v14, v1, Lc5/m4;->p:J

    .line 127
    .line 128
    invoke-virtual {v1}, Lc5/m4;->A()Z

    .line 129
    .line 130
    .line 131
    move-result v21

    .line 132
    invoke-virtual {v1}, Lc5/m4;->D()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v23

    .line 136
    iget-object v12, v8, Lc5/i4;->k:Lc5/h4;

    .line 137
    .line 138
    invoke-static {v12}, Lc5/i4;->e(Lc5/y4;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12}, Lc5/h4;->b()V

    .line 142
    .line 143
    .line 144
    iget-object v12, v1, Lc5/m4;->s:Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-virtual {v1}, Lc5/m4;->C()J

    .line 147
    .line 148
    .line 149
    move-result-wide v25

    .line 150
    iget-object v8, v8, Lc5/i4;->k:Lc5/h4;

    .line 151
    .line 152
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Lc5/h4;->b()V

    .line 156
    .line 157
    .line 158
    iget-object v8, v1, Lc5/m4;->u:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->K()Lc5/e;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    sget-object v0, Lc5/r2;->c0:Lc5/q2;

    .line 168
    .line 169
    invoke-virtual {v3, v2, v0}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_3

    .line 174
    .line 175
    invoke-virtual {v1}, Lc5/m4;->J()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    move-object/from16 v28, v0

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    const/16 v28, 0x0

    .line 183
    .line 184
    :goto_1
    const/4 v0, 0x0

    .line 185
    move-object/from16 v24, v12

    .line 186
    .line 187
    move-object v12, v0

    .line 188
    const/4 v0, 0x0

    .line 189
    move-wide/from16 v33, v14

    .line 190
    .line 191
    move-wide/from16 v31, v17

    .line 192
    .line 193
    move v14, v0

    .line 194
    const-wide/16 v18, 0x0

    .line 195
    .line 196
    const/16 v20, 0x0

    .line 197
    .line 198
    const/16 v22, 0x0

    .line 199
    .line 200
    invoke-virtual/range {p0 .. p1}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lc5/f;->d()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v29

    .line 208
    move-object/from16 v1, v30

    .line 209
    .line 210
    move-object/from16 v2, p1

    .line 211
    .line 212
    move-object v3, v4

    .line 213
    move-object v4, v5

    .line 214
    move-wide v5, v6

    .line 215
    move-object v7, v9

    .line 216
    move-object v0, v8

    .line 217
    move-wide v8, v10

    .line 218
    move-wide/from16 v10, v31

    .line 219
    .line 220
    move-object/from16 v15, v16

    .line 221
    .line 222
    move-wide/from16 v16, v33

    .line 223
    .line 224
    move-object/from16 v27, v0

    .line 225
    .line 226
    invoke-direct/range {v1 .. v29}, Lc5/y7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-object v30

    .line 230
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lc5/o7;->m()Lc5/e3;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v4, "No app data available; dropping"

    .line 235
    .line 236
    iget-object v1, v0, Lc5/e3;->n:Lc5/c3;

    .line 237
    .line 238
    :goto_3
    invoke-virtual {v1, v2, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const/4 v0, 0x0

    .line 242
    return-object v0
.end method

.method public final z(Lc5/m4;)Ljava/lang/Boolean;
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lc5/m4;->B()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const-wide/32 v2, -0x80000000

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, Lc5/o7;->m:Lc5/i4;

    .line 10
    .line 11
    cmp-long v6, v0, v2

    .line 12
    .line 13
    if-eqz v6, :cond_0

    .line 14
    .line 15
    :try_start_1
    iget-object v0, v5, Lc5/i4;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v4, v1}, Ly3/b;->b(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lc5/m4;->B()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    int-to-long v3, v0

    .line 36
    cmp-long p1, v1, v3

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_0
    iget-object v0, v5, Lc5/i4;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v4, v1}, Ly3/b;->b(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1}, Lc5/m4;->H()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    return-object p1

    .line 77
    :catch_0
    const/4 p1, 0x0

    .line 78
    return-object p1
.end method
