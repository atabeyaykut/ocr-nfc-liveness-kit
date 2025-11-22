.class public final Ld8/h;
.super Lv7/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv7/f<",
        "Lc8/a;",
        "La8/a;",
        ">;"
    }
.end annotation


# static fields
.field public static h:Z = true
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final i:Lb8/d;


# instance fields
.field public final d:Ld8/e;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Ls4/x8;

.field public final f:Ls4/z8;

.field public final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lb8/d;->a:Lb8/d;

    .line 2
    .line 3
    sput-object v0, Ld8/h;->i:Lb8/d;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lv7/h;Lc8/e;)V
    .locals 3
    .param p1    # Lv7/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p2}, Lc8/e;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ls4/d9;->e(Ljava/lang/String;)Ls4/x8;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lv7/h;->b()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v1, Lm3/f;->b:Lm3/f;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lm3/f;->a(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const v2, 0xc337960

    .line 23
    .line 24
    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    invoke-interface {p2}, Lc8/e;->d()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Ld8/b;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Ld8/b;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    new-instance v1, Ld8/a;

    .line 41
    .line 42
    invoke-direct {v1, p1, p2}, Ld8/a;-><init>(Landroid/content/Context;Lc8/e;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-interface {p2}, Lc8/e;->e()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-direct {p0}, Lv7/f;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Ld8/h;->e:Ls4/x8;

    .line 53
    .line 54
    iput-object v1, p0, Ld8/h;->d:Ld8/e;

    .line 55
    .line 56
    invoke-static {}, Lv7/h;->c()Lv7/h;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2}, Lv7/h;->b()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    new-instance v0, Ls4/z8;

    .line 65
    .line 66
    invoke-direct {v0, p2}, Ls4/z8;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Ld8/h;->f:Ls4/z8;

    .line 70
    .line 71
    iput p1, p0, Ld8/h;->g:I

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld8/h;->d:Ld8/e;

    invoke-interface {v0}, Ld8/e;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Ld8/h;->h:Z

    iget-object v0, p0, Ld8/h;->d:Ld8/e;

    invoke-interface {v0}, Ld8/e;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(La8/a;)Ljava/lang/Object;
    .locals 5
    .param p1    # La8/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v2, p0, Ld8/h;->d:Ld8/e;

    .line 7
    .line 8
    invoke-interface {v2, p1}, Ld8/e;->a(La8/a;)Lc8/a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Ls4/y6;->b:Ls4/y6;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v3, p1}, Ld8/h;->e(JLs4/y6;La8/a;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    sput-boolean v3, Ld8/h;->h:Z
    :try_end_1
    .catch Lr7/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object v2

    .line 22
    :catch_0
    move-exception v2

    .line 23
    :try_start_2
    iget v3, v2, Lr7/a;->a:I

    .line 24
    .line 25
    const/16 v4, 0xe

    .line 26
    .line 27
    if-ne v3, v4, :cond_0

    .line 28
    .line 29
    sget-object v3, Ls4/y6;->c:Ls4/y6;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v3, Ls4/y6;->d:Ls4/y6;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, v0, v1, v3, p1}, Ld8/h;->e(JLs4/y6;La8/a;)V

    .line 35
    .line 36
    .line 37
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0

    .line 40
    throw p1
.end method

.method public final e(JLs4/y6;La8/a;)V
    .locals 24
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, p1

    iget-object v4, v1, Ld8/h;->e:Ls4/x8;

    sget-object v5, Ls4/z6;->b:Ls4/z6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Ls4/x8;->d(Ls4/z6;J)Z

    move-result v8

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const-wide v11, 0x7fffffffffffffffL

    if-nez v8, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v8, v4, Ls4/x8;->h:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v6, Lcom/google/android/gms/internal/measurement/x;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/measurement/x;-><init>(I)V

    new-instance v8, Lf2/a;

    invoke-direct {v8}, Lf2/a;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 3
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    and-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v8, Lf2/a;->a:Ljava/io/Serializable;

    .line 4
    iput-object v0, v8, Lf2/a;->b:Ljava/io/Serializable;

    .line 5
    sget-boolean v13, Ld8/h;->h:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 6
    iput-object v13, v8, Lf2/a;->c:Ljava/io/Serializable;

    .line 7
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    iput-object v13, v8, Lf2/a;->d:Ljava/lang/Object;

    .line 9
    iput-object v13, v8, Lf2/a;->e:Ljava/lang/Object;

    .line 10
    new-instance v13, Ls4/s6;

    invoke-direct {v13, v8}, Ls4/s6;-><init>(Lf2/a;)V

    .line 11
    iput-object v13, v6, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/Object;

    .line 12
    sget-object v8, Ld8/h;->i:Lb8/d;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v8, p4

    .line 13
    iget v13, v8, La8/a;->g:I

    .line 14
    invoke-static/range {p4 .. p4}, Lb8/d;->b(La8/a;)I

    move-result v8

    new-instance v14, Lx0/t;

    invoke-direct {v14, v7}, Lx0/t;-><init>(I)V

    const/4 v7, -0x1

    if-eq v13, v7, :cond_5

    const/16 v7, 0x23

    if-eq v13, v7, :cond_4

    const v7, 0x32315659

    if-eq v13, v7, :cond_3

    const/16 v7, 0x10

    if-eq v13, v7, :cond_2

    const/16 v7, 0x11

    if-eq v13, v7, :cond_1

    sget-object v7, Ls4/p6;->b:Ls4/p6;

    goto :goto_0

    :cond_1
    sget-object v7, Ls4/p6;->d:Ls4/p6;

    goto :goto_0

    :cond_2
    sget-object v7, Ls4/p6;->c:Ls4/p6;

    goto :goto_0

    :cond_3
    sget-object v7, Ls4/p6;->e:Ls4/p6;

    goto :goto_0

    :cond_4
    sget-object v7, Ls4/p6;->f:Ls4/p6;

    goto :goto_0

    :cond_5
    sget-object v7, Ls4/p6;->g:Ls4/p6;

    .line 15
    :goto_0
    iput-object v7, v14, Lx0/t;->a:Ljava/lang/Object;

    .line 16
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 17
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v14, Lx0/t;->b:Ljava/lang/Object;

    .line 18
    new-instance v7, Ls4/q6;

    invoke-direct {v7, v14}, Ls4/q6;-><init>(Lx0/t;)V

    .line 19
    iput-object v7, v6, Lcom/google/android/gms/internal/measurement/x;->b:Ljava/lang/Object;

    .line 20
    new-instance v7, Ls4/h8;

    invoke-direct {v7, v6}, Ls4/h8;-><init>(Lcom/google/android/gms/internal/measurement/x;)V

    .line 21
    new-instance v6, Ls4/a7;

    invoke-direct {v6}, Ls4/a7;-><init>()V

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    iput-object v8, v6, Ls4/a7;->c:Ljava/lang/Boolean;

    .line 23
    iput-object v7, v6, Ls4/a7;->d:Ls4/h8;

    .line 24
    new-instance v7, Ls4/a9;

    invoke-direct {v7, v6, v9}, Ls4/a9;-><init>(Ls4/a7;I)V

    .line 25
    invoke-virtual {v4}, Ls4/x8;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v5, v6}, Ls4/x8;->b(Ls4/a9;Ls4/z6;Ljava/lang/String;)V

    .line 26
    :goto_1
    new-instance v4, Ls4/y1;

    invoke-direct {v4}, Ls4/y1;-><init>()V

    .line 27
    iput-object v0, v4, Ls4/y1;->a:Ljava/lang/Object;

    .line 28
    sget-boolean v5, Ld8/h;->h:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 29
    iput-object v5, v4, Ls4/y1;->b:Ljava/lang/Object;

    .line 30
    new-instance v5, Ls4/z1;

    invoke-direct {v5, v4}, Ls4/z1;-><init>(Ls4/y1;)V

    .line 31
    iget-object v4, v1, Ld8/h;->e:Ls4/x8;

    sget-object v6, Ls4/z6;->d:Ls4/z6;

    .line 32
    iget-object v7, v4, Ls4/x8;->i:Ljava/util/HashMap;

    .line 33
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 34
    new-instance v8, Ls4/p;

    invoke-direct {v8}, Ls4/p;-><init>()V

    .line 35
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls4/e0;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v8, v5, v13}, Ls4/p0;->b(Ls4/z1;Ljava/lang/Long;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v4, v6, v13, v14}, Ls4/x8;->d(Ls4/z6;J)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object v5, v4, Ls4/x8;->h:Ljava/util/HashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Ls4/p0;->j()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v8, v13}, Ls4/e0;->a(Ljava/lang/Object;)Ls4/l;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v15, Ls4/l6;

    invoke-direct {v15}, Ls4/l6;-><init>()V

    invoke-virtual {v14}, Ls4/j;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const-wide/16 v17, 0x0

    :goto_3
    move-object/from16 v19, v16

    check-cast v19, Ls4/i;

    invoke-virtual/range {v19 .. v19}, Ls4/i;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {v19 .. v19}, Ls4/i;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v17, v19, v17

    goto :goto_3

    :cond_8
    invoke-virtual {v14}, Ls4/j;->size()I

    move-result v9

    int-to-long v10, v9

    div-long v17, v17, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 36
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v15, Ls4/l6;->c:Ljava/lang/Long;

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 37
    invoke-static {v14, v9, v10}, Ls4/x8;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 38
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v15, Ls4/l6;->a:Ljava/lang/Long;

    const-wide v9, 0x4052c00000000000L    # 75.0

    .line 39
    invoke-static {v14, v9, v10}, Ls4/x8;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 40
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v15, Ls4/l6;->f:Ljava/lang/Long;

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    .line 41
    invoke-static {v14, v9, v10}, Ls4/x8;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 42
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v15, Ls4/l6;->e:Ljava/lang/Long;

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    .line 43
    invoke-static {v14, v9, v10}, Ls4/x8;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 44
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v15, Ls4/l6;->d:Ljava/lang/Long;

    const-wide/16 v9, 0x0

    .line 45
    invoke-static {v14, v9, v10}, Ls4/x8;->a(Ljava/util/List;D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 46
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v15, Ls4/l6;->b:Ljava/lang/Long;

    .line 47
    new-instance v9, Ls4/m6;

    invoke-direct {v9, v15}, Ls4/m6;-><init>(Ls4/l6;)V

    .line 48
    invoke-interface {v8, v13}, Ls4/e0;->a(Ljava/lang/Object;)Ls4/l;

    move-result-object v10

    invoke-virtual {v10}, Ls4/j;->size()I

    move-result v10

    check-cast v13, Ls4/z1;

    new-instance v14, Ls4/a7;

    invoke-direct {v14}, Ls4/a7;-><init>()V

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    iput-object v15, v14, Ls4/a7;->c:Ljava/lang/Boolean;

    .line 50
    new-instance v15, Ls4/x1;

    invoke-direct {v15}, Ls4/x1;-><init>()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 51
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const v16, 0x7fffffff

    and-int v10, v10, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v15, Ls4/x1;->a:Ljava/lang/Object;

    .line 52
    iput-object v13, v15, Ls4/x1;->b:Ljava/lang/Object;

    .line 53
    iput-object v9, v15, Ls4/x1;->c:Ljava/lang/Object;

    .line 54
    new-instance v9, Ls4/a2;

    invoke-direct {v9, v15}, Ls4/a2;-><init>(Ls4/x1;)V

    .line 55
    iput-object v9, v14, Ls4/a7;->e:Ls4/a2;

    .line 56
    new-instance v9, Ls4/a9;

    const/4 v10, 0x0

    invoke-direct {v9, v14, v10}, Ls4/a9;-><init>(Ls4/a7;I)V

    .line 57
    invoke-virtual {v4}, Ls4/x8;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v6, v10}, Ls4/x8;->b(Ls4/a9;Ls4/z6;Ljava/lang/String;)V

    const/4 v9, 0x0

    const v10, 0x7fffffff

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    iget-object v4, v1, Ld8/h;->f:Ls4/z8;

    iget v5, v1, Ld8/h;->g:I

    .line 59
    iget v0, v0, Ls4/y6;->a:I

    sub-long v20, v22, v2

    .line 60
    monitor-enter v4

    .line 61
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v6, v4, Ls4/z8;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_a

    goto :goto_5

    :cond_a
    iget-object v6, v4, Ls4/z8;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long v6, v2, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1e

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gtz v10, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    iget-object v6, v4, Ls4/z8;->a:Lt3/c;

    new-instance v7, Lr3/v;

    const/4 v8, 0x1

    new-array v8, v8, [Lr3/o;

    new-instance v9, Lr3/o;

    move-object/from16 v17, v9

    move/from16 v18, v5

    move/from16 v19, v0

    invoke-direct/range {v17 .. v23}, Lr3/o;-><init>(IIJJ)V

    const/4 v0, 0x0

    aput-object v9, v8, v0

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v7, v0, v5}, Lr3/v;-><init>(ILjava/util/List;)V

    invoke-virtual {v6, v7}, Lt3/c;->d(Lr3/v;)Lh5/z;

    move-result-object v0

    new-instance v5, Ls4/y8;

    invoke-direct {v5, v4, v2, v3}, Ls4/y8;-><init>(Ls4/z8;J)V

    invoke-virtual {v0, v5}, Lh5/z;->p(Lh5/f;)Lh5/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
