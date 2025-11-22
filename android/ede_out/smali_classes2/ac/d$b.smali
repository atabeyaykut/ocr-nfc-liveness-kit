.class public final Lac/d$b;
.super Lcc/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lac/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final c:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lac/d;


# direct methods
.method public constructor <init>(Lac/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lac/d$b;->d:Lac/d;

    .line 2
    .line 3
    iget-object v0, p1, Lac/d;->m:Lyb/n;

    .line 4
    .line 5
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 6
    .line 7
    iget-object v0, v0, Lyb/l;->a:Lbc/l;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcc/b;-><init>(Lbc/l;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lac/d;->m:Lyb/n;

    .line 13
    .line 14
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 15
    .line 16
    iget-object v0, v0, Lyb/l;->a:Lbc/l;

    .line 17
    .line 18
    new-instance v1, Lac/d$b$a;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lac/d$b$a;-><init>(Lac/d;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lac/d$b;->c:Lbc/i;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lac/d$b;->d:Lac/d;

    .line 2
    .line 3
    iget-object v1, v0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget-object v2, v0, Lac/d;->m:Lyb/n;

    .line 6
    .line 7
    iget-object v3, v2, Lyb/n;->d:Lib/g;

    .line 8
    .line 9
    const-string v4, "<this>"

    .line 10
    .line 11
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "typeTable"

    .line 15
    .line 16
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, v1, Lgb/b;->h:Ljava/util/List;

    .line 20
    .line 21
    move-object v5, v4

    .line 22
    check-cast v5, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    xor-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v4, v6

    .line 35
    :goto_0
    if-nez v4, :cond_1

    .line 36
    .line 37
    iget-object v1, v1, Lgb/b;->j:Ljava/util/List;

    .line 38
    .line 39
    const-string v4, "supertypeIdList"

    .line 40
    .line 41
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast v1, Ljava/lang/Iterable;

    .line 45
    .line 46
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/Integer;

    .line 70
    .line 71
    const-string v7, "it"

    .line 72
    .line 73
    invoke-static {v5, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v3, v5}, Lib/g;->a(I)Lgb/p;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    check-cast v4, Ljava/lang/Iterable;

    .line 89
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lgb/p;

    .line 114
    .line 115
    iget-object v5, v2, Lyb/n;->h:Lyb/k0;

    .line 116
    .line 117
    invoke-virtual {v5, v4}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    iget-object v3, v2, Lyb/n;->a:Lyb/l;

    .line 126
    .line 127
    iget-object v3, v3, Lyb/l;->n:Loa/a;

    .line 128
    .line 129
    invoke-interface {v3, v0}, Loa/a;->e(Lac/d;)Ljava/util/Collection;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Ljava/lang/Iterable;

    .line 134
    .line 135
    invoke-static {v3, v1}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_5

    .line 153
    .line 154
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Lcc/e0;

    .line 159
    .line 160
    invoke-virtual {v5}, Lcc/e0;->M0()Lcc/c1;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-interface {v5}, Lcc/c1;->n()Lma/g;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    instance-of v7, v5, Lma/d0$b;

    .line 169
    .line 170
    if-eqz v7, :cond_4

    .line 171
    .line 172
    check-cast v5, Lma/d0$b;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_4
    move-object v5, v6

    .line 176
    :goto_4
    if-eqz v5, :cond_3

    .line 177
    .line 178
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    xor-int/lit8 v4, v4, 0x1

    .line 187
    .line 188
    if-eqz v4, :cond_8

    .line 189
    .line 190
    iget-object v2, v2, Lyb/n;->a:Lyb/l;

    .line 191
    .line 192
    iget-object v2, v2, Lyb/l;->h:Lyb/u;

    .line 193
    .line 194
    new-instance v4, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_7

    .line 212
    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    check-cast v5, Lma/d0$b;

    .line 218
    .line 219
    invoke-static {v5}, Lsb/b;->f(Lma/g;)Llb/b;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    if-eqz v6, :cond_6

    .line 224
    .line 225
    invoke-virtual {v6}, Llb/b;->b()Llb/c;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    if-eqz v6, :cond_6

    .line 230
    .line 231
    invoke-virtual {v6}, Llb/c;->b()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    goto :goto_6

    .line 236
    :cond_6
    invoke-virtual {v5}, Lpa/b;->getName()Llb/f;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v5}, Llb/f;->o()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    :goto_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_7
    invoke-interface {v2, v0, v4}, Lyb/u;->h(Lpa/b;Ljava/util/ArrayList;)V

    .line 249
    .line 250
    .line 251
    :cond_8
    invoke-static {v1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Ljava/util/Collection;

    .line 256
    .line 257
    return-object v0
.end method

.method public final g()Lma/u0;
    .locals 1

    sget-object v0, Lma/u0$a;->a:Lma/u0$a;

    return-object v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lac/d$b;->c:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final n()Lma/g;
    .locals 1

    iget-object v0, p0, Lac/d$b;->d:Lac/d;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()Lma/e;
    .locals 1

    iget-object v0, p0, Lac/d$b;->d:Lac/d;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lac/d$b;->d:Lac/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpa/b;->getName()Llb/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Llb/f;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "name.toString()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
