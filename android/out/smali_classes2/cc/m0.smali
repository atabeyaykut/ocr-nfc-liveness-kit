.class public abstract Lcc/m0;
.super Lcc/s1;
.source "SourceFile"

# interfaces
.implements Lfc/i;
.implements Lfc/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcc/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic Q0(Z)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/m0;->T0(Z)Lcc/m0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S0(Lcc/a1;)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    move-result-object p1

    return-object p1
.end method

.method public abstract T0(Z)Lcc/m0;
.end method

.method public abstract U0(Lcc/a1;)Lcc/m0;
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcc/e0;->getAnnotations()Lna/h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lna/c;

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    new-array v4, v3, [Ljava/lang/String;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "["

    .line 32
    .line 33
    aput-object v6, v4, v5

    .line 34
    .line 35
    sget-object v6, Lnb/c;->b:Lnb/d;

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-virtual {v6, v1, v8}, Lnb/d;->p(Lna/c;Lna/e;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    aput-object v1, v4, v2

    .line 43
    .line 44
    const-string v1, "] "

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    aput-object v1, v4, v2

    .line 48
    .line 49
    :goto_0
    if-ge v5, v3, :cond_0

    .line 50
    .line 51
    aget-object v1, v4, v5

    .line 52
    .line 53
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/util/Collection;

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    xor-int/2addr v0, v2

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/Iterable;

    .line 84
    .line 85
    const-string v2, ", "

    .line 86
    .line 87
    const-string v3, "<"

    .line 88
    .line 89
    const-string v4, ">"

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    const/16 v6, 0x70

    .line 93
    .line 94
    move-object v1, v7

    .line 95
    invoke-static/range {v0 .. v6}, Lm9/t;->f1(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)V

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0}, Lcc/e0;->N0()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    const-string v0, "?"

    .line 105
    .line 106
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 114
    .line 115
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v0
.end method
