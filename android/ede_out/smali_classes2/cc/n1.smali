.class public final Lcc/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcc/e0;)Lcc/m0;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcc/e0;->P0()Lcc/s1;

    move-result-object v0

    instance-of v1, v0, Lcc/m0;

    if-eqz v1, :cond_0

    check-cast v0, Lcc/m0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is should be simple type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Lcc/m0;Ljava/util/List;Lcc/a1;)Lcc/m0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/m0;",
            "Ljava/util/List<",
            "+",
            "Lcc/i1;",
            ">;",
            "Lcc/a1;",
            ")",
            "Lcc/m0;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newArguments"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "newAttributes"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcc/e0;->L0()Lcc/a1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-ne p2, v0, :cond_0

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcc/e0;->N0()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-static {p2, v0, p1, p0, v1}, Lcc/f0;->f(Lcc/a1;Lcc/c1;Ljava/util/List;ZLdc/f;)Lcc/m0;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static c(Lcc/e0;Ljava/util/List;Lna/h;I)Lcc/e0;
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    and-int/lit8 v0, p3, 0x2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcc/e0;->getAnnotations()Lna/h;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 18
    .line 19
    if-eqz p3, :cond_2

    .line 20
    .line 21
    move-object p3, p1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p3, 0x0

    .line 24
    :goto_0
    const-string v0, "<this>"

    .line 25
    .line 26
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "newArguments"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "newAnnotations"

    .line 35
    .line 36
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "newArgumentsForUpperBound"

    .line 40
    .line 41
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-ne p1, v0, :cond_4

    .line 55
    .line 56
    :cond_3
    invoke-virtual {p0}, Lcc/e0;->getAnnotations()Lna/h;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-ne p2, v0, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p0}, Lcc/e0;->L0()Lcc/a1;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    instance-of v1, p2, Lna/l;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-interface {p2}, Lna/h;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    sget-object p2, Lna/h$a;->a:Lna/h$a$a;

    .line 78
    .line 79
    :cond_5
    invoke-static {v0, p2}, Lc5/v;->H(Lcc/a1;Lna/h;)Lcc/a1;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p0}, Lcc/e0;->P0()Lcc/s1;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    instance-of v0, p0, Lcc/y;

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    check-cast p0, Lcc/y;

    .line 92
    .line 93
    iget-object v0, p0, Lcc/y;->b:Lcc/m0;

    .line 94
    .line 95
    invoke-static {v0, p1, p2}, Lcc/n1;->b(Lcc/m0;Ljava/util/List;Lcc/a1;)Lcc/m0;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p0, p0, Lcc/y;->c:Lcc/m0;

    .line 100
    .line 101
    invoke-static {p0, p3, p2}, Lcc/n1;->b(Lcc/m0;Ljava/util/List;Lcc/a1;)Lcc/m0;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p1, p0}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    instance-of p3, p0, Lcc/m0;

    .line 111
    .line 112
    if-eqz p3, :cond_7

    .line 113
    .line 114
    check-cast p0, Lcc/m0;

    .line 115
    .line 116
    invoke-static {p0, p1, p2}, Lcc/n1;->b(Lcc/m0;Ljava/util/List;Lcc/a1;)Lcc/m0;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    :goto_1
    return-object p0

    .line 121
    :cond_7
    new-instance p0, Lj7/p;

    .line 122
    .line 123
    invoke-direct {p0}, Lj7/p;-><init>()V

    .line 124
    .line 125
    .line 126
    throw p0
.end method

.method public static synthetic d(Lcc/m0;Ljava/util/List;Lcc/a1;I)Lcc/m0;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcc/e0;->L0()Lcc/a1;

    move-result-object p2

    :cond_1
    invoke-static {p0, p1, p2}, Lcc/n1;->b(Lcc/m0;Ljava/util/List;Lcc/a1;)Lcc/m0;

    move-result-object p0

    return-object p0
.end method
