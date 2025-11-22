.class public abstract Leb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leb/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "S:",
        "Leb/d$a<",
        "+TA;>;>",
        "Ljava/lang/Object;",
        "Lyb/g<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public final a:Leb/q;


# direct methods
.method public constructor <init>(Lra/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/d;->a:Leb/q;

    return-void
.end method

.method public static synthetic m(Leb/d;Lyb/g0;Leb/v;ZLjava/lang/Boolean;ZI)Ljava/util/List;
    .locals 9

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    const/4 v6, 0x0

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v7, p4

    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v8, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Leb/d;->l(Lyb/g0;Leb/v;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lmb/p;Lib/c;Lib/g;Lyb/c;Z)Leb/v;
    .locals 8

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "kind"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    instance-of v0, p0, Lgb/c;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object p3, Lkb/h;->a:Lmb/f;

    .line 27
    .line 28
    check-cast p0, Lgb/c;

    .line 29
    .line 30
    invoke-static {p0, p1, p2}, Lkb/h;->a(Lgb/c;Lib/c;Lib/g;)Lkb/d$b;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_0
    invoke-static {p0}, Leb/v$a;->b(Lkb/d;)Leb/v;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    instance-of v0, p0, Lgb/h;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    sget-object p3, Lkb/h;->a:Lmb/f;

    .line 48
    .line 49
    check-cast p0, Lgb/h;

    .line 50
    .line 51
    invoke-static {p0, p1, p2}, Lkb/h;->c(Lgb/h;Lib/c;Lib/g;)Lkb/d$b;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-nez p0, :cond_0

    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_2
    instance-of v0, p0, Lgb/m;

    .line 59
    .line 60
    if-eqz v0, :cond_9

    .line 61
    .line 62
    move-object v0, p0

    .line 63
    check-cast v0, Lmb/h$c;

    .line 64
    .line 65
    sget-object v2, Ljb/a;->d:Lmb/h$e;

    .line 66
    .line 67
    const-string v3, "propertySignature"

    .line 68
    .line 69
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v2}, Lib/e;->a(Lmb/h$c;Lmb/h$e;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljb/a$c;

    .line 77
    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    const/4 v2, 0x1

    .line 86
    if-eq p3, v2, :cond_8

    .line 87
    .line 88
    const/4 p0, 0x2

    .line 89
    const/4 p2, 0x0

    .line 90
    if-eq p3, p0, :cond_6

    .line 91
    .line 92
    const/4 p0, 0x3

    .line 93
    if-eq p3, p0, :cond_4

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    iget p0, v0, Ljb/a$c;->b:I

    .line 97
    .line 98
    const/16 p3, 0x8

    .line 99
    .line 100
    and-int/2addr p0, p3

    .line 101
    if-ne p0, p3, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const/4 v2, 0x0

    .line 105
    :goto_0
    if-eqz v2, :cond_9

    .line 106
    .line 107
    iget-object p0, v0, Ljb/a$c;->f:Ljb/a$b;

    .line 108
    .line 109
    const-string p2, "signature.setter"

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    iget p0, v0, Ljb/a$c;->b:I

    .line 113
    .line 114
    const/4 p3, 0x4

    .line 115
    and-int/2addr p0, p3

    .line 116
    if-ne p0, p3, :cond_7

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    const/4 v2, 0x0

    .line 120
    :goto_1
    if-eqz v2, :cond_9

    .line 121
    .line 122
    iget-object p0, v0, Ljb/a$c;->e:Ljb/a$b;

    .line 123
    .line 124
    const-string p2, "signature.getter"

    .line 125
    .line 126
    :goto_2
    invoke-static {p0, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1, p0}, Leb/v$a;->c(Lib/c;Ljb/a$b;)Leb/v;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    goto :goto_3

    .line 134
    :cond_8
    move-object v2, p0

    .line 135
    check-cast v2, Lgb/m;

    .line 136
    .line 137
    const/4 v5, 0x1

    .line 138
    const/4 v6, 0x1

    .line 139
    move-object v3, p1

    .line 140
    move-object v4, p2

    .line 141
    move v7, p4

    .line 142
    invoke-static/range {v2 .. v7}, Leb/f;->a(Lgb/m;Lib/c;Lib/g;ZZZ)Leb/v;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :cond_9
    :goto_3
    return-object v1
.end method


# virtual methods
.method public final a(Lyb/g0$a;Lgb/f;)Ljava/util/List;
    .locals 8

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
    iget p2, p2, Lgb/f;->d:I

    .line 12
    .line 13
    iget-object v0, p1, Lyb/g0;->a:Lib/c;

    .line 14
    .line 15
    invoke-interface {v0, p2}, Lib/c;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p1, Lyb/g0$a;->f:Llb/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Llb/b;->c()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "container as ProtoContai\u2026Class).classId.asString()"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkb/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p2, v0}, Leb/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Leb/v;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/16 v7, 0x3c

    .line 42
    .line 43
    move-object v1, p0

    .line 44
    move-object v2, p1

    .line 45
    invoke-static/range {v1 .. v7}, Leb/d;->m(Leb/d;Lyb/g0;Leb/v;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method public final b(Lyb/g0;Lmb/p;Lyb/c;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lmb/p;",
            "Lyb/c;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
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
    sget-object v0, Lyb/c;->b:Lyb/c;

    .line 12
    .line 13
    if-ne p3, v0, :cond_0

    .line 14
    .line 15
    check-cast p2, Lgb/m;

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Leb/d;->s(Lyb/g0;Lgb/m;I)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iget-object v1, p1, Lyb/g0;->a:Lib/c;

    .line 25
    .line 26
    iget-object v2, p1, Lyb/g0;->b:Lib/g;

    .line 27
    .line 28
    invoke-static {p2, v1, v2, p3, v0}, Leb/d;->n(Lmb/p;Lib/c;Lib/g;Lyb/c;Z)Leb/v;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/16 v9, 0x3c

    .line 41
    .line 42
    move-object v3, p0

    .line 43
    move-object v4, p1

    .line 44
    invoke-static/range {v3 .. v9}, Leb/d;->m(Leb/d;Lyb/g0;Leb/v;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public final c(Lyb/g0;Lmb/p;Lyb/c;ILgb/t;)Ljava/util/List;
    .locals 7
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
            "TA;>;"
        }
    .end annotation

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callableProto"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "kind"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "proto"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p5, p1, Lyb/g0;->a:Lib/c;

    .line 22
    .line 23
    iget-object v0, p1, Lyb/g0;->b:Lib/g;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p2, p5, v0, p3, v1}, Leb/d;->n(Lmb/p;Lib/c;Lib/g;Lyb/c;Z)Leb/v;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    if-eqz p3, :cond_d

    .line 31
    .line 32
    instance-of p5, p2, Lgb/h;

    .line 33
    .line 34
    const/16 v0, 0x40

    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz p5, :cond_4

    .line 40
    .line 41
    check-cast p2, Lgb/h;

    .line 42
    .line 43
    iget p2, p2, Lgb/h;->c:I

    .line 44
    .line 45
    and-int/lit8 p5, p2, 0x20

    .line 46
    .line 47
    if-ne p5, v2, :cond_0

    .line 48
    .line 49
    const/4 p5, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p5, 0x0

    .line 52
    :goto_0
    if-nez p5, :cond_3

    .line 53
    .line 54
    and-int/2addr p2, v0

    .line 55
    if-ne p2, v0, :cond_1

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 p2, 0x0

    .line 60
    :goto_1
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/4 p2, 0x0

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :goto_2
    const/4 p2, 0x1

    .line 66
    :goto_3
    if-eqz p2, :cond_b

    .line 67
    .line 68
    goto :goto_8

    .line 69
    :cond_4
    instance-of p5, p2, Lgb/m;

    .line 70
    .line 71
    if-eqz p5, :cond_9

    .line 72
    .line 73
    check-cast p2, Lgb/m;

    .line 74
    .line 75
    iget p2, p2, Lgb/m;->c:I

    .line 76
    .line 77
    and-int/lit8 p5, p2, 0x20

    .line 78
    .line 79
    if-ne p5, v2, :cond_5

    .line 80
    .line 81
    const/4 p5, 0x1

    .line 82
    goto :goto_4

    .line 83
    :cond_5
    const/4 p5, 0x0

    .line 84
    :goto_4
    if-nez p5, :cond_8

    .line 85
    .line 86
    and-int/2addr p2, v0

    .line 87
    if-ne p2, v0, :cond_6

    .line 88
    .line 89
    const/4 p2, 0x1

    .line 90
    goto :goto_5

    .line 91
    :cond_6
    const/4 p2, 0x0

    .line 92
    :goto_5
    if-eqz p2, :cond_7

    .line 93
    .line 94
    goto :goto_6

    .line 95
    :cond_7
    const/4 p2, 0x0

    .line 96
    goto :goto_7

    .line 97
    :cond_8
    :goto_6
    const/4 p2, 0x1

    .line 98
    :goto_7
    if-eqz p2, :cond_b

    .line 99
    .line 100
    goto :goto_8

    .line 101
    :cond_9
    instance-of p5, p2, Lgb/c;

    .line 102
    .line 103
    if-eqz p5, :cond_c

    .line 104
    .line 105
    move-object p2, p1

    .line 106
    check-cast p2, Lyb/g0$a;

    .line 107
    .line 108
    sget-object p5, Lgb/b$c;->d:Lgb/b$c;

    .line 109
    .line 110
    iget-object v0, p2, Lyb/g0$a;->g:Lgb/b$c;

    .line 111
    .line 112
    if-ne v0, p5, :cond_a

    .line 113
    .line 114
    const/4 v1, 0x2

    .line 115
    goto :goto_9

    .line 116
    :cond_a
    iget-boolean p2, p2, Lyb/g0$a;->h:Z

    .line 117
    .line 118
    if-eqz p2, :cond_b

    .line 119
    .line 120
    :goto_8
    const/4 v1, 0x1

    .line 121
    :cond_b
    :goto_9
    add-int/2addr p4, v1

    .line 122
    invoke-static {p3, p4}, Leb/v$a;->e(Leb/v;I)Leb/v;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const/4 v3, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    const/16 v6, 0x3c

    .line 130
    .line 131
    move-object v0, p0

    .line 132
    move-object v1, p1

    .line 133
    invoke-static/range {v0 .. v6}, Leb/d;->m(Leb/d;Lyb/g0;Leb/v;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 139
    .line 140
    new-instance p3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string p4, "Unsupported message: "

    .line 143
    .line 144
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_d
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 163
    .line 164
    return-object p1
.end method

.method public final e(Lyb/g0$a;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lyb/g0;->c:Lma/r0;

    .line 7
    .line 8
    instance-of v1, v0, Leb/u;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Leb/u;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v2

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Leb/u;->b:Leb/s;

    .line 20
    .line 21
    :cond_1
    if-eqz v2, :cond_2

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Leb/e;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Leb/e;-><init>(Leb/d;Ljava/util/ArrayList;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v0}, Leb/s;->b(Leb/s$c;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Class for loading annotations is not found: "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lyb/g0$a;->a()Llb/c;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public final f(Lyb/g0;Lmb/p;Lyb/c;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lmb/p;",
            "Lyb/c;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
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
    iget-object v0, p1, Lyb/g0;->a:Lib/c;

    .line 12
    .line 13
    iget-object v1, p1, Lyb/g0;->b:Lib/g;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p2, v0, v1, p3, v2}, Leb/d;->n(Lmb/p;Lib/c;Lib/g;Lyb/c;Z)Leb/v;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-static {p2, v2}, Leb/v$a;->e(Leb/v;I)Leb/v;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/16 v9, 0x3c

    .line 30
    .line 31
    move-object v3, p0

    .line 32
    move-object v4, p1

    .line 33
    invoke-static/range {v3 .. v9}, Leb/d;->m(Leb/d;Lyb/g0;Leb/v;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_0
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 39
    .line 40
    return-object p1
.end method

.method public final h(Lyb/g0;Lgb/m;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lgb/m;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Leb/d;->s(Lyb/g0;Lgb/m;I)Ljava/util/List;

    move-result-object p1

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
    sget-object v0, Ljb/a;->f:Lmb/h$e;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "proto.getExtension(JvmProtoBuf.typeAnnotation)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lgb/a;

    .line 48
    .line 49
    const-string v2, "it"

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v2, p0

    .line 55
    check-cast v2, Leb/h;

    .line 56
    .line 57
    iget-object v2, v2, Leb/h;->e:Lyb/f;

    .line 58
    .line 59
    invoke-virtual {v2, v1, p2}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
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
    sget-object v0, Ljb/a;->h:Lmb/h$e;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "proto.getExtension(JvmPr\u2026.typeParameterAnnotation)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lgb/a;

    .line 48
    .line 49
    const-string v2, "it"

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v2, p0

    .line 55
    check-cast v2, Leb/h;

    .line 56
    .line 57
    iget-object v2, v2, Leb/h;->e:Lyb/f;

    .line 58
    .line 59
    invoke-virtual {v2, v1, p2}, Lyb/f;->a(Lgb/a;Lib/c;)Lna/d;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-object v0
.end method

.method public final k(Lyb/g0;Lgb/m;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lgb/m;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Leb/d;->s(Lyb/g0;Lgb/m;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lyb/g0;Leb/v;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Leb/v;",
            "ZZ",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p3

    .line 4
    move v3, p4

    .line 5
    move-object v4, p5

    .line 6
    move v5, p6

    .line 7
    invoke-virtual/range {v0 .. v5}, Leb/d;->o(Lyb/g0;ZZLjava/lang/Boolean;Z)Leb/s;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-nez p3, :cond_2

    .line 12
    .line 13
    instance-of p3, p1, Lyb/g0$a;

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    check-cast p1, Lyb/g0$a;

    .line 19
    .line 20
    iget-object p1, p1, Lyb/g0;->c:Lma/r0;

    .line 21
    .line 22
    instance-of p3, p1, Leb/u;

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    check-cast p1, Leb/u;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, p4

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p3, p1, Leb/u;->b:Leb/s;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object p3, p4

    .line 36
    :cond_2
    :goto_1
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 37
    .line 38
    if-nez p3, :cond_3

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_3
    move-object p4, p0

    .line 42
    check-cast p4, Leb/a;

    .line 43
    .line 44
    iget-object p4, p4, Leb/a;->b:Lbc/g;

    .line 45
    .line 46
    check-cast p4, Lbc/c$k;

    .line 47
    .line 48
    invoke-virtual {p4, p3}, Lbc/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Leb/a$a;

    .line 53
    .line 54
    iget-object p3, p3, Leb/a$a;->a:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Ljava/util/List;

    .line 61
    .line 62
    if-nez p2, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move-object p1, p2

    .line 66
    :goto_2
    return-object p1
.end method

.method public final o(Lyb/g0;ZZLjava/lang/Boolean;Z)Leb/s;
    .locals 5

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lgb/b$c;->c:Lgb/b$c;

    .line 7
    .line 8
    iget-object v1, p0, Leb/d;->a:Leb/q;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p1, Lyb/g0;->c:Lma/r0;

    .line 12
    .line 13
    if-eqz p2, :cond_4

    .line 14
    .line 15
    if-eqz p4, :cond_3

    .line 16
    .line 17
    instance-of p2, p1, Lyb/g0$a;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    move-object p2, p1

    .line 22
    check-cast p2, Lyb/g0$a;

    .line 23
    .line 24
    iget-object v4, p2, Lyb/g0$a;->g:Lgb/b$c;

    .line 25
    .line 26
    if-ne v4, v0, :cond_0

    .line 27
    .line 28
    const-string p1, "DefaultImpls"

    .line 29
    .line 30
    invoke-static {p1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p2, Lyb/g0$a;->f:Llb/b;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Llb/b;->d(Llb/f;)Llb/b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    instance-of p2, p1, Lyb/g0$b;

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    instance-of p2, v3, Leb/n;

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    move-object p2, v3

    .line 56
    check-cast p2, Leb/n;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object p2, v2

    .line 60
    :goto_0
    if-eqz p2, :cond_2

    .line 61
    .line 62
    iget-object p2, p2, Leb/n;->c:Ltb/b;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object p2, v2

    .line 66
    :goto_1
    if-eqz p2, :cond_4

    .line 67
    .line 68
    new-instance p1, Llb/c;

    .line 69
    .line 70
    invoke-virtual {p2}, Ltb/b;->e()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string p3, "facadeClassName.internalName"

    .line 75
    .line 76
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/16 p3, 0x2f

    .line 80
    .line 81
    const/16 p4, 0x2e

    .line 82
    .line 83
    invoke-static {p2, p3, p4}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Llb/b;->l(Llb/c;)Llb/b;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_2
    invoke-static {v1, p1}, Leb/r;->a(Leb/q;Llb/b;)Leb/s;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string p3, "isConst should not be null for property (container="

    .line 102
    .line 103
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/16 p1, 0x29

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p2

    .line 128
    :cond_4
    if-eqz p3, :cond_8

    .line 129
    .line 130
    instance-of p2, p1, Lyb/g0$a;

    .line 131
    .line 132
    if-eqz p2, :cond_8

    .line 133
    .line 134
    move-object p2, p1

    .line 135
    check-cast p2, Lyb/g0$a;

    .line 136
    .line 137
    sget-object p3, Lgb/b$c;->f:Lgb/b$c;

    .line 138
    .line 139
    iget-object p4, p2, Lyb/g0$a;->g:Lgb/b$c;

    .line 140
    .line 141
    if-ne p4, p3, :cond_8

    .line 142
    .line 143
    iget-object p2, p2, Lyb/g0$a;->e:Lyb/g0$a;

    .line 144
    .line 145
    if-eqz p2, :cond_8

    .line 146
    .line 147
    sget-object p3, Lgb/b$c;->b:Lgb/b$c;

    .line 148
    .line 149
    iget-object p4, p2, Lyb/g0$a;->g:Lgb/b$c;

    .line 150
    .line 151
    if-eq p4, p3, :cond_5

    .line 152
    .line 153
    sget-object p3, Lgb/b$c;->d:Lgb/b$c;

    .line 154
    .line 155
    if-eq p4, p3, :cond_5

    .line 156
    .line 157
    if-eqz p5, :cond_8

    .line 158
    .line 159
    if-eq p4, v0, :cond_5

    .line 160
    .line 161
    sget-object p3, Lgb/b$c;->e:Lgb/b$c;

    .line 162
    .line 163
    if-ne p4, p3, :cond_8

    .line 164
    .line 165
    :cond_5
    iget-object p1, p2, Lyb/g0;->c:Lma/r0;

    .line 166
    .line 167
    instance-of p2, p1, Leb/u;

    .line 168
    .line 169
    if-eqz p2, :cond_6

    .line 170
    .line 171
    check-cast p1, Leb/u;

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    move-object p1, v2

    .line 175
    :goto_3
    if-eqz p1, :cond_7

    .line 176
    .line 177
    iget-object v2, p1, Leb/u;->b:Leb/s;

    .line 178
    .line 179
    :cond_7
    return-object v2

    .line 180
    :cond_8
    instance-of p1, p1, Lyb/g0$b;

    .line 181
    .line 182
    if-eqz p1, :cond_a

    .line 183
    .line 184
    instance-of p1, v3, Leb/n;

    .line 185
    .line 186
    if-eqz p1, :cond_a

    .line 187
    .line 188
    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource"

    .line 189
    .line 190
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    check-cast v3, Leb/n;

    .line 194
    .line 195
    iget-object p1, v3, Leb/n;->d:Leb/s;

    .line 196
    .line 197
    if-nez p1, :cond_9

    .line 198
    .line 199
    invoke-virtual {v3}, Leb/n;->d()Llb/b;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {v1, p1}, Leb/r;->a(Leb/q;Llb/b;)Leb/s;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :cond_9
    return-object p1

    .line 208
    :cond_a
    return-object v2
.end method

.method public final p(Llb/b;)Z
    .locals 2

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Llb/b;->g()Llb/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Llb/b;->j()Llb/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Container"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Leb/d;->a:Leb/q;

    .line 30
    .line 31
    invoke-static {v0, p1}, Leb/r;->a(Leb/q;Llb/b;)Leb/s;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    sget-object v0, Lia/b;->a:Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    new-instance v0, Lkotlin/jvm/internal/t;

    .line 40
    .line 41
    invoke-direct {v0}, Lkotlin/jvm/internal/t;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lia/a;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lia/a;-><init>(Lkotlin/jvm/internal/t;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v1}, Leb/s;->b(Leb/s$c;)V

    .line 50
    .line 51
    .line 52
    iget-boolean p1, v0, Lkotlin/jvm/internal/t;->a:Z

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 59
    :goto_1
    return p1
.end method

.method public abstract q(Llb/b;Lma/r0;Ljava/util/List;)Leb/i;
.end method

.method public final r(Llb/b;Lra/b;Ljava/util/List;)Leb/i;
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lia/b;->a:Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Leb/d;->q(Llb/b;Lma/r0;Ljava/util/List;)Leb/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final s(Lyb/g0;Lgb/m;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lgb/m;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .line 1
    sget-object v2, Lib/b;->A:Lib/b$a;

    .line 2
    .line 3
    iget v4, p2, Lgb/m;->d:I

    .line 4
    .line 5
    const-string v5, "IS_CONST.get(proto.flags)"

    .line 6
    .line 7
    invoke-static {v2, v4, v5}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {p2}, Lkb/h;->d(Lgb/m;)Z

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    sget-object v10, Lm9/v;->a:Lm9/v;

    .line 16
    .line 17
    const/4 v11, 0x1

    .line 18
    if-ne p3, v11, :cond_1

    .line 19
    .line 20
    iget-object v4, p1, Lyb/g0;->a:Lib/c;

    .line 21
    .line 22
    iget-object v5, p1, Lyb/g0;->b:Lib/g;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x1

    .line 26
    const/16 v8, 0x28

    .line 27
    .line 28
    move-object v3, p2

    .line 29
    invoke-static/range {v3 .. v8}, Leb/f;->b(Lgb/m;Lib/c;Lib/g;ZZI)Leb/v;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    return-object v10

    .line 36
    :cond_0
    const/4 v4, 0x1

    .line 37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/16 v6, 0x8

    .line 42
    .line 43
    move-object v0, p0

    .line 44
    move-object v1, p1

    .line 45
    move-object v2, v3

    .line 46
    move v3, v4

    .line 47
    move-object v4, v5

    .line 48
    move v5, v9

    .line 49
    invoke-static/range {v0 .. v6}, Leb/d;->m(Leb/d;Lyb/g0;Leb/v;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_1
    iget-object v4, p1, Lyb/g0;->a:Lib/c;

    .line 55
    .line 56
    iget-object v5, p1, Lyb/g0;->b:Lib/g;

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    const/4 v7, 0x0

    .line 60
    const/16 v8, 0x30

    .line 61
    .line 62
    move-object v3, p2

    .line 63
    invoke-static/range {v3 .. v8}, Leb/f;->b(Lgb/m;Lib/c;Lib/g;ZZI)Leb/v;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    return-object v10

    .line 70
    :cond_2
    iget-object v4, v3, Leb/v;->a:Ljava/lang/String;

    .line 71
    .line 72
    const-string v5, "$delegate"

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-static {v4, v5, v6}, Lmc/n;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const/4 v5, 0x3

    .line 80
    if-ne p3, v5, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/4 v11, 0x0

    .line 84
    :goto_0
    if-eq v4, v11, :cond_4

    .line 85
    .line 86
    return-object v10

    .line 87
    :cond_4
    const/4 v4, 0x1

    .line 88
    const/4 v5, 0x1

    .line 89
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    move-object v0, p0

    .line 94
    move-object v1, p1

    .line 95
    move-object v2, v3

    .line 96
    move v3, v4

    .line 97
    move v4, v5

    .line 98
    move-object v5, v6

    .line 99
    move v6, v9

    .line 100
    invoke-virtual/range {v0 .. v6}, Leb/d;->l(Lyb/g0;Leb/v;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0
.end method
