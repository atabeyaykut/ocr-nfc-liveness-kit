.class public final Lza/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/c;
.implements Lxa/g;


# static fields
.field public static final synthetic i:[Lda/m;
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
.field public final a:Lp4/g7;

.field public final b:Lcb/a;

.field public final c:Lbc/j;

.field public final d:Lbc/i;

.field public final e:Lbb/a;

.field public final f:Lbc/i;

.field public final g:Z

.field public final h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lza/d;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "fqName"

    const-string v5, "getFqName()Lorg/jetbrains/kotlin/name/FqName;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "allValueArguments"

    const-string v4, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lza/d;->i:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lp4/g7;Lcb/a;Z)V
    .locals 2

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "javaAnnotation"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lza/d;->a:Lp4/g7;

    .line 15
    .line 16
    iput-object p2, p0, Lza/d;->b:Lcb/a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lza/d$b;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lza/d$b;-><init>(Lza/d;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lbc/l;->f(Lx9/a;)Lbc/c$f;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lza/d;->c:Lbc/j;

    .line 32
    .line 33
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lza/d$c;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lza/d$c;-><init>(Lza/d;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lza/d;->d:Lbc/i;

    .line 47
    .line 48
    iget-object v0, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lya/c;

    .line 51
    .line 52
    iget-object v0, v0, Lya/c;->j:Lbb/b;

    .line 53
    .line 54
    invoke-interface {v0, p2}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lza/d;->e:Lbb/a;

    .line 59
    .line 60
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Lza/d$a;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lza/d$a;-><init>(Lza/d;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lza/d;->f:Lbc/i;

    .line 74
    .line 75
    invoke-interface {p2}, Lcb/a;->e()V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lza/d;->g:Z

    .line 80
    .line 81
    invoke-interface {p2}, Lcb/a;->u()V

    .line 82
    .line 83
    .line 84
    if-eqz p3, :cond_0

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    :cond_0
    iput-boolean p1, p0, Lza/d;->h:Z

    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Llb/f;",
            "Lqb/g<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lza/d;->i:[Lda/m;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lza/d;->f:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final b(Lcb/b;)Lqb/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b;",
            ")",
            "Lqb/g<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcb/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcb/o;

    .line 6
    .line 7
    invoke-interface {p1}, Lcb/o;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lqb/i;->b(Ljava/lang/Object;)Lqb/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    instance-of v0, p1, Lcb/m;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    check-cast p1, Lcb/m;

    .line 23
    .line 24
    invoke-interface {p1}, Lcb/m;->b()Llb/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1}, Lcb/m;->d()Llb/f;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz v0, :cond_f

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_1
    new-instance v1, Lqb/k;

    .line 39
    .line 40
    invoke-direct {v1, v0, p1}, Lqb/k;-><init>(Llb/b;Llb/f;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_2
    instance-of v0, p1, Lcb/e;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iget-object v3, p0, Lza/d;->a:Lp4/g7;

    .line 49
    .line 50
    if-eqz v0, :cond_9

    .line 51
    .line 52
    check-cast p1, Lcb/e;

    .line 53
    .line 54
    invoke-interface {p1}, Lcb/b;->getName()Llb/f;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    sget-object v0, Lva/x;->b:Llb/f;

    .line 61
    .line 62
    :cond_3
    const-string v4, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME"

    .line 63
    .line 64
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Lcb/e;->e()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget-object v4, Lza/d;->i:[Lda/m;

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    aget-object v4, v4, v5

    .line 75
    .line 76
    iget-object v5, p0, Lza/d;->d:Lbc/i;

    .line 77
    .line 78
    invoke-static {v5, v4}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcc/m0;

    .line 83
    .line 84
    const-string v5, "type"

    .line 85
    .line 86
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v4}, Lc5/v;->y(Lcc/e0;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_4

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_4
    invoke-static {p0}, Lsb/b;->d(Lna/c;)Lma/e;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1}, Lc5/y;->n(Llb/f;Lma/e;)Lma/a1;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-interface {v0}, Lma/z0;->getType()Lcc/e0;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    :cond_5
    iget-object v0, v3, Lp4/g7;->a:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Lya/c;

    .line 119
    .line 120
    iget-object v0, v0, Lya/c;->o:Lma/b0;

    .line 121
    .line 122
    invoke-interface {v0}, Lma/b0;->m()Lja/k;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v1, Lec/h;->G:Lec/h;

    .line 127
    .line 128
    new-array v2, v2, [Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1, v2}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lja/k;->h(Lcc/s1;)Lcc/m0;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_8

    .line 156
    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lcb/b;

    .line 162
    .line 163
    invoke-virtual {p0, v2}, Lza/d;->b(Lcb/b;)Lqb/g;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    if-nez v2, :cond_7

    .line 168
    .line 169
    new-instance v2, Lqb/u;

    .line 170
    .line 171
    invoke-direct {v2}, Lqb/u;-><init>()V

    .line 172
    .line 173
    .line 174
    :cond_7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_8
    new-instance p1, Lqb/b;

    .line 179
    .line 180
    new-instance v2, Lqb/h;

    .line 181
    .line 182
    invoke-direct {v2, v0}, Lqb/h;-><init>(Lcc/e0;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {p1, v1, v2}, Lqb/b;-><init>(Ljava/util/List;Lx9/l;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_3

    .line 189
    .line 190
    :cond_9
    instance-of v0, p1, Lcb/c;

    .line 191
    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    check-cast p1, Lcb/c;

    .line 195
    .line 196
    invoke-interface {p1}, Lcb/c;->a()Lsa/e;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    new-instance v0, Lqb/a;

    .line 201
    .line 202
    new-instance v1, Lza/d;

    .line 203
    .line 204
    invoke-direct {v1, v3, p1, v2}, Lza/d;-><init>(Lp4/g7;Lcb/a;Z)V

    .line 205
    .line 206
    .line 207
    invoke-direct {v0, v1}, Lqb/a;-><init>(Lna/c;)V

    .line 208
    .line 209
    .line 210
    move-object p1, v0

    .line 211
    goto/16 :goto_3

    .line 212
    .line 213
    :cond_a
    instance-of v0, p1, Lcb/h;

    .line 214
    .line 215
    if-eqz v0, :cond_f

    .line 216
    .line 217
    check-cast p1, Lcb/h;

    .line 218
    .line 219
    invoke-interface {p1}, Lcb/h;->c()Lsa/e0;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iget-object v0, v3, Lp4/g7;->e:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v0, Lab/d;

    .line 226
    .line 227
    const/4 v3, 0x2

    .line 228
    const/4 v4, 0x7

    .line 229
    invoke-static {v3, v2, v2, v1, v4}, Lc5/v;->K(IZZLpa/k;I)Lab/a;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v0, p1, v3}, Lab/d;->e(Lcb/w;Lab/a;)Lcc/e0;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p1}, Lc5/v;->y(Lcc/e0;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_b

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_b
    move-object v0, p1

    .line 245
    const/4 v3, 0x0

    .line 246
    :goto_1
    invoke-static {v0}, Lja/k;->y(Lcc/e0;)Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_c

    .line 251
    .line 252
    invoke-virtual {v0}, Lcc/e0;->K0()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Lcc/i1;

    .line 261
    .line 262
    invoke-interface {v0}, Lcc/i1;->getType()Lcc/e0;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const-string v4, "type.arguments.single().type"

    .line 267
    .line 268
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    add-int/lit8 v3, v3, 0x1

    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_c
    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {v0}, Lcc/c1;->n()Lma/g;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    instance-of v4, v0, Lma/e;

    .line 283
    .line 284
    if-eqz v4, :cond_e

    .line 285
    .line 286
    invoke-static {v0}, Lsb/b;->f(Lma/g;)Llb/b;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    new-instance v1, Lqb/s;

    .line 291
    .line 292
    if-nez v0, :cond_d

    .line 293
    .line 294
    new-instance v0, Lqb/s$a$a;

    .line 295
    .line 296
    invoke-direct {v0, p1}, Lqb/s$a$a;-><init>(Lcc/e0;)V

    .line 297
    .line 298
    .line 299
    invoke-direct {v1, v0}, Lqb/s;-><init>(Lqb/s$a$a;)V

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_d
    invoke-direct {v1, v0, v3}, Lqb/s;-><init>(Llb/b;I)V

    .line 304
    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_e
    instance-of p1, v0, Lma/w0;

    .line 308
    .line 309
    if-eqz p1, :cond_f

    .line 310
    .line 311
    new-instance p1, Lqb/s;

    .line 312
    .line 313
    sget-object v0, Lja/o$a;->a:Llb/d;

    .line 314
    .line 315
    invoke-virtual {v0}, Llb/d;->h()Llb/c;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-direct {p1, v0, v2}, Lqb/s;-><init>(Llb/b;I)V

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_f
    :goto_2
    move-object p1, v1

    .line 328
    :goto_3
    return-object p1
.end method

.method public final d()Llb/c;
    .locals 3

    .line 1
    sget-object v0, Lza/d;->i:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    const-string v1, "<this>"

    .line 7
    .line 8
    iget-object v2, p0, Lza/d;->c:Lbc/j;

    .line 9
    .line 10
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "p"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Llb/c;

    .line 23
    .line 24
    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lza/d;->g:Z

    return v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    iget-object v0, p0, Lza/d;->e:Lbb/a;

    return-object v0
.end method

.method public final getType()Lcc/e0;
    .locals 2

    sget-object v0, Lza/d;->i:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lza/d;->d:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/m0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lnb/c;->a:Lnb/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Lnb/d;->p(Lna/c;Lna/e;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method
