.class public abstract Ldc/e;
.super Lc6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc6/a;-><init>()V

    return-void
.end method

.method public static u(Lcc/m0;)Lcc/m0;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lpb/c;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    check-cast v0, Lpb/c;

    .line 13
    .line 14
    iget-object v1, v0, Lpb/c;->a:Lcc/i1;

    .line 15
    .line 16
    invoke-interface {v1}, Lcc/i1;->b()Lcc/t1;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    sget-object v6, Lcc/t1;->d:Lcc/t1;

    .line 21
    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v1, v4

    .line 30
    :goto_1
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Lcc/i1;->getType()Lcc/e0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcc/e0;->P0()Lcc/s1;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :cond_2
    move-object v8, v4

    .line 43
    iget-object v1, v0, Lpb/c;->b:Ldc/j;

    .line 44
    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lpb/c;->l()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Iterable;

    .line 52
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcc/e0;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcc/e0;->P0()Lcc/s1;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    new-instance v1, Ldc/j;

    .line 87
    .line 88
    const/4 v12, 0x0

    .line 89
    const-string v3, "projection"

    .line 90
    .line 91
    iget-object v10, v0, Lpb/c;->a:Lcc/i1;

    .line 92
    .line 93
    invoke-static {v10, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v11, Ldc/i;

    .line 97
    .line 98
    invoke-direct {v11, v2}, Ldc/i;-><init>(Ljava/util/ArrayList;)V

    .line 99
    .line 100
    .line 101
    const/4 v13, 0x0

    .line 102
    const/16 v14, 0x8

    .line 103
    .line 104
    move-object v9, v1

    .line 105
    invoke-direct/range {v9 .. v14}, Ldc/j;-><init>(Lcc/i1;Ldc/i;Ldc/j;Lma/w0;I)V

    .line 106
    .line 107
    .line 108
    iput-object v1, v0, Lpb/c;->b:Ldc/j;

    .line 109
    .line 110
    :cond_4
    new-instance v1, Ldc/h;

    .line 111
    .line 112
    sget-object v6, Lfc/b;->a:Lfc/b;

    .line 113
    .line 114
    iget-object v7, v0, Lpb/c;->b:Ldc/j;

    .line 115
    .line 116
    invoke-static {v7}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcc/e0;->L0()Lcc/a1;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {p0}, Lcc/e0;->N0()Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    const/16 v11, 0x20

    .line 128
    .line 129
    move-object v5, v1

    .line 130
    invoke-direct/range {v5 .. v11}, Ldc/h;-><init>(Lfc/b;Ldc/j;Lcc/s1;Lcc/a1;ZI)V

    .line 131
    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_5
    instance-of v1, v0, Lqb/r;

    .line 135
    .line 136
    if-nez v1, :cond_b

    .line 137
    .line 138
    instance-of v1, v0, Lcc/c0;

    .line 139
    .line 140
    if-eqz v1, :cond_a

    .line 141
    .line 142
    invoke-virtual {p0}, Lcc/e0;->N0()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_a

    .line 147
    .line 148
    check-cast v0, Lcc/c0;

    .line 149
    .line 150
    iget-object p0, v0, Lcc/c0;->b:Ljava/util/LinkedHashSet;

    .line 151
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-static {p0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_6

    .line 170
    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Lcc/e0;

    .line 176
    .line 177
    invoke-static {v3}, Lc5/y;->x(Lcc/e0;)Lcc/s1;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    goto :goto_3

    .line 186
    :cond_6
    if-nez v3, :cond_7

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_7
    iget-object p0, v0, Lcc/c0;->a:Lcc/e0;

    .line 190
    .line 191
    if-eqz p0, :cond_8

    .line 192
    .line 193
    invoke-static {p0}, Lc5/y;->x(Lcc/e0;)Lcc/s1;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 201
    .line 202
    invoke-direct {p0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 206
    .line 207
    .line 208
    new-instance v1, Lcc/c0;

    .line 209
    .line 210
    invoke-direct {v1, p0, v4}, Lcc/c0;-><init>(Ljava/util/LinkedHashSet;Lcc/e0;)V

    .line 211
    .line 212
    .line 213
    move-object v4, v1

    .line 214
    :goto_4
    if-nez v4, :cond_9

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_9
    move-object v0, v4

    .line 218
    :goto_5
    invoke-virtual {v0}, Lcc/c0;->c()Lcc/m0;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    :cond_a
    return-object p0

    .line 223
    :cond_b
    check-cast v0, Lqb/r;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    new-instance p0, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 231
    .line 232
    .line 233
    throw v4
.end method


# virtual methods
.method public final bridge synthetic q(Lfc/h;)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Ldc/e;->t(Lfc/h;)Lcc/s1;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lfc/h;)Lcc/s1;
    .locals 4

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcc/e0;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    check-cast p1, Lcc/e0;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcc/e0;->P0()Lcc/s1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    instance-of v0, p1, Lcc/m0;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move-object v0, p1

    .line 21
    check-cast v0, Lcc/m0;

    .line 22
    .line 23
    invoke-static {v0}, Ldc/e;->u(Lcc/m0;)Lcc/m0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    instance-of v0, p1, Lcc/y;

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    move-object v0, p1

    .line 33
    check-cast v0, Lcc/y;

    .line 34
    .line 35
    iget-object v1, v0, Lcc/y;->b:Lcc/m0;

    .line 36
    .line 37
    invoke-static {v1}, Ldc/e;->u(Lcc/m0;)Lcc/m0;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, v0, Lcc/y;->c:Lcc/m0;

    .line 42
    .line 43
    invoke-static {v2}, Ldc/e;->u(Lcc/m0;)Lcc/m0;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v0, v0, Lcc/y;->b:Lcc/m0;

    .line 48
    .line 49
    if-ne v1, v0, :cond_2

    .line 50
    .line 51
    if-eq v3, v2, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v0, p1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    invoke-static {v1, v3}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_1
    new-instance v1, Ldc/e$b;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Ldc/e$b;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const-string v2, "<this>"

    .line 66
    .line 67
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "origin"

    .line 71
    .line 72
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lc5/v;->s(Lcc/e0;)Lcc/e0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ldc/e$b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcc/e0;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const/4 p1, 0x0

    .line 89
    :goto_2
    invoke-static {v0, p1}, Lc5/v;->O(Lcc/s1;Lcc/e0;)Lcc/s1;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_4
    new-instance p1, Lj7/p;

    .line 95
    .line 96
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string v0, "Failed requirement."

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method
