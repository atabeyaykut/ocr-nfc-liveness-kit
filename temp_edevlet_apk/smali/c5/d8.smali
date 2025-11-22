.class public final Lc5/d8;
.super Lc5/e8;
.source "SourceFile"


# instance fields
.field public final g:Lcom/google/android/gms/internal/measurement/h2;

.field public final synthetic h:Lc5/g8;


# direct methods
.method public constructor <init>(Lc5/g8;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/h2;)V
    .locals 0

    iput-object p1, p0, Lc5/d8;->h:Lc5/g8;

    invoke-direct {p0, p2, p3}, Lc5/e8;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lc5/d8;->g:Lcom/google/android/gms/internal/measurement/h2;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lc5/d8;->g:Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lc5/d8;->g:Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/h3;JLc5/o;Z)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()V

    iget-object v1, v0, Lc5/d8;->h:Lc5/g8;

    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    check-cast v2, Lc5/i4;

    .line 1
    iget-object v2, v2, Lc5/i4;->g:Lc5/e;

    .line 2
    sget-object v3, Lc5/r2;->Y:Lc5/q2;

    iget-object v4, v0, Lc5/e8;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v2

    iget-object v3, v0, Lc5/d8;->g:Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->D()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v5, p6

    iget-wide v5, v5, Lc5/o;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p4

    :goto_0
    iget-object v7, v1, Lc5/x4;->a:Lc5/z4;

    move-object v8, v7

    check-cast v8, Lc5/i4;

    .line 3
    iget-object v8, v8, Lc5/i4;->j:Lc5/e3;

    .line 4
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 5
    invoke-virtual {v8}, Lc5/e3;->t()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget v13, v0, Lc5/e8;->b:I

    if-eqz v8, :cond_6

    move-object v8, v7

    check-cast v8, Lc5/i4;

    .line 6
    iget-object v8, v8, Lc5/i4;->j:Lc5/e3;

    .line 7
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->F()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    move-object v12, v7

    check-cast v12, Lc5/i4;

    .line 9
    iget-object v12, v12, Lc5/i4;->n:Lc5/z2;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->x()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lc5/e3;->p:Lc5/c3;

    const-string v12, "Evaluating filter. audience, filter, event"

    invoke-virtual {v8, v12, v14, v15, v9}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v7

    check-cast v8, Lc5/i4;

    .line 11
    iget-object v8, v8, Lc5/i4;->j:Lc5/e3;

    .line 12
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 13
    iget-object v1, v1, Lc5/i7;->b:Lc5/o7;

    .line 14
    iget-object v1, v1, Lc5/o7;->g:Lc5/q7;

    .line 15
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\nevent_filter {\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->F()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v14, "filter_id"

    invoke-static {v9, v10, v14, v12}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v12, v1, Lc5/x4;->a:Lc5/z4;

    check-cast v12, Lc5/i4;

    .line 17
    iget-object v12, v12, Lc5/i4;->n:Lc5/z2;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->x()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "event_name"

    invoke-static {v9, v10, v14, v12}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->B()Z

    move-result v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->C()Z

    move-result v14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->D()Z

    move-result v15

    invoke-static {v12, v14, v15}, Lc5/q7;->r(ZZZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "filter_type"

    invoke-static {v9, v10, v14, v12}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "event_count_filter"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->w()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v14

    invoke-static {v9, v11, v12, v14}, Lc5/q7;->u(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/m2;)V

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->r()I

    move-result v12

    if-lez v12, :cond_5

    const-string v12, "  filters {\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->y()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/j2;

    const/4 v15, 0x2

    invoke-virtual {v1, v9, v15, v14}, Lc5/q7;->p(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/j2;)V

    goto :goto_2

    :cond_5
    invoke-static {v9, v11}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    const-string v1, "}\n}\n"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    iget-object v8, v8, Lc5/e3;->p:Lc5/c3;

    const-string v9, "Filter definition"

    invoke-virtual {v8, v1, v9}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->F()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v1

    const/16 v8, 0x100

    if-le v1, v8, :cond_7

    goto/16 :goto_18

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->B()Z

    move-result v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->C()Z

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->D()Z

    move-result v8

    if-nez v1, :cond_9

    if-nez v4, :cond_9

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-eqz p7, :cond_b

    if-nez v1, :cond_b

    check-cast v7, Lc5/i4;

    .line 20
    iget-object v1, v7, Lc5/i4;->j:Lc5/e3;

    .line 21
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 22
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->F()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    :goto_5
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    invoke-virtual {v1, v2, v3, v12}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v11

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v8

    const-wide/16 v12, 0x0

    if-eqz v8, :cond_d

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->w()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v8

    .line 23
    :try_start_0
    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v5, v6}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v9, v8, v12, v13}, Lc5/e8;->d(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/m2;D)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_c

    goto/16 :goto_13

    .line 24
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_11

    :cond_d
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->y()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/j2;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->v()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    move-object v5, v7

    check-cast v5, Lc5/i4;

    .line 25
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 26
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 27
    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 28
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 29
    invoke-virtual {v6, v4}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lc5/e3;->j:Lc5/c3;

    const-string v6, "null or empty param name in filter. event"

    goto/16 :goto_c

    :cond_e
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->v()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/h3;->z()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->M()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->M()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_9

    :cond_11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->K()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->K()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->r()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_9

    :cond_12
    const/4 v9, 0x0

    goto :goto_9

    :cond_13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->O()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object v9

    :goto_9
    invoke-interface {v6, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_14
    move-object v5, v7

    check-cast v5, Lc5/i4;

    .line 30
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 31
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 32
    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 33
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 34
    invoke-virtual {v6, v4}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 35
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 36
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lc5/e3;->j:Lc5/c3;

    const-string v8, "Unknown value for param. event, param"

    goto/16 :goto_12

    :cond_15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->y()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/j2;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->y()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->x()Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, 0x1

    goto :goto_b

    :cond_16
    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->v()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_17

    move-object v5, v7

    check-cast v5, Lc5/i4;

    .line 37
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 38
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 39
    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 40
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 41
    invoke-virtual {v6, v4}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lc5/e3;->j:Lc5/c3;

    const-string v6, "Event has empty param name. event"

    :goto_c
    invoke-virtual {v5, v4, v6}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_17
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    instance-of v11, v15, Ljava/lang/Long;

    if-eqz v11, :cond_1b

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->z()Z

    move-result v11

    if-nez v11, :cond_18

    move-object v5, v7

    check-cast v5, Lc5/i4;

    .line 42
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 43
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 44
    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 45
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 46
    invoke-virtual {v6, v4}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 47
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 48
    invoke-virtual {v6, v14}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lc5/e3;->j:Lc5/c3;

    const-string v8, "No number filter for long param. event, param"

    goto/16 :goto_12

    :cond_18
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->t()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v8

    .line 49
    :try_start_1
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v14, v15}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v11, v8, v12, v13}, Lc5/e8;->d(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/m2;D)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_19

    goto/16 :goto_13

    .line 50
    :cond_19
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v9, :cond_1a

    goto/16 :goto_11

    :cond_1a
    const/4 v11, 0x1

    goto/16 :goto_a

    :cond_1b
    instance-of v11, v15, Ljava/lang/Double;

    if-eqz v11, :cond_1e

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->z()Z

    move-result v11

    if-nez v11, :cond_1c

    move-object v5, v7

    check-cast v5, Lc5/i4;

    .line 51
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 52
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 53
    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 54
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 55
    invoke-virtual {v6, v4}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 56
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 57
    invoke-virtual {v6, v14}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lc5/e3;->j:Lc5/c3;

    const-string v8, "No number filter for double param. event, param"

    goto/16 :goto_12

    :cond_1c
    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->t()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v8

    .line 58
    :try_start_2
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v14, v15}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v14

    invoke-static {v11, v8, v14, v15}, Lc5/e8;->d(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/m2;D)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    const/4 v8, 0x0

    :goto_e
    if-nez v8, :cond_1d

    goto/16 :goto_13

    .line 59
    :cond_1d
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v9, :cond_1a

    goto/16 :goto_11

    :cond_1e
    instance-of v11, v15, Ljava/lang/String;

    if-eqz v11, :cond_24

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->B()Z

    move-result v11

    if-eqz v11, :cond_1f

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->u()Lcom/google/android/gms/internal/measurement/r2;

    move-result-object v8

    move-object v11, v7

    check-cast v11, Lc5/i4;

    .line 60
    iget-object v11, v11, Lc5/i4;->j:Lc5/e3;

    .line 61
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 62
    invoke-static {v15, v8, v11}, Lc5/e8;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/r2;Lc5/e3;)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_10

    :cond_1f
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->z()Z

    move-result v11

    if-eqz v11, :cond_23

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lc5/q7;->K(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/j2;->t()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v8

    .line 63
    invoke-static {v15}, Lc5/q7;->K(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_20

    :goto_f
    const/4 v8, 0x0

    goto :goto_10

    :cond_20
    :try_start_3
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v15}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v8, v12, v13}, Lc5/e8;->d(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/m2;D)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_10

    :catch_3
    nop

    goto :goto_f

    :goto_10
    if-nez v8, :cond_21

    goto/16 :goto_13

    .line 64
    :cond_21
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v9, :cond_1a

    goto :goto_11

    :cond_22
    move-object v5, v7

    check-cast v5, Lc5/i4;

    .line 65
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 66
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 67
    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 68
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 69
    invoke-virtual {v6, v4}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 70
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 71
    invoke-virtual {v6, v14}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lc5/e3;->j:Lc5/c3;

    const-string v8, "Invalid param value for number filter. event, param"

    goto :goto_12

    :cond_23
    move-object v5, v7

    check-cast v5, Lc5/i4;

    .line 72
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 73
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 74
    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 75
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 76
    invoke-virtual {v6, v4}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 77
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 78
    invoke-virtual {v6, v14}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lc5/e3;->j:Lc5/c3;

    const-string v8, "No filter for String param. event, param"

    goto :goto_12

    :cond_24
    move-object v5, v7

    check-cast v5, Lc5/i4;

    if-nez v15, :cond_25

    .line 79
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 80
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 81
    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 82
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 83
    invoke-virtual {v6, v4}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 84
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 85
    invoke-virtual {v6, v14}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lc5/e3;->p:Lc5/c3;

    const-string v8, "Missing param for filter. event, param"

    invoke-virtual {v5, v4, v8, v6}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_14

    .line 86
    :cond_25
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 87
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 88
    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 89
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 90
    invoke-virtual {v6, v4}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v7

    check-cast v6, Lc5/i4;

    .line 91
    iget-object v6, v6, Lc5/i4;->n:Lc5/z2;

    .line 92
    invoke-virtual {v6, v14}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lc5/e3;->j:Lc5/c3;

    const-string v8, "Unknown param type. event, param"

    :goto_12
    invoke-virtual {v5, v4, v8, v6}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_13
    const/4 v12, 0x0

    goto :goto_14

    :cond_26
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_14
    check-cast v7, Lc5/i4;

    .line 93
    iget-object v4, v7, Lc5/i4;->j:Lc5/e3;

    .line 94
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    if-nez v12, :cond_27

    const-string v5, "null"

    goto :goto_15

    :cond_27
    move-object v5, v12

    :goto_15
    const-string v6, "Event filter result"

    .line 95
    iget-object v4, v4, Lc5/e3;->p:Lc5/c3;

    invoke-virtual {v4, v5, v6}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v12, :cond_28

    return v10

    :cond_28
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v0, Lc5/e8;->c:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_29

    const/4 v5, 0x1

    return v5

    :cond_29
    iput-object v4, v0, Lc5/e8;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_2e

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/h3;->K()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/h3;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->C()Z

    move-result v4

    if-eqz v4, :cond_2c

    if-eqz v2, :cond_2b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_16

    :cond_2a
    move-object/from16 v1, p1

    :cond_2b
    :goto_16
    iput-object v1, v0, Lc5/e8;->f:Ljava/lang/Long;

    goto :goto_17

    :cond_2c
    if-eqz v2, :cond_2d

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v1, p2

    :cond_2d
    iput-object v1, v0, Lc5/e8;->e:Ljava/lang/Long;

    :cond_2e
    :goto_17
    const/4 v1, 0x1

    return v1

    :cond_2f
    :goto_18
    check-cast v7, Lc5/i4;

    .line 96
    iget-object v1, v7, Lc5/i4;->j:Lc5/e3;

    .line 97
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 98
    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->F()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h2;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_19

    :cond_30
    const/4 v12, 0x0

    :goto_19
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lc5/e3;->j:Lc5/c3;

    const-string v4, "Invalid event filter ID. appId, id"

    invoke-virtual {v1, v2, v4, v3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v10
.end method
