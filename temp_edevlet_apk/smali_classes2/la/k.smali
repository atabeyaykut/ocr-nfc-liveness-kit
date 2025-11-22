.class public final Lla/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/a;
.implements Loa/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lla/k$a;
    }
.end annotation


# static fields
.field public static final synthetic h:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lma/b0;

.field public final b:La0/b;

.field public final c:Lbc/i;

.field public final d:Lcc/m0;

.field public final e:Lbc/i;

.field public final f:Lbc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a<",
            "Llb/c;",
            "Lma/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lbc/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lla/k;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "settings"

    const-string v5, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "cloneableType"

    const-string v5, "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "notConsideredDeprecation"

    const-string v4, "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lla/k;->h:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lpa/g0;Lbc/l;Lla/h;)V
    .locals 8

    .line 1
    const-string v0, "storageManager"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lla/k;->a:Lma/b0;

    .line 10
    .line 11
    sget-object v0, La0/b;->l:La0/b;

    .line 12
    .line 13
    iput-object v0, p0, Lla/k;->b:La0/b;

    .line 14
    .line 15
    invoke-interface {p2, p3}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iput-object p3, p0, Lla/k;->c:Lbc/i;

    .line 20
    .line 21
    new-instance p3, Llb/c;

    .line 22
    .line 23
    const-string v0, "java.io"

    .line 24
    .line 25
    invoke-direct {p3, v0}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lla/m;

    .line 29
    .line 30
    invoke-direct {v2, p1, p3}, Lla/m;-><init>(Lma/b0;Llb/c;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcc/i0;

    .line 34
    .line 35
    new-instance p3, Lla/n;

    .line 36
    .line 37
    invoke-direct {p3, p0}, Lla/n;-><init>(Lla/k;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2, p3}, Lcc/i0;-><init>(Lbc/l;Lx9/a;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p3, Lpa/n;

    .line 48
    .line 49
    const-string v0, "Serializable"

    .line 50
    .line 51
    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sget-object v4, Lma/a0;->d:Lma/a0;

    .line 56
    .line 57
    const/4 v5, 0x2

    .line 58
    move-object v6, p1

    .line 59
    check-cast v6, Ljava/util/Collection;

    .line 60
    .line 61
    move-object v1, p3

    .line 62
    move-object v7, p2

    .line 63
    invoke-direct/range {v1 .. v7}, Lpa/n;-><init>(Lma/j;Llb/f;Lma/a0;ILjava/util/Collection;Lbc/l;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lvb/i$b;->b:Lvb/i$b;

    .line 67
    .line 68
    sget-object v0, Lm9/x;->a:Lm9/x;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p3, p1, v0, v1}, Lpa/n;->K0(Lvb/i;Ljava/util/Set;Lpa/l;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Lpa/b;->q()Lcc/m0;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p3, "mockSerializableClass.defaultType"

    .line 79
    .line 80
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lla/k;->d:Lcc/m0;

    .line 84
    .line 85
    new-instance p1, Lla/l;

    .line 86
    .line 87
    invoke-direct {p1, p0, p2}, Lla/l;-><init>(Lla/k;Lbc/l;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, p1}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lla/k;->e:Lbc/i;

    .line 95
    .line 96
    invoke-interface {p2}, Lbc/l;->c()Lbc/c$b;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lla/k;->f:Lbc/a;

    .line 101
    .line 102
    new-instance p1, Lla/s;

    .line 103
    .line 104
    invoke-direct {p1, p0}, Lla/s;-><init>(Lla/k;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p2, p1}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lla/k;->g:Lbc/i;

    .line 112
    .line 113
    return-void
.end method


# virtual methods
.method public final a(Lac/d;)Ljava/util/Collection;
    .locals 13

    .line 1
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p1, Lac/d;->l:I

    .line 5
    .line 6
    if-ne v2, v1, :cond_e

    .line 7
    .line 8
    invoke-virtual {p0}, Lla/k;->g()Lla/g$a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-boolean v2, v2, Lla/g$a;->b:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lla/k;->f(Lma/e;)Lza/e;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    invoke-static {v2}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Lla/b;->f:Lla/b;

    .line 30
    .line 31
    iget-object v5, p0, Lla/k;->b:La0/b;

    .line 32
    .line 33
    invoke-static {v5, v3, v4}, La0/b;->n(La0/b;Llb/c;Lja/k;)Lma/e;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    invoke-static {v3, v2}, Lla/v;->a(Lma/e;Lpa/b;)Lcc/d1;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcc/p1;->e(Lcc/l1;)Lcc/p1;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v4, v2, Lza/e;->t:Lza/k;

    .line 49
    .line 50
    iget-object v4, v4, Lza/k;->q:Lbc/i;

    .line 51
    .line 52
    invoke-interface {v4}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/util/List;

    .line 57
    .line 58
    check-cast v4, Ljava/lang/Iterable;

    .line 59
    .line 60
    new-instance v5, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/4 v7, 0x3

    .line 74
    if-eqz v6, :cond_b

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    move-object v8, v6

    .line 81
    check-cast v8, Lma/d;

    .line 82
    .line 83
    invoke-interface {v8}, Lma/z;->getVisibility()Lma/q;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v9}, Lma/q;->a()Lma/e1;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    iget-boolean v9, v9, Lma/e1;->b:Z

    .line 92
    .line 93
    const/4 v10, 0x0

    .line 94
    if-eqz v9, :cond_a

    .line 95
    .line 96
    invoke-interface {v3}, Lma/e;->k()Ljava/util/Collection;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    const-string v11, "defaultKotlinVersion.constructors"

    .line 101
    .line 102
    invoke-static {v9, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    check-cast v9, Ljava/lang/Iterable;

    .line 106
    .line 107
    instance-of v11, v9, Ljava/util/Collection;

    .line 108
    .line 109
    if-eqz v11, :cond_4

    .line 110
    .line 111
    move-object v11, v9

    .line 112
    check-cast v11, Ljava/util/Collection;

    .line 113
    .line 114
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    if-eqz v11, :cond_4

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_7

    .line 130
    .line 131
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    check-cast v11, Lma/d;

    .line 136
    .line 137
    const-string v12, "it"

    .line 138
    .line 139
    invoke-static {v11, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v8, v0}, Lma/i;->c(Lcc/p1;)Lma/i;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    invoke-static {v11, v12}, Lob/n;->j(Lma/a;Lma/a;)I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-ne v11, v1, :cond_6

    .line 151
    .line 152
    const/4 v11, 0x1

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    const/4 v11, 0x0

    .line 155
    :goto_1
    if-eqz v11, :cond_5

    .line 156
    .line 157
    const/4 v9, 0x0

    .line 158
    goto :goto_3

    .line 159
    :cond_7
    :goto_2
    const/4 v9, 0x1

    .line 160
    :goto_3
    if-eqz v9, :cond_a

    .line 161
    .line 162
    invoke-interface {v8}, Lma/a;->g()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-ne v9, v1, :cond_9

    .line 171
    .line 172
    invoke-interface {v8}, Lma/a;->g()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    const-string v11, "valueParameters"

    .line 177
    .line 178
    invoke-static {v9, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v9}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    check-cast v9, Lma/a1;

    .line 186
    .line 187
    invoke-interface {v9}, Lma/z0;->getType()Lcc/e0;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v9}, Lcc/e0;->M0()Lcc/c1;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-interface {v9}, Lcc/c1;->n()Lma/g;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    if-eqz v9, :cond_8

    .line 200
    .line 201
    invoke-static {v9}, Lsb/b;->h(Lma/j;)Llb/d;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    goto :goto_4

    .line 206
    :cond_8
    const/4 v9, 0x0

    .line 207
    :goto_4
    invoke-static {p1}, Lsb/b;->h(Lma/j;)Llb/d;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    invoke-static {v9, v11}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-eqz v9, :cond_9

    .line 216
    .line 217
    const/4 v9, 0x1

    .line 218
    goto :goto_5

    .line 219
    :cond_9
    const/4 v9, 0x0

    .line 220
    :goto_5
    if-nez v9, :cond_a

    .line 221
    .line 222
    invoke-static {v8}, Lja/k;->C(Lma/u;)Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-nez v9, :cond_a

    .line 227
    .line 228
    sget-object v9, Lla/u;->e:Ljava/util/LinkedHashSet;

    .line 229
    .line 230
    invoke-static {v8, v7}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-static {v2, v7}, Lb8/f;->i0(Lma/e;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-nez v7, :cond_a

    .line 243
    .line 244
    const/4 v10, 0x1

    .line 245
    :cond_a
    if-eqz v10, :cond_3

    .line 246
    .line 247
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-static {v5}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_d

    .line 270
    .line 271
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    check-cast v4, Lma/d;

    .line 276
    .line 277
    invoke-interface {v4}, Lma/u;->r()Lma/u$a;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-interface {v5, p1}, Lma/u$a;->b(Lma/j;)Lma/u$a;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Lpa/b;->q()Lcc/m0;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-interface {v5, v6}, Lma/u$a;->n(Lcc/e0;)Lma/u$a;

    .line 289
    .line 290
    .line 291
    invoke-interface {v5}, Lma/u$a;->f()Lma/u$a;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Lcc/p1;->g()Lcc/l1;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-interface {v5, v6}, Lma/u$a;->g(Lcc/l1;)Lma/u$a;

    .line 299
    .line 300
    .line 301
    sget-object v6, Lla/u;->f:Ljava/util/LinkedHashSet;

    .line 302
    .line 303
    invoke-static {v4, v7}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-static {v2, v4}, Lb8/f;->i0(Lma/e;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-nez v4, :cond_c

    .line 316
    .line 317
    sget-object v4, Lla/k;->h:[Lda/m;

    .line 318
    .line 319
    const/4 v6, 0x2

    .line 320
    aget-object v4, v4, v6

    .line 321
    .line 322
    iget-object v6, p0, Lla/k;->g:Lbc/i;

    .line 323
    .line 324
    invoke-static {v6, v4}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    check-cast v4, Lna/h;

    .line 329
    .line 330
    invoke-interface {v5, v4}, Lma/u$a;->j(Lna/h;)Lma/u$a;

    .line 331
    .line 332
    .line 333
    :cond_c
    invoke-interface {v5}, Lma/u$a;->build()Lma/u;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor"

    .line 338
    .line 339
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    check-cast v4, Lma/d;

    .line 343
    .line 344
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_d
    return-object v1

    .line 349
    :cond_e
    :goto_7
    return-object v0
.end method

.method public final b(Lac/d;)Ljava/util/Collection;
    .locals 2

    .line 1
    const-string v0, "classDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lla/k;->g()Lla/g$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v0, v0, Lla/g$a;->b:Z

    .line 11
    .line 12
    sget-object v1, Lm9/x;->a:Lm9/x;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lla/k;->f(Lma/e;)Lza/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lza/e;->K0()Lza/k;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lza/o;->b()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v1, p1

    .line 35
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final c(Lac/d;Lac/l;)Z
    .locals 5

    .line 1
    const-string v0, "classDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lla/k;->f(Lma/e;)Lza/e;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p2}, Lna/b;->getAnnotations()Lna/h;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Loa/d;->a:Llb/c;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Lna/h;->P(Llb/c;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lla/k;->g()Lla/g$a;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-boolean v1, v1, Lla/g$a;->b:Z

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    const/4 v1, 0x3

    .line 38
    invoke-static {p2, v1}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p1}, Lza/e;->K0()Lza/k;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2}, Lpa/p;->getName()Llb/f;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v4, "functionDescriptor.name"

    .line 51
    .line 52
    invoke-static {p2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v4, Lua/c;->a:Lua/c;

    .line 56
    .line 57
    invoke-virtual {p1, p2, v4}, Lza/k;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/Iterable;

    .line 62
    .line 63
    instance-of p2, p1, Ljava/util/Collection;

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    move-object p2, p1

    .line 68
    check-cast p2, Ljava/util/Collection;

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lma/q0;

    .line 92
    .line 93
    invoke-static {p2, v1}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 105
    :goto_1
    return v0
.end method

.method public final d(Llb/f;Lac/d;)Ljava/util/Collection;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "name"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "classDescriptor"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lla/a;->e:Llb/f;

    .line 18
    .line 19
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sget-object v4, Lm9/v;->a:Lm9/v;

    .line 24
    .line 25
    sget-object v5, Lla/k;->h:[Lda/m;

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    if-eqz v3, :cond_6

    .line 30
    .line 31
    sget-object v3, Lja/k;->e:Llb/f;

    .line 32
    .line 33
    sget-object v3, Lja/o$a;->g:Llb/d;

    .line 34
    .line 35
    invoke-static {v2, v3}, Lja/k;->c(Lma/g;Llb/d;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-static/range {p2 .. p2}, Lja/k;->r(Lma/g;)Lja/l;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v3, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 51
    :goto_1
    if-eqz v3, :cond_6

    .line 52
    .line 53
    iget-object v3, v2, Lac/d;->e:Lgb/b;

    .line 54
    .line 55
    iget-object v3, v3, Lgb/b;->s:Ljava/util/List;

    .line 56
    .line 57
    const-string v8, "classDescriptor.classProto.functionList"

    .line 58
    .line 59
    invoke-static {v3, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v3, Ljava/lang/Iterable;

    .line 63
    .line 64
    instance-of v8, v3, Ljava/util/Collection;

    .line 65
    .line 66
    if-eqz v8, :cond_2

    .line 67
    .line 68
    move-object v8, v3

    .line 69
    check-cast v8, Ljava/util/Collection;

    .line 70
    .line 71
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_4

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Lgb/h;

    .line 93
    .line 94
    iget-object v9, v2, Lac/d;->m:Lyb/n;

    .line 95
    .line 96
    iget-object v9, v9, Lyb/n;->b:Lib/c;

    .line 97
    .line 98
    iget v8, v8, Lgb/h;->f:I

    .line 99
    .line 100
    invoke-static {v9, v8}, La6/a;->o(Lib/c;I)Llb/f;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    sget-object v9, Lla/a;->e:Llb/f;

    .line 105
    .line 106
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_3

    .line 111
    .line 112
    const/4 v7, 0x1

    .line 113
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 114
    .line 115
    return-object v4

    .line 116
    :cond_5
    aget-object v3, v5, v6

    .line 117
    .line 118
    iget-object v4, v0, Lla/k;->e:Lbc/i;

    .line 119
    .line 120
    invoke-static {v4, v3}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Lcc/m0;

    .line 125
    .line 126
    invoke-virtual {v3}, Lcc/e0;->o()Lvb/i;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    sget-object v4, Lua/c;->a:Lua/c;

    .line 131
    .line 132
    invoke-interface {v3, v1, v4}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/lang/Iterable;

    .line 137
    .line 138
    invoke-static {v1}, Lm9/t;->o1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lma/q0;

    .line 143
    .line 144
    invoke-interface {v1}, Lma/q0;->r()Lma/u$a;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-interface {v1, v2}, Lma/u$a;->b(Lma/j;)Lma/u$a;

    .line 149
    .line 150
    .line 151
    sget-object v3, Lma/p;->e:Lma/p$h;

    .line 152
    .line 153
    invoke-interface {v1, v3}, Lma/u$a;->q(Lma/q;)Lma/u$a;

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p2 .. p2}, Lpa/b;->q()Lcc/m0;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-interface {v1, v3}, Lma/u$a;->n(Lcc/e0;)Lma/u$a;

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p2 .. p2}, Lpa/b;->J0()Lma/o0;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-interface {v1, v2}, Lma/u$a;->m(Lma/o0;)Lma/u$a;

    .line 168
    .line 169
    .line 170
    invoke-interface {v1}, Lma/u$a;->build()Lma/u;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    check-cast v1, Lma/q0;

    .line 178
    .line 179
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/util/Collection;

    .line 184
    .line 185
    return-object v1

    .line 186
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lla/k;->g()Lla/g$a;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    iget-boolean v3, v3, Lla/g$a;->b:Z

    .line 191
    .line 192
    if-nez v3, :cond_7

    .line 193
    .line 194
    return-object v4

    .line 195
    :cond_7
    new-instance v3, Lla/p;

    .line 196
    .line 197
    invoke-direct {v3, v1}, Lla/p;-><init>(Llb/f;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v2}, Lla/k;->f(Lma/e;)Lza/e;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const/4 v8, 0x0

    .line 205
    const/4 v9, 0x2

    .line 206
    const/4 v10, 0x3

    .line 207
    const-string v11, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 208
    .line 209
    if-nez v1, :cond_8

    .line 210
    .line 211
    goto/16 :goto_f

    .line 212
    .line 213
    :cond_8
    invoke-static {v1}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    sget-object v13, Lla/b;->f:Lla/b;

    .line 218
    .line 219
    iget-object v14, v0, Lla/k;->b:La0/b;

    .line 220
    .line 221
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    const-string v15, "builtIns"

    .line 225
    .line 226
    invoke-static {v13, v15}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v14, v12, v13}, La0/b;->n(La0/b;Llb/c;Lja/k;)Lma/e;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    if-nez v12, :cond_9

    .line 234
    .line 235
    sget-object v12, Lm9/x;->a:Lm9/x;

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_9
    sget-object v14, Lla/c;->a:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v12}, Lsb/b;->h(Lma/j;)Llb/d;

    .line 241
    .line 242
    .line 243
    move-result-object v14

    .line 244
    sget-object v15, Lla/c;->k:Ljava/util/HashMap;

    .line 245
    .line 246
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    check-cast v14, Llb/c;

    .line 251
    .line 252
    if-nez v14, :cond_a

    .line 253
    .line 254
    invoke-static {v12}, Lx5/a;->r(Ljava/lang/Object;)Ljava/util/Set;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    goto :goto_3

    .line 259
    :cond_a
    new-array v15, v9, [Lma/e;

    .line 260
    .line 261
    aput-object v12, v15, v7

    .line 262
    .line 263
    invoke-virtual {v13, v14}, Lja/k;->j(Llb/c;)Lma/e;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    aput-object v12, v15, v6

    .line 268
    .line 269
    invoke-static {v15}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    check-cast v12, Ljava/util/Collection;

    .line 274
    .line 275
    :goto_3
    check-cast v12, Ljava/lang/Iterable;

    .line 276
    .line 277
    instance-of v13, v12, Ljava/util/List;

    .line 278
    .line 279
    if-eqz v13, :cond_c

    .line 280
    .line 281
    move-object v13, v12

    .line 282
    check-cast v13, Ljava/util/List;

    .line 283
    .line 284
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v14

    .line 288
    if-eqz v14, :cond_b

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_b
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 292
    .line 293
    .line 294
    move-result v14

    .line 295
    add-int/lit8 v14, v14, -0x1

    .line 296
    .line 297
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    goto :goto_6

    .line 302
    :cond_c
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-nez v14, :cond_d

    .line 311
    .line 312
    :goto_4
    move-object v13, v8

    .line 313
    goto :goto_6

    .line 314
    :cond_d
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v14

    .line 318
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    if-eqz v15, :cond_e

    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_e
    move-object v13, v14

    .line 326
    :goto_6
    check-cast v13, Lma/e;

    .line 327
    .line 328
    if-nez v13, :cond_f

    .line 329
    .line 330
    goto/16 :goto_f

    .line 331
    .line 332
    :cond_f
    sget v4, Lkc/d;->c:I

    .line 333
    .line 334
    new-instance v4, Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-static {v12}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object v12

    .line 347
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v14

    .line 351
    if-eqz v14, :cond_10

    .line 352
    .line 353
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v14

    .line 357
    check-cast v14, Lma/e;

    .line 358
    .line 359
    invoke-static {v14}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 360
    .line 361
    .line 362
    move-result-object v14

    .line 363
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_10
    new-instance v12, Lkc/d;

    .line 368
    .line 369
    invoke-direct {v12}, Lkc/d;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v12, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 373
    .line 374
    .line 375
    sget-object v4, Lla/c;->a:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static/range {p2 .. p2}, Lob/i;->g(Lma/j;)Llb/d;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    sget-object v14, Lla/c;->j:Ljava/util/HashMap;

    .line 382
    .line 383
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    invoke-static {v1}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 388
    .line 389
    .line 390
    move-result-object v14

    .line 391
    new-instance v15, Lla/o;

    .line 392
    .line 393
    invoke-direct {v15, v1, v13}, Lla/o;-><init>(Lza/e;Lma/e;)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v0, Lla/k;->f:Lbc/a;

    .line 397
    .line 398
    check-cast v1, Lbc/c$b;

    .line 399
    .line 400
    invoke-virtual {v1, v14, v15}, Lbc/c$b;->c(Ljava/lang/Object;Lx9/a;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    check-cast v1, Lma/e;

    .line 405
    .line 406
    invoke-interface {v1}, Lma/e;->C0()Lvb/i;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    const-string v13, "fakeJavaClassDescriptor.unsubstitutedMemberScope"

    .line 411
    .line 412
    invoke-static {v1, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v1}, Lla/p;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Ljava/lang/Iterable;

    .line 420
    .line 421
    new-instance v3, Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    .line 432
    .line 433
    move-result v13

    .line 434
    if-eqz v13, :cond_1b

    .line 435
    .line 436
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v13

    .line 440
    move-object v14, v13

    .line 441
    check-cast v14, Lma/q0;

    .line 442
    .line 443
    invoke-interface {v14}, Lma/b;->k0()Lma/b$a;

    .line 444
    .line 445
    .line 446
    move-result-object v15

    .line 447
    sget-object v6, Lma/b$a;->a:Lma/b$a;

    .line 448
    .line 449
    if-eq v15, v6, :cond_11

    .line 450
    .line 451
    goto/16 :goto_d

    .line 452
    .line 453
    :cond_11
    invoke-interface {v14}, Lma/z;->getVisibility()Lma/q;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    invoke-virtual {v6}, Lma/q;->a()Lma/e1;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    iget-boolean v6, v6, Lma/e1;->b:Z

    .line 462
    .line 463
    if-nez v6, :cond_12

    .line 464
    .line 465
    goto/16 :goto_d

    .line 466
    .line 467
    :cond_12
    invoke-static {v14}, Lja/k;->C(Lma/u;)Z

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    if-eqz v6, :cond_13

    .line 472
    .line 473
    goto/16 :goto_d

    .line 474
    .line 475
    :cond_13
    invoke-interface {v14}, Lma/u;->e()Ljava/util/Collection;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    const-string v15, "analogueMember.overriddenDescriptors"

    .line 480
    .line 481
    invoke-static {v6, v15}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    check-cast v6, Ljava/lang/Iterable;

    .line 485
    .line 486
    instance-of v15, v6, Ljava/util/Collection;

    .line 487
    .line 488
    if-eqz v15, :cond_14

    .line 489
    .line 490
    move-object v15, v6

    .line 491
    check-cast v15, Ljava/util/Collection;

    .line 492
    .line 493
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    .line 494
    .line 495
    .line 496
    move-result v15

    .line 497
    if-eqz v15, :cond_14

    .line 498
    .line 499
    goto :goto_a

    .line 500
    :cond_14
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 505
    .line 506
    .line 507
    move-result v15

    .line 508
    if-eqz v15, :cond_16

    .line 509
    .line 510
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v15

    .line 514
    check-cast v15, Lma/u;

    .line 515
    .line 516
    invoke-interface {v15}, Lma/u;->b()Lma/j;

    .line 517
    .line 518
    .line 519
    move-result-object v15

    .line 520
    const-string v7, "it.containingDeclaration"

    .line 521
    .line 522
    invoke-static {v15, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-static {v15}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    invoke-virtual {v12, v7}, Lkc/d;->contains(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v7

    .line 533
    if-eqz v7, :cond_15

    .line 534
    .line 535
    const/4 v6, 0x1

    .line 536
    goto :goto_b

    .line 537
    :cond_15
    const/4 v7, 0x0

    .line 538
    goto :goto_9

    .line 539
    :cond_16
    :goto_a
    const/4 v6, 0x0

    .line 540
    :goto_b
    if-eqz v6, :cond_17

    .line 541
    .line 542
    goto :goto_d

    .line 543
    :cond_17
    invoke-interface {v14}, Lma/u;->b()Lma/j;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    invoke-static {v6, v11}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    check-cast v6, Lma/e;

    .line 551
    .line 552
    invoke-static {v14, v10}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    sget-object v15, Lla/u;->d:Ljava/util/LinkedHashSet;

    .line 557
    .line 558
    invoke-static {v6, v7}, Lb8/f;->i0(Lma/e;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    invoke-interface {v15, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v6

    .line 566
    xor-int/2addr v6, v4

    .line 567
    if-eqz v6, :cond_18

    .line 568
    .line 569
    const/4 v6, 0x1

    .line 570
    goto :goto_c

    .line 571
    :cond_18
    invoke-static {v14}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 572
    .line 573
    .line 574
    move-result-object v6

    .line 575
    check-cast v6, Ljava/util/Collection;

    .line 576
    .line 577
    sget-object v7, Lcom/google/android/gms/internal/clearcut/d0;->c:Lcom/google/android/gms/internal/clearcut/d0;

    .line 578
    .line 579
    new-instance v14, Lla/r;

    .line 580
    .line 581
    invoke-direct {v14, v0}, Lla/r;-><init>(Lla/k;)V

    .line 582
    .line 583
    .line 584
    invoke-static {v6, v7, v14}, Lkc/a;->d(Ljava/util/Collection;Lkc/a$c;Lx9/l;)Ljava/lang/Boolean;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    const-string v7, "private fun SimpleFuncti\u2026scriptor)\n        }\n    }"

    .line 589
    .line 590
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 594
    .line 595
    .line 596
    move-result v6

    .line 597
    :goto_c
    if-nez v6, :cond_19

    .line 598
    .line 599
    const/4 v6, 0x1

    .line 600
    goto :goto_e

    .line 601
    :cond_19
    :goto_d
    const/4 v6, 0x0

    .line 602
    :goto_e
    if-eqz v6, :cond_1a

    .line 603
    .line 604
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    :cond_1a
    const/4 v6, 0x1

    .line 608
    const/4 v7, 0x0

    .line 609
    goto/16 :goto_8

    .line 610
    .line 611
    :cond_1b
    move-object v4, v3

    .line 612
    :goto_f
    check-cast v4, Ljava/lang/Iterable;

    .line 613
    .line 614
    new-instance v1, Ljava/util/ArrayList;

    .line 615
    .line 616
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .line 618
    .line 619
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    :cond_1c
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    if-eqz v4, :cond_22

    .line 628
    .line 629
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    check-cast v4, Lma/q0;

    .line 634
    .line 635
    invoke-interface {v4}, Lma/u;->b()Lma/j;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    invoke-static {v6, v11}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    check-cast v6, Lma/e;

    .line 643
    .line 644
    invoke-static {v6, v2}, Lla/v;->a(Lma/e;Lpa/b;)Lcc/d1;

    .line 645
    .line 646
    .line 647
    move-result-object v6

    .line 648
    invoke-static {v6}, Lcc/p1;->e(Lcc/l1;)Lcc/p1;

    .line 649
    .line 650
    .line 651
    move-result-object v6

    .line 652
    invoke-interface {v4, v6}, Lma/u;->c(Lcc/p1;)Lma/u;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    const-string v7, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor"

    .line 657
    .line 658
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    check-cast v6, Lma/q0;

    .line 662
    .line 663
    invoke-interface {v6}, Lma/q0;->r()Lma/u$a;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    invoke-interface {v6, v2}, Lma/u$a;->b(Lma/j;)Lma/u$a;

    .line 668
    .line 669
    .line 670
    invoke-virtual/range {p2 .. p2}, Lpa/b;->J0()Lma/o0;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    invoke-interface {v6, v7}, Lma/u$a;->m(Lma/o0;)Lma/u$a;

    .line 675
    .line 676
    .line 677
    invoke-interface {v6}, Lma/u$a;->f()Lma/u$a;

    .line 678
    .line 679
    .line 680
    invoke-interface {v4}, Lma/u;->b()Lma/j;

    .line 681
    .line 682
    .line 683
    move-result-object v7

    .line 684
    invoke-static {v7, v11}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    check-cast v7, Lma/e;

    .line 688
    .line 689
    invoke-static {v4, v10}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    new-instance v12, Lkotlin/jvm/internal/v;

    .line 694
    .line 695
    invoke-direct {v12}, Lkotlin/jvm/internal/v;-><init>()V

    .line 696
    .line 697
    .line 698
    invoke-static {v7}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 699
    .line 700
    .line 701
    move-result-object v7

    .line 702
    check-cast v7, Ljava/util/Collection;

    .line 703
    .line 704
    new-instance v13, Lcom/google/android/gms/internal/measurement/w5;

    .line 705
    .line 706
    invoke-direct {v13, v0}, Lcom/google/android/gms/internal/measurement/w5;-><init>(Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    new-instance v14, Lla/q;

    .line 710
    .line 711
    invoke-direct {v14, v4, v12}, Lla/q;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/v;)V

    .line 712
    .line 713
    .line 714
    invoke-static {v7, v13, v14}, Lkc/a;->b(Ljava/util/Collection;Lkc/a$c;Lkc/a$b;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    const-string v7, "jvmDescriptor = computeJ\u2026CONSIDERED\n            })"

    .line 719
    .line 720
    invoke-static {v4, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    check-cast v4, Lla/k$a;

    .line 724
    .line 725
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 726
    .line 727
    .line 728
    move-result v4

    .line 729
    if-eqz v4, :cond_1e

    .line 730
    .line 731
    if-eq v4, v9, :cond_1d

    .line 732
    .line 733
    if-eq v4, v10, :cond_20

    .line 734
    .line 735
    goto :goto_12

    .line 736
    :cond_1d
    aget-object v4, v5, v9

    .line 737
    .line 738
    iget-object v7, v0, Lla/k;->g:Lbc/i;

    .line 739
    .line 740
    invoke-static {v7, v4}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v4

    .line 744
    check-cast v4, Lna/h;

    .line 745
    .line 746
    invoke-interface {v6, v4}, Lma/u$a;->j(Lna/h;)Lma/u$a;

    .line 747
    .line 748
    .line 749
    goto :goto_12

    .line 750
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lac/d;->j()Lma/a0;

    .line 751
    .line 752
    .line 753
    move-result-object v4

    .line 754
    sget-object v7, Lma/a0;->a:Lma/a0;

    .line 755
    .line 756
    if-ne v4, v7, :cond_1f

    .line 757
    .line 758
    invoke-virtual/range {p2 .. p2}, Lac/d;->h()I

    .line 759
    .line 760
    .line 761
    move-result v4

    .line 762
    if-eq v4, v10, :cond_1f

    .line 763
    .line 764
    const/4 v4, 0x1

    .line 765
    goto :goto_11

    .line 766
    :cond_1f
    const/4 v4, 0x0

    .line 767
    :goto_11
    if-eqz v4, :cond_21

    .line 768
    .line 769
    :cond_20
    move-object v4, v8

    .line 770
    goto :goto_13

    .line 771
    :cond_21
    invoke-interface {v6}, Lma/u$a;->i()Lma/u$a;

    .line 772
    .line 773
    .line 774
    :goto_12
    invoke-interface {v6}, Lma/u$a;->build()Lma/u;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    check-cast v4, Lma/q0;

    .line 782
    .line 783
    :goto_13
    if-eqz v4, :cond_1c

    .line 784
    .line 785
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    goto/16 :goto_10

    .line 789
    .line 790
    :cond_22
    return-object v1
.end method

.method public final e(Lac/d;)Ljava/util/Collection;
    .locals 5

    .line 1
    const-string v0, "classDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lsb/b;->h(Lma/j;)Llb/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lla/u;->a:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    invoke-static {p1}, Lla/u;->a(Llb/d;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lla/k;->d:Lcc/m0;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    new-array p1, p1, [Lcc/e0;

    .line 24
    .line 25
    sget-object v0, Lla/k;->h:[Lda/m;

    .line 26
    .line 27
    aget-object v0, v0, v2

    .line 28
    .line 29
    iget-object v4, p0, Lla/k;->e:Lbc/i;

    .line 30
    .line 31
    invoke-static {v4, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcc/m0;

    .line 36
    .line 37
    const-string v4, "cloneableType"

    .line 38
    .line 39
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    aput-object v0, p1, v3

    .line 43
    .line 44
    aput-object v1, p1, v2

    .line 45
    .line 46
    invoke-static {p1}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    invoke-static {p1}, Lla/u;->a(Llb/d;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    sget-object v0, Lla/c;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Lla/c;->g(Llb/d;)Llb/b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Llb/b;->b()Llb/c;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Llb/c;->b()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const-class v0, Ljava/io/Serializable;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    nop

    .line 87
    :goto_0
    const/4 v2, 0x0

    .line 88
    :goto_1
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_2
    check-cast p1, Ljava/util/Collection;

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 98
    .line 99
    :goto_3
    return-object p1
.end method

.method public final f(Lma/e;)Lza/e;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    sget-object v1, Lja/k;->e:Llb/f;

    .line 5
    .line 6
    sget-object v1, Lja/o$a;->a:Llb/d;

    .line 7
    .line 8
    invoke-static {p1, v1}, Lja/k;->c(Lma/g;Llb/d;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {p1}, Lja/k;->K(Lma/j;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-static {p1}, Lsb/b;->h(Lma/j;)Llb/d;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Llb/d;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    sget-object v1, Lla/c;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1}, Lla/c;->g(Llb/d;)Llb/b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p1}, Llb/b;->b()Llb/c;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p0}, Lla/k;->g()Lla/g$a;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v1, v1, Lla/g$a;->a:Lma/b0;

    .line 53
    .line 54
    invoke-static {v1, p1}, La6/a;->w(Lma/b0;Llb/c;)Lma/e;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    instance-of v1, p1, Lza/e;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    move-object v0, p1

    .line 63
    check-cast v0, Lza/e;

    .line 64
    .line 65
    :cond_4
    :goto_0
    return-object v0

    .line 66
    :cond_5
    const/16 p1, 0x6c

    .line 67
    .line 68
    invoke-static {p1}, Lja/k;->a(I)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public final g()Lla/g$a;
    .locals 2

    sget-object v0, Lla/k;->h:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lla/k;->c:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/g$a;

    return-object v0
.end method
