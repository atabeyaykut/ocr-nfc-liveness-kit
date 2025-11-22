.class public final Lj/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/j$a;
    }
.end annotation


# static fields
.field public static final f:Lrc/c;

.field public static final g:Lrc/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lp/k;

.field public final c:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lrc/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lh/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrc/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lrc/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lrc/c$a;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Lrc/c$a;->b:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Lrc/c$a;->a()Lrc/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lj/j;->f:Lrc/c;

    .line 16
    .line 17
    new-instance v0, Lrc/c$a;

    .line 18
    .line 19
    invoke-direct {v0}, Lrc/c$a;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-boolean v1, v0, Lrc/c$a;->a:Z

    .line 23
    .line 24
    iput-boolean v1, v0, Lrc/c$a;->f:Z

    .line 25
    .line 26
    invoke-virtual {v0}, Lrc/c$a;->a()Lrc/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lj/j;->g:Lrc/c;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lp/k;Ll9/e;Ll9/e;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp/k;",
            "Ll9/e<",
            "+",
            "Lrc/d$a;",
            ">;",
            "Ll9/e<",
            "+",
            "Lh/a;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lj/j;->b:Lp/k;

    iput-object p3, p0, Lj/j;->c:Ll9/e;

    iput-object p4, p0, Lj/j;->d:Ll9/e;

    iput-boolean p5, p0, Lj/j;->e:Z

    return-void
.end method

.method public static d(Ljava/lang/String;Lrc/t;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lrc/t;->a:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "text/plain"

    .line 12
    .line 13
    invoke-static {p1, v2, v1}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1, p0}, Lu/c;->b(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_4

    .line 28
    .line 29
    :cond_2
    if-nez p1, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/16 p0, 0x3b

    .line 33
    .line 34
    invoke-static {p1, p0}, Lmc/n;->e0(Ljava/lang/String;C)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_1
    return-object v0

    .line 39
    :cond_4
    return-object p0
.end method


# virtual methods
.method public final a(Lp9/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Lj/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lj/j$c;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lj/j$c;

    .line 11
    .line 12
    iget v3, v2, Lj/j$c;->f:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lj/j$c;->f:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lj/j$c;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lj/j$c;-><init>(Lj/j;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lj/j$c;->d:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 32
    .line 33
    iget v4, v2, Lj/j$c;->f:I

    .line 34
    .line 35
    const-string v5, "response body == null"

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const-wide/16 v7, 0x0

    .line 39
    .line 40
    const/4 v9, 0x2

    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v11, 0x4

    .line 43
    const/4 v12, 0x3

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    if-eq v4, v10, :cond_2

    .line 47
    .line 48
    if-ne v4, v9, :cond_1

    .line 49
    .line 50
    iget-object v3, v2, Lj/j$c;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lrc/b0;

    .line 53
    .line 54
    iget-object v4, v2, Lj/j$c;->b:Lh/a$b;

    .line 55
    .line 56
    iget-object v2, v2, Lj/j$c;->a:Lj/j;

    .line 57
    .line 58
    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_8

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto/16 :goto_a

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    iget-object v4, v2, Lj/j$c;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Lo/d;

    .line 77
    .line 78
    iget-object v10, v2, Lj/j$c;->b:Lh/a$b;

    .line 79
    .line 80
    iget-object v13, v2, Lj/j$c;->a:Lj/j;

    .line 81
    .line 82
    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :catch_1
    move-exception v0

    .line 88
    goto/16 :goto_d

    .line 89
    .line 90
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, v1, Lj/j;->b:Lp/k;

    .line 94
    .line 95
    iget v4, v0, Lp/k;->n:I

    .line 96
    .line 97
    invoke-static {v4}, Landroidx/camera/core/impl/utils/f;->d(I)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    iget-object v13, v1, Lj/j;->a:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    iget-object v4, v1, Lj/j;->d:Ll9/e;

    .line 106
    .line 107
    invoke-interface {v4}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Lh/a;

    .line 112
    .line 113
    if-nez v4, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    iget-object v0, v0, Lp/k;->i:Ljava/lang/String;

    .line 117
    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    move-object v0, v13

    .line 121
    :cond_5
    invoke-interface {v4, v0}, Lh/a;->get(Ljava/lang/String;)Lh/f$b;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    move-object v4, v0

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    :goto_1
    move-object v4, v6

    .line 128
    :goto_2
    if-eqz v4, :cond_b

    .line 129
    .line 130
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lj/j;->c()Led/k;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v4}, Lh/f$b;->L()Led/z;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    invoke-virtual {v0, v14}, Led/k;->h(Led/z;)Led/j;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v0, v0, Led/j;->d:Ljava/lang/Long;

    .line 143
    .line 144
    if-nez v0, :cond_7

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide v14

    .line 151
    cmp-long v0, v14, v7

    .line 152
    .line 153
    if-nez v0, :cond_8

    .line 154
    .line 155
    new-instance v0, Lj/l;

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Lj/j;->g(Lh/a$b;)Lg/k;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v13, v6}, Lj/j;->d(Ljava/lang/String;Lrc/t;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-direct {v0, v2, v3, v12}, Lj/l;-><init>(Lg/l;Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_8
    :goto_3
    iget-boolean v0, v1, Lj/j;->e:Z

    .line 170
    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    new-instance v0, Lo/d$b;

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Lj/j;->e()Lrc/x;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    invoke-virtual {v1, v4}, Lj/j;->f(Lh/a$b;)Lo/c;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    invoke-direct {v0, v14, v15}, Lo/d$b;-><init>(Lrc/x;Lo/c;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lo/d$b;->a()Lo/d;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v14, v0, Lo/d;->a:Lrc/x;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 191
    .line 192
    if-nez v14, :cond_c

    .line 193
    .line 194
    iget-object v14, v0, Lo/d;->b:Lo/c;

    .line 195
    .line 196
    if-eqz v14, :cond_c

    .line 197
    .line 198
    :try_start_3
    new-instance v0, Lj/l;

    .line 199
    .line 200
    invoke-virtual {v1, v4}, Lj/j;->g(Lh/a$b;)Lg/k;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget-object v3, v14, Lo/c;->b:Ll9/e;

    .line 205
    .line 206
    invoke-interface {v3}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Lrc/t;

    .line 211
    .line 212
    invoke-static {v13, v3}, Lj/j;->d(Ljava/lang/String;Lrc/t;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-direct {v0, v2, v3, v12}, Lj/l;-><init>(Lg/l;Ljava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_9
    new-instance v0, Lj/l;

    .line 221
    .line 222
    invoke-virtual {v1, v4}, Lj/j;->g(Lh/a$b;)Lg/k;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v1, v4}, Lj/j;->f(Lh/a$b;)Lo/c;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-nez v3, :cond_a

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_a
    iget-object v3, v3, Lo/c;->b:Ll9/e;

    .line 234
    .line 235
    invoke-interface {v3}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    move-object v6, v3

    .line 240
    check-cast v6, Lrc/t;

    .line 241
    .line 242
    :goto_4
    invoke-static {v13, v6}, Lj/j;->d(Ljava/lang/String;Lrc/t;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-direct {v0, v2, v3, v12}, Lj/l;-><init>(Lg/l;Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    return-object v0

    .line 250
    :cond_b
    new-instance v0, Lo/d$b;

    .line 251
    .line 252
    invoke-virtual/range {p0 .. p0}, Lj/j;->e()Lrc/x;

    .line 253
    .line 254
    .line 255
    move-result-object v13

    .line 256
    invoke-direct {v0, v13, v6}, Lo/d$b;-><init>(Lrc/x;Lo/c;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Lo/d$b;->a()Lo/d;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    :cond_c
    iget-object v13, v0, Lo/d;->a:Lrc/x;

    .line 264
    .line 265
    invoke-static {v13}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iput-object v1, v2, Lj/j$c;->a:Lj/j;

    .line 269
    .line 270
    iput-object v4, v2, Lj/j$c;->b:Lh/a$b;

    .line 271
    .line 272
    iput-object v0, v2, Lj/j$c;->c:Ljava/lang/Object;

    .line 273
    .line 274
    iput v10, v2, Lj/j$c;->f:I

    .line 275
    .line 276
    invoke-virtual {v1, v13, v2}, Lj/j;->b(Lrc/x;Lp9/d;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 280
    if-ne v10, v3, :cond_d

    .line 281
    .line 282
    return-object v3

    .line 283
    :cond_d
    move-object v13, v1

    .line 284
    move-object/from16 v18, v4

    .line 285
    .line 286
    move-object v4, v0

    .line 287
    move-object v0, v10

    .line 288
    move-object/from16 v10, v18

    .line 289
    .line 290
    :goto_5
    :try_start_4
    move-object v14, v0

    .line 291
    check-cast v14, Lrc/b0;

    .line 292
    .line 293
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    iget-object v0, v14, Lrc/b0;->h:Lrc/d0;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 297
    .line 298
    if-eqz v0, :cond_15

    .line 299
    .line 300
    :try_start_5
    iget-object v15, v4, Lo/d;->a:Lrc/x;

    .line 301
    .line 302
    iget-object v4, v4, Lo/d;->b:Lo/c;

    .line 303
    .line 304
    invoke-virtual {v13, v10, v15, v14, v4}, Lj/j;->h(Lh/a$b;Lrc/x;Lrc/b0;Lo/c;)Lh/a$b;

    .line 305
    .line 306
    .line 307
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 308
    iget-object v10, v13, Lj/j;->a:Ljava/lang/String;

    .line 309
    .line 310
    if-eqz v4, :cond_f

    .line 311
    .line 312
    :try_start_6
    new-instance v0, Lj/l;

    .line 313
    .line 314
    invoke-virtual {v13, v4}, Lj/j;->g(Lh/a$b;)Lg/k;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v13, v4}, Lj/j;->f(Lh/a$b;)Lo/c;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    if-nez v3, :cond_e

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_e
    iget-object v3, v3, Lo/c;->b:Ll9/e;

    .line 326
    .line 327
    invoke-interface {v3}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    move-object v6, v3

    .line 332
    check-cast v6, Lrc/t;

    .line 333
    .line 334
    :goto_6
    invoke-static {v10, v6}, Lj/j;->d(Ljava/lang/String;Lrc/t;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-direct {v0, v2, v3, v11}, Lj/l;-><init>(Lg/l;Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    return-object v0

    .line 342
    :cond_f
    invoke-virtual {v0}, Lrc/d0;->a()J

    .line 343
    .line 344
    .line 345
    move-result-wide v15

    .line 346
    cmp-long v17, v15, v7

    .line 347
    .line 348
    if-lez v17, :cond_11

    .line 349
    .line 350
    new-instance v2, Lj/l;

    .line 351
    .line 352
    invoke-virtual {v0}, Lrc/d0;->c()Led/g;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    iget-object v5, v13, Lj/j;->b:Lp/k;

    .line 357
    .line 358
    iget-object v5, v5, Lp/k;->a:Landroid/content/Context;

    .line 359
    .line 360
    new-instance v7, Lg/n;

    .line 361
    .line 362
    sget-object v8, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 363
    .line 364
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 369
    .line 370
    .line 371
    invoke-direct {v7, v3, v5, v6}, Lg/n;-><init>(Led/g;Ljava/io/File;Lg/l$a;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Lrc/d0;->b()Lrc/t;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v10, v0}, Lj/j;->d(Ljava/lang/String;Lrc/t;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    iget-object v3, v14, Lrc/b0;->j:Lrc/b0;

    .line 383
    .line 384
    if-eqz v3, :cond_10

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_10
    const/4 v11, 0x3

    .line 388
    :goto_7
    invoke-direct {v2, v7, v0, v11}, Lj/l;-><init>(Lg/l;Ljava/lang/String;I)V

    .line 389
    .line 390
    .line 391
    return-object v2

    .line 392
    :cond_11
    invoke-static {v14}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v13}, Lj/j;->e()Lrc/x;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    iput-object v13, v2, Lj/j$c;->a:Lj/j;

    .line 400
    .line 401
    iput-object v4, v2, Lj/j$c;->b:Lh/a$b;

    .line 402
    .line 403
    iput-object v14, v2, Lj/j$c;->c:Ljava/lang/Object;

    .line 404
    .line 405
    iput v9, v2, Lj/j$c;->f:I

    .line 406
    .line 407
    invoke-virtual {v13, v0, v2}, Lj/j;->b(Lrc/x;Lp9/d;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 411
    if-ne v0, v3, :cond_12

    .line 412
    .line 413
    return-object v3

    .line 414
    :cond_12
    move-object v2, v13

    .line 415
    move-object v3, v14

    .line 416
    :goto_8
    :try_start_7
    move-object v14, v0

    .line 417
    check-cast v14, Lrc/b0;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 418
    .line 419
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    iget-object v0, v14, Lrc/b0;->h:Lrc/d0;

    .line 423
    .line 424
    if-eqz v0, :cond_14

    .line 425
    .line 426
    new-instance v3, Lj/l;

    .line 427
    .line 428
    invoke-virtual {v0}, Lrc/d0;->c()Led/g;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    iget-object v7, v2, Lj/j;->b:Lp/k;

    .line 433
    .line 434
    iget-object v7, v7, Lp/k;->a:Landroid/content/Context;

    .line 435
    .line 436
    new-instance v8, Lg/n;

    .line 437
    .line 438
    sget-object v9, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 439
    .line 440
    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 445
    .line 446
    .line 447
    invoke-direct {v8, v5, v7, v6}, Lg/n;-><init>(Led/g;Ljava/io/File;Lg/l$a;)V

    .line 448
    .line 449
    .line 450
    iget-object v2, v2, Lj/j;->a:Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v0}, Lrc/d0;->b()Lrc/t;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-static {v2, v0}, Lj/j;->d(Ljava/lang/String;Lrc/t;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iget-object v2, v14, Lrc/b0;->j:Lrc/b0;

    .line 461
    .line 462
    if-eqz v2, :cond_13

    .line 463
    .line 464
    goto :goto_9

    .line 465
    :cond_13
    const/4 v11, 0x3

    .line 466
    :goto_9
    invoke-direct {v3, v8, v0, v11}, Lj/l;-><init>(Lg/l;Ljava/lang/String;I)V

    .line 467
    .line 468
    .line 469
    return-object v3

    .line 470
    :catch_2
    move-exception v0

    .line 471
    goto :goto_c

    .line 472
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 473
    .line 474
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 482
    :goto_a
    move-object v14, v3

    .line 483
    goto :goto_c

    .line 484
    :catch_3
    move-exception v0

    .line 485
    move-object v10, v4

    .line 486
    goto :goto_b

    .line 487
    :catch_4
    move-exception v0

    .line 488
    :goto_b
    move-object v4, v10

    .line 489
    :goto_c
    :try_start_9
    invoke-static {v14}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 490
    .line 491
    .line 492
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 493
    :cond_15
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 494
    .line 495
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 503
    :catch_5
    move-exception v0

    .line 504
    move-object v10, v4

    .line 505
    :goto_d
    if-nez v10, :cond_16

    .line 506
    .line 507
    goto :goto_e

    .line 508
    :cond_16
    invoke-static {v10}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 509
    .line 510
    .line 511
    :goto_e
    throw v0
.end method

.method public final b(Lrc/x;Lp9/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrc/x;",
            "Lp9/d<",
            "-",
            "Lrc/b0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lj/j$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj/j$b;

    .line 7
    .line 8
    iget v1, v0, Lj/j$b;->c:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj/j$b;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj/j$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj/j$b;-><init>(Lj/j;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj/j$b;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lj/j$b;->c:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {p2, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-object v2, p0, Lj/j;->c:Ll9/e;

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    iget-object p2, p0, Lj/j;->b:Lp/k;

    .line 70
    .line 71
    iget p2, p2, Lp/k;->o:I

    .line 72
    .line 73
    invoke-static {p2}, Landroidx/camera/core/impl/utils/f;->d(I)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    invoke-interface {v2}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Lrc/d$a;

    .line 84
    .line 85
    invoke-interface {p2, p1}, Lrc/d$a;->b(Lrc/x;)Lvc/e;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lvc/e;->execute()Lrc/b0;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    .line 95
    .line 96
    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_4
    invoke-interface {v2}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lrc/d$a;

    .line 105
    .line 106
    invoke-interface {p2, p1}, Lrc/d$a;->b(Lrc/x;)Lvc/e;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput v3, v0, Lj/j$b;->c:I

    .line 111
    .line 112
    new-instance p2, Lnc/j;

    .line 113
    .line 114
    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p2, v3, v0}, Lnc/j;-><init>(ILp9/d;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Lnc/j;->n()V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lu/d;

    .line 125
    .line 126
    invoke-direct {v0, p1, p2}, Lu/d;-><init>(Lrc/d;Lnc/j;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lvc/e;->y(Lrc/e;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v0}, Lnc/j;->D(Lx9/l;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Lnc/j;->m()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    if-ne p2, v1, :cond_5

    .line 140
    .line 141
    return-object v1

    .line 142
    :cond_5
    :goto_1
    move-object p1, p2

    .line 143
    check-cast p1, Lrc/b0;

    .line 144
    .line 145
    :goto_2
    invoke-virtual {p1}, Lrc/b0;->c()Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-nez p2, :cond_7

    .line 150
    .line 151
    const/16 p2, 0x130

    .line 152
    .line 153
    iget v0, p1, Lrc/b0;->e:I

    .line 154
    .line 155
    if-eq v0, p2, :cond_7

    .line 156
    .line 157
    iget-object p2, p1, Lrc/b0;->h:Lrc/d0;

    .line 158
    .line 159
    if-nez p2, :cond_6

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    invoke-static {p2}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 163
    .line 164
    .line 165
    :goto_3
    new-instance p2, Lo/e;

    .line 166
    .line 167
    invoke-direct {p2, p1}, Lo/e;-><init>(Lrc/b0;)V

    .line 168
    .line 169
    .line 170
    throw p2

    .line 171
    :cond_7
    return-object p1
.end method

.method public final c()Led/k;
    .locals 1

    iget-object v0, p0, Lj/j;->d:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    check-cast v0, Lh/a;

    invoke-interface {v0}, Lh/a;->getFileSystem()Led/k;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lrc/x;
    .locals 5

    .line 1
    new-instance v0, Lrc/x$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lrc/x$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lj/j;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lrc/x$a;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lj/j;->b:Lp/k;

    .line 12
    .line 13
    iget-object v2, v1, Lp/k;->j:Lrc/q;

    .line 14
    .line 15
    const-string v3, "headers"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lrc/q;->u()Lrc/q$a;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Lrc/x$a;->c:Lrc/q$a;

    .line 25
    .line 26
    iget-object v2, v1, Lp/k;->k:Lp/o;

    .line 27
    .line 28
    iget-object v2, v2, Lp/o;->a:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/Class;

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v4, v3}, Lrc/x$a;->e(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget v2, v1, Lp/k;->n:I

    .line 65
    .line 66
    invoke-static {v2}, Landroidx/camera/core/impl/utils/f;->d(I)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget v1, v1, Lp/k;->o:I

    .line 71
    .line 72
    invoke-static {v1}, Landroidx/camera/core/impl/utils/f;->d(I)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    sget-object v1, Lrc/c;->o:Lrc/c;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-eqz v1, :cond_3

    .line 84
    .line 85
    if-nez v3, :cond_3

    .line 86
    .line 87
    invoke-static {v2}, Landroidx/camera/core/impl/utils/f;->e(I)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    sget-object v1, Lrc/c;->n:Lrc/c;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    sget-object v1, Lj/j;->f:Lrc/c;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    if-nez v1, :cond_4

    .line 100
    .line 101
    if-nez v3, :cond_4

    .line 102
    .line 103
    sget-object v1, Lj/j;->g:Lrc/c;

    .line 104
    .line 105
    :goto_1
    invoke-virtual {v0, v1}, Lrc/x$a;->b(Lrc/c;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {v0}, Lrc/x$a;->a()Lrc/x;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method

.method public final f(Lh/a$b;)Lo/c;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lj/j;->c()Led/k;

    move-result-object v1

    invoke-interface {p1}, Lh/a$b;->L()Led/z;

    move-result-object p1

    invoke-virtual {v1, p1}, Led/k;->l(Led/z;)Led/j0;

    move-result-object p1

    invoke-static {p1}, Led/v;->b(Led/j0;)Led/d0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lo/c;

    invoke-direct {v1, p1}, Lo/c;-><init>(Led/d0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Led/d0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-static {v1, p1}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v0
.end method

.method public final g(Lh/a$b;)Lg/k;
    .locals 4

    .line 1
    invoke-interface {p1}, Lh/a$b;->l()Led/z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lj/j;->c()Led/k;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lj/j;->b:Lp/k;

    .line 10
    .line 11
    iget-object v2, v2, Lp/k;->i:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lj/j;->a:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    new-instance v3, Lg/k;

    .line 18
    .line 19
    invoke-direct {v3, v0, v1, v2, p1}, Lg/k;-><init>(Led/z;Led/k;Ljava/lang/String;Ljava/io/Closeable;)V

    .line 20
    .line 21
    .line 22
    return-object v3
.end method

.method public final h(Lh/a$b;Lrc/x;Lrc/b0;Lo/c;)Lh/a$b;
    .locals 6

    .line 1
    iget-object v0, p0, Lj/j;->b:Lp/k;

    .line 2
    .line 3
    iget v1, v0, Lp/k;->n:I

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/camera/core/impl/utils/f;->e(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p3, Lrc/b0;->g:Lrc/q;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-boolean v1, p0, Lj/j;->e:Z

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lrc/x;->a()Lrc/c;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-boolean p2, p2, Lrc/c;->b:Z

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p3}, Lrc/b0;->a()Lrc/c;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-boolean p2, p2, Lrc/c;->b:Z

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    const-string p2, "Vary"

    .line 36
    .line 37
    invoke-virtual {v3, p2}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v1, "*"

    .line 42
    .line 43
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p2, 0x0

    .line 52
    :goto_0
    if-eqz p2, :cond_2

    .line 53
    .line 54
    :cond_1
    const/4 v2, 0x1

    .line 55
    :cond_2
    const/4 p2, 0x0

    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-static {p1}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-object p2

    .line 65
    :cond_4
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-interface {p1}, Lh/a$b;->T()Lh/f$a;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_2

    .line 72
    :cond_5
    iget-object p1, p0, Lj/j;->d:Ll9/e;

    .line 73
    .line 74
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lh/a;

    .line 79
    .line 80
    if-nez p1, :cond_6

    .line 81
    .line 82
    move-object p1, p2

    .line 83
    goto :goto_2

    .line 84
    :cond_6
    iget-object v0, v0, Lp/k;->i:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    iget-object v0, p0, Lj/j;->a:Ljava/lang/String;

    .line 89
    .line 90
    :cond_7
    invoke-interface {p1, v0}, Lh/a;->a(Ljava/lang/String;)Lh/f$a;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_2
    if-nez p1, :cond_8

    .line 95
    .line 96
    return-object p2

    .line 97
    :cond_8
    :try_start_0
    iget v0, p3, Lrc/b0;->e:I

    .line 98
    .line 99
    const/16 v1, 0x130

    .line 100
    .line 101
    if-ne v0, v1, :cond_b

    .line 102
    .line 103
    if-eqz p4, :cond_b

    .line 104
    .line 105
    new-instance v0, Lrc/b0$a;

    .line 106
    .line 107
    invoke-direct {v0, p3}, Lrc/b0$a;-><init>(Lrc/b0;)V

    .line 108
    .line 109
    .line 110
    iget-object p4, p4, Lo/c;->f:Lrc/q;

    .line 111
    .line 112
    invoke-static {p4, v3}, Lo/d$a;->a(Lrc/q;Lrc/q;)Lrc/q;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    invoke-virtual {p4}, Lrc/q;->u()Lrc/q$a;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    iput-object p4, v0, Lrc/b0$a;->f:Lrc/q$a;

    .line 121
    .line 122
    invoke-virtual {v0}, Lrc/b0$a;->a()Lrc/b0;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    invoke-virtual {p0}, Lj/j;->c()Led/k;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lh/f$a;->d()Led/z;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Led/k;->k(Led/z;)Led/h0;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Led/v;->a(Led/h0;)Led/b0;

    .line 139
    .line 140
    .line 141
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 142
    :try_start_1
    new-instance v1, Lo/c;

    .line 143
    .line 144
    invoke-direct {v1, p4}, Lo/c;-><init>(Lrc/b0;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Lo/c;->a(Led/b0;)V

    .line 148
    .line 149
    .line 150
    sget-object p4, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :catchall_0
    move-exception p4

    .line 154
    move-object v5, p4

    .line 155
    move-object p4, p2

    .line 156
    move-object p2, v5

    .line 157
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Led/b0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :catchall_1
    move-exception v0

    .line 162
    if-nez p2, :cond_9

    .line 163
    .line 164
    move-object p2, v0

    .line 165
    goto :goto_4

    .line 166
    :cond_9
    :try_start_3
    invoke-static {p2, v0}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    :goto_4
    if-nez p2, :cond_a

    .line 170
    .line 171
    invoke-static {p4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_9

    .line 175
    .line 176
    :cond_a
    throw p2

    .line 177
    :catchall_2
    move-exception p1

    .line 178
    goto/16 :goto_b

    .line 179
    .line 180
    :catch_0
    move-exception p2

    .line 181
    goto/16 :goto_a

    .line 182
    .line 183
    :cond_b
    invoke-virtual {p0}, Lj/j;->c()Led/k;

    .line 184
    .line 185
    .line 186
    move-result-object p4

    .line 187
    invoke-virtual {p1}, Lh/f$a;->d()Led/z;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p4, v0}, Led/k;->k(Led/z;)Led/h0;

    .line 192
    .line 193
    .line 194
    move-result-object p4

    .line 195
    invoke-static {p4}, Led/v;->a(Led/h0;)Led/b0;

    .line 196
    .line 197
    .line 198
    move-result-object p4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 199
    :try_start_4
    new-instance v0, Lo/c;

    .line 200
    .line 201
    invoke-direct {v0, p3}, Lo/c;-><init>(Lrc/b0;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, p4}, Lo/c;->a(Led/b0;)V

    .line 205
    .line 206
    .line 207
    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 208
    .line 209
    move-object v1, v0

    .line 210
    move-object v0, p2

    .line 211
    goto :goto_5

    .line 212
    :catchall_3
    move-exception v0

    .line 213
    move-object v1, p2

    .line 214
    :goto_5
    :try_start_5
    invoke-virtual {p4}, Led/b0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 215
    .line 216
    .line 217
    goto :goto_6

    .line 218
    :catchall_4
    move-exception p4

    .line 219
    if-nez v0, :cond_c

    .line 220
    .line 221
    move-object v0, p4

    .line 222
    goto :goto_6

    .line 223
    :cond_c
    :try_start_6
    invoke-static {v0, p4}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    :goto_6
    if-nez v0, :cond_f

    .line 227
    .line 228
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lj/j;->c()Led/k;

    .line 232
    .line 233
    .line 234
    move-result-object p4

    .line 235
    invoke-virtual {p1}, Lh/f$a;->c()Led/z;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p4, v0}, Led/k;->k(Led/z;)Led/h0;

    .line 240
    .line 241
    .line 242
    move-result-object p4

    .line 243
    invoke-static {p4}, Led/v;->a(Led/h0;)Led/b0;

    .line 244
    .line 245
    .line 246
    move-result-object p4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 247
    :try_start_7
    iget-object v0, p3, Lrc/b0;->h:Lrc/d0;

    .line 248
    .line 249
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lrc/d0;->c()Led/g;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-interface {v0, p4}, Led/g;->A(Led/h0;)J

    .line 257
    .line 258
    .line 259
    move-result-wide v0

    .line 260
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 261
    .line 262
    .line 263
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 264
    goto :goto_7

    .line 265
    :catchall_5
    move-exception v0

    .line 266
    move-object v5, v0

    .line 267
    move-object v0, p2

    .line 268
    move-object p2, v5

    .line 269
    :goto_7
    :try_start_8
    invoke-virtual {p4}, Led/b0;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 270
    .line 271
    .line 272
    goto :goto_8

    .line 273
    :catchall_6
    move-exception p4

    .line 274
    if-nez p2, :cond_d

    .line 275
    .line 276
    move-object p2, p4

    .line 277
    goto :goto_8

    .line 278
    :cond_d
    :try_start_9
    invoke-static {p2, p4}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    :goto_8
    if-nez p2, :cond_e

    .line 282
    .line 283
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :goto_9
    invoke-virtual {p1}, Lh/f$a;->b()Lh/f$b;

    .line 287
    .line 288
    .line 289
    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 290
    invoke-static {p3}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 291
    .line 292
    .line 293
    return-object p1

    .line 294
    :cond_e
    :try_start_a
    throw p2

    .line 295
    :cond_f
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 296
    :goto_a
    :try_start_b
    sget-object p4, Lu/c;->a:[Landroid/graphics/Bitmap$Config;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 297
    .line 298
    :try_start_c
    invoke-virtual {p1}, Lh/f$a;->a()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 299
    .line 300
    .line 301
    :catch_1
    :try_start_d
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 302
    :goto_b
    invoke-static {p3}, Lu/c;->a(Ljava/io/Closeable;)V

    .line 303
    .line 304
    .line 305
    throw p1
.end method
