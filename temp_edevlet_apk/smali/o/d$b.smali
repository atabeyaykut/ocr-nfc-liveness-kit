.class public final Lo/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lrc/x;

.field public final b:Lo/c;

.field public final c:Ljava/util/Date;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Date;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/Date;

.field public final h:J

.field public final i:J

.field public final j:Ljava/lang/String;

.field public final k:I


# direct methods
.method public constructor <init>(Lrc/x;Lo/c;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo/d$b;->a:Lrc/x;

    .line 5
    .line 6
    iput-object p2, p0, Lo/d$b;->b:Lo/c;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lo/d$b;->k:I

    .line 10
    .line 11
    if-eqz p2, :cond_8

    .line 12
    .line 13
    iget-wide v0, p2, Lo/c;->c:J

    .line 14
    .line 15
    iput-wide v0, p0, Lo/d$b;->h:J

    .line 16
    .line 17
    iget-wide v0, p2, Lo/c;->d:J

    .line 18
    .line 19
    iput-wide v0, p0, Lo/d$b;->i:J

    .line 20
    .line 21
    iget-object p2, p2, Lo/c;->f:Lrc/q;

    .line 22
    .line 23
    iget-object v0, p2, Lrc/q;->a:[Ljava/lang/String;

    .line 24
    .line 25
    array-length v0, v0

    .line 26
    div-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v0, :cond_8

    .line 31
    .line 32
    add-int/lit8 v3, v2, 0x1

    .line 33
    .line 34
    invoke-virtual {p2, v2}, Lrc/q;->o(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "Date"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_0

    .line 45
    .line 46
    invoke-virtual {p2, v5}, Lrc/q;->m(Ljava/lang/String;)Ljava/util/Date;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iput-object v4, p0, Lo/d$b;->c:Ljava/util/Date;

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Lrc/q;->w(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iput-object v2, p0, Lo/d$b;->d:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    const-string v5, "Expires"

    .line 60
    .line 61
    invoke-static {v4, v5}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    invoke-virtual {p2, v5}, Lrc/q;->m(Ljava/lang/String;)Ljava/util/Date;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, p0, Lo/d$b;->g:Ljava/util/Date;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    const-string v5, "Last-Modified"

    .line 75
    .line 76
    invoke-static {v4, v5}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_2

    .line 81
    .line 82
    invoke-virtual {p2, v5}, Lrc/q;->m(Ljava/lang/String;)Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iput-object v4, p0, Lo/d$b;->e:Ljava/util/Date;

    .line 87
    .line 88
    invoke-virtual {p2, v2}, Lrc/q;->w(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iput-object v2, p0, Lo/d$b;->f:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const-string v5, "ETag"

    .line 96
    .line 97
    invoke-static {v4, v5}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    invoke-virtual {p2, v2}, Lrc/q;->w(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iput-object v2, p0, Lo/d$b;->j:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    const-string v5, "Age"

    .line 111
    .line 112
    invoke-static {v4, v5}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_7

    .line 117
    .line 118
    invoke-virtual {p2, v2}, Lrc/q;->w(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    sget-object v4, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 123
    .line 124
    invoke-static {v2}, Lmc/i;->u(Ljava/lang/String;)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    const/4 v2, -0x1

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 133
    .line 134
    .line 135
    move-result-wide v4

    .line 136
    const-wide/32 v6, 0x7fffffff

    .line 137
    .line 138
    .line 139
    cmp-long v2, v4, v6

    .line 140
    .line 141
    if-lez v2, :cond_5

    .line 142
    .line 143
    const v2, 0x7fffffff

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    const-wide/16 v6, 0x0

    .line 148
    .line 149
    cmp-long v2, v4, v6

    .line 150
    .line 151
    if-gez v2, :cond_6

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    goto :goto_1

    .line 155
    :cond_6
    long-to-int v2, v4

    .line 156
    :goto_1
    iput v2, p0, Lo/d$b;->k:I

    .line 157
    .line 158
    :cond_7
    :goto_2
    move v2, v3

    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_8
    return-void
.end method


# virtual methods
.method public final a()Lo/d;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lo/d$b;->a:Lrc/x;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lo/d$b;->b:Lo/c;

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    new-instance v3, Lo/d;

    .line 11
    .line 12
    invoke-direct {v3, v1, v2}, Lo/d;-><init>(Lrc/x;Lo/c;)V

    .line 13
    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    iget-object v4, v1, Lrc/x;->b:Lrc/r;

    .line 17
    .line 18
    iget-boolean v4, v4, Lrc/r;->a:Z

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget-boolean v4, v3, Lo/c;->e:Z

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    new-instance v3, Lo/d;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2}, Lo/d;-><init>(Lrc/x;Lo/c;)V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_1
    iget-object v4, v3, Lo/c;->a:Ll9/e;

    .line 33
    .line 34
    invoke-interface {v4}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lrc/c;

    .line 39
    .line 40
    invoke-virtual {v1}, Lrc/x;->a()Lrc/c;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    iget-boolean v6, v6, Lrc/c;->b:Z

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x1

    .line 48
    if-nez v6, :cond_2

    .line 49
    .line 50
    invoke-interface {v4}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Lrc/c;

    .line 55
    .line 56
    iget-boolean v6, v6, Lrc/c;->b:Z

    .line 57
    .line 58
    if-nez v6, :cond_2

    .line 59
    .line 60
    const-string v6, "Vary"

    .line 61
    .line 62
    iget-object v9, v3, Lo/c;->f:Lrc/q;

    .line 63
    .line 64
    invoke-virtual {v9, v6}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string v9, "*"

    .line 69
    .line 70
    invoke-static {v6, v9}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_2

    .line 75
    .line 76
    const/4 v6, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v6, 0x0

    .line 79
    :goto_0
    if-nez v6, :cond_3

    .line 80
    .line 81
    new-instance v3, Lo/d;

    .line 82
    .line 83
    invoke-direct {v3, v1, v2}, Lo/d;-><init>(Lrc/x;Lo/c;)V

    .line 84
    .line 85
    .line 86
    return-object v3

    .line 87
    :cond_3
    invoke-virtual {v1}, Lrc/x;->a()Lrc/c;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    iget-boolean v9, v6, Lrc/c;->a:Z

    .line 92
    .line 93
    if-nez v9, :cond_1b

    .line 94
    .line 95
    iget-object v9, v1, Lrc/x;->d:Lrc/q;

    .line 96
    .line 97
    const-string v10, "If-Modified-Since"

    .line 98
    .line 99
    invoke-virtual {v9, v10}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    const-string v12, "If-None-Match"

    .line 104
    .line 105
    if-nez v11, :cond_4

    .line 106
    .line 107
    invoke-virtual {v9, v12}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    if-eqz v11, :cond_5

    .line 112
    .line 113
    :cond_4
    const/4 v7, 0x1

    .line 114
    :cond_5
    if-eqz v7, :cond_6

    .line 115
    .line 116
    goto/16 :goto_10

    .line 117
    .line 118
    :cond_6
    const-wide/16 v7, 0x0

    .line 119
    .line 120
    iget-wide v13, v0, Lo/d$b;->i:J

    .line 121
    .line 122
    iget-object v11, v0, Lo/d$b;->c:Ljava/util/Date;

    .line 123
    .line 124
    if-eqz v11, :cond_7

    .line 125
    .line 126
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v15

    .line 130
    move-object/from16 v17, v3

    .line 131
    .line 132
    sub-long v2, v13, v15

    .line 133
    .line 134
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    goto :goto_1

    .line 139
    :cond_7
    move-object/from16 v17, v3

    .line 140
    .line 141
    move-wide v2, v7

    .line 142
    :goto_1
    const/4 v15, -0x1

    .line 143
    iget v7, v0, Lo/d$b;->k:I

    .line 144
    .line 145
    if-eq v7, v15, :cond_8

    .line 146
    .line 147
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 148
    .line 149
    move-object/from16 v16, v9

    .line 150
    .line 151
    move-object/from16 v20, v10

    .line 152
    .line 153
    int-to-long v9, v7

    .line 154
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v7

    .line 158
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    goto :goto_2

    .line 163
    :cond_8
    move-object/from16 v16, v9

    .line 164
    .line 165
    move-object/from16 v20, v10

    .line 166
    .line 167
    :goto_2
    iget-wide v7, v0, Lo/d$b;->h:J

    .line 168
    .line 169
    sub-long v9, v13, v7

    .line 170
    .line 171
    sget-object v21, Lu/m;->a:Lu/m$a;

    .line 172
    .line 173
    invoke-virtual/range {v21 .. v21}, Lu/m$a;->invoke()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v21

    .line 177
    check-cast v21, Ljava/lang/Number;

    .line 178
    .line 179
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    .line 180
    .line 181
    .line 182
    move-result-wide v21

    .line 183
    sub-long v21, v21, v13

    .line 184
    .line 185
    add-long/2addr v2, v9

    .line 186
    add-long v2, v2, v21

    .line 187
    .line 188
    invoke-interface {v4}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Lrc/c;

    .line 193
    .line 194
    iget v4, v4, Lrc/c;->c:I

    .line 195
    .line 196
    iget-object v9, v1, Lrc/x;->b:Lrc/r;

    .line 197
    .line 198
    iget-object v10, v0, Lo/d$b;->e:Ljava/util/Date;

    .line 199
    .line 200
    if-eq v4, v15, :cond_9

    .line 201
    .line 202
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 203
    .line 204
    int-to-long v13, v4

    .line 205
    invoke-virtual {v7, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 206
    .line 207
    .line 208
    move-result-wide v7

    .line 209
    goto :goto_8

    .line 210
    :cond_9
    iget-object v4, v0, Lo/d$b;->g:Ljava/util/Date;

    .line 211
    .line 212
    if-eqz v4, :cond_c

    .line 213
    .line 214
    if-nez v11, :cond_a

    .line 215
    .line 216
    const/4 v7, 0x0

    .line 217
    goto :goto_3

    .line 218
    :cond_a
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    .line 219
    .line 220
    .line 221
    move-result-wide v7

    .line 222
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    :goto_3
    if-nez v7, :cond_b

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 230
    .line 231
    .line 232
    move-result-wide v13

    .line 233
    :goto_4
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 234
    .line 235
    .line 236
    move-result-wide v7

    .line 237
    sub-long/2addr v7, v13

    .line 238
    const-wide/16 v13, 0x0

    .line 239
    .line 240
    cmp-long v4, v7, v13

    .line 241
    .line 242
    if-lez v4, :cond_10

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_c
    if-eqz v10, :cond_10

    .line 246
    .line 247
    iget-object v4, v9, Lrc/r;->h:Ljava/util/List;

    .line 248
    .line 249
    if-nez v4, :cond_d

    .line 250
    .line 251
    const/4 v4, 0x0

    .line 252
    goto :goto_5

    .line 253
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    sget-object v14, Lrc/r;->l:Lrc/r$b;

    .line 259
    .line 260
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-static {v13, v4}, Lrc/r$b;->f(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    :goto_5
    if-nez v4, :cond_10

    .line 271
    .line 272
    if-nez v11, :cond_e

    .line 273
    .line 274
    const/4 v4, 0x0

    .line 275
    goto :goto_6

    .line 276
    :cond_e
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    .line 277
    .line 278
    .line 279
    move-result-wide v13

    .line 280
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    :goto_6
    if-nez v4, :cond_f

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_f
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 288
    .line 289
    .line 290
    move-result-wide v7

    .line 291
    :goto_7
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    .line 292
    .line 293
    .line 294
    move-result-wide v13

    .line 295
    sub-long/2addr v7, v13

    .line 296
    const-wide/16 v13, 0x0

    .line 297
    .line 298
    cmp-long v4, v7, v13

    .line 299
    .line 300
    if-lez v4, :cond_10

    .line 301
    .line 302
    const/16 v4, 0xa

    .line 303
    .line 304
    int-to-long v13, v4

    .line 305
    div-long/2addr v7, v13

    .line 306
    goto :goto_8

    .line 307
    :cond_10
    const-wide/16 v7, 0x0

    .line 308
    .line 309
    :goto_8
    iget v4, v6, Lrc/c;->c:I

    .line 310
    .line 311
    if-eq v4, v15, :cond_11

    .line 312
    .line 313
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 314
    .line 315
    move-object/from16 v21, v11

    .line 316
    .line 317
    move-object v14, v12

    .line 318
    int-to-long v11, v4

    .line 319
    invoke-virtual {v13, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 320
    .line 321
    .line 322
    move-result-wide v11

    .line 323
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 324
    .line 325
    .line 326
    move-result-wide v7

    .line 327
    goto :goto_9

    .line 328
    :cond_11
    move-object/from16 v21, v11

    .line 329
    .line 330
    move-object v14, v12

    .line 331
    :goto_9
    iget v4, v6, Lrc/c;->i:I

    .line 332
    .line 333
    if-eq v4, v15, :cond_12

    .line 334
    .line 335
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 336
    .line 337
    int-to-long v12, v4

    .line 338
    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 339
    .line 340
    .line 341
    move-result-wide v11

    .line 342
    goto :goto_a

    .line 343
    :cond_12
    const-wide/16 v11, 0x0

    .line 344
    .line 345
    :goto_a
    iget-boolean v4, v5, Lrc/c;->g:Z

    .line 346
    .line 347
    if-nez v4, :cond_13

    .line 348
    .line 349
    iget v4, v6, Lrc/c;->h:I

    .line 350
    .line 351
    if-eq v4, v15, :cond_13

    .line 352
    .line 353
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 354
    .line 355
    move-object v15, v14

    .line 356
    int-to-long v13, v4

    .line 357
    invoke-virtual {v6, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 358
    .line 359
    .line 360
    move-result-wide v13

    .line 361
    move-wide/from16 v18, v13

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_13
    move-object v15, v14

    .line 365
    const-wide/16 v18, 0x0

    .line 366
    .line 367
    :goto_b
    iget-boolean v4, v5, Lrc/c;->a:Z

    .line 368
    .line 369
    if-nez v4, :cond_14

    .line 370
    .line 371
    add-long/2addr v2, v11

    .line 372
    add-long v7, v7, v18

    .line 373
    .line 374
    cmp-long v4, v2, v7

    .line 375
    .line 376
    if-gez v4, :cond_14

    .line 377
    .line 378
    new-instance v1, Lo/d;

    .line 379
    .line 380
    move-object/from16 v3, v17

    .line 381
    .line 382
    const/4 v2, 0x0

    .line 383
    invoke-direct {v1, v2, v3}, Lo/d;-><init>(Lrc/x;Lo/c;)V

    .line 384
    .line 385
    .line 386
    return-object v1

    .line 387
    :cond_14
    move-object/from16 v3, v17

    .line 388
    .line 389
    iget-object v2, v0, Lo/d$b;->j:Ljava/lang/String;

    .line 390
    .line 391
    if-eqz v2, :cond_15

    .line 392
    .line 393
    move-object v10, v15

    .line 394
    goto :goto_d

    .line 395
    :cond_15
    if-eqz v10, :cond_16

    .line 396
    .line 397
    iget-object v2, v0, Lo/d$b;->f:Ljava/lang/String;

    .line 398
    .line 399
    goto :goto_c

    .line 400
    :cond_16
    if-eqz v21, :cond_1a

    .line 401
    .line 402
    iget-object v2, v0, Lo/d$b;->d:Ljava/lang/String;

    .line 403
    .line 404
    :goto_c
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    move-object/from16 v10, v20

    .line 408
    .line 409
    :goto_d
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 410
    .line 411
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 412
    .line 413
    .line 414
    iget-object v4, v1, Lrc/x;->c:Ljava/lang/String;

    .line 415
    .line 416
    iget-object v5, v1, Lrc/x;->e:Lrc/a0;

    .line 417
    .line 418
    iget-object v1, v1, Lrc/x;->f:Ljava/util/Map;

    .line 419
    .line 420
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    if-eqz v6, :cond_17

    .line 425
    .line 426
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 427
    .line 428
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 429
    .line 430
    .line 431
    goto :goto_e

    .line 432
    :cond_17
    invoke-static {v1}, Lm9/e0;->V0(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    :goto_e
    invoke-virtual/range {v16 .. v16}, Lrc/q;->u()Lrc/q$a;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    invoke-virtual {v6, v10, v2}, Lrc/q$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    if-eqz v9, :cond_19

    .line 444
    .line 445
    invoke-virtual {v6}, Lrc/q$a;->c()Lrc/q;

    .line 446
    .line 447
    .line 448
    move-result-object v24

    .line 449
    sget-object v2, Lsc/c;->a:[B

    .line 450
    .line 451
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    if-eqz v2, :cond_18

    .line 456
    .line 457
    sget-object v1, Lm9/w;->a:Lm9/w;

    .line 458
    .line 459
    goto :goto_f

    .line 460
    :cond_18
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 461
    .line 462
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 463
    .line 464
    .line 465
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    const-string v2, "Collections.unmodifiableMap(LinkedHashMap(this))"

    .line 470
    .line 471
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    :goto_f
    move-object/from16 v26, v1

    .line 475
    .line 476
    new-instance v1, Lrc/x;

    .line 477
    .line 478
    move-object/from16 v21, v1

    .line 479
    .line 480
    move-object/from16 v22, v9

    .line 481
    .line 482
    move-object/from16 v23, v4

    .line 483
    .line 484
    move-object/from16 v25, v5

    .line 485
    .line 486
    invoke-direct/range {v21 .. v26}, Lrc/x;-><init>(Lrc/r;Ljava/lang/String;Lrc/q;Lrc/a0;Ljava/util/Map;)V

    .line 487
    .line 488
    .line 489
    new-instance v2, Lo/d;

    .line 490
    .line 491
    invoke-direct {v2, v1, v3}, Lo/d;-><init>(Lrc/x;Lo/c;)V

    .line 492
    .line 493
    .line 494
    return-object v2

    .line 495
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 496
    .line 497
    const-string v2, "url == null"

    .line 498
    .line 499
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    throw v1

    .line 507
    :cond_1a
    new-instance v2, Lo/d;

    .line 508
    .line 509
    const/4 v3, 0x0

    .line 510
    invoke-direct {v2, v1, v3}, Lo/d;-><init>(Lrc/x;Lo/c;)V

    .line 511
    .line 512
    .line 513
    return-object v2

    .line 514
    :cond_1b
    :goto_10
    move-object v3, v2

    .line 515
    new-instance v2, Lo/d;

    .line 516
    .line 517
    invoke-direct {v2, v1, v3}, Lo/d;-><init>(Lrc/x;Lo/c;)V

    .line 518
    .line 519
    .line 520
    return-object v2
.end method
