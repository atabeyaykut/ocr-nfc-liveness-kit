.class public final Lyb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyb/d<",
        "Lna/c;",
        "Lqb/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lxb/a;

.field public final b:Lyb/f;


# direct methods
.method public constructor <init>(Lma/b0;Lma/d0;Lzb/a;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyb/e;->a:Lxb/a;

    new-instance p3, Lyb/f;

    invoke-direct {p3, p1, p2}, Lyb/f;-><init>(Lma/b0;Lma/d0;)V

    iput-object p3, p0, Lyb/e;->b:Lyb/f;

    return-void
.end method


# virtual methods
.method public final a(Lyb/g0$a;Lgb/f;)Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "proto"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lyb/e;->a:Lxb/a;

    .line 12
    .line 13
    iget-object v0, v0, Lxb/a;->h:Lmb/h$e;

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Ljava/util/List;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    sget-object p2, Lm9/v;->a:Lm9/v;

    .line 24
    .line 25
    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lgb/a;

    .line 51
    .line 52
    iget-object v2, p0, Lyb/e;->b:Lyb/f;

    .line 53
    .line 54
    iget-object v3, p1, Lyb/g0;->a:Lib/c;

    .line 55
    .line 56
    invoke-virtual {v2, v1, v3}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-object v0
.end method

.method public final b(Lyb/g0;Lmb/p;Lyb/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lmb/p;",
            "Lyb/c;",
            ")",
            "Ljava/util/List<",
            "Lna/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "kind"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p2, Lgb/c;

    .line 12
    .line 13
    iget-object v1, p0, Lyb/e;->a:Lxb/a;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p2, Lgb/c;

    .line 18
    .line 19
    iget-object p3, v1, Lxb/a;->b:Lmb/h$e;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of v0, p2, Lgb/h;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p2, Lgb/h;

    .line 27
    .line 28
    iget-object p3, v1, Lxb/a;->d:Lmb/h$e;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v0, p2, Lgb/m;

    .line 32
    .line 33
    if-eqz v0, :cond_7

    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    const/4 v0, 0x1

    .line 40
    if-eq p3, v0, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    if-eq p3, v0, :cond_3

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    if-ne p3, v0, :cond_2

    .line 47
    .line 48
    check-cast p2, Lgb/m;

    .line 49
    .line 50
    iget-object p3, v1, Lxb/a;->g:Lmb/h$e;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "Unsupported callable kind with property proto"

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    check-cast p2, Lgb/m;

    .line 66
    .line 67
    iget-object p3, v1, Lxb/a;->f:Lmb/h$e;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    check-cast p2, Lgb/m;

    .line 71
    .line 72
    iget-object p3, v1, Lxb/a;->e:Lmb/h$e;

    .line 73
    .line 74
    :goto_0
    invoke-virtual {p2, p3}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Ljava/util/List;

    .line 79
    .line 80
    if-nez p2, :cond_5

    .line 81
    .line 82
    sget-object p2, Lm9/v;->a:Lm9/v;

    .line 83
    .line 84
    :cond_5
    check-cast p2, Ljava/lang/Iterable;

    .line 85
    .line 86
    new-instance p3, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lgb/a;

    .line 110
    .line 111
    iget-object v1, p0, Lyb/e;->b:Lyb/f;

    .line 112
    .line 113
    iget-object v2, p1, Lyb/g0;->a:Lib/c;

    .line 114
    .line 115
    invoke-virtual {v1, v0, v2}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    return-object p3

    .line 124
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v0, "Unknown message: "

    .line 129
    .line 130
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1
.end method

.method public final c(Lyb/g0;Lmb/p;Lyb/c;ILgb/t;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lmb/p;",
            "Lyb/c;",
            "I",
            "Lgb/t;",
            ")",
            "Ljava/util/List<",
            "Lna/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-string p4, "container"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "callableProto"

    .line 7
    .line 8
    invoke-static {p2, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "kind"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "proto"

    .line 17
    .line 18
    invoke-static {p5, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lyb/e;->a:Lxb/a;

    .line 22
    .line 23
    iget-object p2, p2, Lxb/a;->j:Lmb/h$e;

    .line 24
    .line 25
    invoke-virtual {p5, p2}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/util/List;

    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    sget-object p2, Lm9/v;->a:Lm9/v;

    .line 34
    .line 35
    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    .line 36
    .line 37
    new-instance p3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    if-eqz p4, :cond_1

    .line 55
    .line 56
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    check-cast p4, Lgb/a;

    .line 61
    .line 62
    iget-object p5, p0, Lyb/e;->b:Lyb/f;

    .line 63
    .line 64
    iget-object v0, p1, Lyb/g0;->a:Lib/c;

    .line 65
    .line 66
    invoke-virtual {p5, p4, v0}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-object p3
.end method

.method public final d(Lyb/g0;Lgb/m;Lcc/e0;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-string p1, "proto"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final e(Lyb/g0$a;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyb/e;->a:Lxb/a;

    .line 7
    .line 8
    iget-object v0, v0, Lxb/a;->c:Lmb/h$e;

    .line 9
    .line 10
    iget-object v1, p1, Lyb/g0$a;->d:Lgb/b;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/List;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 21
    .line 22
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lgb/a;

    .line 48
    .line 49
    iget-object v3, p0, Lyb/e;->b:Lyb/f;

    .line 50
    .line 51
    iget-object v4, p1, Lyb/g0;->a:Lib/c;

    .line 52
    .line 53
    invoke-virtual {v3, v2, v4}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-object v1
.end method

.method public final f(Lyb/g0;Lmb/p;Lyb/c;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lmb/p;",
            "Lyb/c;",
            ")",
            "Ljava/util/List<",
            "Lna/c;",
            ">;"
        }
    .end annotation

    const-string p1, "proto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1
.end method

.method public final g(Lyb/g0;Lgb/m;Lcc/e0;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyb/e;->a:Lxb/a;

    .line 7
    .line 8
    iget-object v0, v0, Lxb/a;->i:Lmb/h$e;

    .line 9
    .line 10
    invoke-static {p2, v0}, Lib/e;->a(Lmb/h$c;Lmb/h$e;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lgb/a$b$c;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lyb/e;->b:Lyb/f;

    .line 21
    .line 22
    iget-object p1, p1, Lyb/g0;->a:Lib/c;

    .line 23
    .line 24
    invoke-virtual {v0, p3, p2, p1}, Lyb/f;->c(Lcc/e0;Lgb/a$b$c;Lib/c;)Lqb/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public final h(Lyb/g0;Lgb/m;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lgb/m;",
            ")",
            "Ljava/util/List<",
            "Lna/c;",
            ">;"
        }
    .end annotation

    const-string p1, "proto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1
.end method

.method public final i(Lgb/p;Lib/c;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lyb/e;->a:Lxb/a;

    .line 12
    .line 13
    iget-object v0, v0, Lxb/a;->k:Lmb/h$e;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 24
    .line 25
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lgb/a;

    .line 51
    .line 52
    iget-object v2, p0, Lyb/e;->b:Lyb/f;

    .line 53
    .line 54
    invoke-virtual {v2, v1, p2}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method public final j(Lgb/r;Lib/c;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lyb/e;->a:Lxb/a;

    .line 12
    .line 13
    iget-object v0, v0, Lxb/a;->l:Lmb/h$e;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 24
    .line 25
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lgb/a;

    .line 51
    .line 52
    iget-object v2, p0, Lyb/e;->b:Lyb/f;

    .line 53
    .line 54
    invoke-virtual {v2, v1, p2}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method public final k(Lyb/g0;Lgb/m;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lgb/m;",
            ")",
            "Ljava/util/List<",
            "Lna/c;",
            ">;"
        }
    .end annotation

    const-string p1, "proto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1
.end method
