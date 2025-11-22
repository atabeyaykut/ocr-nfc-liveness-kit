.class public final Lcom/google/android/gms/internal/vision/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/d3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/d3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/n2;

.field public final b:Lcom/google/android/gms/internal/vision/n3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/n3<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/vision/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/y0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/n3;Lcom/google/android/gms/internal/vision/y0;Lcom/google/android/gms/internal/vision/n2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/n3<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/y0<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/n2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/t2;->b:Lcom/google/android/gms/internal/vision/n3;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/vision/y0;->d(Lcom/google/android/gms/internal/vision/n2;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/t2;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/t2;->d:Lcom/google/android/gms/internal/vision/y0;

    iput-object p3, p0, Lcom/google/android/gms/internal/vision/t2;->a:Lcom/google/android/gms/internal/vision/n2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->b:Lcom/google/android/gms/internal/vision/n3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->h(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->d:Lcom/google/android/gms/internal/vision/y0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/y0;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->b:Lcom/google/android/gms/internal/vision/n3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/n3;->i(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-boolean v2, p0, Lcom/google/android/gms/internal/vision/t2;->c:Z

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/t2;->d:Lcom/google/android/gms/internal/vision/y0;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/g3;->e()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v1, v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/g3;->d(I)Ljava/util/Map$Entry;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/c1;->h(Ljava/util/Map$Entry;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/2addr v2, v3

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/g3;->g()Ljava/lang/Iterable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/c1;->h(Ljava/util/Map$Entry;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v2, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    add-int/2addr v0, v2

    .line 71
    :cond_2
    return v0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->b:Lcom/google/android/gms/internal/vision/n3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/q3;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/t2;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/t2;->d:Lcom/google/android/gms/internal/vision/y0;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/c1;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->b:Lcom/google/android/gms/internal/vision/n3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/q3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/t2;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->d:Lcom/google/android/gms/internal/vision/y0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    move-result-object p1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/c1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->d:Lcom/google/android/gms/internal/vision/y0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/c1;->k()Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->d:Lcom/google/android/gms/internal/vision/y0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/c1;->i()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/google/android/gms/internal/vision/e1;

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/e1;->c()Lcom/google/android/gms/internal/vision/f4;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/google/android/gms/internal/vision/f4;->k:Lcom/google/android/gms/internal/vision/f4;

    .line 34
    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/e1;->d()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/e1;->e()V

    .line 41
    .line 42
    .line 43
    instance-of v3, v1, Lcom/google/android/gms/internal/vision/w1;

    .line 44
    .line 45
    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/e1;->a()V

    .line 46
    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    check-cast v1, Lcom/google/android/gms/internal/vision/w1;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/w1;->a:Ljava/util/Map$Entry;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/google/android/gms/internal/vision/u1;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/y1;->b()Lcom/google/android/gms/internal/vision/p0;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_1
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/vision/u0;->g(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string p2, "Found invalid MessageSet item."

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->b:Lcom/google/android/gms/internal/vision/n3;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/n3;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/l0;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/vision/l0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    move-object/from16 v1, p1

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/vision/i1;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/google/android/gms/internal/vision/i1;->zzb:Lcom/google/android/gms/internal/vision/q3;

    .line 14
    .line 15
    sget-object v3, Lcom/google/android/gms/internal/vision/q3;->f:Lcom/google/android/gms/internal/vision/q3;

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/internal/vision/q3;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/google/android/gms/internal/vision/q3;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, v1, Lcom/google/android/gms/internal/vision/i1;->zzb:Lcom/google/android/gms/internal/vision/q3;

    .line 25
    .line 26
    :cond_0
    move-object v10, v2

    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Lcom/google/android/gms/internal/vision/i1$c;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/i1$c;->o()Lcom/google/android/gms/internal/vision/c1;

    .line 32
    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    move/from16 v1, p3

    .line 36
    .line 37
    move-object v2, v11

    .line 38
    :goto_0
    if-ge v1, v8, :cond_c

    .line 39
    .line 40
    invoke-static {v7, v1, v9}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget v1, v9, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    const/16 v5, 0xb

    .line 48
    .line 49
    iget-object v6, v0, Lcom/google/android/gms/internal/vision/t2;->a:Lcom/google/android/gms/internal/vision/n2;

    .line 50
    .line 51
    iget-object v12, v0, Lcom/google/android/gms/internal/vision/t2;->d:Lcom/google/android/gms/internal/vision/y0;

    .line 52
    .line 53
    iget-object v13, v9, Lcom/google/android/gms/internal/vision/l0;->d:Lcom/google/android/gms/internal/vision/w0;

    .line 54
    .line 55
    if-eq v1, v5, :cond_3

    .line 56
    .line 57
    and-int/lit8 v5, v1, 0x7

    .line 58
    .line 59
    if-ne v5, v4, :cond_2

    .line 60
    .line 61
    ushr-int/lit8 v2, v1, 0x3

    .line 62
    .line 63
    invoke-virtual {v12, v13, v6, v2}, Lcom/google/android/gms/internal/vision/y0;->b(Lcom/google/android/gms/internal/vision/w0;Lcom/google/android/gms/internal/vision/n2;I)Lcom/google/android/gms/internal/vision/i1$d;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    if-nez v12, :cond_1

    .line 68
    .line 69
    move-object/from16 v2, p2

    .line 70
    .line 71
    move/from16 v4, p4

    .line 72
    .line 73
    move-object v5, v10

    .line 74
    move-object/from16 v6, p5

    .line 75
    .line 76
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/k0;->d(I[BIILcom/google/android/gms/internal/vision/q3;Lcom/google/android/gms/internal/vision/l0;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    move-object v2, v12

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/vision/a3;->c:Lcom/google/android/gms/internal/vision/a3;

    .line 83
    .line 84
    throw v11

    .line 85
    :cond_2
    invoke-static {v1, v7, v3, v8, v9}, Lcom/google/android/gms/internal/vision/k0;->b(I[BIILcom/google/android/gms/internal/vision/l0;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const/4 v1, 0x0

    .line 91
    move-object v5, v11

    .line 92
    :goto_1
    if-ge v3, v8, :cond_9

    .line 93
    .line 94
    invoke-static {v7, v3, v9}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iget v14, v9, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 99
    .line 100
    ushr-int/lit8 v15, v14, 0x3

    .line 101
    .line 102
    and-int/lit8 v11, v14, 0x7

    .line 103
    .line 104
    if-eq v15, v4, :cond_7

    .line 105
    .line 106
    const/4 v4, 0x3

    .line 107
    if-eq v15, v4, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    if-nez v2, :cond_6

    .line 111
    .line 112
    const/4 v4, 0x2

    .line 113
    if-ne v11, v4, :cond_5

    .line 114
    .line 115
    invoke-static {v7, v3, v9}, Lcom/google/android/gms/internal/vision/k0;->q([BILcom/google/android/gms/internal/vision/l0;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    iget-object v4, v9, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    .line 120
    .line 121
    move-object v5, v4

    .line 122
    check-cast v5, Lcom/google/android/gms/internal/vision/p0;

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    goto :goto_4

    .line 126
    :cond_5
    :goto_2
    const/4 v4, 0x0

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/vision/a3;->c:Lcom/google/android/gms/internal/vision/a3;

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    throw v4

    .line 132
    :cond_7
    const/4 v4, 0x0

    .line 133
    if-nez v11, :cond_8

    .line 134
    .line 135
    invoke-static {v7, v3, v9}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    iget v2, v9, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 140
    .line 141
    invoke-virtual {v12, v13, v6, v2}, Lcom/google/android/gms/internal/vision/y0;->b(Lcom/google/android/gms/internal/vision/w0;Lcom/google/android/gms/internal/vision/n2;I)Lcom/google/android/gms/internal/vision/i1$d;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    move-object/from16 v16, v3

    .line 146
    .line 147
    move v3, v1

    .line 148
    move v1, v2

    .line 149
    move-object/from16 v2, v16

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    :goto_3
    const/16 v11, 0xc

    .line 153
    .line 154
    if-eq v14, v11, :cond_a

    .line 155
    .line 156
    invoke-static {v14, v7, v3, v8, v9}, Lcom/google/android/gms/internal/vision/k0;->b(I[BIILcom/google/android/gms/internal/vision/l0;)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    :goto_4
    move-object v11, v4

    .line 161
    const/4 v4, 0x2

    .line 162
    goto :goto_1

    .line 163
    :cond_9
    move-object v4, v11

    .line 164
    :cond_a
    if-eqz v5, :cond_b

    .line 165
    .line 166
    shl-int/lit8 v1, v1, 0x3

    .line 167
    .line 168
    const/4 v6, 0x2

    .line 169
    or-int/2addr v1, v6

    .line 170
    invoke-virtual {v10, v1, v5}, Lcom/google/android/gms/internal/vision/q3;->a(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_b
    move v1, v3

    .line 174
    move-object v11, v4

    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_c
    if-ne v1, v8, :cond_d

    .line 178
    .line 179
    return-void

    .line 180
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->c()Lcom/google/android/gms/internal/vision/q1;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    throw v1
.end method

.method public final h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->a:Lcom/google/android/gms/internal/vision/n2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/n2;->j()Lcom/google/android/gms/internal/vision/i1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$b;->i()Lcom/google/android/gms/internal/vision/i1;

    move-result-object v0

    return-object v0
.end method

.method public final q(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/e3;->a:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->b:Lcom/google/android/gms/internal/vision/n3;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/n3;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/vision/n3;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/t2;->c:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t2;->d:Lcom/google/android/gms/internal/vision/y0;

    .line 25
    .line 26
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/e3;->j(Lcom/google/android/gms/internal/vision/y0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
