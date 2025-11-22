.class public final Lcom/google/crypto/tink/shaded/protobuf/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/e1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/e1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/crypto/tink/shaded/protobuf/q0;

.field public final b:Lcom/google/crypto/tink/shaded/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/j1<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/google/crypto/tink/shaded/protobuf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/q<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/j1;Lcom/google/crypto/tink/shaded/protobuf/q;Lcom/google/crypto/tink/shaded/protobuf/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/j1<",
            "**>;",
            "Lcom/google/crypto/tink/shaded/protobuf/q<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/q0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/q;->e(Lcom/google/crypto/tink/shaded/protobuf/q0;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->c:Z

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->a:Lcom/google/crypto/tink/shaded/protobuf/q0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/f1;->a:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->c:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 25
    .line 26
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/f1;->B(Lcom/google/crypto/tink/shaded/protobuf/q;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/k1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    move-result-object p1

    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->a:Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/q0;->h()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/k1;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/t;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/t;->j()Z

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/t;->l()Ljava/util/Iterator;

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
    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/t$a;

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->l()Lcom/google/crypto/tink/shaded/protobuf/q1;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q1;->k:Lcom/google/crypto/tink/shaded/protobuf/q1;

    .line 34
    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->g()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->m()V

    .line 41
    .line 42
    .line 43
    instance-of v3, v1, Lcom/google/crypto/tink/shaded/protobuf/c0$a;

    .line 44
    .line 45
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->f()V

    .line 46
    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/c0$a;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/google/crypto/tink/shaded/protobuf/c0$a;->a:Ljava/util/Map$Entry;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->b()Lcom/google/crypto/tink/shaded/protobuf/i;

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
    invoke-virtual {p2, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/m;->l(ILjava/lang/Object;)V

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
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->r(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final h(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
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
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 14
    .line 15
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/k1;->f:Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/google/crypto/tink/shaded/protobuf/k1;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 25
    .line 26
    :cond_0
    move-object v10, v2

    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/x$c;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$c;->extensions:Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 32
    .line 33
    iget-boolean v3, v2, Lcom/google/crypto/tink/shaded/protobuf/t;->b:Z

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/t;->a()Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$c;->extensions:Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 42
    .line 43
    :cond_1
    const/4 v11, 0x0

    .line 44
    move/from16 v1, p3

    .line 45
    .line 46
    move-object v2, v11

    .line 47
    :goto_0
    if-ge v1, v8, :cond_d

    .line 48
    .line 49
    invoke-static {v7, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iget v1, v9, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 54
    .line 55
    const/4 v4, 0x2

    .line 56
    const/16 v5, 0xb

    .line 57
    .line 58
    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/u0;->a:Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 59
    .line 60
    iget-object v12, v0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 61
    .line 62
    iget-object v13, v9, Lcom/google/crypto/tink/shaded/protobuf/e$a;->d:Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 63
    .line 64
    if-eq v1, v5, :cond_4

    .line 65
    .line 66
    and-int/lit8 v5, v1, 0x7

    .line 67
    .line 68
    if-ne v5, v4, :cond_3

    .line 69
    .line 70
    ushr-int/lit8 v2, v1, 0x3

    .line 71
    .line 72
    invoke-virtual {v12, v13, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/q;->b(Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/q0;I)Lcom/google/crypto/tink/shaded/protobuf/x$e;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    if-nez v12, :cond_2

    .line 77
    .line 78
    move-object/from16 v2, p2

    .line 79
    .line 80
    move/from16 v4, p4

    .line 81
    .line 82
    move-object v5, v10

    .line 83
    move-object/from16 v6, p5

    .line 84
    .line 85
    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/e;->F(I[BIILcom/google/crypto/tink/shaded/protobuf/k1;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    move-object v2, v12

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/a1;->c:Lcom/google/crypto/tink/shaded/protobuf/a1;

    .line 92
    .line 93
    throw v11

    .line 94
    :cond_3
    invoke-static {v1, v7, v3, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/e;->L(I[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    const/4 v1, 0x0

    .line 100
    move-object v5, v11

    .line 101
    :goto_1
    if-ge v3, v8, :cond_b

    .line 102
    .line 103
    invoke-static {v7, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget v14, v9, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 108
    .line 109
    ushr-int/lit8 v15, v14, 0x3

    .line 110
    .line 111
    and-int/lit8 v11, v14, 0x7

    .line 112
    .line 113
    if-eq v15, v4, :cond_8

    .line 114
    .line 115
    const/4 v4, 0x3

    .line 116
    if-eq v15, v4, :cond_5

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    if-nez v2, :cond_7

    .line 120
    .line 121
    const/4 v4, 0x2

    .line 122
    if-ne v11, v4, :cond_6

    .line 123
    .line 124
    invoke-static {v7, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/e;->b([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    iget-object v4, v9, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 129
    .line 130
    move-object v5, v4

    .line 131
    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    goto :goto_4

    .line 135
    :cond_6
    :goto_2
    const/4 v4, 0x0

    .line 136
    goto :goto_3

    .line 137
    :cond_7
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/a1;->c:Lcom/google/crypto/tink/shaded/protobuf/a1;

    .line 138
    .line 139
    const/4 v4, 0x0

    .line 140
    throw v4

    .line 141
    :cond_8
    const/4 v4, 0x0

    .line 142
    if-nez v11, :cond_9

    .line 143
    .line 144
    invoke-static {v7, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    iget v2, v9, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 149
    .line 150
    invoke-virtual {v12, v13, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/q;->b(Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/q0;I)Lcom/google/crypto/tink/shaded/protobuf/x$e;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    move-object/from16 v16, v3

    .line 155
    .line 156
    move v3, v1

    .line 157
    move v1, v2

    .line 158
    move-object/from16 v2, v16

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_9
    :goto_3
    const/16 v11, 0xc

    .line 162
    .line 163
    if-ne v14, v11, :cond_a

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_a
    invoke-static {v14, v7, v3, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/e;->L(I[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    :goto_4
    move-object v11, v4

    .line 171
    const/4 v4, 0x2

    .line 172
    goto :goto_1

    .line 173
    :cond_b
    move-object v4, v11

    .line 174
    :goto_5
    if-eqz v5, :cond_c

    .line 175
    .line 176
    shl-int/lit8 v1, v1, 0x3

    .line 177
    .line 178
    const/4 v6, 0x2

    .line 179
    or-int/2addr v1, v6

    .line 180
    invoke-virtual {v10, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/k1;->b(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_c
    move v1, v3

    .line 184
    move-object v11, v4

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_d
    if-ne v1, v8, :cond_e

    .line 188
    .line 189
    return-void

    .line 190
    :cond_e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->e()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    throw v1
.end method

.method public final i(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/d1;Lcom/google/crypto/tink/shaded/protobuf/p;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/d1;",
            "Lcom/google/crypto/tink/shaded/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v7, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    invoke-virtual {v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->f(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    move-result-object v8

    iget-object v9, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    invoke-virtual {v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    move-result-object v10

    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->z()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, v9

    move-object v4, v10

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/u0;->k(Lcom/google/crypto/tink/shaded/protobuf/d1;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/q;Lcom/google/crypto/tink/shaded/protobuf/t;Lcom/google/crypto/tink/shaded/protobuf/j1;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v7, p1, v8}, Lcom/google/crypto/tink/shaded/protobuf/j1;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {v7, p1, v8}, Lcom/google/crypto/tink/shaded/protobuf/j1;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->i(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-boolean v2, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->c:Z

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->d:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    iget-object v3, p1, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/h1;->d()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v1, v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->c(I)Ljava/util/Map$Entry;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/t;->g(Ljava/util/Map$Entry;)I

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
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/h1;->e()Ljava/lang/Iterable;

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
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/t;->g(Ljava/util/Map$Entry;)I

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

.method public final k(Lcom/google/crypto/tink/shaded/protobuf/d1;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/q;Lcom/google/crypto/tink/shaded/protobuf/t;Lcom/google/crypto/tink/shaded/protobuf/j1;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/crypto/tink/shaded/protobuf/t$a<",
            "TET;>;>(",
            "Lcom/google/crypto/tink/shaded/protobuf/d1;",
            "Lcom/google/crypto/tink/shaded/protobuf/p;",
            "Lcom/google/crypto/tink/shaded/protobuf/q<",
            "TET;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/t<",
            "TET;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/j1<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->getTag()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    const/16 v0, 0xb

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/u0;->a:Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 9
    .line 10
    if-eq p4, v0, :cond_2

    .line 11
    .line 12
    and-int/lit8 v0, p4, 0x7

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-ne v0, v3, :cond_1

    .line 16
    .line 17
    ushr-int/lit8 p4, p4, 0x3

    .line 18
    .line 19
    invoke-virtual {p3, p2, v2, p4}, Lcom/google/crypto/tink/shaded/protobuf/q;->b(Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/q0;I)Lcom/google/crypto/tink/shaded/protobuf/x$e;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/q;->h(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->l(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/d1;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_1
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->F()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_2
    const/4 p4, 0x0

    .line 40
    const/4 v0, 0x0

    .line 41
    move-object v0, p4

    .line 42
    const/4 v3, 0x0

    .line 43
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->z()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const v5, 0x7fffffff

    .line 48
    .line 49
    .line 50
    if-ne v4, v5, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->getTag()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/16 v5, 0x10

    .line 58
    .line 59
    if-ne v4, v5, :cond_5

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->l()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {p3, p2, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/q;->b(Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/q0;I)Lcom/google/crypto/tink/shaded/protobuf/x$e;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const/16 v5, 0x1a

    .line 71
    .line 72
    if-ne v4, v5, :cond_7

    .line 73
    .line 74
    if-eqz p4, :cond_6

    .line 75
    .line 76
    invoke-virtual {p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/q;->h(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_6
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->C()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_0

    .line 85
    :cond_7
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->F()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_3

    .line 90
    .line 91
    :goto_1
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->getTag()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    const/16 p2, 0xc

    .line 96
    .line 97
    if-ne p1, p2, :cond_a

    .line 98
    .line 99
    if-eqz v0, :cond_9

    .line 100
    .line 101
    if-eqz p4, :cond_8

    .line 102
    .line 103
    invoke-virtual {p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/q;->i(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_8
    invoke-virtual {p5, p6, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/j1;->d(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/i;)V

    .line 108
    .line 109
    .line 110
    :cond_9
    :goto_2
    return v1

    .line 111
    :cond_a
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 112
    .line 113
    const-string p2, "Protocol message end-group tag did not match expected tag."

    .line 114
    .line 115
    invoke-direct {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method
