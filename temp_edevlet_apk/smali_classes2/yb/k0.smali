.class public final Lyb/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyb/n;

.field public final b:Lyb/k0;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lbc/h;

.field public final f:Lbc/h;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lma/w0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyb/n;Lyb/k0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/n;",
            "Lyb/k0;",
            "Ljava/util/List<",
            "Lgb/r;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "debugName"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lyb/k0;->a:Lyb/n;

    .line 15
    .line 16
    iput-object p2, p0, Lyb/k0;->b:Lyb/k0;

    .line 17
    .line 18
    iput-object p4, p0, Lyb/k0;->c:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p5, p0, Lyb/k0;->d:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 23
    .line 24
    iget-object p2, p1, Lyb/l;->a:Lbc/l;

    .line 25
    .line 26
    new-instance p4, Lyb/k0$a;

    .line 27
    .line 28
    invoke-direct {p4, p0}, Lyb/k0$a;-><init>(Lyb/k0;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, p4}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lyb/k0;->e:Lbc/h;

    .line 36
    .line 37
    new-instance p2, Lyb/k0$c;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lyb/k0$c;-><init>(Lyb/k0;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lyb/l;->a:Lbc/l;

    .line 43
    .line 44
    invoke-interface {p1, p2}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lyb/k0;->f:Lbc/h;

    .line 49
    .line 50
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    sget-object p1, Lm9/w;->a:Lm9/w;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/4 p3, 0x0

    .line 69
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    if-eqz p4, :cond_1

    .line 74
    .line 75
    add-int/lit8 p4, p3, 0x1

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p5

    .line 81
    check-cast p5, Lgb/r;

    .line 82
    .line 83
    iget v0, p5, Lgb/r;->d:I

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Lac/n;

    .line 90
    .line 91
    iget-object v2, p0, Lyb/k0;->a:Lyb/n;

    .line 92
    .line 93
    invoke-direct {v1, v2, p5, p3}, Lac/n;-><init>(Lyb/n;Lgb/r;I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move p3, p4

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    :goto_1
    iput-object p1, p0, Lyb/k0;->g:Ljava/util/Map;

    .line 102
    .line 103
    return-void
.end method

.method public static final e(Lgb/p;Lyb/k0;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lgb/p;->d:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "argumentList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    iget-object v1, p1, Lyb/k0;->a:Lyb/n;

    .line 11
    .line 12
    iget-object v1, v1, Lyb/n;->d:Lib/g;

    .line 13
    .line 14
    invoke-static {p0, v1}, Lib/f;->a(Lgb/p;Lib/g;)Lgb/p;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-static {p0, p1}, Lyb/k0;->e(Lgb/p;Lyb/k0;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-nez p0, :cond_1

    .line 27
    .line 28
    sget-object p0, Lm9/v;->a:Lm9/v;

    .line 29
    .line 30
    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-static {p0, v0}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static f(Ljava/util/List;Lna/h;Lcc/c1;Lma/j;)Lcc/a1;
    .locals 0

    .line 1
    check-cast p0, Ljava/lang/Iterable;

    .line 2
    .line 3
    new-instance p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Lcc/z0;

    .line 27
    .line 28
    invoke-interface {p3, p1}, Lcc/z0;->a(Lna/h;)Lcc/a1;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ljava/lang/Iterable;

    .line 56
    .line 57
    invoke-static {p2, p0}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    sget-object p1, Lcc/a1;->b:Lcc/a1$a;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lcc/a1$a;->c(Ljava/util/List;)Lcc/a1;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method


# virtual methods
.method public final a(I)Lcc/m0;
    .locals 2

    .line 1
    iget-object v0, p0, Lyb/k0;->a:Lyb/n;

    .line 2
    .line 3
    iget-object v1, v0, Lyb/n;->b:Lib/c;

    .line 4
    .line 5
    invoke-static {v1, p1}, La6/a;->n(Lib/c;I)Llb/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-boolean p1, p1, Llb/b;->c:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Lyb/n;->a:Lyb/l;

    .line 15
    .line 16
    iget-object p1, p1, Lyb/l;->g:Lyb/y;

    .line 17
    .line 18
    invoke-interface {p1}, Lyb/y;->a()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lyb/k0;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lma/w0;
    .locals 2

    iget-object v0, p0, Lyb/k0;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma/w0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lyb/k0;->b:Lyb/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lyb/k0;->c(I)Lma/w0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final d(Lgb/p;Z)Lcc/m0;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "proto"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lgb/p;->q()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x80

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget v2, v1, Lgb/p;->j:I

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget v2, v1, Lgb/p;->c:I

    .line 24
    .line 25
    and-int/2addr v2, v3

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget v2, v1, Lgb/p;->m:I

    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0, v2}, Lyb/k0;->a(I)Lcc/m0;

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgb/p;->q()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v6, 0x2

    .line 43
    iget-object v7, v0, Lyb/k0;->a:Lyb/n;

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    iget v2, v1, Lgb/p;->j:I

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, v0, Lyb/k0;->e:Lbc/h;

    .line 54
    .line 55
    invoke-interface {v3, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lma/g;

    .line 60
    .line 61
    if-nez v2, :cond_d

    .line 62
    .line 63
    iget v2, v1, Lgb/p;->j:I

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_3
    iget v2, v1, Lgb/p;->c:I

    .line 68
    .line 69
    and-int/lit8 v8, v2, 0x20

    .line 70
    .line 71
    const/16 v9, 0x20

    .line 72
    .line 73
    if-ne v8, v9, :cond_4

    .line 74
    .line 75
    const/4 v8, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    const/4 v8, 0x0

    .line 78
    :goto_2
    if-eqz v8, :cond_5

    .line 79
    .line 80
    iget v2, v1, Lgb/p;->k:I

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lyb/k0;->c(I)Lma/w0;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-nez v2, :cond_d

    .line 87
    .line 88
    sget-object v2, Lec/i;->a:Lec/i;

    .line 89
    .line 90
    sget-object v2, Lec/h;->q:Lec/h;

    .line 91
    .line 92
    new-array v3, v6, [Ljava/lang/String;

    .line 93
    .line 94
    iget v6, v1, Lgb/p;->k:I

    .line 95
    .line 96
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    aput-object v6, v3, v5

    .line 101
    .line 102
    iget-object v6, v0, Lyb/k0;->d:Ljava/lang/String;

    .line 103
    .line 104
    aput-object v6, v3, v4

    .line 105
    .line 106
    invoke-static {v2, v3}, Lec/i;->d(Lec/h;[Ljava/lang/String;)Lec/g;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    goto/16 :goto_9

    .line 111
    .line 112
    :cond_5
    and-int/lit8 v8, v2, 0x40

    .line 113
    .line 114
    const/16 v9, 0x40

    .line 115
    .line 116
    if-ne v8, v9, :cond_6

    .line 117
    .line 118
    const/4 v8, 0x1

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    const/4 v8, 0x0

    .line 121
    :goto_3
    if-eqz v8, :cond_a

    .line 122
    .line 123
    iget-object v2, v7, Lyb/n;->b:Lib/c;

    .line 124
    .line 125
    iget v3, v1, Lgb/p;->l:I

    .line 126
    .line 127
    invoke-interface {v2, v3}, Lib/c;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual/range {p0 .. p0}, Lyb/k0;->b()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/Iterable;

    .line 136
    .line 137
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_8

    .line 146
    .line 147
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    move-object v9, v8

    .line 152
    check-cast v9, Lma/w0;

    .line 153
    .line 154
    invoke-interface {v9}, Lma/j;->getName()Llb/f;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-virtual {v9}, Llb/f;->o()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-static {v9, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_7

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_8
    const/4 v8, 0x0

    .line 170
    :goto_4
    move-object v3, v8

    .line 171
    check-cast v3, Lma/w0;

    .line 172
    .line 173
    if-nez v3, :cond_9

    .line 174
    .line 175
    sget-object v3, Lec/i;->a:Lec/i;

    .line 176
    .line 177
    sget-object v3, Lec/h;->r:Lec/h;

    .line 178
    .line 179
    new-array v6, v6, [Ljava/lang/String;

    .line 180
    .line 181
    aput-object v2, v6, v5

    .line 182
    .line 183
    iget-object v2, v7, Lyb/n;->c:Lma/j;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    aput-object v2, v6, v4

    .line 190
    .line 191
    invoke-static {v3, v6}, Lec/i;->d(Lec/h;[Ljava/lang/String;)Lec/g;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    goto :goto_9

    .line 196
    :cond_9
    move-object v2, v3

    .line 197
    goto :goto_8

    .line 198
    :cond_a
    and-int/2addr v2, v3

    .line 199
    if-ne v2, v3, :cond_b

    .line 200
    .line 201
    const/4 v2, 0x1

    .line 202
    goto :goto_5

    .line 203
    :cond_b
    const/4 v2, 0x0

    .line 204
    :goto_5
    if-eqz v2, :cond_e

    .line 205
    .line 206
    iget v2, v1, Lgb/p;->m:I

    .line 207
    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iget-object v3, v0, Lyb/k0;->f:Lbc/h;

    .line 213
    .line 214
    invoke-interface {v3, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lma/g;

    .line 219
    .line 220
    if-nez v2, :cond_d

    .line 221
    .line 222
    iget v2, v1, Lgb/p;->m:I

    .line 223
    .line 224
    :goto_6
    iget-object v3, v7, Lyb/n;->b:Lib/c;

    .line 225
    .line 226
    invoke-static {v3, v2}, La6/a;->n(Lib/c;I)Llb/b;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    new-instance v3, Lyb/m0;

    .line 231
    .line 232
    invoke-direct {v3, v0}, Lyb/m0;-><init>(Lyb/k0;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v3, v1}, Llc/q;->R0(Lx9/l;Ljava/lang/Object;)Llc/h;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    sget-object v6, Lyb/n0;->a:Lyb/n0;

    .line 240
    .line 241
    invoke-static {v3, v6}, Llc/w;->Z0(Llc/h;Lx9/l;)Llc/y;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-static {v3}, Llc/w;->c1(Llc/h;)Ljava/util/ArrayList;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    sget-object v6, Lyb/l0;->a:Lyb/l0;

    .line 250
    .line 251
    invoke-static {v6, v2}, Llc/q;->R0(Lx9/l;Ljava/lang/Object;)Llc/h;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-static {v6}, Llc/w;->T0(Llc/h;)I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-ge v8, v6, :cond_c

    .line 264
    .line 265
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_c
    iget-object v6, v7, Lyb/n;->a:Lyb/l;

    .line 274
    .line 275
    iget-object v6, v6, Lyb/l;->l:Lma/d0;

    .line 276
    .line 277
    invoke-virtual {v6, v2, v3}, Lma/d0;->a(Llb/b;Ljava/util/List;)Lma/e;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    :cond_d
    :goto_8
    invoke-interface {v2}, Lma/g;->i()Lcc/c1;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const-string v3, "classifier.typeConstructor"

    .line 286
    .line 287
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_e
    sget-object v2, Lec/i;->a:Lec/i;

    .line 292
    .line 293
    sget-object v2, Lec/h;->t:Lec/h;

    .line 294
    .line 295
    new-array v3, v5, [Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v2, v3}, Lec/i;->d(Lec/h;[Ljava/lang/String;)Lec/g;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    :goto_9
    invoke-interface {v2}, Lcc/c1;->n()Lma/g;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-static {v3}, Lec/i;->f(Lma/j;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_f

    .line 310
    .line 311
    sget-object v1, Lec/i;->a:Lec/i;

    .line 312
    .line 313
    sget-object v1, Lec/h;->z:Lec/h;

    .line 314
    .line 315
    new-array v3, v4, [Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    aput-object v6, v3, v5

    .line 322
    .line 323
    sget-object v5, Lm9/v;->a:Lm9/v;

    .line 324
    .line 325
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    check-cast v3, [Ljava/lang/String;

    .line 330
    .line 331
    invoke-static {v1, v5, v2, v3}, Lec/i;->e(Lec/h;Ljava/util/List;Lcc/c1;[Ljava/lang/String;)Lec/f;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    return-object v1

    .line 336
    :cond_f
    new-instance v3, Lac/a;

    .line 337
    .line 338
    iget-object v4, v7, Lyb/n;->a:Lyb/l;

    .line 339
    .line 340
    iget-object v4, v4, Lyb/l;->a:Lbc/l;

    .line 341
    .line 342
    new-instance v5, Lyb/k0$b;

    .line 343
    .line 344
    invoke-direct {v5, v1, v0}, Lyb/k0$b;-><init>(Lgb/p;Lyb/k0;)V

    .line 345
    .line 346
    .line 347
    invoke-direct {v3, v4, v5}, Lac/a;-><init>(Lbc/l;Lx9/a;)V

    .line 348
    .line 349
    .line 350
    iget-object v4, v7, Lyb/n;->a:Lyb/l;

    .line 351
    .line 352
    iget-object v5, v4, Lyb/l;->s:Ljava/util/List;

    .line 353
    .line 354
    iget-object v6, v7, Lyb/n;->c:Lma/j;

    .line 355
    .line 356
    invoke-static {v5, v3, v2, v6}, Lyb/k0;->f(Ljava/util/List;Lna/h;Lcc/c1;Lma/j;)Lcc/a1;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    invoke-static {v1, v0}, Lyb/k0;->e(Lgb/p;Lyb/k0;)Ljava/util/ArrayList;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    new-instance v9, Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-static {v8}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    const/4 v10, 0x0

    .line 378
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v11

    .line 382
    iget-object v12, v7, Lyb/n;->d:Lib/g;

    .line 383
    .line 384
    const-string v13, "typeTable"

    .line 385
    .line 386
    if-eqz v11, :cond_1c

    .line 387
    .line 388
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    add-int/lit8 v14, v10, 0x1

    .line 393
    .line 394
    if-ltz v10, :cond_1b

    .line 395
    .line 396
    check-cast v11, Lgb/p$b;

    .line 397
    .line 398
    invoke-interface {v2}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object v15

    .line 402
    move-object/from16 v16, v8

    .line 403
    .line 404
    const-string v8, "constructor.parameters"

    .line 405
    .line 406
    invoke-static {v15, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-static {v10, v15}, Lm9/t;->d1(ILjava/util/List;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    check-cast v8, Lma/w0;

    .line 414
    .line 415
    iget-object v10, v11, Lgb/p$b;->c:Lgb/p$b$c;

    .line 416
    .line 417
    sget-object v15, Lgb/p$b$c;->e:Lgb/p$b$c;

    .line 418
    .line 419
    if-ne v10, v15, :cond_11

    .line 420
    .line 421
    if-nez v8, :cond_10

    .line 422
    .line 423
    new-instance v8, Lcc/r0;

    .line 424
    .line 425
    iget-object v10, v4, Lyb/l;->b:Lma/b0;

    .line 426
    .line 427
    invoke-interface {v10}, Lma/b0;->m()Lja/k;

    .line 428
    .line 429
    .line 430
    move-result-object v10

    .line 431
    invoke-direct {v8, v10}, Lcc/r0;-><init>(Lja/k;)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_f

    .line 435
    .line 436
    :cond_10
    new-instance v10, Lcc/s0;

    .line 437
    .line 438
    invoke-direct {v10, v8}, Lcc/s0;-><init>(Lma/w0;)V

    .line 439
    .line 440
    .line 441
    move-object v8, v10

    .line 442
    goto/16 :goto_f

    .line 443
    .line 444
    :cond_11
    const-string v8, "typeArgumentProto.projection"

    .line 445
    .line 446
    invoke-static {v10, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-eqz v8, :cond_15

    .line 454
    .line 455
    const/4 v15, 0x1

    .line 456
    if-eq v8, v15, :cond_14

    .line 457
    .line 458
    const/4 v15, 0x2

    .line 459
    if-eq v8, v15, :cond_13

    .line 460
    .line 461
    const/4 v1, 0x3

    .line 462
    if-eq v8, v1, :cond_12

    .line 463
    .line 464
    new-instance v1, Lj7/p;

    .line 465
    .line 466
    invoke-direct {v1}, Lj7/p;-><init>()V

    .line 467
    .line 468
    .line 469
    throw v1

    .line 470
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 471
    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    const-string v3, "Only IN, OUT and INV are supported. Actual argument: "

    .line 475
    .line 476
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw v1

    .line 490
    :cond_13
    sget-object v8, Lcc/t1;->c:Lcc/t1;

    .line 491
    .line 492
    goto :goto_b

    .line 493
    :cond_14
    sget-object v8, Lcc/t1;->e:Lcc/t1;

    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_15
    sget-object v8, Lcc/t1;->d:Lcc/t1;

    .line 497
    .line 498
    :goto_b
    invoke-static {v12, v13}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget v10, v11, Lgb/p$b;->b:I

    .line 502
    .line 503
    and-int/lit8 v13, v10, 0x2

    .line 504
    .line 505
    const/4 v15, 0x2

    .line 506
    if-ne v13, v15, :cond_16

    .line 507
    .line 508
    const/4 v13, 0x1

    .line 509
    goto :goto_c

    .line 510
    :cond_16
    const/4 v13, 0x0

    .line 511
    :goto_c
    if-eqz v13, :cond_17

    .line 512
    .line 513
    iget-object v10, v11, Lgb/p$b;->d:Lgb/p;

    .line 514
    .line 515
    goto :goto_e

    .line 516
    :cond_17
    and-int/lit8 v10, v10, 0x4

    .line 517
    .line 518
    const/4 v13, 0x4

    .line 519
    if-ne v10, v13, :cond_18

    .line 520
    .line 521
    const/4 v10, 0x1

    .line 522
    goto :goto_d

    .line 523
    :cond_18
    const/4 v10, 0x0

    .line 524
    :goto_d
    if-eqz v10, :cond_19

    .line 525
    .line 526
    iget v10, v11, Lgb/p$b;->e:I

    .line 527
    .line 528
    invoke-virtual {v12, v10}, Lib/g;->a(I)Lgb/p;

    .line 529
    .line 530
    .line 531
    move-result-object v10

    .line 532
    goto :goto_e

    .line 533
    :cond_19
    const/4 v10, 0x0

    .line 534
    :goto_e
    if-nez v10, :cond_1a

    .line 535
    .line 536
    new-instance v8, Lcc/k1;

    .line 537
    .line 538
    sget-object v10, Lec/h;->E:Lec/h;

    .line 539
    .line 540
    const/4 v12, 0x1

    .line 541
    new-array v12, v12, [Ljava/lang/String;

    .line 542
    .line 543
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v11

    .line 547
    const/4 v13, 0x0

    .line 548
    aput-object v11, v12, v13

    .line 549
    .line 550
    invoke-static {v10, v12}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    .line 551
    .line 552
    .line 553
    move-result-object v10

    .line 554
    invoke-direct {v8, v10}, Lcc/k1;-><init>(Lcc/e0;)V

    .line 555
    .line 556
    .line 557
    goto :goto_f

    .line 558
    :cond_1a
    new-instance v11, Lcc/k1;

    .line 559
    .line 560
    invoke-virtual {v0, v10}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 561
    .line 562
    .line 563
    move-result-object v10

    .line 564
    invoke-direct {v11, v10, v8}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 565
    .line 566
    .line 567
    move-object v8, v11

    .line 568
    :goto_f
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move v10, v14

    .line 572
    move-object/from16 v8, v16

    .line 573
    .line 574
    goto/16 :goto_a

    .line 575
    .line 576
    :cond_1b
    invoke-static {}, Lb8/f;->k0()V

    .line 577
    .line 578
    .line 579
    const/4 v1, 0x0

    .line 580
    throw v1

    .line 581
    :cond_1c
    invoke-static {v9}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 582
    .line 583
    .line 584
    move-result-object v8

    .line 585
    invoke-interface {v2}, Lcc/c1;->n()Lma/g;

    .line 586
    .line 587
    .line 588
    move-result-object v9

    .line 589
    if-eqz p2, :cond_1f

    .line 590
    .line 591
    instance-of v10, v9, Lma/v0;

    .line 592
    .line 593
    if-eqz v10, :cond_1f

    .line 594
    .line 595
    sget v5, Lcc/f0;->a:I

    .line 596
    .line 597
    check-cast v9, Lma/v0;

    .line 598
    .line 599
    invoke-static {v9, v8}, Lcc/f0;->b(Lma/v0;Ljava/util/List;)Lcc/m0;

    .line 600
    .line 601
    .line 602
    move-result-object v5

    .line 603
    iget-object v8, v4, Lyb/l;->s:Ljava/util/List;

    .line 604
    .line 605
    invoke-virtual {v5}, Lcc/e0;->getAnnotations()Lna/h;

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    invoke-static {v3, v9}, Lm9/t;->k1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    invoke-static {v3}, Lna/h$a;->a(Ljava/util/List;)Lna/h;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    invoke-static {v8, v3, v2, v6}, Lyb/k0;->f(Ljava/util/List;Lna/h;Lcc/c1;Lma/j;)Lcc/a1;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-static {v5}, Lcc/q1;->g(Lcc/e0;)Z

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    if-nez v3, :cond_1e

    .line 626
    .line 627
    iget-boolean v3, v1, Lgb/p;->e:Z

    .line 628
    .line 629
    if-eqz v3, :cond_1d

    .line 630
    .line 631
    goto :goto_10

    .line 632
    :cond_1d
    const/4 v3, 0x0

    .line 633
    goto :goto_11

    .line 634
    :cond_1e
    :goto_10
    const/4 v3, 0x1

    .line 635
    :goto_11
    invoke-virtual {v5, v3}, Lcc/m0;->T0(Z)Lcc/m0;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {v3, v2}, Lcc/m0;->U0(Lcc/a1;)Lcc/m0;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    goto/16 :goto_19

    .line 644
    .line 645
    :cond_1f
    sget-object v3, Lib/b;->a:Lib/b$a;

    .line 646
    .line 647
    iget v9, v1, Lgb/p;->s:I

    .line 648
    .line 649
    const-string v10, "SUSPEND_TYPE.get(proto.flags)"

    .line 650
    .line 651
    invoke-static {v3, v9, v10}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    if-eqz v3, :cond_2e

    .line 656
    .line 657
    iget-boolean v3, v1, Lgb/p;->e:Z

    .line 658
    .line 659
    invoke-interface {v2}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 660
    .line 661
    .line 662
    move-result-object v9

    .line 663
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 664
    .line 665
    .line 666
    move-result v9

    .line 667
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 668
    .line 669
    .line 670
    move-result v10

    .line 671
    sub-int/2addr v9, v10

    .line 672
    if-eqz v9, :cond_21

    .line 673
    .line 674
    const/4 v6, 0x1

    .line 675
    if-eq v9, v6, :cond_20

    .line 676
    .line 677
    goto/16 :goto_17

    .line 678
    .line 679
    :cond_20
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 680
    .line 681
    .line 682
    move-result v9

    .line 683
    sub-int/2addr v9, v6

    .line 684
    if-ltz v9, :cond_2b

    .line 685
    .line 686
    invoke-interface {v2}, Lcc/c1;->m()Lja/k;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    invoke-virtual {v6, v9}, Lja/k;->v(I)Lma/e;

    .line 691
    .line 692
    .line 693
    move-result-object v6

    .line 694
    invoke-interface {v6}, Lma/g;->i()Lcc/c1;

    .line 695
    .line 696
    .line 697
    move-result-object v6

    .line 698
    const-string v9, "functionTypeConstructor.\u2026on(arity).typeConstructor"

    .line 699
    .line 700
    invoke-static {v6, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    const/4 v9, 0x0

    .line 704
    invoke-static {v5, v6, v8, v3, v9}, Lcc/f0;->f(Lcc/a1;Lcc/c1;Ljava/util/List;ZLdc/f;)Lcc/m0;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    goto/16 :goto_18

    .line 709
    .line 710
    :cond_21
    const/4 v9, 0x0

    .line 711
    invoke-static {v5, v2, v8, v3, v9}, Lcc/f0;->f(Lcc/a1;Lcc/c1;Ljava/util/List;ZLdc/f;)Lcc/m0;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    invoke-virtual {v3}, Lcc/e0;->M0()Lcc/c1;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    invoke-interface {v5}, Lcc/c1;->n()Lma/g;

    .line 720
    .line 721
    .line 722
    move-result-object v5

    .line 723
    if-eqz v5, :cond_22

    .line 724
    .line 725
    invoke-static {v5}, Lja/f;->e(Lma/g;)Lka/c;

    .line 726
    .line 727
    .line 728
    move-result-object v5

    .line 729
    goto :goto_12

    .line 730
    :cond_22
    const/4 v5, 0x0

    .line 731
    :goto_12
    sget-object v9, Lka/c;->d:Lka/c;

    .line 732
    .line 733
    if-ne v5, v9, :cond_23

    .line 734
    .line 735
    const/4 v5, 0x1

    .line 736
    goto :goto_13

    .line 737
    :cond_23
    const/4 v5, 0x0

    .line 738
    :goto_13
    if-nez v5, :cond_24

    .line 739
    .line 740
    goto/16 :goto_17

    .line 741
    .line 742
    :cond_24
    invoke-static {v3}, Lja/f;->g(Lcc/e0;)Ljava/util/List;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    invoke-static {v5}, Lm9/t;->j1(Ljava/util/List;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    check-cast v5, Lcc/i1;

    .line 751
    .line 752
    if-eqz v5, :cond_2b

    .line 753
    .line 754
    invoke-interface {v5}, Lcc/i1;->getType()Lcc/e0;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    if-nez v5, :cond_25

    .line 759
    .line 760
    goto/16 :goto_17

    .line 761
    .line 762
    :cond_25
    invoke-virtual {v5}, Lcc/e0;->M0()Lcc/c1;

    .line 763
    .line 764
    .line 765
    move-result-object v9

    .line 766
    invoke-interface {v9}, Lcc/c1;->n()Lma/g;

    .line 767
    .line 768
    .line 769
    move-result-object v9

    .line 770
    if-eqz v9, :cond_26

    .line 771
    .line 772
    invoke-static {v9}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 773
    .line 774
    .line 775
    move-result-object v9

    .line 776
    goto :goto_14

    .line 777
    :cond_26
    const/4 v9, 0x0

    .line 778
    :goto_14
    invoke-virtual {v5}, Lcc/e0;->K0()Ljava/util/List;

    .line 779
    .line 780
    .line 781
    move-result-object v10

    .line 782
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 783
    .line 784
    .line 785
    move-result v10

    .line 786
    const/4 v11, 0x1

    .line 787
    if-ne v10, v11, :cond_2c

    .line 788
    .line 789
    sget-object v10, Lja/o;->f:Llb/c;

    .line 790
    .line 791
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v10

    .line 795
    if-nez v10, :cond_27

    .line 796
    .line 797
    sget-object v10, Lyb/o0;->a:Llb/c;

    .line 798
    .line 799
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result v9

    .line 803
    if-nez v9, :cond_27

    .line 804
    .line 805
    goto/16 :goto_18

    .line 806
    .line 807
    :cond_27
    invoke-virtual {v5}, Lcc/e0;->K0()Ljava/util/List;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    invoke-static {v5}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v5

    .line 815
    check-cast v5, Lcc/i1;

    .line 816
    .line 817
    invoke-interface {v5}, Lcc/i1;->getType()Lcc/e0;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    const-string v9, "continuationArgumentType.arguments.single().type"

    .line 822
    .line 823
    invoke-static {v5, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    instance-of v9, v6, Lma/a;

    .line 827
    .line 828
    if-nez v9, :cond_28

    .line 829
    .line 830
    const/4 v6, 0x0

    .line 831
    :cond_28
    check-cast v6, Lma/a;

    .line 832
    .line 833
    if-eqz v6, :cond_29

    .line 834
    .line 835
    invoke-static {v6}, Lsb/b;->c(Lma/j;)Llb/c;

    .line 836
    .line 837
    .line 838
    move-result-object v6

    .line 839
    goto :goto_15

    .line 840
    :cond_29
    const/4 v6, 0x0

    .line 841
    :goto_15
    sget-object v9, Lyb/j0;->a:Llb/c;

    .line 842
    .line 843
    invoke-static {v6, v9}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    invoke-static {v3}, Lc5/y;->o(Lcc/e0;)Lja/k;

    .line 847
    .line 848
    .line 849
    move-result-object v14

    .line 850
    invoke-virtual {v3}, Lcc/e0;->getAnnotations()Lna/h;

    .line 851
    .line 852
    .line 853
    move-result-object v15

    .line 854
    invoke-static {v3}, Lja/f;->f(Lcc/e0;)Lcc/e0;

    .line 855
    .line 856
    .line 857
    move-result-object v16

    .line 858
    invoke-static {v3}, Lja/f;->d(Lcc/e0;)Ljava/util/List;

    .line 859
    .line 860
    .line 861
    move-result-object v17

    .line 862
    invoke-static {v3}, Lja/f;->g(Lcc/e0;)Ljava/util/List;

    .line 863
    .line 864
    .line 865
    move-result-object v6

    .line 866
    invoke-static {v6}, Lm9/t;->X0(Ljava/util/List;)Ljava/util/List;

    .line 867
    .line 868
    .line 869
    move-result-object v6

    .line 870
    check-cast v6, Ljava/lang/Iterable;

    .line 871
    .line 872
    new-instance v9, Ljava/util/ArrayList;

    .line 873
    .line 874
    invoke-static {v6}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 875
    .line 876
    .line 877
    move-result v10

    .line 878
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 879
    .line 880
    .line 881
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 882
    .line 883
    .line 884
    move-result-object v6

    .line 885
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 886
    .line 887
    .line 888
    move-result v10

    .line 889
    if-eqz v10, :cond_2a

    .line 890
    .line 891
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v10

    .line 895
    check-cast v10, Lcc/i1;

    .line 896
    .line 897
    invoke-interface {v10}, Lcc/i1;->getType()Lcc/e0;

    .line 898
    .line 899
    .line 900
    move-result-object v10

    .line 901
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    goto :goto_16

    .line 905
    :cond_2a
    const/16 v20, 0x1

    .line 906
    .line 907
    move-object/from16 v18, v9

    .line 908
    .line 909
    move-object/from16 v19, v5

    .line 910
    .line 911
    invoke-static/range {v14 .. v20}, Lja/f;->b(Lja/k;Lna/h;Lcc/e0;Ljava/util/List;Ljava/util/ArrayList;Lcc/e0;Z)Lcc/m0;

    .line 912
    .line 913
    .line 914
    move-result-object v5

    .line 915
    invoke-virtual {v3}, Lcc/e0;->N0()Z

    .line 916
    .line 917
    .line 918
    move-result v3

    .line 919
    invoke-virtual {v5, v3}, Lcc/m0;->T0(Z)Lcc/m0;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    goto :goto_18

    .line 924
    :cond_2b
    :goto_17
    const/4 v3, 0x0

    .line 925
    :cond_2c
    :goto_18
    if-nez v3, :cond_2d

    .line 926
    .line 927
    sget-object v3, Lec/i;->a:Lec/i;

    .line 928
    .line 929
    sget-object v3, Lec/h;->s:Lec/h;

    .line 930
    .line 931
    const/4 v5, 0x0

    .line 932
    new-array v5, v5, [Ljava/lang/String;

    .line 933
    .line 934
    invoke-static {v3, v8, v2, v5}, Lec/i;->e(Lec/h;Ljava/util/List;Lcc/c1;[Ljava/lang/String;)Lec/f;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    goto :goto_19

    .line 939
    :cond_2d
    move-object v2, v3

    .line 940
    :goto_19
    const/4 v3, 0x0

    .line 941
    goto :goto_1b

    .line 942
    :cond_2e
    iget-boolean v3, v1, Lgb/p;->e:Z

    .line 943
    .line 944
    const/4 v6, 0x0

    .line 945
    invoke-static {v5, v2, v8, v3, v6}, Lcc/f0;->f(Lcc/a1;Lcc/c1;Ljava/util/List;ZLdc/f;)Lcc/m0;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    sget-object v3, Lib/b;->b:Lib/b$a;

    .line 950
    .line 951
    iget v5, v1, Lgb/p;->s:I

    .line 952
    .line 953
    const-string v8, "DEFINITELY_NOT_NULL_TYPE.get(proto.flags)"

    .line 954
    .line 955
    invoke-static {v3, v5, v8}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 956
    .line 957
    .line 958
    move-result v3

    .line 959
    const/4 v5, 0x1

    .line 960
    if-eqz v3, :cond_30

    .line 961
    .line 962
    invoke-static {v2, v5}, Lcc/q$a;->a(Lcc/s1;Z)Lcc/q;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    if-eqz v3, :cond_2f

    .line 967
    .line 968
    move-object v2, v3

    .line 969
    goto :goto_1a

    .line 970
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 971
    .line 972
    new-instance v3, Ljava/lang/StringBuilder;

    .line 973
    .line 974
    const-string v4, "null DefinitelyNotNullType for \'"

    .line 975
    .line 976
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    const/16 v2, 0x27

    .line 983
    .line 984
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    throw v1

    .line 999
    :cond_30
    :goto_1a
    move-object v3, v6

    .line 1000
    :goto_1b
    invoke-static {v12, v13}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    iget v5, v1, Lgb/p;->c:I

    .line 1004
    .line 1005
    and-int/lit16 v6, v5, 0x400

    .line 1006
    .line 1007
    const/16 v8, 0x400

    .line 1008
    .line 1009
    if-ne v6, v8, :cond_31

    .line 1010
    .line 1011
    const/4 v6, 0x1

    .line 1012
    goto :goto_1c

    .line 1013
    :cond_31
    const/4 v6, 0x0

    .line 1014
    :goto_1c
    if-eqz v6, :cond_32

    .line 1015
    .line 1016
    iget-object v3, v1, Lgb/p;->q:Lgb/p;

    .line 1017
    .line 1018
    goto :goto_1e

    .line 1019
    :cond_32
    const/16 v6, 0x800

    .line 1020
    .line 1021
    and-int/2addr v5, v6

    .line 1022
    if-ne v5, v6, :cond_33

    .line 1023
    .line 1024
    const/4 v5, 0x1

    .line 1025
    goto :goto_1d

    .line 1026
    :cond_33
    const/4 v5, 0x0

    .line 1027
    :goto_1d
    if-eqz v5, :cond_34

    .line 1028
    .line 1029
    iget v3, v1, Lgb/p;->r:I

    .line 1030
    .line 1031
    invoke-virtual {v12, v3}, Lib/g;->a(I)Lgb/p;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v3

    .line 1035
    :cond_34
    :goto_1e
    if-eqz v3, :cond_35

    .line 1036
    .line 1037
    const/4 v5, 0x0

    .line 1038
    invoke-virtual {v0, v3, v5}, Lyb/k0;->d(Lgb/p;Z)Lcc/m0;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v3

    .line 1042
    invoke-static {v2, v3}, Lcc/q0;->c(Lcc/m0;Lcc/m0;)Lcc/m0;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    :cond_35
    invoke-virtual/range {p1 .. p1}, Lgb/p;->q()Z

    .line 1047
    .line 1048
    .line 1049
    move-result v3

    .line 1050
    if-eqz v3, :cond_36

    .line 1051
    .line 1052
    iget-object v3, v7, Lyb/n;->b:Lib/c;

    .line 1053
    .line 1054
    iget v1, v1, Lgb/p;->j:I

    .line 1055
    .line 1056
    invoke-static {v3, v1}, La6/a;->n(Lib/c;I)Llb/b;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    iget-object v3, v4, Lyb/l;->r:Loa/e;

    .line 1061
    .line 1062
    invoke-interface {v3, v1, v2}, Loa/e;->a(Llb/b;Lcc/m0;)Lcc/m0;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    return-object v1

    .line 1067
    :cond_36
    return-object v2
.end method

.method public final g(Lgb/p;)Lcc/e0;
    .locals 9

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lgb/p;->c:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    and-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p0, Lyb/k0;->a:Lyb/n;

    .line 20
    .line 21
    iget-object v1, v0, Lyb/n;->b:Lib/c;

    .line 22
    .line 23
    iget v4, p1, Lgb/p;->f:I

    .line 24
    .line 25
    invoke-interface {v1, v4}, Lib/c;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, p1, v3}, Lyb/k0;->d(Lgb/p;Z)Lcc/m0;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "typeTable"

    .line 34
    .line 35
    iget-object v6, v0, Lyb/n;->d:Lib/g;

    .line 36
    .line 37
    invoke-static {v6, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v5, p1, Lgb/p;->c:I

    .line 41
    .line 42
    and-int/lit8 v7, v5, 0x4

    .line 43
    .line 44
    const/4 v8, 0x4

    .line 45
    if-ne v7, v8, :cond_1

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v7, 0x0

    .line 50
    :goto_1
    if-eqz v7, :cond_2

    .line 51
    .line 52
    iget-object v2, p1, Lgb/p;->g:Lgb/p;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v7, 0x8

    .line 56
    .line 57
    and-int/2addr v5, v7

    .line 58
    if-ne v5, v7, :cond_3

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    :cond_3
    if-eqz v2, :cond_4

    .line 62
    .line 63
    iget v2, p1, Lgb/p;->h:I

    .line 64
    .line 65
    invoke-virtual {v6, v2}, Lib/g;->a(I)Lgb/p;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const/4 v2, 0x0

    .line 71
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2, v3}, Lyb/k0;->d(Lgb/p;Z)Lcc/m0;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 79
    .line 80
    iget-object v0, v0, Lyb/l;->j:Lyb/v;

    .line 81
    .line 82
    invoke-interface {v0, p1, v1, v4, v2}, Lyb/v;->a(Lgb/p;Ljava/lang/String;Lcc/m0;Lcc/m0;)Lcc/e0;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_5
    invoke-virtual {p0, p1, v3}, Lyb/k0;->d(Lgb/p;Z)Lcc/m0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lyb/k0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyb/k0;->b:Lyb/k0;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ". Child of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lyb/k0;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
