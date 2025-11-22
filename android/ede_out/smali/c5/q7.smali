.class public final Lc5/q7;
.super Lc5/j7;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lc5/o7;)V
    .locals 0

    invoke-direct {p0, p1}, Lc5/j7;-><init>(Lc5/o7;)V

    return-void
.end method

.method public static A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/z6;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/d6;->c:Lcom/google/android/gms/internal/measurement/d6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const-class v0, Lcom/google/android/gms/internal/measurement/d6;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/d6;->c:Lcom/google/android/gms/internal/measurement/d6;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l6;->b()Lcom/google/android/gms/internal/measurement/d6;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/google/android/gms/internal/measurement/d6;->c:Lcom/google/android/gms/internal/measurement/d6;

    .line 19
    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    move-object v0, v1

    .line 22
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    array-length v1, p1

    .line 28
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/n6;->l([BILcom/google/android/gms/internal/measurement/d6;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    array-length v0, p1

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d6;->a()Lcom/google/android/gms/internal/measurement/d6;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/n6;->l([BILcom/google/android/gms/internal/measurement/d6;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method

.method public static D([Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_7

    .line 10
    .line 11
    aget-object v4, p0, v3

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->v()Lcom/google/android/gms/internal/measurement/k3;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_5

    .line 34
    .line 35
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->v()Lcom/google/android/gms/internal/measurement/k3;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/k3;->q(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    instance-of v9, v7, Ljava/lang/Long;

    .line 53
    .line 54
    if-eqz v9, :cond_2

    .line 55
    .line 56
    check-cast v7, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v9

    .line 62
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/k3;->p(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    instance-of v9, v7, Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v9, :cond_3

    .line 69
    .line 70
    check-cast v7, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/k3;->r(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    instance-of v9, v7, Ljava/lang/Double;

    .line 77
    .line 78
    if-eqz v9, :cond_1

    .line 79
    .line 80
    check-cast v7, Ljava/lang/Double;

    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 83
    .line 84
    .line 85
    move-result-wide v9

    .line 86
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/k3;->n(D)V

    .line 87
    .line 88
    .line 89
    :goto_2
    iget-boolean v7, v5, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 90
    .line 91
    if-eqz v7, :cond_4

    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 94
    .line 95
    .line 96
    iput-boolean v2, v5, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 97
    .line 98
    :cond_4
    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 99
    .line 100
    check-cast v7, Lcom/google/android/gms/internal/measurement/l3;

    .line 101
    .line 102
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, Lcom/google/android/gms/internal/measurement/l3;

    .line 107
    .line 108
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/l3;->H(Lcom/google/android/gms/internal/measurement/l3;Lcom/google/android/gms/internal/measurement/l3;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    iget-object v4, v5, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 113
    .line 114
    check-cast v4, Lcom/google/android/gms/internal/measurement/l3;

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l3;->t()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-lez v4, :cond_6

    .line 121
    .line 122
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    check-cast v4, Lcom/google/android/gms/internal/measurement/l3;

    .line 127
    .line 128
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_7
    return-object v0
.end method

.method public static F(Ljava/util/BitSet;)Ljava/util/ArrayList;
    .locals 10

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_2

    mul-int/lit8 v8, v4, 0x40

    add-int/2addr v8, v7

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-lt v8, v9, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v7

    or-long/2addr v5, v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static I(ILcom/google/android/gms/internal/measurement/v6;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x40

    if-ge p0, v0, :cond_0

    div-int/lit8 v0, p0, 0x40

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p0, p0, 0x40

    shl-long p0, v2, p0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static K(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final g(Lcom/google/android/gms/internal/measurement/g3;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

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
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/google/android/gms/internal/measurement/l3;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v2, -0x1

    .line 34
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->v()Lcom/google/android/gms/internal/measurement/k3;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/k3;->q(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    instance-of p1, p2, Ljava/lang/Long;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    check-cast p2, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/k3;->p(J)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    instance-of p1, p2, Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    check-cast p2, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/k3;->r(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    instance-of p1, p2, Ljava/lang/Double;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    check-cast p2, Ljava/lang/Double;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 72
    .line 73
    .line 74
    move-result-wide p1

    .line 75
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/k3;->n(D)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    instance-of p1, p2, [Landroid/os/Bundle;

    .line 80
    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    check-cast p2, [Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-static {p2}, Lc5/q7;->D([Landroid/os/Bundle;)Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-boolean p2, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 90
    .line 91
    if-eqz p2, :cond_5

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 94
    .line 95
    .line 96
    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 97
    .line 98
    :cond_5
    iget-object p2, v0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 99
    .line 100
    check-cast p2, Lcom/google/android/gms/internal/measurement/l3;

    .line 101
    .line 102
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/l3;->I(Lcom/google/android/gms/internal/measurement/l3;Ljava/util/ArrayList;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_2
    if-ltz v2, :cond_8

    .line 106
    .line 107
    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 112
    .line 113
    .line 114
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 115
    .line 116
    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 117
    .line 118
    check-cast p0, Lcom/google/android/gms/internal/measurement/h3;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/google/android/gms/internal/measurement/l3;

    .line 125
    .line 126
    invoke-static {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/h3;->A(Lcom/google/android/gms/internal/measurement/h3;ILcom/google/android/gms/internal/measurement/l3;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/g3;->q(Lcom/google/android/gms/internal/measurement/k3;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public static final h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/h3;->z()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final n(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 6

    invoke-static {p0, p1}, Lc5/q7;->h(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l3;->O()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l3;->M()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l3;->K()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l3;->r()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l3;->t()I

    move-result p1

    if-lez p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l3;->z()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->z()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->O()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->M()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->K()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->r()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final q(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final r(ZZZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "Dynamic "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Sequence "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "Session-Scoped "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final s(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w3;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w3;->s()I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x4

    const-string v4, ", "

    if-eqz p1, :cond_3

    invoke-static {p0, v3}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    const-string p1, "results: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w3;->B()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w3;->u()I

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0, v3}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    const-string p1, "status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w3;->D()Lcom/google/android/gms/internal/measurement/v6;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w3;->r()I

    move-result p1

    const/4 v2, 0x0

    const-string v5, "}\n"

    if-eqz p1, :cond_b

    invoke-static {p0, v3}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    const-string p1, "dynamic_filter_timestamps: {"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w3;->A()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v6, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/f3;

    add-int/lit8 v8, v6, 0x1

    if-eqz v6, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/f3;->y()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/f3;->r()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v2

    :goto_3
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/f3;->x()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/f3;->s()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_4

    :cond_9
    move-object v6, v2

    :goto_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v6, v8

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w3;->t()I

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {p0, v3}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    const-string p1, "sequence_filter_timestamps: {"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/w3;->C()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/y3;

    add-int/lit8 v6, p2, 0x1

    if-eqz p2, :cond_c

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/y3;->z()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/y3;->s()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_6

    :cond_d
    move-object p2, v2

    :goto_6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/y3;->w()Lcom/google/android/gms/internal/measurement/v6;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-int/lit8 v9, v3, 0x1

    if-eqz v3, :cond_e

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v3, v9

    goto :goto_7

    :cond_f
    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v6

    goto :goto_5

    :cond_10
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-static {p0, v0}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final u(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/m2;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->x()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->C()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const-string p2, "BETWEEN"

    goto :goto_0

    :cond_1
    const-string p2, "EQUAL"

    goto :goto_0

    :cond_2
    const-string p2, "GREATER_THAN"

    goto :goto_0

    :cond_3
    const-string p2, "LESS_THAN"

    goto :goto_0

    :cond_4
    const-string p2, "UNKNOWN_COMPARISON_TYPE"

    :goto_0
    const-string v0, "comparison_type"

    invoke-static {p0, p1, v0, p2}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->z()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->w()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "match_as_float"

    invoke-static {p0, p1, v0, p2}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->y()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "comparison_value"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->B()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "min_comparison_value"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->A()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "max_comparison_value"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/m2;->u()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_9
    invoke-static {p0, p1}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static v(Lcom/google/android/gms/internal/measurement/p3;Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 3
    .line 4
    check-cast v1, Lcom/google/android/gms/internal/measurement/q3;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->l1()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/gms/internal/measurement/q3;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/q3;->A1(I)Lcom/google/android/gms/internal/measurement/a4;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/a4;->w()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    return v0

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, -0x1

    .line 35
    return p0
.end method


# virtual methods
.method public final B(Lcom/google/android/gms/internal/measurement/o3;)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "\nbatch {\n"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/o3;->u()Lcom/google/android/gms/internal/measurement/w6;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "}\n"

    .line 20
    .line 21
    if-eqz v1, :cond_27

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/internal/measurement/q3;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-static {v0, v3}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 33
    .line 34
    .line 35
    const-string v4, "bundle {\n"

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->a1()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->i1()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "protocol_version"

    .line 55
    .line 56
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    const-string v4, "platform"

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->W0()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->r1()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const-string v5, "gmp_version"

    .line 83
    .line 84
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->g1()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->w1()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v5, "uploading_gmp_version"

    .line 102
    .line 103
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->U0()Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_4

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->p1()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-string v5, "dynamite_version"

    .line 121
    .line 122
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->p0()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_5

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->n1()J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    const-string v5, "config_version"

    .line 140
    .line 141
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    const-string v4, "gmp_app_id"

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->y()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    const-string v4, "admob_app_id"

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->B1()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    const-string v4, "app_id"

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->C1()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    const-string v4, "app_version"

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->s()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->n0()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_6

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->Q()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    const-string v5, "app_version_major"

    .line 195
    .line 196
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    const-string v4, "firebase_instance_id"

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->w()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->T0()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_7

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->o1()J

    .line 215
    .line 216
    .line 217
    move-result-wide v4

    .line 218
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    const-string v5, "dev_cert_hash"

    .line 223
    .line 224
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_7
    const-string v4, "app_store"

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->r()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->f1()Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_8

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->v1()J

    .line 243
    .line 244
    .line 245
    move-result-wide v4

    .line 246
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    const-string v5, "upload_timestamp_millis"

    .line 251
    .line 252
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->d1()Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_9

    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->u1()J

    .line 262
    .line 263
    .line 264
    move-result-wide v4

    .line 265
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    const-string v5, "start_timestamp_millis"

    .line 270
    .line 271
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->V0()Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_a

    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->q1()J

    .line 281
    .line 282
    .line 283
    move-result-wide v4

    .line 284
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    const-string v5, "end_timestamp_millis"

    .line 289
    .line 290
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->Z0()Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_b

    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->t1()J

    .line 300
    .line 301
    .line 302
    move-result-wide v4

    .line 303
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    const-string v5, "previous_bundle_start_timestamp_millis"

    .line 308
    .line 309
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->Y0()Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-eqz v4, :cond_c

    .line 317
    .line 318
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->s1()J

    .line 319
    .line 320
    .line 321
    move-result-wide v4

    .line 322
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    const-string v5, "previous_bundle_end_timestamp_millis"

    .line 327
    .line 328
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    :cond_c
    const-string v4, "app_instance_id"

    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->D1()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    const-string v4, "resettable_device_id"

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->C()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    const-string v4, "ds_id"

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->v()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->X0()Z

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    if-eqz v4, :cond_d

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->k0()Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    const-string v5, "limited_ad_tracking"

    .line 373
    .line 374
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    :cond_d
    const-string v4, "os_version"

    .line 378
    .line 379
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->A()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    const-string v4, "device_model"

    .line 387
    .line 388
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->u()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    const-string v4, "user_default_language"

    .line 396
    .line 397
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->D()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->e1()Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-eqz v4, :cond_e

    .line 409
    .line 410
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->k1()I

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    const-string v5, "time_zone_offset_minutes"

    .line 419
    .line 420
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->o0()Z

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    if-eqz v4, :cond_f

    .line 428
    .line 429
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->Q0()I

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    const-string v5, "bundle_sequential_index"

    .line 438
    .line 439
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->c1()Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_10

    .line 447
    .line 448
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->l0()Z

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    const-string v5, "service_upload"

    .line 457
    .line 458
    invoke-static {v0, v3, v5, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :cond_10
    const-string v4, "health_monitor"

    .line 462
    .line 463
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->z()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    invoke-static {v0, v3, v4, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 471
    .line 472
    check-cast v4, Lc5/i4;

    .line 473
    .line 474
    iget-object v5, v4, Lc5/i4;->g:Lc5/e;

    .line 475
    .line 476
    sget-object v6, Lc5/r2;->l0:Lc5/q2;

    .line 477
    .line 478
    const/4 v7, 0x0

    .line 479
    invoke-virtual {v5, v7, v6}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    if-nez v5, :cond_11

    .line 484
    .line 485
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->m0()Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    if-eqz v5, :cond_11

    .line 490
    .line 491
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->m1()J

    .line 492
    .line 493
    .line 494
    move-result-wide v5

    .line 495
    const-wide/16 v8, 0x0

    .line 496
    .line 497
    cmp-long v10, v5, v8

    .line 498
    .line 499
    if-eqz v10, :cond_11

    .line 500
    .line 501
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->m1()J

    .line 502
    .line 503
    .line 504
    move-result-wide v5

    .line 505
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    const-string v6, "android_id"

    .line 510
    .line 511
    invoke-static {v0, v3, v6, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->b1()Z

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    if-eqz v5, :cond_12

    .line 519
    .line 520
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->j1()I

    .line 521
    .line 522
    .line 523
    move-result v5

    .line 524
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v5

    .line 528
    const-string v6, "retry_counter"

    .line 529
    .line 530
    invoke-static {v0, v3, v6, v5}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->q0()Z

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    if-eqz v5, :cond_13

    .line 538
    .line 539
    const-string v5, "consent_signals"

    .line 540
    .line 541
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->t()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    invoke-static {v0, v3, v5, v6}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->G()Lcom/google/android/gms/internal/measurement/w6;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    const-string v6, "name"

    .line 553
    .line 554
    const/4 v8, 0x2

    .line 555
    if-nez v5, :cond_14

    .line 556
    .line 557
    goto/16 :goto_5

    .line 558
    .line 559
    :cond_14
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    :cond_15
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    .line 565
    .line 566
    move-result v9

    .line 567
    if-eqz v9, :cond_19

    .line 568
    .line 569
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v9

    .line 573
    check-cast v9, Lcom/google/android/gms/internal/measurement/a4;

    .line 574
    .line 575
    if-eqz v9, :cond_15

    .line 576
    .line 577
    invoke-static {v0, v8}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 578
    .line 579
    .line 580
    const-string v10, "user_property {\n"

    .line 581
    .line 582
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a4;->I()Z

    .line 586
    .line 587
    .line 588
    move-result v10

    .line 589
    if-eqz v10, :cond_16

    .line 590
    .line 591
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a4;->t()J

    .line 592
    .line 593
    .line 594
    move-result-wide v10

    .line 595
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 596
    .line 597
    .line 598
    move-result-object v10

    .line 599
    goto :goto_2

    .line 600
    :cond_16
    move-object v10, v7

    .line 601
    :goto_2
    const-string v11, "set_timestamp_millis"

    .line 602
    .line 603
    invoke-static {v0, v8, v11, v10}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    iget-object v10, v4, Lc5/i4;->n:Lc5/z2;

    .line 607
    .line 608
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a4;->w()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v11

    .line 612
    invoke-virtual {v10, v11}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v10

    .line 616
    invoke-static {v0, v8, v6, v10}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 617
    .line 618
    .line 619
    const-string v10, "string_value"

    .line 620
    .line 621
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a4;->x()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v11

    .line 625
    invoke-static {v0, v8, v10, v11}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a4;->H()Z

    .line 629
    .line 630
    .line 631
    move-result v10

    .line 632
    if-eqz v10, :cond_17

    .line 633
    .line 634
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a4;->s()J

    .line 635
    .line 636
    .line 637
    move-result-wide v10

    .line 638
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 639
    .line 640
    .line 641
    move-result-object v10

    .line 642
    goto :goto_3

    .line 643
    :cond_17
    move-object v10, v7

    .line 644
    :goto_3
    const-string v11, "int_value"

    .line 645
    .line 646
    invoke-static {v0, v8, v11, v10}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a4;->G()Z

    .line 650
    .line 651
    .line 652
    move-result v10

    .line 653
    if-eqz v10, :cond_18

    .line 654
    .line 655
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a4;->r()D

    .line 656
    .line 657
    .line 658
    move-result-wide v9

    .line 659
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 660
    .line 661
    .line 662
    move-result-object v9

    .line 663
    goto :goto_4

    .line 664
    :cond_18
    move-object v9, v7

    .line 665
    :goto_4
    const-string v10, "double_value"

    .line 666
    .line 667
    invoke-static {v0, v8, v10, v9}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    invoke-static {v0, v8}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    goto :goto_1

    .line 677
    :cond_19
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->E()Lcom/google/android/gms/internal/measurement/w6;

    .line 678
    .line 679
    .line 680
    move-result-object v5

    .line 681
    if-nez v5, :cond_1a

    .line 682
    .line 683
    goto :goto_7

    .line 684
    :cond_1a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    :cond_1b
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 689
    .line 690
    .line 691
    move-result v7

    .line 692
    if-eqz v7, :cond_1f

    .line 693
    .line 694
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v7

    .line 698
    check-cast v7, Lcom/google/android/gms/internal/measurement/d3;

    .line 699
    .line 700
    if-eqz v7, :cond_1b

    .line 701
    .line 702
    invoke-static {v0, v8}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 703
    .line 704
    .line 705
    const-string v9, "audience_membership {\n"

    .line 706
    .line 707
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d3;->B()Z

    .line 711
    .line 712
    .line 713
    move-result v9

    .line 714
    if-eqz v9, :cond_1c

    .line 715
    .line 716
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d3;->r()I

    .line 717
    .line 718
    .line 719
    move-result v9

    .line 720
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 721
    .line 722
    .line 723
    move-result-object v9

    .line 724
    const-string v10, "audience_id"

    .line 725
    .line 726
    invoke-static {v0, v8, v10, v9}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    :cond_1c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d3;->C()Z

    .line 730
    .line 731
    .line 732
    move-result v9

    .line 733
    if-eqz v9, :cond_1d

    .line 734
    .line 735
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d3;->A()Z

    .line 736
    .line 737
    .line 738
    move-result v9

    .line 739
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 740
    .line 741
    .line 742
    move-result-object v9

    .line 743
    const-string v10, "new_audience"

    .line 744
    .line 745
    invoke-static {v0, v8, v10, v9}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    :cond_1d
    const-string v9, "current_data"

    .line 749
    .line 750
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d3;->u()Lcom/google/android/gms/internal/measurement/w3;

    .line 751
    .line 752
    .line 753
    move-result-object v10

    .line 754
    invoke-static {v0, v9, v10}, Lc5/q7;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w3;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d3;->D()Z

    .line 758
    .line 759
    .line 760
    move-result v9

    .line 761
    if-eqz v9, :cond_1e

    .line 762
    .line 763
    const-string v9, "previous_data"

    .line 764
    .line 765
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d3;->v()Lcom/google/android/gms/internal/measurement/w3;

    .line 766
    .line 767
    .line 768
    move-result-object v7

    .line 769
    invoke-static {v0, v9, v7}, Lc5/q7;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w3;)V

    .line 770
    .line 771
    .line 772
    :cond_1e
    invoke-static {v0, v8}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    goto :goto_6

    .line 779
    :cond_1f
    :goto_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q3;->F()Lcom/google/android/gms/internal/measurement/w6;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    if-nez v1, :cond_20

    .line 784
    .line 785
    goto :goto_9

    .line 786
    :cond_20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    :cond_21
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 791
    .line 792
    .line 793
    move-result v5

    .line 794
    if-eqz v5, :cond_26

    .line 795
    .line 796
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    check-cast v5, Lcom/google/android/gms/internal/measurement/h3;

    .line 801
    .line 802
    if-eqz v5, :cond_21

    .line 803
    .line 804
    invoke-static {v0, v8}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 805
    .line 806
    .line 807
    const-string v7, "event {\n"

    .line 808
    .line 809
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    iget-object v7, v4, Lc5/i4;->n:Lc5/z2;

    .line 813
    .line 814
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v9

    .line 818
    invoke-virtual {v7, v9}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v7

    .line 822
    invoke-static {v0, v8, v6, v7}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h3;->K()Z

    .line 826
    .line 827
    .line 828
    move-result v7

    .line 829
    if-eqz v7, :cond_22

    .line 830
    .line 831
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h3;->u()J

    .line 832
    .line 833
    .line 834
    move-result-wide v9

    .line 835
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 836
    .line 837
    .line 838
    move-result-object v7

    .line 839
    const-string v9, "timestamp_millis"

    .line 840
    .line 841
    invoke-static {v0, v8, v9, v7}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    :cond_22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h3;->J()Z

    .line 845
    .line 846
    .line 847
    move-result v7

    .line 848
    if-eqz v7, :cond_23

    .line 849
    .line 850
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h3;->t()J

    .line 851
    .line 852
    .line 853
    move-result-wide v9

    .line 854
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 855
    .line 856
    .line 857
    move-result-object v7

    .line 858
    const-string v9, "previous_timestamp_millis"

    .line 859
    .line 860
    invoke-static {v0, v8, v9, v7}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    :cond_23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h3;->I()Z

    .line 864
    .line 865
    .line 866
    move-result v7

    .line 867
    if-eqz v7, :cond_24

    .line 868
    .line 869
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h3;->r()I

    .line 870
    .line 871
    .line 872
    move-result v7

    .line 873
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 874
    .line 875
    .line 876
    move-result-object v7

    .line 877
    const-string v9, "count"

    .line 878
    .line 879
    invoke-static {v0, v8, v9, v7}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 880
    .line 881
    .line 882
    :cond_24
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h3;->s()I

    .line 883
    .line 884
    .line 885
    move-result v7

    .line 886
    if-eqz v7, :cond_25

    .line 887
    .line 888
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h3;->z()Lcom/google/android/gms/internal/measurement/w6;

    .line 889
    .line 890
    .line 891
    move-result-object v5

    .line 892
    invoke-virtual {p0, v0, v8, v5}, Lc5/q7;->o(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/w6;)V

    .line 893
    .line 894
    .line 895
    :cond_25
    invoke-static {v0, v8}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    goto :goto_8

    .line 902
    :cond_26
    :goto_9
    invoke-static {v0, v3}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    goto/16 :goto_0

    .line 909
    .line 910
    :cond_27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object p1

    .line 917
    return-object p1
.end method

.method public final C(Lcom/google/android/gms/internal/measurement/o2;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "\nproperty_filter {\n"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/o2;->A()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/o2;->r()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "filter_id"

    .line 23
    .line 24
    invoke-static {v0, v2, v3, v1}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lc5/x4;->a:Lc5/z4;

    .line 28
    .line 29
    check-cast v1, Lc5/i4;

    .line 30
    .line 31
    iget-object v1, v1, Lc5/i4;->n:Lc5/z2;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/o2;->v()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v3, "property_name"

    .line 42
    .line 43
    invoke-static {v0, v2, v3, v1}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/o2;->x()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/o2;->y()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/o2;->z()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-static {v1, v3, v4}, Lc5/q7;->r(ZZZ)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    const-string v3, "filter_type"

    .line 69
    .line 70
    invoke-static {v0, v2, v3, v1}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/o2;->s()Lcom/google/android/gms/internal/measurement/j2;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, v0, v1, p1}, Lc5/q7;->p(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/j2;)V

    .line 79
    .line 80
    .line 81
    const-string p1, "}\n"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1
.end method

.method public final E(Lcom/google/android/gms/internal/measurement/v6;Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lc5/x4;->a:Lc5/z4;

    .line 27
    .line 28
    if-gez v1, :cond_0

    .line 29
    .line 30
    check-cast v2, Lc5/i4;

    .line 31
    .line 32
    iget-object v1, v2, Lc5/i4;->j:Lc5/e3;

    .line 33
    .line 34
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "Ignoring negative bit index to be cleared"

    .line 38
    .line 39
    iget-object v1, v1, Lc5/e3;->j:Lc5/c3;

    .line 40
    .line 41
    invoke-virtual {v1, p2, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    div-int/lit8 v1, v1, 0x40

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-lt v1, v3, :cond_1

    .line 56
    .line 57
    check-cast v2, Lc5/i4;

    .line 58
    .line 59
    iget-object v1, v2, Lc5/i4;->j:Lc5/e3;

    .line 60
    .line 61
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v1, v1, Lc5/e3;->j:Lc5/c3;

    .line 73
    .line 74
    const-string v3, "Ignoring bit index greater than bitSet size"

    .line 75
    .line 76
    invoke-virtual {v1, p2, v3, v2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    rem-int/lit8 p2, p2, 0x40

    .line 95
    .line 96
    const-wide/16 v4, 0x1

    .line 97
    .line 98
    shl-long/2addr v4, p2

    .line 99
    not-long v4, v4

    .line 100
    and-long/2addr v2, v4

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    add-int/lit8 p2, p2, -0x1

    .line 118
    .line 119
    :goto_1
    move v6, p2

    .line 120
    move p2, p1

    .line 121
    move p1, v6

    .line 122
    if-ltz p1, :cond_4

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v1

    .line 134
    const-wide/16 v3, 0x0

    .line 135
    .line 136
    cmp-long v5, v1, v3

    .line 137
    .line 138
    if-eqz v5, :cond_3

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    add-int/lit8 p2, p1, -0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 145
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1
.end method

.method public final G(Landroid/os/Bundle;Z)Ljava/util/HashMap;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_9

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qb;->c()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 34
    .line 35
    check-cast v4, Lc5/i4;

    .line 36
    .line 37
    iget-object v4, v4, Lc5/i4;->g:Lc5/e;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    sget-object v6, Lc5/r2;->r0:Lc5/q2;

    .line 41
    .line 42
    invoke-virtual {v4, v5, v6}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    instance-of v4, v3, [Landroid/os/Parcelable;

    .line 49
    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    instance-of v4, v3, Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    instance-of v4, v3, Landroid/os/Bundle;

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    instance-of v4, v3, [Landroid/os/Bundle;

    .line 62
    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    instance-of v4, v3, Ljava/util/ArrayList;

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    instance-of v4, v3, Landroid/os/Bundle;

    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    if-eqz v3, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_1
    if-eqz p2, :cond_0

    .line 81
    .line 82
    new-instance v4, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    instance-of v5, v3, [Landroid/os/Parcelable;

    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    if-eqz v5, :cond_5

    .line 91
    .line 92
    check-cast v3, [Landroid/os/Parcelable;

    .line 93
    .line 94
    array-length v5, v3

    .line 95
    const/4 v7, 0x0

    .line 96
    :goto_2
    if-ge v7, v5, :cond_8

    .line 97
    .line 98
    aget-object v8, v3, v7

    .line 99
    .line 100
    instance-of v9, v8, Landroid/os/Bundle;

    .line 101
    .line 102
    if-eqz v9, :cond_4

    .line 103
    .line 104
    check-cast v8, Landroid/os/Bundle;

    .line 105
    .line 106
    invoke-virtual {p0, v8, v6}, Lc5/q7;->G(Landroid/os/Bundle;Z)Ljava/util/HashMap;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    instance-of v5, v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    if-eqz v5, :cond_7

    .line 119
    .line 120
    check-cast v3, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    const/4 v7, 0x0

    .line 127
    :goto_3
    if-ge v7, v5, :cond_8

    .line 128
    .line 129
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    instance-of v9, v8, Landroid/os/Bundle;

    .line 134
    .line 135
    if-eqz v9, :cond_6

    .line 136
    .line 137
    check-cast v8, Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-virtual {p0, v8, v6}, Lc5/q7;->G(Landroid/os/Bundle;Z)Ljava/util/HashMap;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    instance-of v5, v3, Landroid/os/Bundle;

    .line 150
    .line 151
    if-eqz v5, :cond_8

    .line 152
    .line 153
    check-cast v3, Landroid/os/Bundle;

    .line 154
    .line 155
    invoke-virtual {p0, v3, v6}, Lc5/q7;->G(Landroid/os/Bundle;Z)Ljava/util/HashMap;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    :cond_8
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_9
    return-object v0
.end method

.method public final H(Lcom/google/android/gms/internal/measurement/k3;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 7
    .line 8
    .line 9
    iput-boolean v1, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 10
    .line 11
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l3;->C(Lcom/google/android/gms/internal/measurement/l3;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 23
    .line 24
    .line 25
    iput-boolean v1, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 26
    .line 27
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l3;->E(Lcom/google/android/gms/internal/measurement/l3;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 39
    .line 40
    .line 41
    iput-boolean v1, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 42
    .line 43
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 44
    .line 45
    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l3;->G(Lcom/google/android/gms/internal/measurement/l3;)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 55
    .line 56
    .line 57
    iput-boolean v1, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 58
    .line 59
    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 60
    .line 61
    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l3;->J(Lcom/google/android/gms/internal/measurement/l3;)V

    .line 64
    .line 65
    .line 66
    instance-of v0, p2, Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    check-cast p2, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/k3;->r(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    check-cast p2, Ljava/lang/Long;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/k3;->p(J)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    instance-of v0, p2, Ljava/lang/Double;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    check-cast p2, Ljava/lang/Double;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/k3;->n(D)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_6
    instance-of v0, p2, [Landroid/os/Bundle;

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    check-cast p2, [Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-static {p2}, Lc5/q7;->D([Landroid/os/Bundle;)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 115
    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    .line 119
    .line 120
    .line 121
    iput-boolean v1, p1, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    .line 122
    .line 123
    :cond_7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 124
    .line 125
    check-cast p1, Lcom/google/android/gms/internal/measurement/l3;

    .line 126
    .line 127
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/l3;->I(Lcom/google/android/gms/internal/measurement/l3;Ljava/util/ArrayList;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_8
    iget-object p1, p0, Lc5/x4;->a:Lc5/z4;

    .line 132
    .line 133
    check-cast p1, Lc5/i4;

    .line 134
    .line 135
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 136
    .line 137
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 138
    .line 139
    .line 140
    const-string v0, "Ignoring invalid (type) event param value"

    .line 141
    .line 142
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 143
    .line 144
    invoke-virtual {p1, p2, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final J(JJ)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    cmp-long v2, p3, v0

    .line 8
    .line 9
    if-lez v2, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 12
    .line 13
    check-cast v0, Lc5/i4;

    .line 14
    .line 15
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    sub-long/2addr v0, p1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    cmp-long v0, p1, p3

    .line 30
    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method public final L([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 27
    .line 28
    check-cast v0, Lc5/i4;

    .line 29
    .line 30
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 31
    .line 32
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "Failed to gzip content"

    .line 36
    .line 37
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final o(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/w6;)V
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 5
    .line 6
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_7

    .line 15
    .line 16
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {p1, p2}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 25
    .line 26
    .line 27
    const-string v1, "param {\n"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->N()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lc5/x4;->a:Lc5/z4;

    .line 40
    .line 41
    check-cast v1, Lc5/i4;

    .line 42
    .line 43
    iget-object v1, v1, Lc5/i4;->n:Lc5/z2;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->x()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v1, v2

    .line 55
    :goto_1
    const-string v3, "name"

    .line 56
    .line 57
    invoke-static {p1, p2, v3, v1}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->O()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->y()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move-object v1, v2

    .line 72
    :goto_2
    const-string v3, "string_value"

    .line 73
    .line 74
    invoke-static {p1, p2, v3, v1}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->M()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->u()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    move-object v1, v2

    .line 93
    :goto_3
    const-string v3, "int_value"

    .line 94
    .line 95
    invoke-static {p1, p2, v3, v1}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->K()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->r()D

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_5
    const-string v1, "double_value"

    .line 113
    .line 114
    invoke-static {p1, p2, v1, v2}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->t()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-lez v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->z()Lcom/google/android/gms/internal/measurement/w6;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0, p1, p2, v0}, Lc5/q7;->o(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/w6;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-static {p1, p2}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 131
    .line 132
    .line 133
    const-string v0, "}\n"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_7
    return-void
.end method

.method public final p(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/j2;)V
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 5
    .line 6
    .line 7
    const-string v0, "filter {\n"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->y()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->x()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "complement"

    .line 27
    .line 28
    invoke-static {p1, p2, v1, v0}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->A()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 38
    .line 39
    check-cast v0, Lc5/i4;

    .line 40
    .line 41
    iget-object v0, v0, Lc5/i4;->n:Lc5/z2;

    .line 42
    .line 43
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->v()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lc5/z2;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "param_name"

    .line 52
    .line 53
    invoke-static {p1, p2, v1, v0}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->B()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const-string v1, "}\n"

    .line 61
    .line 62
    if-eqz v0, :cond_9

    .line 63
    .line 64
    add-int/lit8 v0, p2, 0x1

    .line 65
    .line 66
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->u()Lcom/google/android/gms/internal/measurement/r2;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_3
    invoke-static {p1, v0}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 75
    .line 76
    .line 77
    const-string v3, "string_filter {\n"

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->z()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->A()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    packed-switch v3, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    const-string v3, "IN_LIST"

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_0
    const-string v3, "EXACT"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_1
    const-string v3, "PARTIAL"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_2
    const-string v3, "ENDS_WITH"

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_3
    const-string v3, "BEGINS_WITH"

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_4
    const-string v3, "REGEXP"

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_5
    const-string v3, "UNKNOWN_MATCH_TYPE"

    .line 114
    .line 115
    :goto_0
    const-string v4, "match_type"

    .line 116
    .line 117
    invoke-static {p1, v0, v4, v3}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->y()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_5

    .line 125
    .line 126
    const-string v3, "expression"

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->u()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {p1, v0, v3, v4}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->x()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_6

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->w()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    const-string v4, "case_sensitive"

    .line 150
    .line 151
    invoke-static {p1, v0, v4, v3}, Lc5/q7;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->r()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-lez v3, :cond_8

    .line 159
    .line 160
    add-int/lit8 v3, v0, 0x1

    .line 161
    .line 162
    invoke-static {p1, v3}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 163
    .line 164
    .line 165
    const-string v3, "expression_list {\n"

    .line 166
    .line 167
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->v()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_7

    .line 183
    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Ljava/lang/String;

    .line 189
    .line 190
    add-int/lit8 v4, v0, 0x2

    .line 191
    .line 192
    invoke-static {p1, v4}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v3, "\n"

    .line 199
    .line 200
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    :cond_8
    invoke-static {p1, v0}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    :cond_9
    :goto_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->z()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    add-int/lit8 v0, p2, 0x1

    .line 220
    .line 221
    const-string v2, "number_filter"

    .line 222
    .line 223
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->t()Lcom/google/android/gms/internal/measurement/m2;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    invoke-static {p1, v0, v2, p3}, Lc5/q7;->u(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/m2;)V

    .line 228
    .line 229
    .line 230
    :cond_a
    invoke-static {p1, p2}, Lc5/q7;->q(Ljava/lang/StringBuilder;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w([B)J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    check-cast v0, Lc5/i4;

    .line 4
    .line 5
    iget-object v1, v0, Lc5/i4;->m:Lc5/v7;

    .line 6
    .line 7
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lc5/x4;->b()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lc5/v7;->o()Ljava/security/MessageDigest;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Lc5/i4;->j:Lc5/e3;

    .line 20
    .line 21
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "Failed to get MD5"

    .line 25
    .line 26
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    return-wide v0

    .line 34
    :cond_0
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lc5/v7;->k0([B)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    return-wide v0
.end method

.method public final x(Ljava/util/Map;Z)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_8

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    instance-of v5, v3, Ljava/lang/Long;

    .line 38
    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    check-cast v3, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    instance-of v5, v3, Ljava/lang/Double;

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    check-cast v3, Ljava/lang/Double;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    instance-of v5, v3, Ljava/util/ArrayList;

    .line 66
    .line 67
    if-eqz v5, :cond_7

    .line 68
    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qb;->c()V

    .line 72
    .line 73
    .line 74
    iget-object v5, p0, Lc5/x4;->a:Lc5/z4;

    .line 75
    .line 76
    check-cast v5, Lc5/i4;

    .line 77
    .line 78
    iget-object v5, v5, Lc5/i4;->g:Lc5/e;

    .line 79
    .line 80
    sget-object v6, Lc5/r2;->r0:Lc5/q2;

    .line 81
    .line 82
    invoke-virtual {v5, v4, v6}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    check-cast v3, Ljava/util/ArrayList;

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    if-eqz v4, :cond_5

    .line 90
    .line 91
    new-instance v4, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    const/4 v7, 0x0

    .line 101
    :goto_1
    if-ge v7, v6, :cond_4

    .line 102
    .line 103
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Ljava/util/Map;

    .line 108
    .line 109
    invoke-virtual {p0, v8, v5}, Lc5/q7;->x(Ljava/util/Map;Z)Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    add-int/lit8 v7, v7, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    new-array v3, v5, [Landroid/os/Parcelable;

    .line 120
    .line 121
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, [Landroid/os/Parcelable;

    .line 126
    .line 127
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    const/4 v7, 0x0

    .line 141
    :goto_2
    if-ge v7, v6, :cond_6

    .line 142
    .line 143
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Ljava/util/Map;

    .line 148
    .line 149
    invoke-virtual {p0, v8, v5}, Lc5/q7;->x(Ljava/util/Map;Z)Landroid/os/Bundle;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    add-int/lit8 v7, v7, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_8
    return-object v0
.end method

.method public final y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    array-length v2, p1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Ls3/b$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    :try_start_1
    iget-object p1, p0, Lc5/x4;->a:Lc5/z4;

    .line 30
    .line 31
    check-cast p1, Lc5/i4;

    .line 32
    .line 33
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 34
    .line 35
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 39
    .line 40
    const-string p2, "Failed to load parcelable from buffer"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public final z(Lcom/google/android/gms/internal/measurement/b;)Lc5/s;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lc5/q7;->x(Ljava/util/Map;Z)Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "_o"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "app"

    .line 28
    .line 29
    :goto_0
    move-object v5, v1

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v2, La6/a;->c:[Ljava/lang/String;

    .line 33
    .line 34
    sget-object v3, La6/a;->e:[Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2, v1, v3}, Lb8/f;->H0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    .line 43
    .line 44
    :cond_1
    move-object v3, v1

    .line 45
    new-instance v1, Lc5/s;

    .line 46
    .line 47
    new-instance v4, Lc5/q;

    .line 48
    .line 49
    invoke-direct {v4, v0}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    iget-wide v6, p1, Lcom/google/android/gms/internal/measurement/b;->b:J

    .line 53
    .line 54
    move-object v2, v1

    .line 55
    invoke-direct/range {v2 .. v7}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method
