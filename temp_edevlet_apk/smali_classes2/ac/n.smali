.class public final Lac/n;
.super Lpa/c;
.source "SourceFile"


# instance fields
.field public final l:Lyb/n;

.field public final m:Lgb/r;

.field public final n:Lac/a;


# direct methods
.method public constructor <init>(Lyb/n;Lgb/r;I)V
    .locals 10

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lyb/n;->a:Lyb/l;

    .line 7
    .line 8
    iget-object v2, v0, Lyb/l;->a:Lbc/l;

    .line 9
    .line 10
    iget-object v3, p1, Lyb/n;->c:Lma/j;

    .line 11
    .line 12
    sget-object v4, Lna/h$a;->a:Lna/h$a$a;

    .line 13
    .line 14
    iget v1, p2, Lgb/r;->e:I

    .line 15
    .line 16
    iget-object v5, p1, Lyb/n;->b:Lib/c;

    .line 17
    .line 18
    invoke-static {v5, v1}, La6/a;->o(Lib/c;I)Llb/f;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    iget-object v1, p2, Lgb/r;->g:Lgb/r$c;

    .line 23
    .line 24
    const-string v6, "proto.variance"

    .line 25
    .line 26
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    if-eq v1, v6, :cond_1

    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    if-ne v1, v6, :cond_0

    .line 40
    .line 41
    sget-object v1, Lcc/t1;->c:Lcc/t1;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lj7/p;

    .line 45
    .line 46
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    sget-object v1, Lcc/t1;->e:Lcc/t1;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    sget-object v1, Lcc/t1;->d:Lcc/t1;

    .line 54
    .line 55
    :goto_0
    move-object v6, v1

    .line 56
    iget-boolean v7, p2, Lgb/r;->f:Z

    .line 57
    .line 58
    sget-object v9, Lma/u0$a;->a:Lma/u0$a;

    .line 59
    .line 60
    move-object v1, p0

    .line 61
    move v8, p3

    .line 62
    invoke-direct/range {v1 .. v9}, Lpa/c;-><init>(Lbc/l;Lma/j;Lna/h;Llb/f;Lcc/t1;ZILma/u0;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lac/n;->l:Lyb/n;

    .line 66
    .line 67
    iput-object p2, p0, Lac/n;->m:Lgb/r;

    .line 68
    .line 69
    new-instance p1, Lac/a;

    .line 70
    .line 71
    new-instance p2, Lac/n$a;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lac/n$a;-><init>(Lac/n;)V

    .line 74
    .line 75
    .line 76
    iget-object p3, v0, Lyb/l;->a:Lbc/l;

    .line 77
    .line 78
    invoke-direct {p1, p3, p2}, Lac/a;-><init>(Lbc/l;Lx9/a;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lac/n;->n:Lac/a;

    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final K0(Lcc/e0;)V
    .locals 2

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "There should be no cycles for deserialized type parameters, but found for: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final L0()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lac/n;->l:Lyb/n;

    .line 2
    .line 3
    iget-object v1, v0, Lyb/n;->d:Lib/g;

    .line 4
    .line 5
    iget-object v2, p0, Lac/n;->m:Lgb/r;

    .line 6
    .line 7
    const-string v3, "<this>"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "typeTable"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v2, Lgb/r;->h:Ljava/util/List;

    .line 18
    .line 19
    move-object v4, v3

    .line 20
    check-cast v4, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    xor-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-nez v3, :cond_1

    .line 33
    .line 34
    iget-object v2, v2, Lgb/r;->j:Ljava/util/List;

    .line 35
    .line 36
    const-string v3, "upperBoundIdList"

    .line 37
    .line 38
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast v2, Ljava/lang/Iterable;

    .line 42
    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/Integer;

    .line 67
    .line 68
    const-string v5, "it"

    .line 69
    .line 70
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {v1, v4}, Lib/g;->a(I)Lgb/p;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-static {p0}, Lsb/b;->e(Lma/j;)Lja/k;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lja/k;->o()Lcc/m0;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    :cond_2
    check-cast v3, Ljava/lang/Iterable;

    .line 105
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Lgb/p;

    .line 130
    .line 131
    iget-object v4, v0, Lyb/n;->h:Lyb/k0;

    .line 132
    .line 133
    invoke-virtual {v4, v3}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    return-object v1
.end method

.method public final getAnnotations()Lna/h;
    .locals 1

    iget-object v0, p0, Lac/n;->n:Lac/a;

    return-object v0
.end method
