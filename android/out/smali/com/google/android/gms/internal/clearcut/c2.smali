.class public final Lcom/google/android/gms/internal/clearcut/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/o2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/clearcut/o2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/x1;

.field public final b:Lcom/google/android/gms/internal/clearcut/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/a3<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/clearcut/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/j0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/a3;Lcom/google/android/gms/internal/clearcut/j0;Lcom/google/android/gms/internal/clearcut/x1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/clearcut/a3<",
            "**>;",
            "Lcom/google/android/gms/internal/clearcut/j0<",
            "*>;",
            "Lcom/google/android/gms/internal/clearcut/x1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/c2;->b:Lcom/google/android/gms/internal/clearcut/a3;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/clearcut/j0;->f(Lcom/google/android/gms/internal/clearcut/x1;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/c2;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/c2;->d:Lcom/google/android/gms/internal/clearcut/j0;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/c2;->a:Lcom/google/android/gms/internal/clearcut/x1;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->b:Lcom/google/android/gms/internal/clearcut/a3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->d:Lcom/google/android/gms/internal/clearcut/j0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/j0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->b:Lcom/google/android/gms/internal/clearcut/a3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/b3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->d:Lcom/google/android/gms/internal/clearcut/j0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    move-result-object p1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/n0;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->a:Lcom/google/android/gms/internal/clearcut/x1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/x1;->r()Lcom/google/android/gms/internal/clearcut/v0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/v0$a;->f()Lcom/google/android/gms/internal/clearcut/v0;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->b:Lcom/google/android/gms/internal/clearcut/a3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/b3;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/c2;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/c2;->d:Lcom/google/android/gms/internal/clearcut/j0;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n0;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/clearcut/q2;->a:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->b:Lcom/google/android/gms/internal/clearcut/a3;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/a3;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/clearcut/a3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->c:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->d:Lcom/google/android/gms/internal/clearcut/j0;

    .line 25
    .line 26
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/q2;->f(Lcom/google/android/gms/internal/clearcut/j0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->b:Lcom/google/android/gms/internal/clearcut/a3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/a3;->j(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-boolean v2, p0, Lcom/google/android/gms/internal/clearcut/c2;->c:Z

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/c2;->d:Lcom/google/android/gms/internal/clearcut/j0;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/n0;->a:Lcom/google/android/gms/internal/clearcut/s2;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/r2;->e()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v1, v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/clearcut/r2;->c(I)Ljava/util/Map$Entry;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/n0;->l(Ljava/util/Map$Entry;)I

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
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/r2;->f()Ljava/lang/Iterable;

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
    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/n0;->l(Ljava/util/Map$Entry;)I

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

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/clearcut/t;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/clearcut/t;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/v0;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/clearcut/b3;->f:Lcom/google/android/gms/internal/clearcut/b3;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/clearcut/b3;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/b3;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p1, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    .line 15
    .line 16
    :cond_0
    :goto_0
    if-ge p3, p4, :cond_9

    .line 17
    .line 18
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iget v1, p5, Lcom/google/android/gms/internal/clearcut/t;->a:I

    .line 23
    .line 24
    const/16 p1, 0xb

    .line 25
    .line 26
    const/4 p3, 0x2

    .line 27
    if-eq v1, p1, :cond_2

    .line 28
    .line 29
    and-int/lit8 p1, v1, 0x7

    .line 30
    .line 31
    if-ne p1, p3, :cond_1

    .line 32
    .line 33
    move-object v2, p2

    .line 34
    move v4, p4

    .line 35
    move-object v5, v0

    .line 36
    move-object v6, p5

    .line 37
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/clearcut/s;->c(I[BIILcom/google/android/gms/internal/clearcut/b3;Lcom/google/android/gms/internal/clearcut/t;)I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v1, p2, v3, p4, p5}, Lcom/google/android/gms/internal/clearcut/s;->a(I[BIILcom/google/android/gms/internal/clearcut/t;)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_1
    if-ge v3, p4, :cond_6

    .line 50
    .line 51
    invoke-static {p2, v3, p5}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iget v3, p5, Lcom/google/android/gms/internal/clearcut/t;->a:I

    .line 56
    .line 57
    ushr-int/lit8 v4, v3, 0x3

    .line 58
    .line 59
    and-int/lit8 v5, v3, 0x7

    .line 60
    .line 61
    if-eq v4, p3, :cond_4

    .line 62
    .line 63
    const/4 v6, 0x3

    .line 64
    if-eq v4, v6, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    if-ne v5, p3, :cond_5

    .line 68
    .line 69
    invoke-static {p2, v2, p5}, Lcom/google/android/gms/internal/clearcut/s;->n([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iget-object v1, p5, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lcom/google/android/gms/internal/clearcut/x;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    if-nez v5, :cond_5

    .line 79
    .line 80
    invoke-static {p2, v2, p5}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iget p1, p5, Lcom/google/android/gms/internal/clearcut/t;->a:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    :goto_2
    const/16 v4, 0xc

    .line 88
    .line 89
    if-eq v3, v4, :cond_7

    .line 90
    .line 91
    invoke-static {v3, p2, v2, p4, p5}, Lcom/google/android/gms/internal/clearcut/s;->a(I[BIILcom/google/android/gms/internal/clearcut/t;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    goto :goto_1

    .line 96
    :cond_6
    move v2, v3

    .line 97
    :cond_7
    if-eqz v1, :cond_8

    .line 98
    .line 99
    shl-int/lit8 p1, p1, 0x3

    .line 100
    .line 101
    or-int/2addr p1, p3

    .line 102
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/clearcut/b3;->c(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_8
    move p3, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_9
    if-ne p3, p4, :cond_a

    .line 108
    .line 109
    return-void

    .line 110
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->b()Lcom/google/android/gms/internal/clearcut/b1;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    throw p1
.end method

.method public final h(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->d:Lcom/google/android/gms/internal/clearcut/j0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/n0;->c()Ljava/util/Iterator;

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
    check-cast v2, Lcom/google/android/gms/internal/clearcut/q0;

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/google/android/gms/internal/clearcut/q0;->i()Lcom/google/android/gms/internal/clearcut/r3;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/google/android/gms/internal/clearcut/r3;->k:Lcom/google/android/gms/internal/clearcut/r3;

    .line 34
    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/google/android/gms/internal/clearcut/q0;->j()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Lcom/google/android/gms/internal/clearcut/q0;->s()V

    .line 41
    .line 42
    .line 43
    instance-of v3, v1, Lcom/google/android/gms/internal/clearcut/f1;

    .line 44
    .line 45
    invoke-interface {v2}, Lcom/google/android/gms/internal/clearcut/q0;->c()V

    .line 46
    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    check-cast v1, Lcom/google/android/gms/internal/clearcut/f1;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/google/android/gms/internal/clearcut/f1;->a:Ljava/util/Map$Entry;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/google/android/gms/internal/clearcut/e1;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/h1;->c()Lcom/google/android/gms/internal/clearcut/x;

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
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/clearcut/f0;->f(ILjava/lang/Object;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->b:Lcom/google/android/gms/internal/clearcut/a3;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/a3;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/c2;->d:Lcom/google/android/gms/internal/clearcut/j0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n0;->b()Z

    move-result p1

    return p1
.end method
