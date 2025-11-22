.class public final Lcc/e1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcc/e0;)Lcc/l1;
    .locals 1

    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    invoke-virtual {p1}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcc/e1$a;->b(Lcc/c1;Ljava/util/List;)Lcc/l1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcc/c1;Ljava/util/List;)Lcc/l1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/c1;",
            "Ljava/util/List<",
            "+",
            "Lcc/i1;",
            ">;)",
            "Lcc/l1;"
        }
    .end annotation

    .line 1
    const-string v0, "typeConstructor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "arguments"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "typeConstructor.parameters"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lm9/t;->j1(Ljava/util/List;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lma/w0;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Lma/w0;->l0()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v4, 0x1

    .line 34
    if-ne v2, v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x0

    .line 38
    :goto_0
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-interface {p1}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast p1, Ljava/lang/Iterable;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lma/w0;

    .line 73
    .line 74
    invoke-interface {v1}, Lma/w0;->i()Lcc/c1;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    check-cast p2, Ljava/lang/Iterable;

    .line 83
    .line 84
    invoke-static {v0, p2}, Lm9/t;->A1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lm9/e0;->S0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance p2, Lcc/d1;

    .line 93
    .line 94
    invoke-direct {p2, p1, v3}, Lcc/d1;-><init>(Ljava/util/Map;Z)V

    .line 95
    .line 96
    .line 97
    return-object p2

    .line 98
    :cond_2
    new-instance p1, Lcc/b0;

    .line 99
    .line 100
    check-cast v0, Ljava/util/Collection;

    .line 101
    .line 102
    new-array v1, v3, [Lma/w0;

    .line 103
    .line 104
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, [Lma/w0;

    .line 109
    .line 110
    check-cast p2, Ljava/util/Collection;

    .line 111
    .line 112
    new-array v1, v3, [Lcc/i1;

    .line 113
    .line 114
    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, [Lcc/i1;

    .line 119
    .line 120
    invoke-direct {p1, v0, p2, v3}, Lcc/b0;-><init>([Lma/w0;[Lcc/i1;Z)V

    .line 121
    .line 122
    .line 123
    return-object p1
.end method
