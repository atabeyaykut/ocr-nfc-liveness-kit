.class public abstract Lcc/b;
.super Lcc/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbc/l;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcc/h;-><init>(Lbc/l;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcc/b;->k(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic k(I)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor"

    const/4 v7, 0x0

    if-eq p0, v2, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_3

    const-string v8, "storageManager"

    aput-object v8, v5, v7

    goto :goto_2

    :cond_2
    const-string v8, "classifier"

    aput-object v8, v5, v7

    goto :goto_2

    :cond_3
    aput-object v6, v5, v7

    :goto_2
    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    aput-object v6, v5, v2

    goto :goto_3

    :cond_4
    const-string v6, "getAdditionalNeighboursInSupertypeGraph"

    aput-object v6, v5, v2

    goto :goto_3

    :cond_5
    const-string v6, "getBuiltIns"

    aput-object v6, v5, v2

    :goto_3
    if-eq p0, v2, :cond_7

    if-eq p0, v4, :cond_6

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_4

    :cond_6
    const-string v6, "isSameClassifier"

    aput-object v6, v5, v4

    :cond_7
    :goto_4
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0
.end method


# virtual methods
.method public final c(Lma/g;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lma/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    invoke-virtual {p0}, Lcc/b;->p()Lma/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "first"

    .line 11
    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v0}, Lma/k;->b()Lma/j;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1}, Lma/k;->b()Lma/j;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    if-eqz v0, :cond_7

    .line 40
    .line 41
    if-eqz p1, :cond_7

    .line 42
    .line 43
    instance-of v2, v0, Lma/b0;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    instance-of p1, p1, Lma/b0;

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    instance-of v2, p1, Lma/b0;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    instance-of v2, v0, Lma/e0;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    instance-of v2, p1, Lma/e0;

    .line 60
    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    check-cast v0, Lma/e0;

    .line 64
    .line 65
    invoke-interface {v0}, Lma/e0;->d()Llb/c;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast p1, Lma/e0;

    .line 70
    .line 71
    invoke-interface {p1}, Lma/e0;->d()Llb/c;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    instance-of v2, p1, Lma/e0;

    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_6

    .line 100
    .line 101
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 102
    goto :goto_3

    .line 103
    :cond_6
    invoke-interface {v0}, Lma/j;->b()Lma/j;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {p1}, Lma/j;->b()Lma/j;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    goto :goto_0

    .line 112
    :cond_7
    :goto_2
    const/4 p1, 0x1

    .line 113
    :goto_3
    if-eqz p1, :cond_8

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    :cond_8
    return v1
.end method

.method public final e()Lcc/e0;
    .locals 1

    invoke-virtual {p0}, Lcc/b;->p()Lma/e;

    move-result-object v0

    invoke-static {v0}, Lja/k;->H(Lma/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcc/b;->m()Lja/k;

    move-result-object v0

    invoke-virtual {v0}, Lja/k;->f()Lcc/m0;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 3

    invoke-virtual {p0}, Lcc/b;->p()Lma/e;

    move-result-object v0

    invoke-interface {v0}, Lma/e;->b()Lma/j;

    move-result-object v0

    instance-of v1, v0, Lma/e;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcc/b;->k(I)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v1, Lkc/c;

    invoke-direct {v1}, Lkc/c;-><init>()V

    check-cast v0, Lma/e;

    invoke-interface {v0}, Lma/e;->q()Lcc/m0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkc/c;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lma/e;->P()Lma/e;

    return-object v1
.end method

.method public final m()Lja/k;
    .locals 1

    invoke-virtual {p0}, Lcc/b;->p()Lma/e;

    move-result-object v0

    invoke-static {v0}, Lsb/b;->e(Lma/j;)Lja/k;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcc/b;->k(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic n()Lma/g;
    .locals 1

    invoke-virtual {p0}, Lcc/b;->p()Lma/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract p()Lma/e;
.end method
