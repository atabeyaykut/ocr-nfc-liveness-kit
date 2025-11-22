.class public final Lac/d;
.super Lpa/b;
.source "SourceFile"

# interfaces
.implements Lma/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lac/d$b;,
        Lac/d$c;,
        Lac/d$a;
    }
.end annotation


# instance fields
.field public final A:Lna/h;

.field public final e:Lgb/b;

.field public final f:Lib/a;

.field public final g:Lma/r0;

.field public final h:Llb/b;

.field public final j:Lma/a0;

.field public final k:Lma/o;

.field public final l:I

.field public final m:Lyb/n;

.field public final n:Lvb/j;

.field public final p:Lac/d$b;

.field public final q:Lma/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lma/p0<",
            "Lac/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lac/d$c;

.field public final s:Lma/j;

.field public final t:Lbc/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/j<",
            "Lma/d;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/Collection<",
            "Lma/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final w:Lbc/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/j<",
            "Lma/e;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/Collection<",
            "Lma/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final y:Lbc/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/j<",
            "Lma/y0<",
            "Lcc/m0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final z:Lyb/g0$a;


# direct methods
.method public constructor <init>(Lyb/n;Lgb/b;Lib/c;Lib/a;Lma/r0;)V
    .locals 9

    .line 1
    const-string v0, "outerContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "classProto"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "nameResolver"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "metadataVersion"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "sourceElement"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, Lyb/n;->a:Lyb/l;

    .line 27
    .line 28
    iget-object v0, v0, Lyb/l;->a:Lbc/l;

    .line 29
    .line 30
    iget v1, p2, Lgb/b;->e:I

    .line 31
    .line 32
    invoke-static {p3, v1}, La6/a;->n(Lib/c;I)Llb/b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Llb/b;->j()Llb/f;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {p0, v0, v1}, Lpa/b;-><init>(Lbc/l;Llb/f;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lac/d;->e:Lgb/b;

    .line 44
    .line 45
    iput-object p4, p0, Lac/d;->f:Lib/a;

    .line 46
    .line 47
    iput-object p5, p0, Lac/d;->g:Lma/r0;

    .line 48
    .line 49
    iget v0, p2, Lgb/b;->e:I

    .line 50
    .line 51
    invoke-static {p3, v0}, La6/a;->n(Lib/c;I)Llb/b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lac/d;->h:Llb/b;

    .line 56
    .line 57
    sget-object v0, Lib/b;->e:Lib/b$b;

    .line 58
    .line 59
    iget v1, p2, Lgb/b;->d:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lgb/j;

    .line 66
    .line 67
    invoke-static {v0}, Lyb/h0;->a(Lgb/j;)Lma/a0;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lac/d;->j:Lma/a0;

    .line 72
    .line 73
    sget-object v0, Lib/b;->d:Lib/b$b;

    .line 74
    .line 75
    iget v1, p2, Lgb/b;->d:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lgb/w;

    .line 82
    .line 83
    invoke-static {v0}, Lyb/i0;->a(Lgb/w;)Lma/o;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lac/d;->k:Lma/o;

    .line 88
    .line 89
    sget-object v0, Lib/b;->f:Lib/b$b;

    .line 90
    .line 91
    iget v1, p2, Lgb/b;->d:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lgb/b$c;

    .line 98
    .line 99
    if-nez v0, :cond_0

    .line 100
    .line 101
    const/4 v0, -0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    sget-object v1, Lyb/h0$a;->b:[I

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    aget v0, v1, v0

    .line 110
    .line 111
    :goto_0
    const/4 v1, 0x3

    .line 112
    packed-switch v0, :pswitch_data_0

    .line 113
    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    goto :goto_1

    .line 117
    :pswitch_0
    const/4 v0, 0x6

    .line 118
    goto :goto_1

    .line 119
    :pswitch_1
    const/4 v0, 0x5

    .line 120
    goto :goto_1

    .line 121
    :pswitch_2
    const/4 v0, 0x4

    .line 122
    goto :goto_1

    .line 123
    :pswitch_3
    const/4 v0, 0x3

    .line 124
    goto :goto_1

    .line 125
    :pswitch_4
    const/4 v0, 0x2

    .line 126
    :goto_1
    iput v0, p0, Lac/d;->l:I

    .line 127
    .line 128
    iget-object v4, p2, Lgb/b;->g:Ljava/util/List;

    .line 129
    .line 130
    const-string v2, "classProto.typeParameterList"

    .line 131
    .line 132
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v6, Lib/g;

    .line 136
    .line 137
    iget-object v2, p2, Lgb/b;->H:Lgb/s;

    .line 138
    .line 139
    const-string v3, "classProto.typeTable"

    .line 140
    .line 141
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {v6, v2}, Lib/g;-><init>(Lgb/s;)V

    .line 145
    .line 146
    .line 147
    sget-object v2, Lib/h;->b:Lib/h;

    .line 148
    .line 149
    iget-object v2, p2, Lgb/b;->K:Lgb/v;

    .line 150
    .line 151
    const-string v3, "classProto.versionRequirementTable"

    .line 152
    .line 153
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v2}, Lib/h$a;->a(Lgb/v;)Lib/h;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    move-object v2, p1

    .line 161
    move-object v3, p0

    .line 162
    move-object v5, p3

    .line 163
    move-object v8, p4

    .line 164
    invoke-virtual/range {v2 .. v8}, Lyb/n;->a(Lma/j;Ljava/util/List;Lib/c;Lib/g;Lib/h;Lib/a;)Lyb/n;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    iput-object p3, p0, Lac/d;->m:Lyb/n;

    .line 169
    .line 170
    iget-object p4, p3, Lyb/n;->a:Lyb/l;

    .line 171
    .line 172
    if-ne v0, v1, :cond_1

    .line 173
    .line 174
    new-instance v2, Lvb/m;

    .line 175
    .line 176
    iget-object v3, p4, Lyb/l;->a:Lbc/l;

    .line 177
    .line 178
    invoke-direct {v2, v3, p0}, Lvb/m;-><init>(Lbc/l;Lma/e;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_1
    sget-object v2, Lvb/i$b;->b:Lvb/i$b;

    .line 183
    .line 184
    :goto_2
    iput-object v2, p0, Lac/d;->n:Lvb/j;

    .line 185
    .line 186
    new-instance v2, Lac/d$b;

    .line 187
    .line 188
    invoke-direct {v2, p0}, Lac/d$b;-><init>(Lac/d;)V

    .line 189
    .line 190
    .line 191
    iput-object v2, p0, Lac/d;->p:Lac/d$b;

    .line 192
    .line 193
    sget-object v2, Lma/p0;->e:Lma/p0$a;

    .line 194
    .line 195
    iget-object v3, p4, Lyb/l;->a:Lbc/l;

    .line 196
    .line 197
    iget-object v4, p4, Lyb/l;->q:Ldc/l;

    .line 198
    .line 199
    invoke-interface {v4}, Ldc/l;->b()Ldc/f;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    new-instance v5, Lac/d$g;

    .line 204
    .line 205
    invoke-direct {v5, p0}, Lac/d$g;-><init>(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {v5, p0, v3, v4}, Lma/p0$a;->a(Lx9/l;Lma/e;Lbc/l;Ldc/f;)Lma/p0;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    iput-object v2, p0, Lac/d;->q:Lma/p0;

    .line 216
    .line 217
    const/4 v2, 0x0

    .line 218
    if-ne v0, v1, :cond_2

    .line 219
    .line 220
    new-instance v0, Lac/d$c;

    .line 221
    .line 222
    invoke-direct {v0, p0}, Lac/d$c;-><init>(Lac/d;)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_2
    move-object v0, v2

    .line 227
    :goto_3
    iput-object v0, p0, Lac/d;->r:Lac/d$c;

    .line 228
    .line 229
    iget-object p1, p1, Lyb/n;->c:Lma/j;

    .line 230
    .line 231
    iput-object p1, p0, Lac/d;->s:Lma/j;

    .line 232
    .line 233
    new-instance v0, Lac/d$h;

    .line 234
    .line 235
    invoke-direct {v0, p0}, Lac/d$h;-><init>(Lac/d;)V

    .line 236
    .line 237
    .line 238
    iget-object p4, p4, Lyb/l;->a:Lbc/l;

    .line 239
    .line 240
    invoke-interface {p4, v0}, Lbc/l;->f(Lx9/a;)Lbc/c$f;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iput-object v0, p0, Lac/d;->t:Lbc/j;

    .line 245
    .line 246
    new-instance v0, Lac/d$f;

    .line 247
    .line 248
    invoke-direct {v0, p0}, Lac/d$f;-><init>(Lac/d;)V

    .line 249
    .line 250
    .line 251
    invoke-interface {p4, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iput-object v0, p0, Lac/d;->v:Lbc/i;

    .line 256
    .line 257
    new-instance v0, Lac/d$e;

    .line 258
    .line 259
    invoke-direct {v0, p0}, Lac/d$e;-><init>(Lac/d;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {p4, v0}, Lbc/l;->f(Lx9/a;)Lbc/c$f;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    iput-object v0, p0, Lac/d;->w:Lbc/j;

    .line 267
    .line 268
    new-instance v0, Lac/d$i;

    .line 269
    .line 270
    invoke-direct {v0, p0}, Lac/d$i;-><init>(Lac/d;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p4, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iput-object v0, p0, Lac/d;->x:Lbc/i;

    .line 278
    .line 279
    new-instance v0, Lac/d$j;

    .line 280
    .line 281
    invoke-direct {v0, p0}, Lac/d$j;-><init>(Lac/d;)V

    .line 282
    .line 283
    .line 284
    invoke-interface {p4, v0}, Lbc/l;->f(Lx9/a;)Lbc/c$f;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iput-object v0, p0, Lac/d;->y:Lbc/j;

    .line 289
    .line 290
    new-instance v0, Lyb/g0$a;

    .line 291
    .line 292
    iget-object v5, p3, Lyb/n;->b:Lib/c;

    .line 293
    .line 294
    iget-object v6, p3, Lyb/n;->d:Lib/g;

    .line 295
    .line 296
    instance-of p3, p1, Lac/d;

    .line 297
    .line 298
    if-eqz p3, :cond_3

    .line 299
    .line 300
    check-cast p1, Lac/d;

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_3
    move-object p1, v2

    .line 304
    :goto_4
    if-eqz p1, :cond_4

    .line 305
    .line 306
    iget-object v2, p1, Lac/d;->z:Lyb/g0$a;

    .line 307
    .line 308
    :cond_4
    move-object v8, v2

    .line 309
    move-object v3, v0

    .line 310
    move-object v4, p2

    .line 311
    move-object v7, p5

    .line 312
    invoke-direct/range {v3 .. v8}, Lyb/g0$a;-><init>(Lgb/b;Lib/c;Lib/g;Lma/r0;Lyb/g0$a;)V

    .line 313
    .line 314
    .line 315
    iput-object v0, p0, Lac/d;->z:Lyb/g0$a;

    .line 316
    .line 317
    sget-object p1, Lib/b;->c:Lib/b$a;

    .line 318
    .line 319
    iget p2, p2, Lgb/b;->d:I

    .line 320
    .line 321
    invoke-virtual {p1, p2}, Lib/b$a;->c(I)Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_5

    .line 330
    .line 331
    sget-object p1, Lna/h$a;->a:Lna/h$a$a;

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_5
    new-instance p1, Lac/o;

    .line 335
    .line 336
    new-instance p2, Lac/d$d;

    .line 337
    .line 338
    invoke-direct {p2, p0}, Lac/d$d;-><init>(Lac/d;)V

    .line 339
    .line 340
    .line 341
    invoke-direct {p1, p4, p2}, Lac/o;-><init>(Lbc/l;Lx9/a;)V

    .line 342
    .line 343
    .line 344
    :goto_5
    iput-object p1, p0, Lac/d;->A:Lna/h;

    .line 345
    .line 346
    return-void

    .line 347
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final D0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final E()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lac/d;->x:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final F()Z
    .locals 4

    .line 1
    sget-object v0, Lib/b;->k:Lib/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget v1, v1, Lgb/b;->d:I

    .line 6
    .line 7
    const-string v2, "IS_VALUE_CLASS.get(classProto.flags)"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    const/4 v1, 0x2

    .line 17
    iget-object v2, p0, Lac/d;->f:Lib/a;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v3, v0, v1}, Lib/a;->a(III)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 28
    :goto_0
    return v3
.end method

.method public final F0()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/o0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lac/d;->m:Lyb/n;

    .line 2
    .line 3
    iget-object v1, v0, Lyb/n;->d:Lib/g;

    .line 4
    .line 5
    iget-object v2, p0, Lac/d;->e:Lgb/b;

    .line 6
    .line 7
    const-string v3, "<this>"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "typeTable"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v2, Lgb/b;->n:Ljava/util/List;

    .line 18
    .line 19
    move-object v4, v3

    .line 20
    check-cast v4, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    xor-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v3, v5

    .line 33
    :goto_0
    if-nez v3, :cond_1

    .line 34
    .line 35
    iget-object v2, v2, Lgb/b;->p:Ljava/util/List;

    .line 36
    .line 37
    const-string v3, "contextReceiverTypeIdList"

    .line 38
    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v2, Ljava/lang/Iterable;

    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/lang/Integer;

    .line 68
    .line 69
    const-string v6, "it"

    .line 70
    .line 71
    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v1, v4}, Lib/g;->a(I)Lgb/p;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    check-cast v3, Ljava/lang/Iterable;

    .line 87
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lgb/p;

    .line 112
    .line 113
    iget-object v4, v0, Lyb/n;->h:Lyb/k0;

    .line 114
    .line 115
    invoke-virtual {v4, v3}, Lyb/k0;->g(Lgb/p;)Lcc/e0;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    new-instance v4, Lpa/o0;

    .line 120
    .line 121
    invoke-virtual {p0}, Lpa/b;->J0()Lma/o0;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    new-instance v7, Lwb/b;

    .line 126
    .line 127
    invoke-direct {v7, p0, v3, v5}, Lwb/b;-><init>(Lma/e;Lcc/e0;Llb/f;)V

    .line 128
    .line 129
    .line 130
    sget-object v3, Lna/h$a;->a:Lna/h$a$a;

    .line 131
    .line 132
    invoke-direct {v4, v6, v7, v3}, Lpa/o0;-><init>(Lma/j;Lwb/a;Lna/h;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    return-object v1
.end method

.method public final G()Z
    .locals 3

    .line 1
    sget-object v0, Lib/b;->j:Lib/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget v1, v1, Lgb/b;->d:I

    .line 6
    .line 7
    const-string v2, "IS_EXPECT_CLASS.get(classProto.flags)"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final H()Z
    .locals 3

    .line 1
    sget-object v0, Lib/b;->g:Lib/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget v1, v1, Lgb/b;->d:I

    .line 6
    .line 7
    const-string v2, "IS_INNER.get(classProto.flags)"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final H0()Z
    .locals 3

    .line 1
    sget-object v0, Lib/b;->h:Lib/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget v1, v1, Lgb/b;->d:I

    .line 6
    .line 7
    const-string v2, "IS_DATA.get(classProto.flags)"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final K0()Lac/d$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lac/d;->m:Lyb/n;

    .line 2
    .line 3
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 4
    .line 5
    iget-object v0, v0, Lyb/l;->q:Ldc/l;

    .line 6
    .line 7
    invoke-interface {v0}, Ldc/l;->b()Ldc/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lac/d;->q:Lma/p0;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lma/p0;->a(Ldc/f;)Lvb/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lac/d$a;

    .line 18
    .line 19
    return-object v0
.end method

.method public final M()Lma/d;
    .locals 1

    iget-object v0, p0, Lac/d;->t:Lbc/j;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma/d;

    return-object v0
.end method

.method public final N()Lvb/i;
    .locals 1

    iget-object v0, p0, Lac/d;->n:Lvb/j;

    return-object v0
.end method

.method public final P()Lma/e;
    .locals 1

    iget-object v0, p0, Lac/d;->w:Lbc/j;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma/e;

    return-object v0
.end method

.method public final b()Lma/j;
    .locals 1

    iget-object v0, p0, Lac/d;->s:Lma/j;

    return-object v0
.end method

.method public final e0(Ldc/f;)Lvb/i;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lac/d;->q:Lma/p0;

    invoke-virtual {v0, p1}, Lma/p0;->a(Ldc/f;)Lvb/i;

    move-result-object p1

    return-object p1
.end method

.method public final getAnnotations()Lna/h;
    .locals 1

    iget-object v0, p0, Lac/d;->A:Lna/h;

    return-object v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    iget-object v0, p0, Lac/d;->g:Lma/r0;

    return-object v0
.end method

.method public final getVisibility()Lma/q;
    .locals 1

    iget-object v0, p0, Lac/d;->k:Lma/o;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lac/d;->l:I

    return v0
.end method

.method public final i()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lac/d;->p:Lac/d$b;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 3

    .line 1
    sget-object v0, Lib/b;->i:Lib/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget v1, v1, Lgb/b;->d:I

    .line 6
    .line 7
    const-string v2, "IS_EXTERNAL_CLASS.get(classProto.flags)"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isInline()Z
    .locals 5

    .line 1
    sget-object v0, Lib/b;->k:Lib/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget v1, v1, Lgb/b;->d:I

    .line 6
    .line 7
    const-string v2, "IS_VALUE_CLASS.get(classProto.flags)"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    iget-object v0, p0, Lac/d;->f:Lib/a;

    .line 17
    .line 18
    iget v2, v0, Lib/a;->b:I

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-ge v2, v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-le v2, v3, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v2, 0x4

    .line 28
    iget v4, v0, Lib/a;->c:I

    .line 29
    .line 30
    if-ge v4, v2, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    if-le v4, v2, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    iget v0, v0, Lib/a;->d:I

    .line 37
    .line 38
    if-gt v0, v3, :cond_4

    .line 39
    .line 40
    :goto_0
    const/4 v0, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 43
    :goto_2
    if-eqz v0, :cond_5

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_5
    return v1
.end method

.method public final j()Lma/a0;
    .locals 1

    iget-object v0, p0, Lac/d;->j:Lma/a0;

    return-object v0
.end method

.method public final k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lac/d;->v:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lac/d;->m:Lyb/n;

    .line 2
    .line 3
    iget-object v0, v0, Lyb/n;->h:Lyb/k0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lyb/k0;->b()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deserialized "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lac/d;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "expect "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpa/b;->getName()Llb/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 2

    .line 1
    sget-object v0, Lib/b;->f:Lib/b$b;

    .line 2
    .line 3
    iget-object v1, p0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget v1, v1, Lgb/b;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lgb/b$c;->f:Lgb/b$c;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final y()Z
    .locals 3

    .line 1
    sget-object v0, Lib/b;->l:Lib/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lac/d;->e:Lgb/b;

    .line 4
    .line 5
    iget v1, v1, Lgb/b;->d:I

    .line 6
    .line 7
    const-string v2, "IS_FUN_INTERFACE.get(classProto.flags)"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final y0()Lma/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lma/y0<",
            "Lcc/m0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lac/d;->y:Lbc/j;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma/y0;

    return-object v0
.end method
