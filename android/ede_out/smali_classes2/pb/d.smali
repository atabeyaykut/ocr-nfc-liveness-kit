.class public final Lpb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcc/i1;Lma/w0;)Lcc/i1;
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p0}, Lcc/i1;->b()Lcc/t1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcc/t1;->c:Lcc/t1;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {p1}, Lma/w0;->I()Lcc/t1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p0}, Lcc/i1;->b()Lcc/t1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Lcc/i1;->c()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Lcc/k1;

    .line 29
    .line 30
    new-instance v0, Lcc/i0;

    .line 31
    .line 32
    sget-object v1, Lbc/c;->e:Lbc/c$a;

    .line 33
    .line 34
    const-string v2, "NO_LOCKS"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lpb/d$a;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lpb/d$a;-><init>(Lcc/i1;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lcc/i0;-><init>(Lbc/l;Lx9/a;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Lcc/k1;-><init>(Lcc/e0;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Lcc/k1;

    .line 52
    .line 53
    invoke-interface {p0}, Lcc/i1;->getType()Lcc/e0;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {p1, p0}, Lcc/k1;-><init>(Lcc/e0;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-object p1

    .line 61
    :cond_2
    new-instance p1, Lcc/k1;

    .line 62
    .line 63
    new-instance v0, Lpb/a;

    .line 64
    .line 65
    new-instance v1, Lpb/c;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lpb/c;-><init>(Lcc/i1;)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lcc/a1;->b:Lcc/a1$a;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object v2, Lcc/a1;->c:Lcc/a1;

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-direct {v0, p0, v1, v3, v2}, Lpb/a;-><init>(Lcc/i1;Lpb/b;ZLcc/a1;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v0}, Lcc/k1;-><init>(Lcc/e0;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static b(Lcc/l1;)Lcc/l1;
    .locals 9

    .line 1
    instance-of v0, p0, Lcc/b0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p0, Lcc/b0;

    .line 7
    .line 8
    iget-object v0, p0, Lcc/b0;->c:[Lcc/i1;

    .line 9
    .line 10
    const-string v2, "<this>"

    .line 11
    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "other"

    .line 16
    .line 17
    iget-object p0, p0, Lcc/b0;->b:[Lma/w0;

    .line 18
    .line 19
    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    array-length v2, v0

    .line 23
    array-length v3, p0

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    if-ge v5, v2, :cond_0

    .line 36
    .line 37
    aget-object v6, v0, v5

    .line 38
    .line 39
    aget-object v7, p0, v5

    .line 40
    .line 41
    new-instance v8, Ll9/g;

    .line 42
    .line 43
    invoke-direct {v8, v6, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ll9/g;

    .line 76
    .line 77
    iget-object v5, v3, Ll9/g;->a:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v5, Lcc/i1;

    .line 80
    .line 81
    iget-object v3, v3, Ll9/g;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v3, Lma/w0;

    .line 84
    .line 85
    invoke-static {v5, v3}, Lpb/d;->a(Lcc/i1;Lma/w0;)Lcc/i1;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    new-array v2, v4, [Lcc/i1;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, [Lcc/i1;

    .line 100
    .line 101
    new-instance v2, Lcc/b0;

    .line 102
    .line 103
    invoke-direct {v2, p0, v0, v1}, Lcc/b0;-><init>([Lma/w0;[Lcc/i1;Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    new-instance v2, Lpb/e;

    .line 108
    .line 109
    invoke-direct {v2, p0, v1}, Lpb/e;-><init>(Lcc/l1;Z)V

    .line 110
    .line 111
    .line 112
    :goto_2
    return-object v2
.end method
