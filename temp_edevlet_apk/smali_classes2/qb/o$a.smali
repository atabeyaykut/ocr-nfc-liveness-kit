.class public final Lqb/o$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqb/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "Lcc/m0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lqb/o;


# direct methods
.method public constructor <init>(Lqb/o;)V
    .locals 0

    iput-object p1, p0, Lqb/o$a;->a:Lqb/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lcc/m0;

    .line 3
    .line 4
    iget-object v2, p0, Lqb/o$a;->a:Lqb/o;

    .line 5
    .line 6
    invoke-virtual {v2}, Lqb/o;->m()Lja/k;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "Comparable"

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Lja/k;->k(Ljava/lang/String;)Lma/e;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v3}, Lma/e;->q()Lcc/m0;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "builtIns.comparable.defaultType"

    .line 21
    .line 22
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lcc/k1;

    .line 26
    .line 27
    sget-object v5, Lcc/t1;->d:Lcc/t1;

    .line 28
    .line 29
    iget-object v6, v2, Lqb/o;->d:Lcc/m0;

    .line 30
    .line 31
    invoke-direct {v4, v6, v5}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v4}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x2

    .line 40
    invoke-static {v3, v4, v5, v6}, Lcc/n1;->d(Lcc/m0;Ljava/util/List;Lcc/a1;I)Lcc/m0;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object v3, v1, v4

    .line 46
    .line 47
    invoke-static {v1}, Lb8/f;->Y([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v3, v2, Lqb/o;->b:Lma/b0;

    .line 52
    .line 53
    const-string v7, "<this>"

    .line 54
    .line 55
    invoke-static {v3, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v7, 0x4

    .line 59
    new-array v7, v7, [Lcc/m0;

    .line 60
    .line 61
    invoke-interface {v3}, Lma/b0;->m()Lja/k;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-object v9, Lja/l;->k:Lja/l;

    .line 69
    .line 70
    invoke-virtual {v8, v9}, Lja/k;->s(Lja/l;)Lcc/m0;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    if-eqz v8, :cond_8

    .line 75
    .line 76
    aput-object v8, v7, v4

    .line 77
    .line 78
    invoke-interface {v3}, Lma/b0;->m()Lja/k;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v9, Lja/l;->m:Lja/l;

    .line 86
    .line 87
    invoke-virtual {v8, v9}, Lja/k;->s(Lja/l;)Lcc/m0;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    if-eqz v8, :cond_7

    .line 92
    .line 93
    aput-object v8, v7, v0

    .line 94
    .line 95
    invoke-interface {v3}, Lma/b0;->m()Lja/k;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v9, Lja/l;->h:Lja/l;

    .line 103
    .line 104
    invoke-virtual {v8, v9}, Lja/k;->s(Lja/l;)Lcc/m0;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    if-eqz v8, :cond_6

    .line 109
    .line 110
    aput-object v8, v7, v6

    .line 111
    .line 112
    invoke-interface {v3}, Lma/b0;->m()Lja/k;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    sget-object v6, Lja/l;->j:Lja/l;

    .line 120
    .line 121
    invoke-virtual {v3, v6}, Lja/k;->s(Lja/l;)Lcc/m0;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    const/4 v6, 0x3

    .line 128
    aput-object v3, v7, v6

    .line 129
    .line 130
    invoke-static {v7}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/util/Collection;

    .line 135
    .line 136
    check-cast v3, Ljava/lang/Iterable;

    .line 137
    .line 138
    instance-of v6, v3, Ljava/util/Collection;

    .line 139
    .line 140
    if-eqz v6, :cond_0

    .line 141
    .line 142
    move-object v6, v3

    .line 143
    check-cast v6, Ljava/util/Collection;

    .line 144
    .line 145
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_0

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_2

    .line 161
    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Lcc/e0;

    .line 167
    .line 168
    iget-object v7, v2, Lqb/o;->c:Ljava/util/Set;

    .line 169
    .line 170
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    xor-int/2addr v6, v0

    .line 175
    if-nez v6, :cond_1

    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 179
    .line 180
    invoke-virtual {v2}, Lqb/o;->m()Lja/k;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v2, "Number"

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Lja/k;->k(Ljava/lang/String;)Lma/e;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-interface {v0}, Lma/e;->q()Lcc/m0;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_3

    .line 195
    .line 196
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_3
    const/16 v0, 0x37

    .line 201
    .line 202
    invoke-static {v0}, Lja/k;->a(I)V

    .line 203
    .line 204
    .line 205
    throw v5

    .line 206
    :cond_4
    :goto_1
    return-object v1

    .line 207
    :cond_5
    const/16 v0, 0x39

    .line 208
    .line 209
    invoke-static {v0}, Lja/k;->a(I)V

    .line 210
    .line 211
    .line 212
    throw v5

    .line 213
    :cond_6
    const/16 v0, 0x38

    .line 214
    .line 215
    invoke-static {v0}, Lja/k;->a(I)V

    .line 216
    .line 217
    .line 218
    throw v5

    .line 219
    :cond_7
    const/16 v0, 0x3b

    .line 220
    .line 221
    invoke-static {v0}, Lja/k;->a(I)V

    .line 222
    .line 223
    .line 224
    throw v5

    .line 225
    :cond_8
    const/16 v0, 0x3a

    .line 226
    .line 227
    invoke-static {v0}, Lja/k;->a(I)V

    .line 228
    .line 229
    .line 230
    throw v5
.end method
