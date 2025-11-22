.class public final Lqb/s;
.super Lqb/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqb/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqb/g<",
        "Lqb/s$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Llb/b;I)V
    .locals 1

    new-instance v0, Lqb/f;

    invoke-direct {v0, p1, p2}, Lqb/f;-><init>(Llb/b;I)V

    .line 1
    new-instance p1, Lqb/s$a$b;

    invoke-direct {p1, v0}, Lqb/s$a$b;-><init>(Lqb/f;)V

    .line 2
    invoke-direct {p0, p1}, Lqb/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lqb/f;)V
    .locals 1

    new-instance v0, Lqb/s$a$b;

    invoke-direct {v0, p1}, Lqb/s$a$b;-><init>(Lqb/f;)V

    .line 3
    invoke-direct {p0, v0}, Lqb/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lqb/s$a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lqb/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lma/b0;)Lcc/e0;
    .locals 8

    .line 1
    const-string v0, "module"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcc/a1;->b:Lcc/a1$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcc/a1;->c:Lcc/a1;

    .line 12
    .line 13
    invoke-interface {p1}, Lma/b0;->m()Lja/k;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lja/o$a;->P:Llb/d;

    .line 21
    .line 22
    invoke-virtual {v2}, Llb/d;->h()Llb/c;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lja/k;->j(Llb/c;)Lma/e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcc/k1;

    .line 31
    .line 32
    iget-object v3, p0, Lqb/g;->a:Ljava/lang/Object;

    .line 33
    .line 34
    move-object v4, v3

    .line 35
    check-cast v4, Lqb/s$a;

    .line 36
    .line 37
    instance-of v5, v4, Lqb/s$a$a;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    check-cast v3, Lqb/s$a$a;

    .line 42
    .line 43
    iget-object p1, v3, Lqb/s$a$a;->a:Lcc/e0;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    instance-of v4, v4, Lqb/s$a$b;

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    check-cast v3, Lqb/s$a$b;

    .line 51
    .line 52
    iget-object v3, v3, Lqb/s$a$b;->a:Lqb/f;

    .line 53
    .line 54
    iget-object v4, v3, Lqb/f;->a:Llb/b;

    .line 55
    .line 56
    invoke-static {p1, v4}, Lma/t;->a(Lma/b0;Llb/b;)Lma/e;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const/4 v6, 0x0

    .line 61
    iget v3, v3, Lqb/f;->b:I

    .line 62
    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    sget-object p1, Lec/h;->d:Lec/h;

    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    new-array v5, v5, [Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v4}, Llb/b;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v7, "classId.toString()"

    .line 75
    .line 76
    invoke-static {v4, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    aput-object v4, v5, v6

    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/4 v4, 0x1

    .line 86
    aput-object v3, v5, v4

    .line 87
    .line 88
    invoke-static {p1, v5}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v5}, Lma/e;->q()Lcc/m0;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "descriptor.defaultType"

    .line 98
    .line 99
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4}, Lc5/y;->A(Lcc/e0;)Lcc/s1;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    :goto_0
    if-ge v6, v3, :cond_2

    .line 107
    .line 108
    invoke-interface {p1}, Lma/b0;->m()Lja/k;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5, v4}, Lja/k;->h(Lcc/s1;)Lcc/m0;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    add-int/lit8 v6, v6, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    move-object p1, v4

    .line 120
    :goto_1
    invoke-direct {v2, p1}, Lcc/k1;-><init>(Lcc/e0;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v2}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v0, v1, p1}, Lcc/f0;->e(Lcc/a1;Lma/e;Ljava/util/List;)Lcc/m0;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :cond_3
    new-instance p1, Lj7/p;

    .line 133
    .line 134
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 135
    .line 136
    .line 137
    throw p1
.end method
