.class public final Lc5/c4;
.super Lc5/j7;
.source "SourceFile"

# interfaces
.implements Lc5/d;


# instance fields
.field public final d:Landroidx/collection/ArrayMap;

.field public final e:Landroidx/collection/ArrayMap;

.field public final f:Landroidx/collection/ArrayMap;

.field public final g:Landroidx/collection/ArrayMap;

.field public final h:Landroidx/collection/ArrayMap;

.field public final j:Lc5/a4;

.field public final k:Lc5/b4;

.field public final l:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Lc5/o7;)V
    .locals 0

    invoke-direct {p0, p1}, Lc5/j7;-><init>(Lc5/o7;)V

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/c4;->d:Landroidx/collection/ArrayMap;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/c4;->e:Landroidx/collection/ArrayMap;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/c4;->f:Landroidx/collection/ArrayMap;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/c4;->g:Landroidx/collection/ArrayMap;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/c4;->l:Landroidx/collection/ArrayMap;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lc5/c4;->h:Landroidx/collection/ArrayMap;

    new-instance p1, Lc5/a4;

    invoke-direct {p1, p0}, Lc5/a4;-><init>(Lc5/c4;)V

    iput-object p1, p0, Lc5/c4;->j:Lc5/a4;

    new-instance p1, Lc5/b4;

    invoke-direct {p1, p0}, Lc5/b4;-><init>(Lc5/z4;)V

    iput-object p1, p0, Lc5/c4;->k:Lc5/b4;

    return-void
.end method

.method public static final v(Lcom/google/android/gms/internal/measurement/w2;)Landroidx/collection/ArrayMap;
    .locals 3

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/w2;->B()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/y2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/y2;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/y2;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 0

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-virtual {p0, p1}, Lc5/c4;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lc5/c4;->d:Landroidx/collection/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-virtual {p0, p1}, Lc5/c4;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lc5/c4;->h:Landroidx/collection/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w2;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/j7;->c()V

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc5/c4;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lc5/c4;->g:Landroidx/collection/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/w2;

    return-object p1
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qb;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 5
    .line 6
    check-cast v0, Lc5/i4;

    .line 7
    .line 8
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    sget-object v2, Lc5/r2;->q0:Lc5/q2;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    iget-object v0, p0, Lc5/c4;->g:Landroidx/collection/ArrayMap;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/google/android/gms/internal/measurement/w2;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/w2;->r()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :cond_2
    return v1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-virtual {p0, p1}, Lc5/c4;->t(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc5/c4;->f:Landroidx/collection/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lc5/c4;->t(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "measurement.upload.blacklist_internal"

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lc5/c4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "1"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p2}, Lc5/v7;->S(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return v2

    .line 30
    :cond_1
    :goto_0
    const-string v0, "measurement.upload.blacklist_public"

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lc5/c4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-static {p2}, Lc5/v7;->T(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    return v2

    .line 50
    :cond_3
    :goto_1
    iget-object v0, p0, Lc5/c4;->e:Landroidx/collection/ArrayMap;

    .line 51
    .line 52
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/util/Map;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/Boolean;

    .line 66
    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    return v0

    .line 70
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :cond_5
    return v0
.end method

.method public final q([BLjava/lang/String;Ljava/lang/String;)V
    .locals 28
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Lc5/c4;->r(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/w2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/v2;

    invoke-virtual {v1, v2, v4}, Lc5/c4;->s(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/v2;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/qb;->c()V

    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    move-object v5, v0

    check-cast v5, Lc5/i4;

    .line 1
    iget-object v0, v5, Lc5/i4;->g:Lc5/e;

    .line 2
    sget-object v6, Lc5/r2;->q0:Lc5/q2;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v1, v2, v0}, Lc5/c4;->u(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w2;)V

    :cond_0
    iget-object v6, v1, Lc5/c4;->g:Landroidx/collection/ArrayMap;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w2;

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lc5/c4;->l:Landroidx/collection/ArrayMap;

    move-object/from16 v8, p3

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lc5/c4;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/w2;

    invoke-static {v9}, Lc5/c4;->v(Lcom/google/android/gms/internal/measurement/w2;)Landroidx/collection/ArrayMap;

    move-result-object v9

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v9, v1, Lc5/i7;->b:Lc5/o7;

    iget-object v10, v9, Lc5/o7;->c:Lc5/i;

    .line 4
    invoke-static {v10}, Lc5/o7;->I(Lc5/j7;)V

    .line 5
    new-instance v11, Ljava/util/ArrayList;

    .line 6
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w2;->z()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v12, "app_id=? and audience_id=?"

    const-string v0, "app_id=?"

    const-string v13, "event_filters"

    const-string v14, "property_filters"

    const/4 v7, 0x0

    .line 8
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_f

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/e2;

    .line 9
    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v1, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f2;->s()I

    move-result v1

    if-eqz v1, :cond_a

    move-object v3, v15

    const/4 v1, 0x0

    :goto_1
    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v8, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/f2;->s()I

    move-result v8

    if-ge v1, v8, :cond_9

    .line 10
    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v8, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/f2;->v(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/g2;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->j()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Lcom/google/android/gms/internal/measurement/g2;

    move-object/from16 v16, v9

    .line 12
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->x()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v5

    .line 13
    sget-object v5, La6/a;->c:[Ljava/lang/String;

    move-object/from16 v19, v4

    sget-object v4, La6/a;->e:[Ljava/lang/String;

    invoke-static {v5, v9, v4}, Lb8/f;->H0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 14
    iget-boolean v5, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v5, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_1
    iget-object v5, v6, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v5, Lcom/google/android/gms/internal/measurement/h2;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/h2;->z(Lcom/google/android/gms/internal/measurement/h2;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    move v5, v4

    const/4 v4, 0x0

    .line 15
    :goto_3
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->r()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 16
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v9, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/h2;->v(I)Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v9

    move-object/from16 v20, v8

    .line 17
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/j2;->v()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v21, v12

    sget-object v12, Lc5/y;->b:[Ljava/lang/String;

    move-object/from16 v22, v13

    sget-object v13, Lc5/y;->c:[Ljava/lang/String;

    invoke-static {v12, v8, v13}, Lb8/f;->H0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/i2;

    .line 18
    iget-boolean v9, v5, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    iget-object v12, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v12, Lcom/google/android/gms/internal/measurement/j2;

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/measurement/j2;->w(Lcom/google/android/gms/internal/measurement/j2;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/j2;

    .line 20
    iget-boolean v8, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    iput-boolean v9, v6, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_4
    iget-object v8, v6, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v8, Lcom/google/android/gms/internal/measurement/h2;

    invoke-static {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/h2;->A(Lcom/google/android/gms/internal/measurement/h2;ILcom/google/android/gms/internal/measurement/j2;)V

    const/4 v5, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    goto :goto_3

    :cond_6
    move-object/from16 v21, v12

    move-object/from16 v22, v13

    if-eqz v5, :cond_8

    .line 21
    iget-boolean v4, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_7
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/h2;

    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/f2;->A(Lcom/google/android/gms/internal/measurement/f2;ILcom/google/android/gms/internal/measurement/h2;)V

    .line 22
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v11, v7, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v3, v15

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v8, p3

    move-object/from16 v9, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    goto/16 :goto_1

    :cond_9
    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v16, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    goto :goto_5

    :cond_a
    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v16, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object v3, v15

    .line 23
    :goto_5
    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v1, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f2;->t()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_6
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v4, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/f2;->t()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 24
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v4, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/f2;->w(I)Lcom/google/android/gms/internal/measurement/o2;

    move-result-object v4

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/o2;->v()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lc5/u;->b:[Ljava/lang/String;

    sget-object v8, Lc5/u;->c:[Ljava/lang/String;

    invoke-static {v6, v5, v8}, Lb8/f;->H0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/n2;

    .line 26
    iget-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v6, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v8, Lcom/google/android/gms/internal/measurement/o2;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/measurement/o2;->w(Lcom/google/android/gms/internal/measurement/o2;Ljava/lang/String;)V

    .line 27
    iget-boolean v5, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    iput-boolean v6, v3, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_c
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v3, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/o2;

    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/f2;->z(Lcom/google/android/gms/internal/measurement/f2;ILcom/google/android/gms/internal/measurement/o2;)V

    .line 28
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v11, v7, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v3, v15

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    move-object/from16 v9, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    goto/16 :goto_0

    :cond_f
    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v16, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    invoke-virtual {v10}, Lc5/j7;->c()V

    invoke-virtual {v10}, Lc5/x4;->b()V

    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v10}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {v10}, Lc5/j7;->c()V

    invoke-virtual {v10}, Lc5/x4;->b()V

    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v10}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v14, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v5, v4, [Ljava/lang/String;

    aput-object v2, v5, v6

    move-object/from16 v4, v22

    invoke-virtual {v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v6, v10, Lc5/x4;->a:Lc5/z4;

    if-eqz v0, :cond_21

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v10}, Lc5/j7;->c()V

    invoke-virtual {v10}, Lc5/x4;->b()V

    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->B()Z

    move-result v7

    if-nez v7, :cond_10

    check-cast v6, Lc5/i4;

    .line 29
    iget-object v0, v6, Lc5/i4;->j:Lc5/e3;

    .line 30
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 31
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    const-string v5, "Audience with no ID. appId"

    .line 32
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->x()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->F()Z

    move-result v9

    if-nez v9, :cond_11

    check-cast v6, Lc5/i4;

    .line 33
    iget-object v0, v6, Lc5/i4;->j:Lc5/e3;

    .line 34
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 35
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    const-string v5, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 36
    :goto_9
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    goto :goto_a

    :cond_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->y()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/o2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/o2;->A()Z

    move-result v9

    if-nez v9, :cond_13

    check-cast v6, Lc5/i4;

    .line 37
    iget-object v0, v6, Lc5/i4;->j:Lc5/e3;

    .line 38
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 39
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    const-string v5, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    goto :goto_9

    .line 40
    :goto_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v5, v7}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->x()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "data"

    const-string v12, "session_scoped"

    const-string v13, "filter_id"

    const-string v15, "audience_id"

    move-object/from16 v24, v3

    const-string v3, "app_id"

    if-eqz v9, :cond_1a

    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v10}, Lc5/j7;->c()V

    invoke-virtual {v10}, Lc5/x4;->b()V

    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static {v9}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->x()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_16

    check-cast v6, Lc5/i4;

    .line 41
    iget-object v0, v6, Lc5/i4;->j:Lc5/e3;

    .line 42
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 43
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    const-string v3, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 44
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->F()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_c

    :cond_15
    const/4 v8, 0x0

    :goto_c
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v5, v6, v8}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v26, v1

    goto/16 :goto_14

    :cond_16
    move-object/from16 v25, v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v26, v1

    :try_start_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->F()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v1, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "event_name"

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->x()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->G()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->D()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_e

    :cond_18
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v1, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v10}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    const-wide/16 v8, -0x1

    cmp-long v1, v12, v8

    if-nez v1, :cond_19

    move-object v1, v6

    check-cast v1, Lc5/i4;

    .line 45
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 46
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 47
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    const-string v3, "Failed to insert event filter (got -1). appId"

    .line 48
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_19
    move-object/from16 v3, v24

    move-object/from16 v8, v25

    move-object/from16 v1, v26

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :try_start_5
    check-cast v6, Lc5/i4;

    .line 49
    iget-object v1, v6, Lc5/i4;->j:Lc5/e3;

    .line 50
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 51
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    const-string v3, "Error storing event filter. appId"

    goto/16 :goto_13

    :cond_1a
    move-object/from16 v26, v1

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->y()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/o2;

    invoke-virtual {v10}, Lc5/j7;->c()V

    invoke-virtual {v10}, Lc5/x4;->b()V

    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o2;->v()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1c

    check-cast v6, Lc5/i4;

    .line 53
    iget-object v0, v6, Lc5/i4;->j:Lc5/e3;

    .line 54
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 55
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    const-string v3, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 56
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o2;->A()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o2;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10

    :cond_1b
    const/4 v1, 0x0

    :goto_10
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v5, v6, v1}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o2;->A()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o2;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11

    :cond_1d
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v9, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "property_name"

    move-object/from16 v27, v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o2;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o2;->B()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o2;->z()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v9, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v9, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v10}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v14, v3, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v8

    const-wide/16 v22, -0x1

    cmp-long v0, v8, v22

    if-nez v0, :cond_1f

    move-object v0, v6

    check-cast v0, Lc5/i4;

    .line 57
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 58
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 59
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    const-string v1, "Failed to insert property filter (got -1). appId"

    .line 60
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_14

    :cond_1f
    move-object/from16 v0, v25

    move-object/from16 v3, v27

    goto/16 :goto_f

    :catch_1
    move-exception v0

    :try_start_7
    check-cast v6, Lc5/i4;

    .line 61
    iget-object v1, v6, Lc5/i4;->j:Lc5/e3;

    .line 62
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 63
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    const-string v3, "Error storing property filter. appId"

    .line 64
    :goto_13
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    invoke-virtual {v1, v5, v3, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_14
    invoke-virtual {v10}, Lc5/j7;->c()V

    invoke-virtual {v10}, Lc5/x4;->b()V

    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v10}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v3, v8

    move-object/from16 v6, v21

    invoke-virtual {v0, v14, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v0, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_15

    :cond_20
    move-object/from16 v6, v21

    :goto_15
    move-object/from16 v21, v6

    move-object/from16 v3, v24

    move-object/from16 v1, v26

    goto/16 :goto_8

    :cond_21
    move-object/from16 v26, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f2;->B()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_17

    :cond_22
    const/4 v8, 0x0

    :goto_17
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_23
    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {v10}, Lc5/j7;->c()V

    invoke-virtual {v10}, Lc5/x4;->b()V

    invoke-virtual {v10}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v3, 0x1

    :try_start_8
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v3, "select count(1) from audience_filter_values where app_id=?"

    invoke-virtual {v10, v3, v4}, Lc5/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    check-cast v6, Lc5/i4;

    .line 65
    iget-object v5, v6, Lc5/i4;->g:Lc5/e;

    .line 66
    sget-object v6, Lc5/r2;->F:Lc5/q2;

    invoke-virtual {v5, v2, v6}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    move-result v5

    const/16 v6, 0x7d0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v6, v5

    cmp-long v8, v3, v6

    if-gtz v8, :cond_24

    goto/16 :goto_19

    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_26

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_25
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "audience_filter_values"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x8c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_19

    :catch_2
    move-exception v0

    check-cast v6, Lc5/i4;

    .line 67
    iget-object v1, v6, Lc5/i4;->j:Lc5/e3;

    .line 68
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 69
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    const-string v3, "Database error querying filters. appId"

    .line 70
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_26
    :goto_19
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v1, v19

    .line 71
    :try_start_a
    iget-boolean v0, v1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_27

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_27
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/w2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w2;->D(Lcom/google/android/gms/internal/measurement/w2;)V

    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v3, v18

    goto :goto_1a

    :catch_3
    move-exception v0

    move-object/from16 v3, v18

    .line 73
    iget-object v4, v3, Lc5/i4;->j:Lc5/e3;

    .line 74
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 75
    invoke-static/range {p2 .. p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    iget-object v4, v4, Lc5/e3;->j:Lc5/c3;

    const-string v6, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-virtual {v4, v5, v6, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    .line 76
    :goto_1a
    sget-object v4, Lcom/google/android/gms/internal/measurement/jb;->b:Lcom/google/android/gms/internal/measurement/jb;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/jb;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 77
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/kb;

    .line 78
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/kb;->a()V

    .line 79
    iget-object v3, v3, Lc5/i4;->g:Lc5/e;

    .line 80
    sget-object v4, Lc5/r2;->n0:Lc5/q2;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v3, v16

    .line 81
    iget-object v3, v3, Lc5/o7;->c:Lc5/i;

    .line 82
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    move-object/from16 v5, p3

    goto :goto_1b

    :cond_28
    move-object/from16 v3, v16

    .line 83
    iget-object v3, v3, Lc5/o7;->c:Lc5/i;

    .line 84
    invoke-static {v3}, Lc5/o7;->I(Lc5/j7;)V

    .line 85
    :goto_1b
    invoke-virtual {v3, v0, v2, v5}, Lc5/i;->q([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w2;

    move-object/from16 v1, v17

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1c

    :catchall_1
    move-exception v0

    move-object/from16 v26, v1

    .line 86
    :goto_1c
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final r(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/w2;
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w2;->x()Lcom/google/android/gms/internal/measurement/w2;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w2;->v()Lcom/google/android/gms/internal/measurement/v2;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1, p2}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/google/android/gms/internal/measurement/v2;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/google/android/gms/internal/measurement/w2;

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lc5/i4;

    .line 28
    .line 29
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 30
    .line 31
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 35
    .line 36
    const-string v2, "Parsed config. version, gmp_app_id"

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w2;->G()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w2;->t()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v3, v4

    .line 55
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w2;->F()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w2;->y()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    :cond_2
    invoke-virtual {v1, v3, v2, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/z6; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-object p2

    .line 69
    :catch_0
    move-exception p2

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception p2

    .line 72
    :goto_1
    check-cast v0, Lc5/i4;

    .line 73
    .line 74
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 75
    .line 76
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 84
    .line 85
    const-string v1, "Unable to merge remote config. appId"

    .line 86
    .line 87
    invoke-virtual {v0, p1, v1, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w2;->x()Lcom/google/android/gms/internal/measurement/w2;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1
.end method

.method public final s(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/v2;)V
    .locals 12

    .line 1
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/collection/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroidx/collection/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 19
    .line 20
    check-cast v5, Lcom/google/android/gms/internal/measurement/w2;

    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/w2;->s()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_b

    .line 27
    .line 28
    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 29
    .line 30
    check-cast v5, Lcom/google/android/gms/internal/measurement/w2;

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/w2;->u(I)Lcom/google/android/gms/internal/measurement/u2;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Lcom/google/android/gms/internal/measurement/s2;

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s2;->n()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    iget-object v7, p0, Lc5/x4;->a:Lc5/z4;

    .line 51
    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    check-cast v7, Lc5/i4;

    .line 55
    .line 56
    iget-object v5, v7, Lc5/i4;->j:Lc5/e3;

    .line 57
    .line 58
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 59
    .line 60
    .line 61
    const-string v6, "EventConfig contained null event name"

    .line 62
    .line 63
    iget-object v5, v5, Lc5/e3;->j:Lc5/c3;

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s2;->n()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s2;->n()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    sget-object v9, La6/a;->c:[Ljava/lang/String;

    .line 79
    .line 80
    sget-object v10, La6/a;->e:[Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v9, v8, v10}, Lb8/f;->H0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-nez v9, :cond_3

    .line 91
    .line 92
    iget-boolean v9, v5, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 93
    .line 94
    if-eqz v9, :cond_1

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 97
    .line 98
    .line 99
    iput-boolean v3, v5, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 100
    .line 101
    :cond_1
    iget-object v9, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 102
    .line 103
    check-cast v9, Lcom/google/android/gms/internal/measurement/u2;

    .line 104
    .line 105
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/measurement/u2;->u(Lcom/google/android/gms/internal/measurement/u2;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-boolean v8, p2, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 109
    .line 110
    if-eqz v8, :cond_2

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 113
    .line 114
    .line 115
    iput-boolean v3, p2, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 116
    .line 117
    :cond_2
    iget-object v8, p2, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 118
    .line 119
    check-cast v8, Lcom/google/android/gms/internal/measurement/w2;

    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    check-cast v9, Lcom/google/android/gms/internal/measurement/u2;

    .line 126
    .line 127
    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/measurement/w2;->C(Lcom/google/android/gms/internal/measurement/w2;ILcom/google/android/gms/internal/measurement/u2;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    sget-object v8, Lcom/google/android/gms/internal/measurement/w9;->b:Lcom/google/android/gms/internal/measurement/w9;

    .line 131
    .line 132
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/w9;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 133
    .line 134
    invoke-interface {v9}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    check-cast v9, Lcom/google/android/gms/internal/measurement/x9;

    .line 139
    .line 140
    invoke-interface {v9}, Lcom/google/android/gms/internal/measurement/x9;->a()V

    .line 141
    .line 142
    .line 143
    check-cast v7, Lc5/i4;

    .line 144
    .line 145
    iget-object v9, v7, Lc5/i4;->g:Lc5/e;

    .line 146
    .line 147
    sget-object v10, Lc5/r2;->y0:Lc5/q2;

    .line 148
    .line 149
    const/4 v11, 0x0

    .line 150
    invoke-virtual {v9, v11, v10}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-nez v9, :cond_4

    .line 155
    .line 156
    iget-object v9, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 157
    .line 158
    check-cast v9, Lcom/google/android/gms/internal/measurement/u2;

    .line 159
    .line 160
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/u2;->v()Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    iget-object v9, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 170
    .line 171
    check-cast v9, Lcom/google/android/gms/internal/measurement/u2;

    .line 172
    .line 173
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/u2;->x()Z

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    if-eqz v9, :cond_5

    .line 178
    .line 179
    iget-object v9, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 180
    .line 181
    check-cast v9, Lcom/google/android/gms/internal/measurement/u2;

    .line 182
    .line 183
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/u2;->v()Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-eqz v9, :cond_5

    .line 188
    .line 189
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 190
    .line 191
    :goto_1
    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_5
    iget-object v6, v8, Lcom/google/android/gms/internal/measurement/w9;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 195
    .line 196
    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Lcom/google/android/gms/internal/measurement/x9;

    .line 201
    .line 202
    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/x9;->a()V

    .line 203
    .line 204
    .line 205
    iget-object v6, v7, Lc5/i4;->g:Lc5/e;

    .line 206
    .line 207
    invoke-virtual {v6, v11, v10}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-nez v6, :cond_6

    .line 212
    .line 213
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s2;->n()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 218
    .line 219
    check-cast v8, Lcom/google/android/gms/internal/measurement/u2;

    .line 220
    .line 221
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u2;->w()Z

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    goto :goto_2

    .line 230
    :cond_6
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 231
    .line 232
    check-cast v6, Lcom/google/android/gms/internal/measurement/u2;

    .line 233
    .line 234
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/u2;->y()Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_7

    .line 239
    .line 240
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 241
    .line 242
    check-cast v6, Lcom/google/android/gms/internal/measurement/u2;

    .line 243
    .line 244
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/u2;->w()Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_7

    .line 249
    .line 250
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s2;->n()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 255
    .line 256
    :goto_2
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    :cond_7
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 260
    .line 261
    check-cast v6, Lcom/google/android/gms/internal/measurement/u2;

    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/u2;->z()Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_a

    .line 268
    .line 269
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 270
    .line 271
    check-cast v6, Lcom/google/android/gms/internal/measurement/u2;

    .line 272
    .line 273
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/u2;->r()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    const/4 v8, 0x2

    .line 278
    if-lt v6, v8, :cond_9

    .line 279
    .line 280
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 281
    .line 282
    check-cast v6, Lcom/google/android/gms/internal/measurement/u2;

    .line 283
    .line 284
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/u2;->r()I

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    const v8, 0xffff

    .line 289
    .line 290
    .line 291
    if-le v6, v8, :cond_8

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s2;->n()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 299
    .line 300
    check-cast v5, Lcom/google/android/gms/internal/measurement/u2;

    .line 301
    .line 302
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u2;->r()I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_9
    :goto_3
    iget-object v6, v7, Lc5/i4;->j:Lc5/e3;

    .line 315
    .line 316
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/s2;->n()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 324
    .line 325
    check-cast v5, Lcom/google/android/gms/internal/measurement/u2;

    .line 326
    .line 327
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u2;->r()I

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    iget-object v6, v6, Lc5/e3;->j:Lc5/c3;

    .line 336
    .line 337
    const-string v8, "Invalid sampling rate. Event name, sample rate"

    .line 338
    .line 339
    invoke-virtual {v6, v7, v8, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_b
    iget-object p2, p0, Lc5/c4;->e:Landroidx/collection/ArrayMap;

    .line 347
    .line 348
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    iget-object p2, p0, Lc5/c4;->f:Landroidx/collection/ArrayMap;

    .line 352
    .line 353
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    iget-object p2, p0, Lc5/c4;->h:Landroidx/collection/ArrayMap;

    .line 357
    .line 358
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lc5/c4;->g:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_8

    .line 17
    .line 18
    iget-object v1, p0, Lc5/i7;->b:Lc5/o7;

    .line 19
    .line 20
    iget-object v1, v1, Lc5/o7;->c:Lc5/i;

    .line 21
    .line 22
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 26
    .line 27
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lc5/x4;->b()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lc5/j7;->c()V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :try_start_0
    invoke-virtual {v1}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v1, "remote_config"

    .line 42
    .line 43
    const-string v5, "config_last_modified_time"

    .line 44
    .line 45
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const/4 v1, 0x1

    .line 50
    new-array v8, v1, [Ljava/lang/String;

    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    aput-object p1, v8, v12

    .line 54
    .line 55
    const-string v5, "apps"

    .line 56
    .line 57
    const-string v7, "app_id=?"

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v11, 0x0

    .line 62
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 63
    .line 64
    .line 65
    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    move-object v6, v2

    .line 88
    check-cast v6, Lc5/i4;

    .line 89
    .line 90
    iget-object v6, v6, Lc5/i4;->j:Lc5/e3;

    .line 91
    .line 92
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 93
    .line 94
    .line 95
    iget-object v6, v6, Lc5/e3;->f:Lc5/c3;

    .line 96
    .line 97
    const-string v7, "Got multiple records for app config, expected one. appId"

    .line 98
    .line 99
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v6, v8, v7}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    if-nez v5, :cond_2

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    new-instance v6, Landroid/util/Pair;

    .line 110
    .line 111
    invoke-direct {v6, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .line 113
    .line 114
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :catch_1
    move-exception v1

    .line 124
    move-object v4, v3

    .line 125
    :goto_0
    :try_start_2
    check-cast v2, Lc5/i4;

    .line 126
    .line 127
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 128
    .line 129
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 130
    .line 131
    .line 132
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 133
    .line 134
    const-string v5, "Error querying remote config. appId"

    .line 135
    .line 136
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v2, v6, v5, v1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    .line 142
    .line 143
    if-eqz v4, :cond_3

    .line 144
    .line 145
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 146
    .line 147
    .line 148
    :cond_3
    move-object v6, v3

    .line 149
    :goto_2
    iget-object v1, p0, Lc5/c4;->d:Landroidx/collection/ArrayMap;

    .line 150
    .line 151
    iget-object v2, p0, Lc5/c4;->l:Landroidx/collection/ArrayMap;

    .line 152
    .line 153
    if-nez v6, :cond_4

    .line 154
    .line 155
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lc5/c4;->e:Landroidx/collection/ArrayMap;

    .line 159
    .line 160
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lc5/c4;->f:Landroidx/collection/ArrayMap;

    .line 164
    .line 165
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lc5/c4;->h:Landroidx/collection/ArrayMap;

    .line 175
    .line 176
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_4
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v4, [B

    .line 183
    .line 184
    invoke-virtual {p0, p1, v4}, Lc5/c4;->r(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/w2;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q6;->n()Lcom/google/android/gms/internal/measurement/n6;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Lcom/google/android/gms/internal/measurement/v2;

    .line 193
    .line 194
    invoke-virtual {p0, p1, v4}, Lc5/c4;->s(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/v2;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Lcom/google/android/gms/internal/measurement/w2;

    .line 202
    .line 203
    invoke-static {v5}, Lc5/c4;->v(Lcom/google/android/gms/internal/measurement/w2;)Landroidx/collection/ArrayMap;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-interface {v1, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Lcom/google/android/gms/internal/measurement/w2;

    .line 215
    .line 216
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qb;->c()V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 223
    .line 224
    check-cast v0, Lc5/i4;

    .line 225
    .line 226
    iget-object v1, v0, Lc5/i4;->g:Lc5/e;

    .line 227
    .line 228
    sget-object v5, Lc5/r2;->q0:Lc5/q2;

    .line 229
    .line 230
    invoke-virtual {v1, v3, v5}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_5

    .line 235
    .line 236
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    check-cast v1, Lcom/google/android/gms/internal/measurement/w2;

    .line 241
    .line 242
    invoke-virtual {p0, p1, v1}, Lc5/c4;->u(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w2;)V

    .line 243
    .line 244
    .line 245
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/measurement/jb;->b:Lcom/google/android/gms/internal/measurement/jb;

    .line 246
    .line 247
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/jb;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 248
    .line 249
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Lcom/google/android/gms/internal/measurement/kb;

    .line 254
    .line 255
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/kb;->a()V

    .line 256
    .line 257
    .line 258
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 259
    .line 260
    sget-object v1, Lc5/r2;->n0:Lc5/q2;

    .line 261
    .line 262
    invoke-virtual {v0, v3, v1}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_6

    .line 267
    .line 268
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v0, Ljava/lang/String;

    .line 271
    .line 272
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_6
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :catchall_1
    move-exception p1

    .line 281
    move-object v3, v4

    .line 282
    :goto_3
    if-eqz v3, :cond_7

    .line 283
    .line 284
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 285
    .line 286
    .line 287
    :cond_7
    throw p1

    .line 288
    :cond_8
    return-void
.end method

.method public final u(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w2;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w2;->r()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lc5/c4;->j:Lc5/a4;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lc5/i4;

    .line 13
    .line 14
    iget-object v3, v2, Lc5/i4;->j:Lc5/e3;

    .line 15
    .line 16
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w2;->r()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v3, v3, Lc5/e3;->p:Lc5/c3;

    .line 28
    .line 29
    const-string v5, "EES programs found"

    .line 30
    .line 31
    invoke-virtual {v3, v4, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w2;->A()Lcom/google/android/gms/internal/measurement/w6;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lcom/google/android/gms/internal/measurement/f4;

    .line 44
    .line 45
    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/measurement/s0;

    .line 46
    .line 47
    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/s0;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/s0;->a:Lcom/google/android/gms/internal/measurement/t2;

    .line 51
    .line 52
    const-string v6, "internal.remoteConfig"

    .line 53
    .line 54
    new-instance v7, Lc5/y3;

    .line 55
    .line 56
    invoke-direct {v7, v3, p0, p1}, Lc5/y3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/t2;->d:Lcom/google/android/gms/internal/measurement/w5;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/w5;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, Ljava/util/Map;

    .line 64
    .line 65
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    new-instance v3, Lc5/l7;

    .line 69
    .line 70
    invoke-direct {v3, p0, p1}, Lc5/l7;-><init>(Lc5/c4;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v6, "internal.appMetadata"

    .line 74
    .line 75
    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/t2;->d:Lcom/google/android/gms/internal/measurement/w5;

    .line 76
    .line 77
    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/w5;->a:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v7, Ljava/util/Map;

    .line 80
    .line 81
    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    new-instance v3, Lp4/s9;

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    invoke-direct {v3, v6, p0}, Lp4/s9;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const-string v6, "internal.logger"

    .line 91
    .line 92
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/t2;->d:Lcom/google/android/gms/internal/measurement/w5;

    .line 93
    .line 94
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/w5;->a:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v5, Ljava/util/Map;

    .line 97
    .line 98
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/measurement/s0;->a(Lcom/google/android/gms/internal/measurement/f4;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1, v4}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-object v1, v0

    .line 108
    check-cast v1, Lc5/i4;

    .line 109
    .line 110
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 111
    .line 112
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 116
    .line 117
    const-string v3, "EES program loaded for appId, activities"

    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/f4;->r()Lcom/google/android/gms/internal/measurement/c4;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/c4;->r()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v1, p1, v3, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/f4;->r()Lcom/google/android/gms/internal/measurement/c4;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/c4;->u()Lcom/google/android/gms/internal/measurement/w6;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    .line 152
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lcom/google/android/gms/internal/measurement/e4;

    .line 157
    .line 158
    move-object v3, v0

    .line 159
    check-cast v3, Lc5/i4;

    .line 160
    .line 161
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 162
    .line 163
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 164
    .line 165
    .line 166
    iget-object v3, v3, Lc5/e3;->p:Lc5/c3;

    .line 167
    .line 168
    const-string v4, "EES program activity"

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e4;->s()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v3, v1, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/n1; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_0
    return-void

    .line 179
    :catch_0
    iget-object p2, v2, Lc5/i4;->j:Lc5/e3;

    .line 180
    .line 181
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 182
    .line 183
    .line 184
    const-string v0, "Failed to load EES program. appId"

    .line 185
    .line 186
    iget-object p2, p2, Lc5/e3;->f:Lc5/c3;

    .line 187
    .line 188
    invoke-virtual {p2, p1, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    return-void
.end method
