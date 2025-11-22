.class public final Led/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/g;
.implements Led/f;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Led/e0;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Led/h0;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p0, v0, v1}, Led/h0;->M(Led/e;J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-wide v0
.end method

.method public final B(I)Led/e0;
    .locals 3

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, p0, Led/e;->a:Led/e0;

    if-nez v1, :cond_1

    invoke-static {}, Led/f0;->b()Led/e0;

    move-result-object p1

    iput-object p1, p0, Led/e;->a:Led/e0;

    iput-object p1, p1, Led/e0;->g:Led/e0;

    iput-object p1, p1, Led/e0;->f:Led/e0;

    goto :goto_2

    :cond_1
    iget-object v1, v1, Led/e0;->g:Led/e0;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget v2, v1, Led/e0;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_3

    iget-boolean p1, v1, Led/e0;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Led/f0;->b()Led/e0;

    move-result-object p1

    invoke-virtual {v1, p1}, Led/e0;->b(Led/e0;)V

    :goto_2
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic C(Led/h;)Led/f;
    .locals 0

    invoke-virtual {p0, p1}, Led/e;->F(Led/h;)V

    return-object p0
.end method

.method public final F(Led/h;)V
    .locals 1

    .line 1
    const-string v0, "byteString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Led/h;->r()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, p0, v0}, Led/h;->H(Led/e;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final G(Led/h;)Z
    .locals 9

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Led/h;->a:[B

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ltz v0, :cond_4

    .line 11
    .line 12
    iget-wide v2, p0, Led/e;->b:J

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    sub-long/2addr v2, v4

    .line 17
    int-to-long v6, v0

    .line 18
    cmp-long v8, v2, v6

    .line 19
    .line 20
    if-ltz v8, :cond_4

    .line 21
    .line 22
    array-length v2, p1

    .line 23
    sub-int/2addr v2, v1

    .line 24
    if-ge v2, v0, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    if-lez v0, :cond_3

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 31
    .line 32
    int-to-long v6, v2

    .line 33
    add-long/2addr v6, v4

    .line 34
    invoke-virtual {p0, v6, v7}, Led/e;->f(J)B

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    add-int/2addr v2, v1

    .line 39
    aget-byte v2, p1, v2

    .line 40
    .line 41
    if-eq v6, v2, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    if-lt v3, v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v2, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 50
    :cond_4
    :goto_2
    return v1
.end method

.method public final H(Led/h;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Led/e;->j(JLed/h;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final I()Z
    .locals 5

    iget-wide v0, p0, Led/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final J(Led/j0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x2000

    invoke-interface {p1, p0, v0, v1}, Led/j0;->w(Led/e;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void
.end method

.method public final M(Led/e;J)V
    .locals 9

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p1, p0, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-eqz v2, :cond_f

    .line 14
    .line 15
    iget-wide v3, p1, Led/e;->b:J

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    move-wide v7, p2

    .line 20
    invoke-static/range {v3 .. v8}, La6/a;->g(JJJ)V

    .line 21
    .line 22
    .line 23
    :goto_1
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v4, p2, v2

    .line 26
    .line 27
    if-lez v4, :cond_e

    .line 28
    .line 29
    iget-object v2, p1, Led/e;->a:Led/e0;

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v2, v2, Led/e0;->c:I

    .line 35
    .line 36
    iget-object v3, p1, Led/e;->a:Led/e0;

    .line 37
    .line 38
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget v3, v3, Led/e0;->b:I

    .line 42
    .line 43
    sub-int/2addr v2, v3

    .line 44
    int-to-long v2, v2

    .line 45
    cmp-long v4, p2, v2

    .line 46
    .line 47
    if-gez v4, :cond_7

    .line 48
    .line 49
    iget-object v2, p0, Led/e;->a:Led/e0;

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget-object v2, v2, Led/e0;->g:Led/e0;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 57
    :goto_2
    if-eqz v2, :cond_3

    .line 58
    .line 59
    iget-boolean v3, v2, Led/e0;->e:Z

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    iget v3, v2, Led/e0;->c:I

    .line 64
    .line 65
    int-to-long v3, v3

    .line 66
    add-long/2addr v3, p2

    .line 67
    iget-boolean v5, v2, Led/e0;->d:Z

    .line 68
    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    iget v5, v2, Led/e0;->b:I

    .line 74
    .line 75
    :goto_3
    int-to-long v5, v5

    .line 76
    sub-long/2addr v3, v5

    .line 77
    const-wide/16 v5, 0x2000

    .line 78
    .line 79
    cmp-long v7, v3, v5

    .line 80
    .line 81
    if-gtz v7, :cond_3

    .line 82
    .line 83
    iget-object v0, p1, Led/e;->a:Led/e0;

    .line 84
    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    long-to-int v1, p2

    .line 89
    invoke-virtual {v0, v2, v1}, Led/e0;->d(Led/e0;I)V

    .line 90
    .line 91
    .line 92
    iget-wide v0, p1, Led/e;->b:J

    .line 93
    .line 94
    sub-long/2addr v0, p2

    .line 95
    iput-wide v0, p1, Led/e;->b:J

    .line 96
    .line 97
    iget-wide v0, p0, Led/e;->b:J

    .line 98
    .line 99
    add-long/2addr v0, p2

    .line 100
    iput-wide v0, p0, Led/e;->b:J

    .line 101
    .line 102
    goto/16 :goto_a

    .line 103
    .line 104
    :cond_3
    iget-object v2, p1, Led/e;->a:Led/e0;

    .line 105
    .line 106
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    long-to-int v3, p2

    .line 110
    if-lez v3, :cond_4

    .line 111
    .line 112
    iget v4, v2, Led/e0;->c:I

    .line 113
    .line 114
    iget v5, v2, Led/e0;->b:I

    .line 115
    .line 116
    sub-int/2addr v4, v5

    .line 117
    if-gt v3, v4, :cond_4

    .line 118
    .line 119
    const/4 v4, 0x1

    .line 120
    goto :goto_4

    .line 121
    :cond_4
    const/4 v4, 0x0

    .line 122
    :goto_4
    if-eqz v4, :cond_6

    .line 123
    .line 124
    const/16 v4, 0x400

    .line 125
    .line 126
    if-lt v3, v4, :cond_5

    .line 127
    .line 128
    invoke-virtual {v2}, Led/e0;->c()Led/e0;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    goto :goto_5

    .line 133
    :cond_5
    invoke-static {}, Led/f0;->b()Led/e0;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    iget v5, v2, Led/e0;->b:I

    .line 138
    .line 139
    add-int v6, v5, v3

    .line 140
    .line 141
    iget-object v7, v2, Led/e0;->a:[B

    .line 142
    .line 143
    iget-object v8, v4, Led/e0;->a:[B

    .line 144
    .line 145
    invoke-static {v1, v7, v5, v8, v6}, Lm9/i;->h0(I[BI[BI)V

    .line 146
    .line 147
    .line 148
    :goto_5
    iget v5, v4, Led/e0;->b:I

    .line 149
    .line 150
    add-int/2addr v5, v3

    .line 151
    iput v5, v4, Led/e0;->c:I

    .line 152
    .line 153
    iget v5, v2, Led/e0;->b:I

    .line 154
    .line 155
    add-int/2addr v5, v3

    .line 156
    iput v5, v2, Led/e0;->b:I

    .line 157
    .line 158
    iget-object v2, v2, Led/e0;->g:Led/e0;

    .line 159
    .line 160
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v4}, Led/e0;->b(Led/e0;)V

    .line 164
    .line 165
    .line 166
    iput-object v4, p1, Led/e;->a:Led/e0;

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    const-string p2, "byteCount out of range"

    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_7
    :goto_6
    iget-object v2, p1, Led/e;->a:Led/e0;

    .line 182
    .line 183
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget v3, v2, Led/e0;->c:I

    .line 187
    .line 188
    iget v4, v2, Led/e0;->b:I

    .line 189
    .line 190
    sub-int/2addr v3, v4

    .line 191
    int-to-long v3, v3

    .line 192
    invoke-virtual {v2}, Led/e0;->a()Led/e0;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    iput-object v5, p1, Led/e;->a:Led/e0;

    .line 197
    .line 198
    iget-object v5, p0, Led/e;->a:Led/e0;

    .line 199
    .line 200
    if-nez v5, :cond_8

    .line 201
    .line 202
    iput-object v2, p0, Led/e;->a:Led/e0;

    .line 203
    .line 204
    iput-object v2, v2, Led/e0;->g:Led/e0;

    .line 205
    .line 206
    iput-object v2, v2, Led/e0;->f:Led/e0;

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_8
    iget-object v5, v5, Led/e0;->g:Led/e0;

    .line 210
    .line 211
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v2}, Led/e0;->b(Led/e0;)V

    .line 215
    .line 216
    .line 217
    iget-object v5, v2, Led/e0;->g:Led/e0;

    .line 218
    .line 219
    if-eq v5, v2, :cond_9

    .line 220
    .line 221
    const/4 v6, 0x1

    .line 222
    goto :goto_7

    .line 223
    :cond_9
    const/4 v6, 0x0

    .line 224
    :goto_7
    if-eqz v6, :cond_d

    .line 225
    .line 226
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iget-boolean v5, v5, Led/e0;->e:Z

    .line 230
    .line 231
    if-nez v5, :cond_a

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_a
    iget v5, v2, Led/e0;->c:I

    .line 235
    .line 236
    iget v6, v2, Led/e0;->b:I

    .line 237
    .line 238
    sub-int/2addr v5, v6

    .line 239
    iget-object v6, v2, Led/e0;->g:Led/e0;

    .line 240
    .line 241
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget v6, v6, Led/e0;->c:I

    .line 245
    .line 246
    rsub-int v6, v6, 0x2000

    .line 247
    .line 248
    iget-object v7, v2, Led/e0;->g:Led/e0;

    .line 249
    .line 250
    invoke-static {v7}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iget-boolean v7, v7, Led/e0;->d:Z

    .line 254
    .line 255
    if-eqz v7, :cond_b

    .line 256
    .line 257
    const/4 v7, 0x0

    .line 258
    goto :goto_8

    .line 259
    :cond_b
    iget-object v7, v2, Led/e0;->g:Led/e0;

    .line 260
    .line 261
    invoke-static {v7}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    iget v7, v7, Led/e0;->b:I

    .line 265
    .line 266
    :goto_8
    add-int/2addr v6, v7

    .line 267
    if-le v5, v6, :cond_c

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_c
    iget-object v6, v2, Led/e0;->g:Led/e0;

    .line 271
    .line 272
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v6, v5}, Led/e0;->d(Led/e0;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Led/e0;->a()Led/e0;

    .line 279
    .line 280
    .line 281
    invoke-static {v2}, Led/f0;->a(Led/e0;)V

    .line 282
    .line 283
    .line 284
    :goto_9
    iget-wide v5, p1, Led/e;->b:J

    .line 285
    .line 286
    sub-long/2addr v5, v3

    .line 287
    iput-wide v5, p1, Led/e;->b:J

    .line 288
    .line 289
    iget-wide v5, p0, Led/e;->b:J

    .line 290
    .line 291
    add-long/2addr v5, v3

    .line 292
    iput-wide v5, p0, Led/e;->b:J

    .line 293
    .line 294
    sub-long/2addr p2, v3

    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 298
    .line 299
    const-string p2, "cannot compact"

    .line 300
    .line 301
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p1

    .line 309
    :cond_e
    :goto_a
    return-void

    .line 310
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 311
    .line 312
    const-string p2, "source == this"

    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw p1
.end method

.method public final N(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_4

    .line 11
    .line 12
    const-wide/16 v0, 0x1

    .line 13
    .line 14
    const-wide v2, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v4, p1, v2

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    add-long v2, p1, v0

    .line 25
    .line 26
    :goto_1
    const/16 v4, 0xa

    .line 27
    .line 28
    int-to-byte v10, v4

    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    move-object v4, p0

    .line 32
    move v5, v10

    .line 33
    move-wide v8, v2

    .line 34
    invoke-virtual/range {v4 .. v9}, Led/e;->g(BJJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    const-wide/16 v6, -0x1

    .line 39
    .line 40
    cmp-long v8, v4, v6

    .line 41
    .line 42
    if-eqz v8, :cond_2

    .line 43
    .line 44
    invoke-static {p0, v4, v5}, Lfd/k;->b(Led/e;J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-wide v4, p0, Led/e;->b:J

    .line 50
    .line 51
    cmp-long v6, v2, v4

    .line 52
    .line 53
    if-gez v6, :cond_3

    .line 54
    .line 55
    sub-long v0, v2, v0

    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Led/e;->f(J)B

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0xd

    .line 62
    .line 63
    int-to-byte v1, v1

    .line 64
    if-ne v0, v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, v2, v3}, Led/e;->f(J)B

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ne v0, v10, :cond_3

    .line 71
    .line 72
    invoke-static {p0, v2, v3}, Lfd/k;->b(Led/e;J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_2
    return-object p1

    .line 77
    :cond_3
    new-instance v6, Led/e;

    .line 78
    .line 79
    invoke-direct {v6}, Led/e;-><init>()V

    .line 80
    .line 81
    .line 82
    const-wide/16 v1, 0x0

    .line 83
    .line 84
    iget-wide v3, p0, Led/e;->b:J

    .line 85
    .line 86
    const/16 v0, 0x20

    .line 87
    .line 88
    int-to-long v7, v0

    .line 89
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    move-object v0, p0

    .line 94
    move-object v5, v6

    .line 95
    invoke-virtual/range {v0 .. v5}, Led/e;->e(JJLed/e;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/io/EOFException;

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "\\n not found: limit="

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-wide v2, p0, Led/e;->b:J

    .line 108
    .line 109
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 110
    .line 111
    .line 112
    move-result-wide p1

    .line 113
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, " content="

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Led/e;->n()Led/h;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Led/h;->t()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const/16 p1, 0x2026

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :cond_4
    const-string v0, "limit < 0: "

    .line 146
    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p2
.end method

.method public final O(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Led/e;->B(I)Led/e0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v0, Led/e0;->c:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, v0, Led/e0;->c:I

    .line 11
    .line 12
    int-to-byte p1, p1

    .line 13
    iget-object v0, v0, Led/e0;->a:[B

    .line 14
    .line 15
    aput-byte p1, v0, v1

    .line 16
    .line 17
    iget-wide v0, p0, Led/e;->b:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Led/e;->b:J

    .line 23
    .line 24
    return-void
.end method

.method public final P(J)Led/e;
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Led/e;->O(I)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    const/4 v3, 0x1

    .line 15
    if-gez v2, :cond_2

    .line 16
    .line 17
    neg-long p1, p1

    .line 18
    cmp-long v2, p1, v0

    .line 19
    .line 20
    if-gez v2, :cond_1

    .line 21
    .line 22
    const-string p1, "-9223372036854775808"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Led/e;->i0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    const/4 v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v2, 0x0

    .line 32
    :goto_0
    const-wide/32 v4, 0x5f5e100

    .line 33
    .line 34
    .line 35
    const/16 v6, 0xa

    .line 36
    .line 37
    cmp-long v7, p1, v4

    .line 38
    .line 39
    if-gez v7, :cond_a

    .line 40
    .line 41
    const-wide/16 v4, 0x2710

    .line 42
    .line 43
    cmp-long v7, p1, v4

    .line 44
    .line 45
    if-gez v7, :cond_6

    .line 46
    .line 47
    const-wide/16 v4, 0x64

    .line 48
    .line 49
    cmp-long v7, p1, v4

    .line 50
    .line 51
    if-gez v7, :cond_4

    .line 52
    .line 53
    const-wide/16 v4, 0xa

    .line 54
    .line 55
    cmp-long v7, p1, v4

    .line 56
    .line 57
    if-gez v7, :cond_3

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_3
    const/4 v3, 0x2

    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_4
    const-wide/16 v3, 0x3e8

    .line 65
    .line 66
    cmp-long v5, p1, v3

    .line 67
    .line 68
    if-gez v5, :cond_5

    .line 69
    .line 70
    const/4 v3, 0x3

    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_5
    const/4 v3, 0x4

    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_6
    const-wide/32 v3, 0xf4240

    .line 77
    .line 78
    .line 79
    cmp-long v5, p1, v3

    .line 80
    .line 81
    if-gez v5, :cond_8

    .line 82
    .line 83
    const-wide/32 v3, 0x186a0

    .line 84
    .line 85
    .line 86
    cmp-long v5, p1, v3

    .line 87
    .line 88
    if-gez v5, :cond_7

    .line 89
    .line 90
    const/4 v3, 0x5

    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_7
    const/4 v3, 0x6

    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_8
    const-wide/32 v3, 0x989680

    .line 97
    .line 98
    .line 99
    cmp-long v5, p1, v3

    .line 100
    .line 101
    if-gez v5, :cond_9

    .line 102
    .line 103
    const/4 v3, 0x7

    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_9
    const/16 v3, 0x8

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_a
    const-wide v3, 0xe8d4a51000L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    cmp-long v5, p1, v3

    .line 116
    .line 117
    if-gez v5, :cond_e

    .line 118
    .line 119
    const-wide v3, 0x2540be400L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    cmp-long v5, p1, v3

    .line 125
    .line 126
    if-gez v5, :cond_c

    .line 127
    .line 128
    const-wide/32 v3, 0x3b9aca00

    .line 129
    .line 130
    .line 131
    cmp-long v5, p1, v3

    .line 132
    .line 133
    if-gez v5, :cond_b

    .line 134
    .line 135
    const/16 v3, 0x9

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_b
    const/16 v3, 0xa

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_c
    const-wide v3, 0x174876e800L

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    cmp-long v5, p1, v3

    .line 147
    .line 148
    if-gez v5, :cond_d

    .line 149
    .line 150
    const/16 v3, 0xb

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_d
    const/16 v3, 0xc

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    cmp-long v5, p1, v3

    .line 162
    .line 163
    if-gez v5, :cond_11

    .line 164
    .line 165
    const-wide v3, 0x9184e72a000L

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    cmp-long v5, p1, v3

    .line 171
    .line 172
    if-gez v5, :cond_f

    .line 173
    .line 174
    const/16 v3, 0xd

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_f
    const-wide v3, 0x5af3107a4000L

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    cmp-long v5, p1, v3

    .line 183
    .line 184
    if-gez v5, :cond_10

    .line 185
    .line 186
    const/16 v3, 0xe

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_10
    const/16 v3, 0xf

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_11
    const-wide v3, 0x16345785d8a0000L

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    cmp-long v5, p1, v3

    .line 198
    .line 199
    if-gez v5, :cond_13

    .line 200
    .line 201
    const-wide v3, 0x2386f26fc10000L

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    cmp-long v5, p1, v3

    .line 207
    .line 208
    if-gez v5, :cond_12

    .line 209
    .line 210
    const/16 v3, 0x10

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_12
    const/16 v3, 0x11

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    cmp-long v5, p1, v3

    .line 222
    .line 223
    if-gez v5, :cond_14

    .line 224
    .line 225
    const/16 v3, 0x12

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_14
    const/16 v3, 0x13

    .line 229
    .line 230
    :goto_1
    if-eqz v2, :cond_15

    .line 231
    .line 232
    add-int/lit8 v3, v3, 0x1

    .line 233
    .line 234
    :cond_15
    invoke-virtual {p0, v3}, Led/e;->B(I)Led/e0;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    iget v5, v4, Led/e0;->c:I

    .line 239
    .line 240
    add-int/2addr v5, v3

    .line 241
    :goto_2
    iget-object v7, v4, Led/e0;->a:[B

    .line 242
    .line 243
    cmp-long v8, p1, v0

    .line 244
    .line 245
    if-eqz v8, :cond_16

    .line 246
    .line 247
    int-to-long v8, v6

    .line 248
    rem-long v10, p1, v8

    .line 249
    .line 250
    long-to-int v11, v10

    .line 251
    add-int/lit8 v5, v5, -0x1

    .line 252
    .line 253
    sget-object v10, Lfd/k;->a:[B

    .line 254
    .line 255
    aget-byte v10, v10, v11

    .line 256
    .line 257
    aput-byte v10, v7, v5

    .line 258
    .line 259
    div-long/2addr p1, v8

    .line 260
    goto :goto_2

    .line 261
    :cond_16
    if-eqz v2, :cond_17

    .line 262
    .line 263
    add-int/lit8 v5, v5, -0x1

    .line 264
    .line 265
    const/16 p1, 0x2d

    .line 266
    .line 267
    int-to-byte p1, p1

    .line 268
    aput-byte p1, v7, v5

    .line 269
    .line 270
    :cond_17
    iget p1, v4, Led/e0;->c:I

    .line 271
    .line 272
    add-int/2addr p1, v3

    .line 273
    iput p1, v4, Led/e0;->c:I

    .line 274
    .line 275
    iget-wide p1, p0, Led/e;->b:J

    .line 276
    .line 277
    int-to-long v0, v3

    .line 278
    add-long/2addr p1, v0

    .line 279
    iput-wide p1, p0, Led/e;->b:J

    .line 280
    .line 281
    :goto_3
    return-object p0
.end method

.method public final bridge synthetic S(Ljava/lang/String;)Led/f;
    .locals 0

    invoke-virtual {p0, p1}, Led/e;->i0(Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic U(J)Led/f;
    .locals 0

    invoke-virtual {p0, p1, p2}, Led/e;->W(J)Led/e;

    return-object p0
.end method

.method public final W(J)Led/e;
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Led/e;->O(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    ushr-long v1, p1, v0

    .line 15
    .line 16
    or-long/2addr v1, p1

    .line 17
    const/4 v3, 0x2

    .line 18
    ushr-long v4, v1, v3

    .line 19
    .line 20
    or-long/2addr v1, v4

    .line 21
    const/4 v4, 0x4

    .line 22
    ushr-long v5, v1, v4

    .line 23
    .line 24
    or-long/2addr v1, v5

    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    ushr-long v6, v1, v5

    .line 28
    .line 29
    or-long/2addr v1, v6

    .line 30
    const/16 v6, 0x10

    .line 31
    .line 32
    ushr-long v7, v1, v6

    .line 33
    .line 34
    or-long/2addr v1, v7

    .line 35
    const/16 v7, 0x20

    .line 36
    .line 37
    ushr-long v8, v1, v7

    .line 38
    .line 39
    or-long/2addr v1, v8

    .line 40
    ushr-long v8, v1, v0

    .line 41
    .line 42
    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v8, v10

    .line 48
    sub-long/2addr v1, v8

    .line 49
    ushr-long v8, v1, v3

    .line 50
    .line 51
    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v8, v10

    .line 57
    and-long/2addr v1, v10

    .line 58
    add-long/2addr v8, v1

    .line 59
    ushr-long v1, v8, v4

    .line 60
    .line 61
    add-long/2addr v1, v8

    .line 62
    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    and-long/2addr v1, v8

    .line 68
    ushr-long v8, v1, v5

    .line 69
    .line 70
    add-long/2addr v1, v8

    .line 71
    ushr-long v5, v1, v6

    .line 72
    .line 73
    add-long/2addr v1, v5

    .line 74
    const-wide/16 v5, 0x3f

    .line 75
    .line 76
    and-long v8, v1, v5

    .line 77
    .line 78
    ushr-long/2addr v1, v7

    .line 79
    and-long/2addr v1, v5

    .line 80
    add-long/2addr v8, v1

    .line 81
    const/4 v1, 0x3

    .line 82
    int-to-long v1, v1

    .line 83
    add-long/2addr v8, v1

    .line 84
    int-to-long v1, v4

    .line 85
    div-long/2addr v8, v1

    .line 86
    long-to-int v1, v8

    .line 87
    invoke-virtual {p0, v1}, Led/e;->B(I)Led/e0;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget v3, v2, Led/e0;->c:I

    .line 92
    .line 93
    add-int v5, v3, v1

    .line 94
    .line 95
    sub-int/2addr v5, v0

    .line 96
    :goto_0
    if-lt v5, v3, :cond_1

    .line 97
    .line 98
    sget-object v0, Lfd/k;->a:[B

    .line 99
    .line 100
    const-wide/16 v6, 0xf

    .line 101
    .line 102
    and-long/2addr v6, p1

    .line 103
    long-to-int v7, v6

    .line 104
    aget-byte v0, v0, v7

    .line 105
    .line 106
    iget-object v6, v2, Led/e0;->a:[B

    .line 107
    .line 108
    aput-byte v0, v6, v5

    .line 109
    .line 110
    ushr-long/2addr p1, v4

    .line 111
    add-int/lit8 v5, v5, -0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget p1, v2, Led/e0;->c:I

    .line 115
    .line 116
    add-int/2addr p1, v1

    .line 117
    iput p1, v2, Led/e0;->c:I

    .line 118
    .line 119
    iget-wide p1, p0, Led/e;->b:J

    .line 120
    .line 121
    int-to-long v0, v1

    .line 122
    add-long/2addr p1, v0

    .line 123
    iput-wide p1, p0, Led/e;->b:J

    .line 124
    .line 125
    :goto_1
    return-object p0
.end method

.method public final bridge synthetic X(IILjava/lang/String;)Led/f;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Led/e;->e0(IILjava/lang/String;)V

    return-object p0
.end method

.method public final Y(J)Z
    .locals 3

    iget-wide v0, p0, Led/e;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Led/e;->N(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Led/e;->skip(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b0()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Led/e;->readInt()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final c()Led/e;
    .locals 6

    .line 1
    new-instance v0, Led/e;

    .line 2
    .line 3
    invoke-direct {v0}, Led/e;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Led/e;->b:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, p0, Led/e;->a:Led/e0;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Led/e0;->c()Led/e0;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Led/e;->a:Led/e0;

    .line 25
    .line 26
    iput-object v2, v2, Led/e0;->g:Led/e0;

    .line 27
    .line 28
    iput-object v2, v2, Led/e0;->f:Led/e0;

    .line 29
    .line 30
    iget-object v3, v1, Led/e0;->f:Led/e0;

    .line 31
    .line 32
    :goto_0
    if-eq v3, v1, :cond_1

    .line 33
    .line 34
    iget-object v4, v2, Led/e0;->g:Led/e0;

    .line 35
    .line 36
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Led/e0;->c()Led/e0;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Led/e0;->b(Led/e0;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v3, Led/e0;->f:Led/e0;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-wide v1, p0, Led/e;->b:J

    .line 53
    .line 54
    iput-wide v1, v0, Led/e;->b:J

    .line 55
    .line 56
    :goto_1
    return-object v0
.end method

.method public final c0(I)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Led/e;->B(I)Led/e0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v0, Led/e0;->c:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    ushr-int/lit8 v3, p1, 0x18

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    int-to-byte v3, v3

    .line 15
    iget-object v4, v0, Led/e0;->a:[B

    .line 16
    .line 17
    aput-byte v3, v4, v1

    .line 18
    .line 19
    add-int/lit8 v1, v2, 0x1

    .line 20
    .line 21
    ushr-int/lit8 v3, p1, 0x10

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v4, v2

    .line 27
    .line 28
    add-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    ushr-int/lit8 v3, p1, 0x8

    .line 31
    .line 32
    and-int/lit16 v3, v3, 0xff

    .line 33
    .line 34
    int-to-byte v3, v3

    .line 35
    aput-byte v3, v4, v1

    .line 36
    .line 37
    add-int/lit8 v1, v2, 0x1

    .line 38
    .line 39
    and-int/lit16 p1, p1, 0xff

    .line 40
    .line 41
    int-to-byte p1, p1

    .line 42
    aput-byte p1, v4, v2

    .line 43
    .line 44
    iput v1, v0, Led/e0;->c:I

    .line 45
    .line 46
    iget-wide v0, p0, Led/e;->b:J

    .line 47
    .line 48
    const-wide/16 v2, 0x4

    .line 49
    .line 50
    add-long/2addr v0, v2

    .line 51
    iput-wide v0, p0, Led/e;->b:J

    .line 52
    .line 53
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Led/e;->c()Led/e;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d()J
    .locals 5

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Led/e;->a:Led/e0;

    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v2, Led/e0;->g:Led/e0;

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget v3, v2, Led/e0;->c:I

    .line 21
    .line 22
    const/16 v4, 0x2000

    .line 23
    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    iget-boolean v4, v2, Led/e0;->e:Z

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    iget v2, v2, Led/e0;->b:I

    .line 31
    .line 32
    sub-int/2addr v3, v2

    .line 33
    int-to-long v2, v3

    .line 34
    sub-long/2addr v0, v2

    .line 35
    :cond_1
    move-wide v2, v0

    .line 36
    :goto_0
    return-wide v2
.end method

.method public final d0(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Led/e;->B(I)Led/e0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v0, Led/e0;->c:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    ushr-int/lit8 v3, p1, 0x8

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    int-to-byte v3, v3

    .line 15
    iget-object v4, v0, Led/e0;->a:[B

    .line 16
    .line 17
    aput-byte v3, v4, v1

    .line 18
    .line 19
    add-int/lit8 v1, v2, 0x1

    .line 20
    .line 21
    and-int/lit16 p1, p1, 0xff

    .line 22
    .line 23
    int-to-byte p1, p1

    .line 24
    aput-byte p1, v4, v2

    .line 25
    .line 26
    iput v1, v0, Led/e0;->c:I

    .line 27
    .line 28
    iget-wide v0, p0, Led/e;->b:J

    .line 29
    .line 30
    const-wide/16 v2, 0x2

    .line 31
    .line 32
    add-long/2addr v0, v2

    .line 33
    iput-wide v0, p0, Led/e;->b:J

    .line 34
    .line 35
    return-void
.end method

.method public final e(JJLed/e;)V
    .locals 7

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Led/e;->b:J

    .line 7
    .line 8
    move-wide v3, p1

    .line 9
    move-wide v5, p3

    .line 10
    invoke-static/range {v1 .. v6}, La6/a;->g(JJJ)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v2, p3, v0

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    iget-wide v2, p5, Led/e;->b:J

    .line 21
    .line 22
    add-long/2addr v2, p3

    .line 23
    iput-wide v2, p5, Led/e;->b:J

    .line 24
    .line 25
    iget-object v2, p0, Led/e;->a:Led/e0;

    .line 26
    .line 27
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v3, v2, Led/e0;->c:I

    .line 31
    .line 32
    iget v4, v2, Led/e0;->b:I

    .line 33
    .line 34
    sub-int/2addr v3, v4

    .line 35
    int-to-long v3, v3

    .line 36
    cmp-long v5, p1, v3

    .line 37
    .line 38
    if-ltz v5, :cond_1

    .line 39
    .line 40
    sub-long/2addr p1, v3

    .line 41
    iget-object v2, v2, Led/e0;->f:Led/e0;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    cmp-long v3, p3, v0

    .line 45
    .line 46
    if-lez v3, :cond_3

    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Led/e0;->c()Led/e0;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget v4, v3, Led/e0;->b:I

    .line 56
    .line 57
    long-to-int p2, p1

    .line 58
    add-int/2addr v4, p2

    .line 59
    iput v4, v3, Led/e0;->b:I

    .line 60
    .line 61
    long-to-int p1, p3

    .line 62
    add-int/2addr v4, p1

    .line 63
    iget p1, v3, Led/e0;->c:I

    .line 64
    .line 65
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, v3, Led/e0;->c:I

    .line 70
    .line 71
    iget-object p1, p5, Led/e;->a:Led/e0;

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    iput-object v3, v3, Led/e0;->g:Led/e0;

    .line 76
    .line 77
    iput-object v3, v3, Led/e0;->f:Led/e0;

    .line 78
    .line 79
    iput-object v3, p5, Led/e;->a:Led/e0;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    iget-object p1, p1, Led/e0;->g:Led/e0;

    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Led/e0;->b(Led/e0;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    iget p1, v3, Led/e0;->c:I

    .line 91
    .line 92
    iget p2, v3, Led/e0;->b:I

    .line 93
    .line 94
    sub-int/2addr p1, p2

    .line 95
    int-to-long p1, p1

    .line 96
    sub-long/2addr p3, p1

    .line 97
    iget-object v2, v2, Led/e0;->f:Led/e0;

    .line 98
    .line 99
    move-wide p1, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :goto_3
    return-void
.end method

.method public final e0(IILjava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v1, :cond_10

    .line 13
    .line 14
    if-lt p2, p1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_1
    if-eqz v1, :cond_f

    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-gt p2, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    :goto_2
    if-eqz v1, :cond_e

    .line 31
    .line 32
    :goto_3
    if-ge p1, p2, :cond_d

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/16 v2, 0x80

    .line 39
    .line 40
    if-ge v1, v2, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Led/e;->B(I)Led/e0;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget v4, v3, Led/e0;->c:I

    .line 47
    .line 48
    sub-int/2addr v4, p1

    .line 49
    rsub-int v5, v4, 0x2000

    .line 50
    .line 51
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    add-int/lit8 v6, p1, 0x1

    .line 56
    .line 57
    add-int/2addr p1, v4

    .line 58
    int-to-byte v1, v1

    .line 59
    iget-object v7, v3, Led/e0;->a:[B

    .line 60
    .line 61
    aput-byte v1, v7, p1

    .line 62
    .line 63
    :goto_4
    move p1, v6

    .line 64
    if-ge p1, v5, :cond_4

    .line 65
    .line 66
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-lt v1, v2, :cond_3

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_3
    add-int/lit8 v6, p1, 0x1

    .line 74
    .line 75
    add-int/2addr p1, v4

    .line 76
    int-to-byte v1, v1

    .line 77
    aput-byte v1, v7, p1

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    :goto_5
    add-int/2addr v4, p1

    .line 81
    iget v1, v3, Led/e0;->c:I

    .line 82
    .line 83
    sub-int/2addr v4, v1

    .line 84
    add-int/2addr v1, v4

    .line 85
    iput v1, v3, Led/e0;->c:I

    .line 86
    .line 87
    iget-wide v1, p0, Led/e;->b:J

    .line 88
    .line 89
    int-to-long v3, v4

    .line 90
    add-long/2addr v1, v3

    .line 91
    iput-wide v1, p0, Led/e;->b:J

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    const/16 v3, 0x800

    .line 95
    .line 96
    if-ge v1, v3, :cond_6

    .line 97
    .line 98
    const/4 v3, 0x2

    .line 99
    invoke-virtual {p0, v3}, Led/e;->B(I)Led/e0;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget v5, v4, Led/e0;->c:I

    .line 104
    .line 105
    shr-int/lit8 v6, v1, 0x6

    .line 106
    .line 107
    or-int/lit16 v6, v6, 0xc0

    .line 108
    .line 109
    int-to-byte v6, v6

    .line 110
    iget-object v7, v4, Led/e0;->a:[B

    .line 111
    .line 112
    aput-byte v6, v7, v5

    .line 113
    .line 114
    add-int/lit8 v6, v5, 0x1

    .line 115
    .line 116
    and-int/lit8 v1, v1, 0x3f

    .line 117
    .line 118
    or-int/2addr v1, v2

    .line 119
    int-to-byte v1, v1

    .line 120
    aput-byte v1, v7, v6

    .line 121
    .line 122
    add-int/2addr v5, v3

    .line 123
    iput v5, v4, Led/e0;->c:I

    .line 124
    .line 125
    iget-wide v1, p0, Led/e;->b:J

    .line 126
    .line 127
    const-wide/16 v3, 0x2

    .line 128
    .line 129
    goto/16 :goto_a

    .line 130
    .line 131
    :cond_6
    const v3, 0xd800

    .line 132
    .line 133
    .line 134
    const/16 v4, 0x3f

    .line 135
    .line 136
    if-lt v1, v3, :cond_c

    .line 137
    .line 138
    const v3, 0xdfff

    .line 139
    .line 140
    .line 141
    if-le v1, v3, :cond_7

    .line 142
    .line 143
    goto :goto_9

    .line 144
    :cond_7
    add-int/lit8 v5, p1, 0x1

    .line 145
    .line 146
    if-ge v5, p2, :cond_8

    .line 147
    .line 148
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    goto :goto_6

    .line 153
    :cond_8
    const/4 v6, 0x0

    .line 154
    :goto_6
    const v7, 0xdbff

    .line 155
    .line 156
    .line 157
    if-gt v1, v7, :cond_b

    .line 158
    .line 159
    const v7, 0xdc00

    .line 160
    .line 161
    .line 162
    if-gt v7, v6, :cond_9

    .line 163
    .line 164
    if-gt v6, v3, :cond_9

    .line 165
    .line 166
    const/4 v3, 0x1

    .line 167
    goto :goto_7

    .line 168
    :cond_9
    const/4 v3, 0x0

    .line 169
    :goto_7
    if-nez v3, :cond_a

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_a
    and-int/lit16 v1, v1, 0x3ff

    .line 173
    .line 174
    shl-int/lit8 v1, v1, 0xa

    .line 175
    .line 176
    and-int/lit16 v3, v6, 0x3ff

    .line 177
    .line 178
    or-int/2addr v1, v3

    .line 179
    const/high16 v3, 0x10000

    .line 180
    .line 181
    add-int/2addr v1, v3

    .line 182
    const/4 v3, 0x4

    .line 183
    invoke-virtual {p0, v3}, Led/e;->B(I)Led/e0;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    iget v6, v5, Led/e0;->c:I

    .line 188
    .line 189
    shr-int/lit8 v7, v1, 0x12

    .line 190
    .line 191
    or-int/lit16 v7, v7, 0xf0

    .line 192
    .line 193
    int-to-byte v7, v7

    .line 194
    iget-object v8, v5, Led/e0;->a:[B

    .line 195
    .line 196
    aput-byte v7, v8, v6

    .line 197
    .line 198
    add-int/lit8 v7, v6, 0x1

    .line 199
    .line 200
    shr-int/lit8 v9, v1, 0xc

    .line 201
    .line 202
    and-int/2addr v9, v4

    .line 203
    or-int/2addr v9, v2

    .line 204
    int-to-byte v9, v9

    .line 205
    aput-byte v9, v8, v7

    .line 206
    .line 207
    add-int/lit8 v7, v6, 0x2

    .line 208
    .line 209
    shr-int/lit8 v9, v1, 0x6

    .line 210
    .line 211
    and-int/2addr v9, v4

    .line 212
    or-int/2addr v9, v2

    .line 213
    int-to-byte v9, v9

    .line 214
    aput-byte v9, v8, v7

    .line 215
    .line 216
    add-int/lit8 v7, v6, 0x3

    .line 217
    .line 218
    and-int/2addr v1, v4

    .line 219
    or-int/2addr v1, v2

    .line 220
    int-to-byte v1, v1

    .line 221
    aput-byte v1, v8, v7

    .line 222
    .line 223
    add-int/2addr v6, v3

    .line 224
    iput v6, v5, Led/e0;->c:I

    .line 225
    .line 226
    iget-wide v1, p0, Led/e;->b:J

    .line 227
    .line 228
    const-wide/16 v3, 0x4

    .line 229
    .line 230
    add-long/2addr v1, v3

    .line 231
    iput-wide v1, p0, Led/e;->b:J

    .line 232
    .line 233
    add-int/lit8 p1, p1, 0x2

    .line 234
    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :cond_b
    :goto_8
    invoke-virtual {p0, v4}, Led/e;->O(I)V

    .line 238
    .line 239
    .line 240
    move p1, v5

    .line 241
    goto/16 :goto_3

    .line 242
    .line 243
    :cond_c
    :goto_9
    const/4 v3, 0x3

    .line 244
    invoke-virtual {p0, v3}, Led/e;->B(I)Led/e0;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    iget v6, v5, Led/e0;->c:I

    .line 249
    .line 250
    shr-int/lit8 v7, v1, 0xc

    .line 251
    .line 252
    or-int/lit16 v7, v7, 0xe0

    .line 253
    .line 254
    int-to-byte v7, v7

    .line 255
    iget-object v8, v5, Led/e0;->a:[B

    .line 256
    .line 257
    aput-byte v7, v8, v6

    .line 258
    .line 259
    add-int/lit8 v7, v6, 0x1

    .line 260
    .line 261
    shr-int/lit8 v9, v1, 0x6

    .line 262
    .line 263
    and-int/2addr v4, v9

    .line 264
    or-int/2addr v4, v2

    .line 265
    int-to-byte v4, v4

    .line 266
    aput-byte v4, v8, v7

    .line 267
    .line 268
    add-int/lit8 v4, v6, 0x2

    .line 269
    .line 270
    and-int/lit8 v1, v1, 0x3f

    .line 271
    .line 272
    or-int/2addr v1, v2

    .line 273
    int-to-byte v1, v1

    .line 274
    aput-byte v1, v8, v4

    .line 275
    .line 276
    add-int/2addr v6, v3

    .line 277
    iput v6, v5, Led/e0;->c:I

    .line 278
    .line 279
    iget-wide v1, p0, Led/e;->b:J

    .line 280
    .line 281
    const-wide/16 v3, 0x3

    .line 282
    .line 283
    :goto_a
    add-long/2addr v1, v3

    .line 284
    iput-wide v1, p0, Led/e;->b:J

    .line 285
    .line 286
    add-int/lit8 p1, p1, 0x1

    .line 287
    .line 288
    goto/16 :goto_3

    .line 289
    .line 290
    :cond_d
    return-void

    .line 291
    :cond_e
    const-string p1, "endIndex > string.length: "

    .line 292
    .line 293
    const-string v0, " > "

    .line 294
    .line 295
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw p2

    .line 320
    :cond_f
    const-string p3, "endIndex < beginIndex: "

    .line 321
    .line 322
    const-string v0, " < "

    .line 323
    .line 324
    invoke-static {p3, p2, v0, p1}, Landroidx/constraintlayout/core/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw p2

    .line 338
    :cond_10
    const-string p2, "beginIndex < 0: "

    .line 339
    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_1
    instance-of v3, v1, Led/e;

    .line 11
    .line 12
    if-nez v3, :cond_2

    .line 13
    .line 14
    :goto_1
    const/4 v2, 0x0

    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_2
    iget-wide v5, v0, Led/e;->b:J

    .line 18
    .line 19
    check-cast v1, Led/e;

    .line 20
    .line 21
    iget-wide v7, v1, Led/e;->b:J

    .line 22
    .line 23
    cmp-long v3, v5, v7

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    const-wide/16 v7, 0x0

    .line 29
    .line 30
    cmp-long v3, v5, v7

    .line 31
    .line 32
    if-nez v3, :cond_4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    iget-object v3, v0, Led/e;->a:Led/e0;

    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v1, Led/e;->a:Led/e0;

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget v5, v3, Led/e0;->b:I

    .line 46
    .line 47
    iget v6, v1, Led/e0;->b:I

    .line 48
    .line 49
    move-wide v9, v7

    .line 50
    :goto_2
    iget-wide v11, v0, Led/e;->b:J

    .line 51
    .line 52
    cmp-long v13, v9, v11

    .line 53
    .line 54
    if-gez v13, :cond_0

    .line 55
    .line 56
    iget v11, v3, Led/e0;->c:I

    .line 57
    .line 58
    sub-int/2addr v11, v5

    .line 59
    iget v12, v1, Led/e0;->c:I

    .line 60
    .line 61
    sub-int/2addr v12, v6

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    int-to-long v11, v11

    .line 67
    cmp-long v13, v7, v11

    .line 68
    .line 69
    if-gez v13, :cond_7

    .line 70
    .line 71
    move-wide v13, v7

    .line 72
    :cond_5
    const-wide/16 v15, 0x1

    .line 73
    .line 74
    add-long/2addr v13, v15

    .line 75
    add-int/lit8 v15, v5, 0x1

    .line 76
    .line 77
    iget-object v2, v3, Led/e0;->a:[B

    .line 78
    .line 79
    aget-byte v2, v2, v5

    .line 80
    .line 81
    add-int/lit8 v5, v6, 0x1

    .line 82
    .line 83
    iget-object v4, v1, Led/e0;->a:[B

    .line 84
    .line 85
    aget-byte v4, v4, v6

    .line 86
    .line 87
    if-eq v2, v4, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    cmp-long v2, v13, v11

    .line 91
    .line 92
    move v6, v5

    .line 93
    move v5, v15

    .line 94
    if-ltz v2, :cond_5

    .line 95
    .line 96
    :cond_7
    iget v2, v3, Led/e0;->c:I

    .line 97
    .line 98
    if-ne v5, v2, :cond_8

    .line 99
    .line 100
    iget-object v2, v3, Led/e0;->f:Led/e0;

    .line 101
    .line 102
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget v3, v2, Led/e0;->b:I

    .line 106
    .line 107
    move v5, v3

    .line 108
    move-object v3, v2

    .line 109
    :cond_8
    iget v2, v1, Led/e0;->c:I

    .line 110
    .line 111
    if-ne v6, v2, :cond_9

    .line 112
    .line 113
    iget-object v1, v1, Led/e0;->f:Led/e0;

    .line 114
    .line 115
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget v2, v1, Led/e0;->b:I

    .line 119
    .line 120
    move v6, v2

    .line 121
    :cond_9
    add-long/2addr v9, v11

    .line 122
    goto :goto_2

    .line 123
    :goto_3
    return v2
.end method

.method public final f(J)B
    .locals 7

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    const-wide/16 v4, 0x1

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, La6/a;->g(JJJ)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Led/e;->a:Led/e0;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-wide v1, p0, Led/e;->b:J

    .line 14
    .line 15
    sub-long v3, v1, p1

    .line 16
    .line 17
    cmp-long v5, v3, p1

    .line 18
    .line 19
    if-gez v5, :cond_1

    .line 20
    .line 21
    :goto_0
    cmp-long v3, v1, p1

    .line 22
    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Led/e0;->g:Led/e0;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v3, v0, Led/e0;->c:I

    .line 31
    .line 32
    iget v4, v0, Led/e0;->b:I

    .line 33
    .line 34
    sub-int/2addr v3, v4

    .line 35
    int-to-long v3, v3

    .line 36
    sub-long/2addr v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v3, v0, Led/e0;->b:I

    .line 39
    .line 40
    int-to-long v3, v3

    .line 41
    add-long/2addr v3, p1

    .line 42
    sub-long/2addr v3, v1

    .line 43
    long-to-int p1, v3

    .line 44
    iget-object p2, v0, Led/e0;->a:[B

    .line 45
    .line 46
    aget-byte p1, p2, p1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    :goto_1
    iget v3, v0, Led/e0;->c:I

    .line 52
    .line 53
    iget v4, v0, Led/e0;->b:I

    .line 54
    .line 55
    sub-int/2addr v3, v4

    .line 56
    int-to-long v5, v3

    .line 57
    add-long/2addr v5, v1

    .line 58
    cmp-long v3, v5, p1

    .line 59
    .line 60
    if-lez v3, :cond_2

    .line 61
    .line 62
    int-to-long v3, v4

    .line 63
    add-long/2addr v3, p1

    .line 64
    sub-long/2addr v3, v1

    .line 65
    long-to-int p1, v3

    .line 66
    iget-object p2, v0, Led/e0;->a:[B

    .line 67
    .line 68
    aget-byte p1, p2, p1

    .line 69
    .line 70
    :goto_2
    return p1

    .line 71
    :cond_2
    iget-object v0, v0, Led/e0;->f:Led/e0;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-wide v1, v5

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 p1, 0x0

    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g(BJJ)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v4, p4

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const-wide/16 v7, 0x0

    .line 11
    .line 12
    cmp-long v9, v7, v2

    .line 13
    .line 14
    if-gtz v9, :cond_0

    .line 15
    .line 16
    cmp-long v9, v2, v4

    .line 17
    .line 18
    if-gtz v9, :cond_0

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    :cond_0
    if-eqz v6, :cond_c

    .line 22
    .line 23
    iget-wide v9, v0, Led/e;->b:J

    .line 24
    .line 25
    cmp-long v6, v4, v9

    .line 26
    .line 27
    if-lez v6, :cond_1

    .line 28
    .line 29
    move-wide v11, v9

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-wide v11, v4

    .line 32
    :goto_0
    const-wide/16 v13, -0x1

    .line 33
    .line 34
    cmp-long v4, v2, v11

    .line 35
    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :cond_2
    iget-object v4, v0, Led/e;->a:Led/e0;

    .line 41
    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_3
    sub-long v5, v9, v2

    .line 47
    .line 48
    cmp-long v15, v5, v2

    .line 49
    .line 50
    if-gez v15, :cond_7

    .line 51
    .line 52
    :goto_1
    cmp-long v5, v9, v2

    .line 53
    .line 54
    if-lez v5, :cond_4

    .line 55
    .line 56
    iget-object v4, v4, Led/e0;->g:Led/e0;

    .line 57
    .line 58
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget v5, v4, Led/e0;->c:I

    .line 62
    .line 63
    iget v6, v4, Led/e0;->b:I

    .line 64
    .line 65
    sub-int/2addr v5, v6

    .line 66
    int-to-long v5, v5

    .line 67
    sub-long/2addr v9, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_2
    cmp-long v5, v9, v11

    .line 70
    .line 71
    if-gez v5, :cond_a

    .line 72
    .line 73
    iget v5, v4, Led/e0;->c:I

    .line 74
    .line 75
    int-to-long v5, v5

    .line 76
    iget v7, v4, Led/e0;->b:I

    .line 77
    .line 78
    int-to-long v7, v7

    .line 79
    add-long/2addr v7, v11

    .line 80
    sub-long/2addr v7, v9

    .line 81
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    long-to-int v6, v5

    .line 86
    iget v5, v4, Led/e0;->b:I

    .line 87
    .line 88
    int-to-long v7, v5

    .line 89
    add-long/2addr v7, v2

    .line 90
    sub-long/2addr v7, v9

    .line 91
    long-to-int v2, v7

    .line 92
    :goto_3
    if-ge v2, v6, :cond_6

    .line 93
    .line 94
    iget-object v3, v4, Led/e0;->a:[B

    .line 95
    .line 96
    aget-byte v3, v3, v2

    .line 97
    .line 98
    if-ne v3, v1, :cond_5

    .line 99
    .line 100
    iget v1, v4, Led/e0;->b:I

    .line 101
    .line 102
    sub-int/2addr v2, v1

    .line 103
    int-to-long v1, v2

    .line 104
    add-long v13, v1, v9

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    iget v2, v4, Led/e0;->c:I

    .line 111
    .line 112
    iget v3, v4, Led/e0;->b:I

    .line 113
    .line 114
    sub-int/2addr v2, v3

    .line 115
    int-to-long v2, v2

    .line 116
    add-long/2addr v9, v2

    .line 117
    iget-object v4, v4, Led/e0;->f:Led/e0;

    .line 118
    .line 119
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    move-wide v2, v9

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    :goto_4
    iget v5, v4, Led/e0;->c:I

    .line 125
    .line 126
    iget v6, v4, Led/e0;->b:I

    .line 127
    .line 128
    sub-int/2addr v5, v6

    .line 129
    int-to-long v5, v5

    .line 130
    add-long/2addr v5, v7

    .line 131
    cmp-long v9, v5, v2

    .line 132
    .line 133
    if-lez v9, :cond_b

    .line 134
    .line 135
    :goto_5
    cmp-long v5, v7, v11

    .line 136
    .line 137
    if-gez v5, :cond_a

    .line 138
    .line 139
    iget v5, v4, Led/e0;->c:I

    .line 140
    .line 141
    int-to-long v5, v5

    .line 142
    iget v9, v4, Led/e0;->b:I

    .line 143
    .line 144
    int-to-long v9, v9

    .line 145
    add-long/2addr v9, v11

    .line 146
    sub-long/2addr v9, v7

    .line 147
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 148
    .line 149
    .line 150
    move-result-wide v5

    .line 151
    long-to-int v6, v5

    .line 152
    iget v5, v4, Led/e0;->b:I

    .line 153
    .line 154
    int-to-long v9, v5

    .line 155
    add-long/2addr v9, v2

    .line 156
    sub-long/2addr v9, v7

    .line 157
    long-to-int v2, v9

    .line 158
    :goto_6
    if-ge v2, v6, :cond_9

    .line 159
    .line 160
    iget-object v3, v4, Led/e0;->a:[B

    .line 161
    .line 162
    aget-byte v3, v3, v2

    .line 163
    .line 164
    if-ne v3, v1, :cond_8

    .line 165
    .line 166
    iget v1, v4, Led/e0;->b:I

    .line 167
    .line 168
    sub-int/2addr v2, v1

    .line 169
    int-to-long v1, v2

    .line 170
    add-long v13, v1, v7

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_9
    iget v2, v4, Led/e0;->c:I

    .line 177
    .line 178
    iget v3, v4, Led/e0;->b:I

    .line 179
    .line 180
    sub-int/2addr v2, v3

    .line 181
    int-to-long v2, v2

    .line 182
    add-long/2addr v7, v2

    .line 183
    iget-object v4, v4, Led/e0;->f:Led/e0;

    .line 184
    .line 185
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    move-wide v2, v7

    .line 189
    goto :goto_5

    .line 190
    :cond_a
    :goto_7
    return-wide v13

    .line 191
    :cond_b
    iget-object v4, v4, Led/e0;->f:Led/e0;

    .line 192
    .line 193
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    move-wide v7, v5

    .line 197
    goto :goto_4

    .line 198
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v6, "size="

    .line 201
    .line 202
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-wide v6, v0, Led/e;->b:J

    .line 206
    .line 207
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v6, " fromIndex="

    .line 211
    .line 212
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v2, " toIndex="

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v2
.end method

.method public final g0()J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Led/e;->b:J

    .line 4
    .line 5
    const-wide/16 v3, 0x8

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    if-ltz v5, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Led/e;->a:Led/e0;

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget v2, v1, Led/e0;->b:I

    .line 17
    .line 18
    iget v5, v1, Led/e0;->c:I

    .line 19
    .line 20
    sub-int v6, v5, v2

    .line 21
    .line 22
    int-to-long v6, v6

    .line 23
    const/16 v10, 0x28

    .line 24
    .line 25
    const/16 v11, 0x38

    .line 26
    .line 27
    const-wide/16 v12, 0xff

    .line 28
    .line 29
    const/16 v14, 0x20

    .line 30
    .line 31
    cmp-long v15, v6, v3

    .line 32
    .line 33
    if-gez v15, :cond_0

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Led/e;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-long v1, v1

    .line 40
    const-wide v3, 0xffffffffL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    and-long/2addr v1, v3

    .line 46
    shl-long/2addr v1, v14

    .line 47
    invoke-virtual/range {p0 .. p0}, Led/e;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    int-to-long v5, v5

    .line 52
    and-long/2addr v3, v5

    .line 53
    or-long/2addr v1, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v6, v2, 0x1

    .line 56
    .line 57
    iget-object v7, v1, Led/e0;->a:[B

    .line 58
    .line 59
    aget-byte v2, v7, v2

    .line 60
    .line 61
    int-to-long v3, v2

    .line 62
    and-long v2, v3, v12

    .line 63
    .line 64
    shl-long/2addr v2, v11

    .line 65
    add-int/lit8 v4, v6, 0x1

    .line 66
    .line 67
    aget-byte v6, v7, v6

    .line 68
    .line 69
    int-to-long v8, v6

    .line 70
    and-long/2addr v8, v12

    .line 71
    const/16 v6, 0x30

    .line 72
    .line 73
    shl-long/2addr v8, v6

    .line 74
    or-long/2addr v2, v8

    .line 75
    add-int/lit8 v6, v4, 0x1

    .line 76
    .line 77
    aget-byte v4, v7, v4

    .line 78
    .line 79
    int-to-long v8, v4

    .line 80
    and-long/2addr v8, v12

    .line 81
    shl-long/2addr v8, v10

    .line 82
    or-long/2addr v2, v8

    .line 83
    add-int/lit8 v4, v6, 0x1

    .line 84
    .line 85
    aget-byte v6, v7, v6

    .line 86
    .line 87
    int-to-long v8, v6

    .line 88
    and-long/2addr v8, v12

    .line 89
    shl-long/2addr v8, v14

    .line 90
    or-long/2addr v2, v8

    .line 91
    add-int/lit8 v6, v4, 0x1

    .line 92
    .line 93
    aget-byte v4, v7, v4

    .line 94
    .line 95
    int-to-long v8, v4

    .line 96
    and-long/2addr v8, v12

    .line 97
    const/16 v4, 0x18

    .line 98
    .line 99
    shl-long/2addr v8, v4

    .line 100
    or-long/2addr v2, v8

    .line 101
    add-int/lit8 v4, v6, 0x1

    .line 102
    .line 103
    aget-byte v6, v7, v6

    .line 104
    .line 105
    int-to-long v8, v6

    .line 106
    and-long/2addr v8, v12

    .line 107
    const/16 v6, 0x10

    .line 108
    .line 109
    shl-long/2addr v8, v6

    .line 110
    or-long/2addr v2, v8

    .line 111
    add-int/lit8 v6, v4, 0x1

    .line 112
    .line 113
    aget-byte v4, v7, v4

    .line 114
    .line 115
    int-to-long v8, v4

    .line 116
    and-long/2addr v8, v12

    .line 117
    const/16 v4, 0x8

    .line 118
    .line 119
    shl-long/2addr v8, v4

    .line 120
    or-long/2addr v2, v8

    .line 121
    add-int/lit8 v4, v6, 0x1

    .line 122
    .line 123
    aget-byte v6, v7, v6

    .line 124
    .line 125
    int-to-long v6, v6

    .line 126
    and-long/2addr v6, v12

    .line 127
    or-long/2addr v2, v6

    .line 128
    iget-wide v6, v0, Led/e;->b:J

    .line 129
    .line 130
    const-wide/16 v8, 0x8

    .line 131
    .line 132
    sub-long/2addr v6, v8

    .line 133
    iput-wide v6, v0, Led/e;->b:J

    .line 134
    .line 135
    if-ne v4, v5, :cond_1

    .line 136
    .line 137
    invoke-virtual {v1}, Led/e0;->a()Led/e0;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iput-object v4, v0, Led/e;->a:Led/e0;

    .line 142
    .line 143
    invoke-static {v1}, Led/f0;->a(Led/e0;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    iput v4, v1, Led/e0;->b:I

    .line 148
    .line 149
    :goto_0
    move-wide v1, v2

    .line 150
    :goto_1
    const-wide/high16 v3, -0x100000000000000L

    .line 151
    .line 152
    and-long/2addr v3, v1

    .line 153
    ushr-long/2addr v3, v11

    .line 154
    const-wide/high16 v5, 0xff000000000000L

    .line 155
    .line 156
    and-long/2addr v5, v1

    .line 157
    ushr-long/2addr v5, v10

    .line 158
    or-long/2addr v3, v5

    .line 159
    const-wide v5, 0xff0000000000L

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    and-long/2addr v5, v1

    .line 165
    const/16 v7, 0x18

    .line 166
    .line 167
    ushr-long/2addr v5, v7

    .line 168
    or-long/2addr v3, v5

    .line 169
    const-wide v5, 0xff00000000L

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    and-long/2addr v5, v1

    .line 175
    const/16 v7, 0x8

    .line 176
    .line 177
    ushr-long/2addr v5, v7

    .line 178
    or-long/2addr v3, v5

    .line 179
    const-wide v5, 0xff000000L

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    and-long/2addr v5, v1

    .line 185
    shl-long/2addr v5, v7

    .line 186
    or-long/2addr v3, v5

    .line 187
    const-wide/32 v5, 0xff0000

    .line 188
    .line 189
    .line 190
    and-long/2addr v5, v1

    .line 191
    const/16 v7, 0x18

    .line 192
    .line 193
    shl-long/2addr v5, v7

    .line 194
    or-long/2addr v3, v5

    .line 195
    const-wide/32 v5, 0xff00

    .line 196
    .line 197
    .line 198
    and-long/2addr v5, v1

    .line 199
    shl-long/2addr v5, v10

    .line 200
    or-long/2addr v3, v5

    .line 201
    and-long/2addr v1, v12

    .line 202
    shl-long/2addr v1, v11

    .line 203
    or-long/2addr v1, v3

    .line 204
    return-wide v1

    .line 205
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 208
    .line 209
    .line 210
    throw v1
.end method

.method public final getBuffer()Led/e;
    .locals 0

    return-object p0
.end method

.method public final h()Led/k0;
    .locals 1

    sget-object v0, Led/k0;->d:Led/k0$a;

    return-object v0
.end method

.method public final h0(Led/x;)I
    .locals 3

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lfd/k;->c(Led/e;Led/x;Z)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p1, Led/x;->a:[Led/h;

    .line 17
    .line 18
    aget-object p1, p1, v0

    .line 19
    .line 20
    invoke-virtual {p1}, Led/h;->r()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-long v1, p1

    .line 25
    invoke-virtual {p0, v1, v2}, Led/e;->skip(J)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Led/e;->a:Led/e0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Led/e0;->b:I

    iget v3, v0, Led/e0;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Led/e0;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Led/e0;->f:Led/e0;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Led/e;->a:Led/e0;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    return v0
.end method

.method public final i(JLed/h;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p3, Led/h;->a:[B

    .line 7
    .line 8
    array-length v0, p3

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_e

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    cmp-long v0, p1, v3

    .line 21
    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    :goto_1
    if-eqz v2, :cond_d

    .line 27
    .line 28
    iget-object v0, p0, Led/e;->a:Led/e0;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto/16 :goto_b

    .line 33
    .line 34
    :cond_2
    iget-wide v5, p0, Led/e;->b:J

    .line 35
    .line 36
    sub-long v7, v5, p1

    .line 37
    .line 38
    const-wide/16 v9, 0x1

    .line 39
    .line 40
    cmp-long v2, v7, p1

    .line 41
    .line 42
    if-gez v2, :cond_7

    .line 43
    .line 44
    :goto_2
    cmp-long v2, v5, p1

    .line 45
    .line 46
    if-lez v2, :cond_3

    .line 47
    .line 48
    iget-object v0, v0, Led/e0;->g:Led/e0;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget v2, v0, Led/e0;->c:I

    .line 54
    .line 55
    iget v3, v0, Led/e0;->b:I

    .line 56
    .line 57
    sub-int/2addr v2, v3

    .line 58
    int-to-long v2, v2

    .line 59
    sub-long/2addr v5, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    aget-byte v1, p3, v1

    .line 62
    .line 63
    array-length v2, p3

    .line 64
    iget-wide v3, p0, Led/e;->b:J

    .line 65
    .line 66
    int-to-long v7, v2

    .line 67
    sub-long/2addr v3, v7

    .line 68
    add-long/2addr v3, v9

    .line 69
    :goto_3
    cmp-long v7, v5, v3

    .line 70
    .line 71
    if-gez v7, :cond_b

    .line 72
    .line 73
    iget v7, v0, Led/e0;->c:I

    .line 74
    .line 75
    iget v8, v0, Led/e0;->b:I

    .line 76
    .line 77
    int-to-long v8, v8

    .line 78
    add-long/2addr v8, v3

    .line 79
    sub-long/2addr v8, v5

    .line 80
    int-to-long v10, v7

    .line 81
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    long-to-int v8, v7

    .line 86
    iget v7, v0, Led/e0;->b:I

    .line 87
    .line 88
    int-to-long v9, v7

    .line 89
    add-long/2addr v9, p1

    .line 90
    sub-long/2addr v9, v5

    .line 91
    long-to-int p1, v9

    .line 92
    if-ge p1, v8, :cond_6

    .line 93
    .line 94
    :goto_4
    add-int/lit8 p2, p1, 0x1

    .line 95
    .line 96
    iget-object v7, v0, Led/e0;->a:[B

    .line 97
    .line 98
    aget-byte v7, v7, p1

    .line 99
    .line 100
    if-ne v7, v1, :cond_4

    .line 101
    .line 102
    invoke-static {v0, p2, p3, v2}, Lfd/k;->a(Led/e0;I[BI)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_4

    .line 107
    .line 108
    iget p2, v0, Led/e0;->b:I

    .line 109
    .line 110
    sub-int/2addr p1, p2

    .line 111
    int-to-long p1, p1

    .line 112
    goto :goto_9

    .line 113
    :cond_4
    if-lt p2, v8, :cond_5

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_5
    move p1, p2

    .line 117
    goto :goto_4

    .line 118
    :cond_6
    :goto_5
    iget p1, v0, Led/e0;->c:I

    .line 119
    .line 120
    iget p2, v0, Led/e0;->b:I

    .line 121
    .line 122
    sub-int/2addr p1, p2

    .line 123
    int-to-long p1, p1

    .line 124
    add-long/2addr v5, p1

    .line 125
    iget-object v0, v0, Led/e0;->f:Led/e0;

    .line 126
    .line 127
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    move-wide p1, v5

    .line 131
    goto :goto_3

    .line 132
    :cond_7
    :goto_6
    iget v2, v0, Led/e0;->c:I

    .line 133
    .line 134
    iget v5, v0, Led/e0;->b:I

    .line 135
    .line 136
    sub-int/2addr v2, v5

    .line 137
    int-to-long v5, v2

    .line 138
    add-long/2addr v5, v3

    .line 139
    cmp-long v2, v5, p1

    .line 140
    .line 141
    if-lez v2, :cond_c

    .line 142
    .line 143
    aget-byte v1, p3, v1

    .line 144
    .line 145
    array-length v2, p3

    .line 146
    iget-wide v5, p0, Led/e;->b:J

    .line 147
    .line 148
    int-to-long v7, v2

    .line 149
    sub-long/2addr v5, v7

    .line 150
    add-long/2addr v5, v9

    .line 151
    :goto_7
    cmp-long v7, v3, v5

    .line 152
    .line 153
    if-gez v7, :cond_b

    .line 154
    .line 155
    iget v7, v0, Led/e0;->c:I

    .line 156
    .line 157
    iget v8, v0, Led/e0;->b:I

    .line 158
    .line 159
    int-to-long v8, v8

    .line 160
    add-long/2addr v8, v5

    .line 161
    sub-long/2addr v8, v3

    .line 162
    int-to-long v10, v7

    .line 163
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 164
    .line 165
    .line 166
    move-result-wide v7

    .line 167
    long-to-int v8, v7

    .line 168
    iget v7, v0, Led/e0;->b:I

    .line 169
    .line 170
    int-to-long v9, v7

    .line 171
    add-long/2addr v9, p1

    .line 172
    sub-long/2addr v9, v3

    .line 173
    long-to-int p1, v9

    .line 174
    if-ge p1, v8, :cond_a

    .line 175
    .line 176
    :goto_8
    add-int/lit8 p2, p1, 0x1

    .line 177
    .line 178
    iget-object v7, v0, Led/e0;->a:[B

    .line 179
    .line 180
    aget-byte v7, v7, p1

    .line 181
    .line 182
    if-ne v7, v1, :cond_8

    .line 183
    .line 184
    invoke-static {v0, p2, p3, v2}, Lfd/k;->a(Led/e0;I[BI)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_8

    .line 189
    .line 190
    iget p2, v0, Led/e0;->b:I

    .line 191
    .line 192
    sub-int/2addr p1, p2

    .line 193
    int-to-long p1, p1

    .line 194
    move-wide v5, v3

    .line 195
    :goto_9
    add-long/2addr p1, v5

    .line 196
    goto :goto_c

    .line 197
    :cond_8
    if-lt p2, v8, :cond_9

    .line 198
    .line 199
    goto :goto_a

    .line 200
    :cond_9
    move p1, p2

    .line 201
    goto :goto_8

    .line 202
    :cond_a
    :goto_a
    iget p1, v0, Led/e0;->c:I

    .line 203
    .line 204
    iget p2, v0, Led/e0;->b:I

    .line 205
    .line 206
    sub-int/2addr p1, p2

    .line 207
    int-to-long p1, p1

    .line 208
    add-long/2addr v3, p1

    .line 209
    iget-object v0, v0, Led/e0;->f:Led/e0;

    .line 210
    .line 211
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    move-wide p1, v3

    .line 215
    goto :goto_7

    .line 216
    :cond_b
    :goto_b
    const-wide/16 p1, -0x1

    .line 217
    .line 218
    :goto_c
    return-wide p1

    .line 219
    :cond_c
    iget-object v0, v0, Led/e0;->f:Led/e0;

    .line 220
    .line 221
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    move-wide v3, v5

    .line 225
    goto :goto_6

    .line 226
    :cond_d
    const-string p3, "fromIndex < 0: "

    .line 227
    .line 228
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw p2

    .line 246
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    const-string p2, "bytes is empty"

    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p1
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Led/e;->e0(IILjava/lang/String;)V

    return-void
.end method

.method public final isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(JLed/h;)J
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    const-string v2, "targetBytes"

    .line 5
    .line 6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v6, p1, v4

    .line 14
    .line 15
    if-ltz v6, :cond_0

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v6, 0x0

    .line 20
    :goto_0
    if-eqz v6, :cond_14

    .line 21
    .line 22
    iget-object v6, v0, Led/e;->a:Led/e0;

    .line 23
    .line 24
    const-wide/16 v7, -0x1

    .line 25
    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    goto/16 :goto_d

    .line 29
    .line 30
    :cond_1
    iget-wide v9, v0, Led/e;->b:J

    .line 31
    .line 32
    sub-long v11, v9, p1

    .line 33
    .line 34
    const/4 v13, 0x2

    .line 35
    cmp-long v14, v11, p1

    .line 36
    .line 37
    if-gez v14, :cond_a

    .line 38
    .line 39
    :goto_1
    cmp-long v4, v9, p1

    .line 40
    .line 41
    if-lez v4, :cond_2

    .line 42
    .line 43
    iget-object v6, v6, Led/e0;->g:Led/e0;

    .line 44
    .line 45
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget v4, v6, Led/e0;->c:I

    .line 49
    .line 50
    iget v5, v6, Led/e0;->b:I

    .line 51
    .line 52
    sub-int/2addr v4, v5

    .line 53
    int-to-long v4, v4

    .line 54
    sub-long/2addr v9, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual/range {p3 .. p3}, Led/h;->r()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ne v4, v13, :cond_6

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Led/h;->x(I)B

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v1, v3}, Led/h;->x(I)B

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    move-wide/from16 v3, p1

    .line 71
    .line 72
    :goto_2
    iget-wide v11, v0, Led/e;->b:J

    .line 73
    .line 74
    cmp-long v5, v9, v11

    .line 75
    .line 76
    if-gez v5, :cond_12

    .line 77
    .line 78
    iget v5, v6, Led/e0;->b:I

    .line 79
    .line 80
    int-to-long v11, v5

    .line 81
    add-long/2addr v11, v3

    .line 82
    sub-long/2addr v11, v9

    .line 83
    long-to-int v3, v11

    .line 84
    iget v4, v6, Led/e0;->c:I

    .line 85
    .line 86
    :goto_3
    if-ge v3, v4, :cond_5

    .line 87
    .line 88
    iget-object v5, v6, Led/e0;->a:[B

    .line 89
    .line 90
    aget-byte v5, v5, v3

    .line 91
    .line 92
    if-eq v5, v2, :cond_4

    .line 93
    .line 94
    if-ne v5, v1, :cond_3

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    :goto_4
    iget v1, v6, Led/e0;->b:I

    .line 101
    .line 102
    sub-int/2addr v3, v1

    .line 103
    int-to-long v1, v3

    .line 104
    add-long v7, v1, v9

    .line 105
    .line 106
    goto/16 :goto_d

    .line 107
    .line 108
    :cond_5
    iget v3, v6, Led/e0;->c:I

    .line 109
    .line 110
    iget v4, v6, Led/e0;->b:I

    .line 111
    .line 112
    sub-int/2addr v3, v4

    .line 113
    int-to-long v3, v3

    .line 114
    add-long/2addr v9, v3

    .line 115
    iget-object v6, v6, Led/e0;->f:Led/e0;

    .line 116
    .line 117
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    move-wide v3, v9

    .line 121
    goto :goto_2

    .line 122
    :cond_6
    invoke-virtual/range {p3 .. p3}, Led/h;->w()[B

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    move-wide/from16 v3, p1

    .line 127
    .line 128
    :goto_5
    iget-wide v11, v0, Led/e;->b:J

    .line 129
    .line 130
    cmp-long v5, v9, v11

    .line 131
    .line 132
    if-gez v5, :cond_12

    .line 133
    .line 134
    iget v5, v6, Led/e0;->b:I

    .line 135
    .line 136
    int-to-long v11, v5

    .line 137
    add-long/2addr v11, v3

    .line 138
    sub-long/2addr v11, v9

    .line 139
    long-to-int v3, v11

    .line 140
    iget v4, v6, Led/e0;->c:I

    .line 141
    .line 142
    :goto_6
    if-ge v3, v4, :cond_9

    .line 143
    .line 144
    iget-object v5, v6, Led/e0;->a:[B

    .line 145
    .line 146
    aget-byte v5, v5, v3

    .line 147
    .line 148
    array-length v11, v1

    .line 149
    const/4 v12, 0x0

    .line 150
    :cond_7
    if-ge v12, v11, :cond_8

    .line 151
    .line 152
    aget-byte v13, v1, v12

    .line 153
    .line 154
    add-int/lit8 v12, v12, 0x1

    .line 155
    .line 156
    if-ne v5, v13, :cond_7

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_9
    iget v3, v6, Led/e0;->c:I

    .line 163
    .line 164
    iget v4, v6, Led/e0;->b:I

    .line 165
    .line 166
    sub-int/2addr v3, v4

    .line 167
    int-to-long v3, v3

    .line 168
    add-long/2addr v9, v3

    .line 169
    iget-object v6, v6, Led/e0;->f:Led/e0;

    .line 170
    .line 171
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    move-wide v3, v9

    .line 175
    goto :goto_5

    .line 176
    :cond_a
    :goto_7
    iget v9, v6, Led/e0;->c:I

    .line 177
    .line 178
    iget v10, v6, Led/e0;->b:I

    .line 179
    .line 180
    sub-int/2addr v9, v10

    .line 181
    int-to-long v9, v9

    .line 182
    add-long/2addr v9, v4

    .line 183
    cmp-long v11, v9, p1

    .line 184
    .line 185
    if-lez v11, :cond_13

    .line 186
    .line 187
    invoke-virtual/range {p3 .. p3}, Led/h;->r()I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-ne v9, v13, :cond_e

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Led/h;->x(I)B

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v1, v3}, Led/h;->x(I)B

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    move-object v9, v6

    .line 202
    move-wide v5, v4

    .line 203
    move-wide/from16 v3, p1

    .line 204
    .line 205
    :goto_8
    iget-wide v10, v0, Led/e;->b:J

    .line 206
    .line 207
    cmp-long v12, v5, v10

    .line 208
    .line 209
    if-gez v12, :cond_12

    .line 210
    .line 211
    iget v10, v9, Led/e0;->b:I

    .line 212
    .line 213
    int-to-long v10, v10

    .line 214
    add-long/2addr v10, v3

    .line 215
    sub-long/2addr v10, v5

    .line 216
    long-to-int v3, v10

    .line 217
    iget v4, v9, Led/e0;->c:I

    .line 218
    .line 219
    :goto_9
    if-ge v3, v4, :cond_d

    .line 220
    .line 221
    iget-object v10, v9, Led/e0;->a:[B

    .line 222
    .line 223
    aget-byte v10, v10, v3

    .line 224
    .line 225
    if-eq v10, v2, :cond_c

    .line 226
    .line 227
    if-ne v10, v1, :cond_b

    .line 228
    .line 229
    goto :goto_a

    .line 230
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 231
    .line 232
    goto :goto_9

    .line 233
    :cond_c
    :goto_a
    iget v1, v9, Led/e0;->b:I

    .line 234
    .line 235
    sub-int/2addr v3, v1

    .line 236
    int-to-long v1, v3

    .line 237
    add-long v7, v1, v5

    .line 238
    .line 239
    goto :goto_d

    .line 240
    :cond_d
    iget v3, v9, Led/e0;->c:I

    .line 241
    .line 242
    iget v4, v9, Led/e0;->b:I

    .line 243
    .line 244
    sub-int/2addr v3, v4

    .line 245
    int-to-long v3, v3

    .line 246
    add-long/2addr v5, v3

    .line 247
    iget-object v9, v9, Led/e0;->f:Led/e0;

    .line 248
    .line 249
    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    move-wide v3, v5

    .line 253
    goto :goto_8

    .line 254
    :cond_e
    invoke-virtual/range {p3 .. p3}, Led/h;->w()[B

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    move-object v9, v6

    .line 259
    move-wide v5, v4

    .line 260
    move-wide/from16 v3, p1

    .line 261
    .line 262
    :goto_b
    iget-wide v10, v0, Led/e;->b:J

    .line 263
    .line 264
    cmp-long v12, v5, v10

    .line 265
    .line 266
    if-gez v12, :cond_12

    .line 267
    .line 268
    iget v10, v9, Led/e0;->b:I

    .line 269
    .line 270
    int-to-long v10, v10

    .line 271
    add-long/2addr v10, v3

    .line 272
    sub-long/2addr v10, v5

    .line 273
    long-to-int v3, v10

    .line 274
    iget v4, v9, Led/e0;->c:I

    .line 275
    .line 276
    :goto_c
    if-ge v3, v4, :cond_11

    .line 277
    .line 278
    iget-object v10, v9, Led/e0;->a:[B

    .line 279
    .line 280
    aget-byte v10, v10, v3

    .line 281
    .line 282
    array-length v11, v1

    .line 283
    const/4 v12, 0x0

    .line 284
    :cond_f
    if-ge v12, v11, :cond_10

    .line 285
    .line 286
    aget-byte v13, v1, v12

    .line 287
    .line 288
    add-int/lit8 v12, v12, 0x1

    .line 289
    .line 290
    if-ne v10, v13, :cond_f

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 294
    .line 295
    goto :goto_c

    .line 296
    :cond_11
    iget v3, v9, Led/e0;->c:I

    .line 297
    .line 298
    iget v4, v9, Led/e0;->b:I

    .line 299
    .line 300
    sub-int/2addr v3, v4

    .line 301
    int-to-long v3, v3

    .line 302
    add-long/2addr v5, v3

    .line 303
    iget-object v9, v9, Led/e0;->f:Led/e0;

    .line 304
    .line 305
    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    move-wide v3, v5

    .line 309
    goto :goto_b

    .line 310
    :cond_12
    :goto_d
    return-wide v7

    .line 311
    :cond_13
    iget-object v6, v6, Led/e0;->f:Led/e0;

    .line 312
    .line 313
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    move-wide v4, v9

    .line 317
    goto/16 :goto_7

    .line 318
    .line 319
    :cond_14
    const-string v1, "fromIndex < 0: "

    .line 320
    .line 321
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 330
    .line 331
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v2
.end method

.method public final j0(Led/h;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Led/e;->i(JLed/h;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final k(J)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    cmp-long v3, p1, v0

    .line 5
    .line 6
    if-ltz v3, :cond_0

    .line 7
    .line 8
    const-wide/32 v0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    cmp-long v3, p1, v0

    .line 12
    .line 13
    if-gtz v3, :cond_0

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
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget-wide v0, p0, Led/e;->b:J

    .line 21
    .line 22
    cmp-long v3, v0, p1

    .line 23
    .line 24
    if-ltz v3, :cond_3

    .line 25
    .line 26
    long-to-int p2, p1

    .line 27
    new-array p1, p2, [B

    .line 28
    .line 29
    :goto_1
    if-ge v2, p2, :cond_2

    .line 30
    .line 31
    sub-int v0, p2, v2

    .line 32
    .line 33
    invoke-virtual {p0, p1, v2, v0}, Led/e;->read([BII)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, -0x1

    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    add-int/2addr v2, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    return-object p1

    .line 49
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_4
    const-string v0, "byteCount: "

    .line 56
    .line 57
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p2
.end method

.method public final l0(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Led/e;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic m0(J)Led/f;
    .locals 0

    invoke-virtual {p0, p1, p2}, Led/e;->P(J)Led/e;

    move-result-object p1

    return-object p1
.end method

.method public final n()Led/h;
    .locals 2

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Led/e;->z(J)Led/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o0(I)V
    .locals 10

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Led/e;->O(I)V

    .line 6
    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    const/16 v2, 0x800

    .line 12
    .line 13
    const/16 v3, 0x3f

    .line 14
    .line 15
    if-ge p1, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Led/e;->B(I)Led/e0;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v4, v2, Led/e0;->c:I

    .line 22
    .line 23
    shr-int/lit8 v5, p1, 0x6

    .line 24
    .line 25
    or-int/lit16 v5, v5, 0xc0

    .line 26
    .line 27
    int-to-byte v5, v5

    .line 28
    iget-object v6, v2, Led/e0;->a:[B

    .line 29
    .line 30
    aput-byte v5, v6, v4

    .line 31
    .line 32
    add-int/lit8 v5, v4, 0x1

    .line 33
    .line 34
    and-int/2addr p1, v3

    .line 35
    or-int/2addr p1, v0

    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v6, v5

    .line 38
    .line 39
    add-int/2addr v4, v1

    .line 40
    iput v4, v2, Led/e0;->c:I

    .line 41
    .line 42
    iget-wide v0, p0, Led/e;->b:J

    .line 43
    .line 44
    const-wide/16 v2, 0x2

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_1
    const v2, 0xd800

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x1

    .line 53
    if-gt v2, p1, :cond_2

    .line 54
    .line 55
    const v2, 0xdfff

    .line 56
    .line 57
    .line 58
    if-gt p1, v2, :cond_2

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v2, 0x0

    .line 63
    :goto_0
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0, v3}, Led/e;->O(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/high16 v2, 0x10000

    .line 70
    .line 71
    const/4 v6, 0x3

    .line 72
    if-ge p1, v2, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0, v6}, Led/e;->B(I)Led/e0;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget v2, v1, Led/e0;->c:I

    .line 79
    .line 80
    shr-int/lit8 v4, p1, 0xc

    .line 81
    .line 82
    or-int/lit16 v4, v4, 0xe0

    .line 83
    .line 84
    int-to-byte v4, v4

    .line 85
    iget-object v5, v1, Led/e0;->a:[B

    .line 86
    .line 87
    aput-byte v4, v5, v2

    .line 88
    .line 89
    add-int/lit8 v4, v2, 0x1

    .line 90
    .line 91
    shr-int/lit8 v7, p1, 0x6

    .line 92
    .line 93
    and-int/2addr v7, v3

    .line 94
    or-int/2addr v7, v0

    .line 95
    int-to-byte v7, v7

    .line 96
    aput-byte v7, v5, v4

    .line 97
    .line 98
    add-int/lit8 v4, v2, 0x2

    .line 99
    .line 100
    and-int/2addr p1, v3

    .line 101
    or-int/2addr p1, v0

    .line 102
    int-to-byte p1, p1

    .line 103
    aput-byte p1, v5, v4

    .line 104
    .line 105
    add-int/2addr v2, v6

    .line 106
    iput v2, v1, Led/e0;->c:I

    .line 107
    .line 108
    iget-wide v0, p0, Led/e;->b:J

    .line 109
    .line 110
    const-wide/16 v2, 0x3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const v2, 0x10ffff

    .line 114
    .line 115
    .line 116
    const/4 v7, 0x4

    .line 117
    if-gt p1, v2, :cond_5

    .line 118
    .line 119
    invoke-virtual {p0, v7}, Led/e;->B(I)Led/e0;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget v2, v1, Led/e0;->c:I

    .line 124
    .line 125
    shr-int/lit8 v4, p1, 0x12

    .line 126
    .line 127
    or-int/lit16 v4, v4, 0xf0

    .line 128
    .line 129
    int-to-byte v4, v4

    .line 130
    iget-object v5, v1, Led/e0;->a:[B

    .line 131
    .line 132
    aput-byte v4, v5, v2

    .line 133
    .line 134
    add-int/lit8 v4, v2, 0x1

    .line 135
    .line 136
    shr-int/lit8 v6, p1, 0xc

    .line 137
    .line 138
    and-int/2addr v6, v3

    .line 139
    or-int/2addr v6, v0

    .line 140
    int-to-byte v6, v6

    .line 141
    aput-byte v6, v5, v4

    .line 142
    .line 143
    add-int/lit8 v4, v2, 0x2

    .line 144
    .line 145
    shr-int/lit8 v6, p1, 0x6

    .line 146
    .line 147
    and-int/2addr v6, v3

    .line 148
    or-int/2addr v6, v0

    .line 149
    int-to-byte v6, v6

    .line 150
    aput-byte v6, v5, v4

    .line 151
    .line 152
    add-int/lit8 v4, v2, 0x3

    .line 153
    .line 154
    and-int/2addr p1, v3

    .line 155
    or-int/2addr p1, v0

    .line 156
    int-to-byte p1, p1

    .line 157
    aput-byte p1, v5, v4

    .line 158
    .line 159
    add-int/2addr v2, v7

    .line 160
    iput v2, v1, Led/e0;->c:I

    .line 161
    .line 162
    iget-wide v0, p0, Led/e;->b:J

    .line 163
    .line 164
    const-wide/16 v2, 0x4

    .line 165
    .line 166
    :goto_1
    add-long/2addr v0, v2

    .line 167
    iput-wide v0, p0, Led/e;->b:J

    .line 168
    .line 169
    :goto_2
    return-void

    .line 170
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    if-eqz p1, :cond_a

    .line 173
    .line 174
    const/16 v2, 0x8

    .line 175
    .line 176
    new-array v3, v2, [C

    .line 177
    .line 178
    sget-object v8, Lc5/u;->h:[C

    .line 179
    .line 180
    shr-int/lit8 v9, p1, 0x1c

    .line 181
    .line 182
    and-int/lit8 v9, v9, 0xf

    .line 183
    .line 184
    aget-char v9, v8, v9

    .line 185
    .line 186
    aput-char v9, v3, v4

    .line 187
    .line 188
    shr-int/lit8 v9, p1, 0x18

    .line 189
    .line 190
    and-int/lit8 v9, v9, 0xf

    .line 191
    .line 192
    aget-char v9, v8, v9

    .line 193
    .line 194
    aput-char v9, v3, v5

    .line 195
    .line 196
    shr-int/lit8 v5, p1, 0x14

    .line 197
    .line 198
    and-int/lit8 v5, v5, 0xf

    .line 199
    .line 200
    aget-char v5, v8, v5

    .line 201
    .line 202
    aput-char v5, v3, v1

    .line 203
    .line 204
    shr-int/lit8 v1, p1, 0x10

    .line 205
    .line 206
    and-int/lit8 v1, v1, 0xf

    .line 207
    .line 208
    aget-char v1, v8, v1

    .line 209
    .line 210
    aput-char v1, v3, v6

    .line 211
    .line 212
    shr-int/lit8 v1, p1, 0xc

    .line 213
    .line 214
    and-int/lit8 v1, v1, 0xf

    .line 215
    .line 216
    aget-char v1, v8, v1

    .line 217
    .line 218
    aput-char v1, v3, v7

    .line 219
    .line 220
    shr-int/lit8 v1, p1, 0x8

    .line 221
    .line 222
    and-int/lit8 v1, v1, 0xf

    .line 223
    .line 224
    aget-char v1, v8, v1

    .line 225
    .line 226
    const/4 v5, 0x5

    .line 227
    aput-char v1, v3, v5

    .line 228
    .line 229
    shr-int/lit8 v1, p1, 0x4

    .line 230
    .line 231
    and-int/lit8 v1, v1, 0xf

    .line 232
    .line 233
    aget-char v1, v8, v1

    .line 234
    .line 235
    const/4 v5, 0x6

    .line 236
    aput-char v1, v3, v5

    .line 237
    .line 238
    and-int/lit8 p1, p1, 0xf

    .line 239
    .line 240
    aget-char p1, v8, p1

    .line 241
    .line 242
    const/4 v1, 0x7

    .line 243
    aput-char p1, v3, v1

    .line 244
    .line 245
    :goto_3
    if-ge v4, v2, :cond_7

    .line 246
    .line 247
    aget-char p1, v3, v4

    .line 248
    .line 249
    const/16 v1, 0x30

    .line 250
    .line 251
    if-eq p1, v1, :cond_6

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_7
    :goto_4
    const-string p1, "startIndex: "

    .line 258
    .line 259
    if-ltz v4, :cond_9

    .line 260
    .line 261
    if-gt v4, v2, :cond_8

    .line 262
    .line 263
    new-instance p1, Ljava/lang/String;

    .line 264
    .line 265
    rsub-int/lit8 v1, v4, 0x8

    .line 266
    .line 267
    invoke-direct {p1, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .line 268
    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 272
    .line 273
    const-string v1, " > endIndex: 8"

    .line 274
    .line 275
    invoke-static {p1, v4, v1}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 284
    .line 285
    const-string v1, ", endIndex: 8, size: 8"

    .line 286
    .line 287
    invoke-static {p1, v4, v1}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :cond_a
    const-string p1, "0"

    .line 296
    .line 297
    :goto_5
    const-string v1, "Unexpected code point: 0x"

    .line 298
    .line 299
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v0
.end method

.method public final p()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Led/e;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final p0()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_9

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move-wide v5, v2

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :cond_0
    iget-object v7, p0, Led/e;->a:Led/e0;

    .line 14
    .line 15
    invoke-static {v7}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget v8, v7, Led/e0;->b:I

    .line 19
    .line 20
    iget v9, v7, Led/e0;->c:I

    .line 21
    .line 22
    :goto_0
    if-ge v8, v9, :cond_6

    .line 23
    .line 24
    iget-object v10, v7, Led/e0;->a:[B

    .line 25
    .line 26
    aget-byte v10, v10, v8

    .line 27
    .line 28
    const/16 v11, 0x30

    .line 29
    .line 30
    int-to-byte v11, v11

    .line 31
    if-lt v10, v11, :cond_1

    .line 32
    .line 33
    const/16 v12, 0x39

    .line 34
    .line 35
    int-to-byte v12, v12

    .line 36
    if-gt v10, v12, :cond_1

    .line 37
    .line 38
    sub-int v11, v10, v11

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const/16 v11, 0x61

    .line 42
    .line 43
    int-to-byte v11, v11

    .line 44
    if-lt v10, v11, :cond_2

    .line 45
    .line 46
    const/16 v12, 0x66

    .line 47
    .line 48
    int-to-byte v12, v12

    .line 49
    if-gt v10, v12, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/16 v11, 0x41

    .line 53
    .line 54
    int-to-byte v11, v11

    .line 55
    if-lt v10, v11, :cond_4

    .line 56
    .line 57
    const/16 v12, 0x46

    .line 58
    .line 59
    int-to-byte v12, v12

    .line 60
    if-gt v10, v12, :cond_4

    .line 61
    .line 62
    :goto_1
    sub-int v11, v10, v11

    .line 63
    .line 64
    add-int/lit8 v11, v11, 0xa

    .line 65
    .line 66
    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    .line 67
    .line 68
    and-long/2addr v12, v5

    .line 69
    cmp-long v14, v12, v2

    .line 70
    .line 71
    if-nez v14, :cond_3

    .line 72
    .line 73
    const/4 v10, 0x4

    .line 74
    shl-long/2addr v5, v10

    .line 75
    int-to-long v10, v11

    .line 76
    or-long/2addr v5, v10

    .line 77
    add-int/lit8 v8, v8, 0x1

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    new-instance v0, Led/e;

    .line 83
    .line 84
    invoke-direct {v0}, Led/e;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v5, v6}, Led/e;->W(J)Led/e;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v10}, Led/e;->O(I)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 94
    .line 95
    invoke-virtual {v0}, Led/e;->r()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v2, "Number too large: "

    .line 100
    .line 101
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1

    .line 109
    :cond_4
    const/4 v4, 0x1

    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 114
    .line 115
    const/4 v2, 0x2

    .line 116
    new-array v2, v2, [C

    .line 117
    .line 118
    sget-object v3, Lc5/u;->h:[C

    .line 119
    .line 120
    shr-int/lit8 v5, v10, 0x4

    .line 121
    .line 122
    and-int/lit8 v5, v5, 0xf

    .line 123
    .line 124
    aget-char v5, v3, v5

    .line 125
    .line 126
    aput-char v5, v2, v0

    .line 127
    .line 128
    and-int/lit8 v0, v10, 0xf

    .line 129
    .line 130
    aget-char v0, v3, v0

    .line 131
    .line 132
    aput-char v0, v2, v4

    .line 133
    .line 134
    new-instance v0, Ljava/lang/String;

    .line 135
    .line 136
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 137
    .line 138
    .line 139
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 140
    .line 141
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v1

    .line 149
    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 150
    .line 151
    invoke-virtual {v7}, Led/e0;->a()Led/e0;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    iput-object v8, p0, Led/e;->a:Led/e0;

    .line 156
    .line 157
    invoke-static {v7}, Led/f0;->a(Led/e0;)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    iput v8, v7, Led/e0;->b:I

    .line 162
    .line 163
    :goto_4
    if-nez v4, :cond_8

    .line 164
    .line 165
    iget-object v7, p0, Led/e;->a:Led/e0;

    .line 166
    .line 167
    if-nez v7, :cond_0

    .line 168
    .line 169
    :cond_8
    iget-wide v2, p0, Led/e;->b:J

    .line 170
    .line 171
    int-to-long v0, v1

    .line 172
    sub-long/2addr v2, v0

    .line 173
    iput-wide v2, p0, Led/e;->b:J

    .line 174
    .line 175
    return-wide v5

    .line 176
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 179
    .line 180
    .line 181
    throw v0
.end method

.method public final peek()Led/d0;
    .locals 1

    new-instance v0, Led/a0;

    invoke-direct {v0, p0}, Led/a0;-><init>(Led/g;)V

    invoke-static {v0}, Led/v;->b(Led/j0;)Led/d0;

    move-result-object v0

    return-object v0
.end method

.method public final q(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget-wide v0, p0, Led/e;->b:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_4

    if-nez v2, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    iget-object v0, p0, Led/e;->a:Led/e0;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget v1, v0, Led/e0;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Led/e0;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    invoke-virtual {p0, p1, p2}, Led/e;->k(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    :cond_2
    long-to-int v2, p1

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Led/e0;->a:[B

    invoke-direct {v3, v4, v1, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Led/e0;->b:I

    add-int/2addr p3, v2

    iput p3, v0, Led/e0;->b:I

    iget-wide v1, p0, Led/e;->b:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Led/e;->b:J

    iget p1, v0, Led/e0;->c:I

    if-ne p3, p1, :cond_3

    invoke-virtual {v0}, Led/e0;->a()Led/e0;

    move-result-object p1

    iput-object p1, p0, Led/e;->a:Led/e0;

    invoke-static {v0}, Led/f0;->a(Led/e0;)V

    :cond_3
    return-object v3

    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_5
    const-string p3, "byteCount: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Led/e;->b:J

    sget-object v2, Lmc/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Led/e;->q(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Led/e;->a:Led/e0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Led/e0;->c:I

    iget v3, v0, Led/e0;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Led/e0;->a:[B

    iget v3, v0, Led/e0;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Led/e0;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Led/e0;->b:I

    iget-wide v2, p0, Led/e;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Led/e;->b:J

    iget v2, v0, Led/e0;->c:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Led/e0;->a()Led/e0;

    move-result-object p1

    iput-object p1, p0, Led/e;->a:Led/e0;

    invoke-static {v0}, Led/f0;->a(Led/e0;)V

    :cond_1
    return v1
.end method

.method public final read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, La6/a;->g(JJJ)V

    iget-object v0, p0, Led/e;->a:Led/e0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Led/e0;->c:I

    iget v2, v0, Led/e0;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget v1, v0, Led/e0;->b:I

    add-int v2, v1, p3

    iget-object v3, v0, Led/e0;->a:[B

    invoke-static {p2, v3, v1, p1, v2}, Lm9/i;->h0(I[BI[BI)V

    iget p1, v0, Led/e0;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Led/e0;->b:I

    .line 1
    iget-wide v1, p0, Led/e;->b:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 2
    iput-wide v1, p0, Led/e;->b:J

    .line 3
    iget p2, v0, Led/e0;->c:I

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Led/e0;->a()Led/e0;

    move-result-object p1

    iput-object p1, p0, Led/e;->a:Led/e0;

    invoke-static {v0}, Led/f0;->a(Led/e0;)V

    :cond_1
    move p1, p3

    :goto_0
    return p1
.end method

.method public final readByte()B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Led/e;->a:Led/e0;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Led/e0;->b:I

    .line 15
    .line 16
    iget v2, v0, Led/e0;->c:I

    .line 17
    .line 18
    add-int/lit8 v3, v1, 0x1

    .line 19
    .line 20
    iget-object v4, v0, Led/e0;->a:[B

    .line 21
    .line 22
    aget-byte v1, v4, v1

    .line 23
    .line 24
    iget-wide v4, p0, Led/e;->b:J

    .line 25
    .line 26
    const-wide/16 v6, 0x1

    .line 27
    .line 28
    sub-long/2addr v4, v6

    .line 29
    iput-wide v4, p0, Led/e;->b:J

    .line 30
    .line 31
    if-ne v3, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Led/e0;->a()Led/e0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, p0, Led/e;->a:Led/e0;

    .line 38
    .line 39
    invoke-static {v0}, Led/f0;->a(Led/e0;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput v3, v0, Led/e0;->b:I

    .line 44
    .line 45
    :goto_0
    return v1

    .line 46
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public final readInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-ltz v4, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Led/e;->a:Led/e0;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Led/e0;->b:I

    .line 15
    .line 16
    iget v4, v0, Led/e0;->c:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    int-to-long v5, v5

    .line 21
    cmp-long v7, v5, v2

    .line 22
    .line 23
    if-gez v7, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Led/e;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x18

    .line 32
    .line 33
    invoke-virtual {p0}, Led/e;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    and-int/lit16 v1, v1, 0xff

    .line 38
    .line 39
    shl-int/lit8 v1, v1, 0x10

    .line 40
    .line 41
    or-int/2addr v0, v1

    .line 42
    invoke-virtual {p0}, Led/e;->readByte()B

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    and-int/lit16 v1, v1, 0xff

    .line 47
    .line 48
    shl-int/lit8 v1, v1, 0x8

    .line 49
    .line 50
    or-int/2addr v0, v1

    .line 51
    invoke-virtual {p0}, Led/e;->readByte()B

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    and-int/lit16 v1, v1, 0xff

    .line 56
    .line 57
    or-int/2addr v0, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 60
    .line 61
    iget-object v6, v0, Led/e0;->a:[B

    .line 62
    .line 63
    aget-byte v1, v6, v1

    .line 64
    .line 65
    and-int/lit16 v1, v1, 0xff

    .line 66
    .line 67
    shl-int/lit8 v1, v1, 0x18

    .line 68
    .line 69
    add-int/lit8 v7, v5, 0x1

    .line 70
    .line 71
    aget-byte v5, v6, v5

    .line 72
    .line 73
    and-int/lit16 v5, v5, 0xff

    .line 74
    .line 75
    shl-int/lit8 v5, v5, 0x10

    .line 76
    .line 77
    or-int/2addr v1, v5

    .line 78
    add-int/lit8 v5, v7, 0x1

    .line 79
    .line 80
    aget-byte v7, v6, v7

    .line 81
    .line 82
    and-int/lit16 v7, v7, 0xff

    .line 83
    .line 84
    shl-int/lit8 v7, v7, 0x8

    .line 85
    .line 86
    or-int/2addr v1, v7

    .line 87
    add-int/lit8 v7, v5, 0x1

    .line 88
    .line 89
    aget-byte v5, v6, v5

    .line 90
    .line 91
    and-int/lit16 v5, v5, 0xff

    .line 92
    .line 93
    or-int/2addr v1, v5

    .line 94
    iget-wide v5, p0, Led/e;->b:J

    .line 95
    .line 96
    sub-long/2addr v5, v2

    .line 97
    iput-wide v5, p0, Led/e;->b:J

    .line 98
    .line 99
    if-ne v7, v4, :cond_1

    .line 100
    .line 101
    invoke-virtual {v0}, Led/e0;->a()Led/e0;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p0, Led/e;->a:Led/e0;

    .line 106
    .line 107
    invoke-static {v0}, Led/f0;->a(Led/e0;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    iput v7, v0, Led/e0;->b:I

    .line 112
    .line 113
    :goto_0
    move v0, v1

    .line 114
    :goto_1
    return v0

    .line 115
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final readShort()S
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-ltz v4, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Led/e;->a:Led/e0;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Led/e0;->b:I

    .line 15
    .line 16
    iget v4, v0, Led/e0;->c:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    if-ge v5, v6, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Led/e;->readByte()B

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 28
    .line 29
    shl-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p0}, Led/e;->readByte()B

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    and-int/lit16 v1, v1, 0xff

    .line 36
    .line 37
    or-int/2addr v0, v1

    .line 38
    int-to-short v0, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 41
    .line 42
    iget-object v6, v0, Led/e0;->a:[B

    .line 43
    .line 44
    aget-byte v1, v6, v1

    .line 45
    .line 46
    and-int/lit16 v1, v1, 0xff

    .line 47
    .line 48
    shl-int/lit8 v1, v1, 0x8

    .line 49
    .line 50
    add-int/lit8 v7, v5, 0x1

    .line 51
    .line 52
    aget-byte v5, v6, v5

    .line 53
    .line 54
    and-int/lit16 v5, v5, 0xff

    .line 55
    .line 56
    or-int/2addr v1, v5

    .line 57
    iget-wide v5, p0, Led/e;->b:J

    .line 58
    .line 59
    sub-long/2addr v5, v2

    .line 60
    iput-wide v5, p0, Led/e;->b:J

    .line 61
    .line 62
    if-ne v7, v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Led/e0;->a()Led/e0;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, p0, Led/e;->a:Led/e0;

    .line 69
    .line 70
    invoke-static {v0}, Led/f0;->a(Led/e0;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iput v7, v0, Led/e0;->b:I

    .line 75
    .line 76
    :goto_0
    int-to-short v0, v1

    .line 77
    :goto_1
    return v0

    .line 78
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public final s(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, Lmc/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Led/e;->q(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final skip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Led/e;->a:Led/e0;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Led/e0;->c:I

    .line 12
    .line 13
    iget v2, v0, Led/e0;->b:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v2, v1

    .line 22
    iget-wide v3, p0, Led/e;->b:J

    .line 23
    .line 24
    int-to-long v5, v2

    .line 25
    sub-long/2addr v3, v5

    .line 26
    iput-wide v3, p0, Led/e;->b:J

    .line 27
    .line 28
    sub-long/2addr p1, v5

    .line 29
    iget v1, v0, Led/e0;->b:I

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    iput v1, v0, Led/e0;->b:I

    .line 33
    .line 34
    iget v2, v0, Led/e0;->c:I

    .line 35
    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Led/e0;->a()Led/e0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Led/e;->a:Led/e0;

    .line 43
    .line 44
    invoke-static {v0}, Led/f0;->a(Led/e0;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    return-void
.end method

.method public final t()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_c

    .line 8
    .line 9
    invoke-virtual {p0, v2, v3}, Led/e;->f(J)B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit16 v1, v0, 0x80

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/16 v4, 0x80

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    and-int/lit8 v1, v0, 0x7f

    .line 23
    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    and-int/lit16 v1, v0, 0xe0

    .line 28
    .line 29
    const/16 v6, 0xc0

    .line 30
    .line 31
    if-ne v1, v6, :cond_1

    .line 32
    .line 33
    and-int/lit8 v1, v0, 0x1f

    .line 34
    .line 35
    const/4 v6, 0x2

    .line 36
    const/16 v7, 0x80

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    .line 40
    .line 41
    const/16 v6, 0xe0

    .line 42
    .line 43
    if-ne v1, v6, :cond_2

    .line 44
    .line 45
    and-int/lit8 v1, v0, 0xf

    .line 46
    .line 47
    const/4 v6, 0x3

    .line 48
    const/16 v7, 0x800

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    and-int/lit16 v1, v0, 0xf8

    .line 52
    .line 53
    const/16 v6, 0xf0

    .line 54
    .line 55
    if-ne v1, v6, :cond_a

    .line 56
    .line 57
    and-int/lit8 v1, v0, 0x7

    .line 58
    .line 59
    const/4 v6, 0x4

    .line 60
    const/high16 v7, 0x10000

    .line 61
    .line 62
    :goto_0
    iget-wide v8, p0, Led/e;->b:J

    .line 63
    .line 64
    int-to-long v10, v6

    .line 65
    cmp-long v12, v8, v10

    .line 66
    .line 67
    if-ltz v12, :cond_9

    .line 68
    .line 69
    if-ge v5, v6, :cond_5

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 73
    .line 74
    int-to-long v8, v0

    .line 75
    invoke-virtual {p0, v8, v9}, Led/e;->f(J)B

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    and-int/lit16 v5, v0, 0xc0

    .line 80
    .line 81
    if-ne v5, v4, :cond_4

    .line 82
    .line 83
    shl-int/lit8 v1, v1, 0x6

    .line 84
    .line 85
    and-int/lit8 v0, v0, 0x3f

    .line 86
    .line 87
    or-int/2addr v1, v0

    .line 88
    if-lt v2, v6, :cond_3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move v0, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p0, v8, v9}, Led/e;->skip(J)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    :goto_2
    invoke-virtual {p0, v10, v11}, Led/e;->skip(J)V

    .line 98
    .line 99
    .line 100
    const v0, 0x10ffff

    .line 101
    .line 102
    .line 103
    if-le v1, v0, :cond_6

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    const v0, 0xd800

    .line 107
    .line 108
    .line 109
    if-gt v0, v1, :cond_7

    .line 110
    .line 111
    const v0, 0xdfff

    .line 112
    .line 113
    .line 114
    if-gt v1, v0, :cond_7

    .line 115
    .line 116
    const/4 v3, 0x1

    .line 117
    :cond_7
    if-eqz v3, :cond_8

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_8
    if-ge v1, v7, :cond_b

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    .line 124
    .line 125
    const-string v4, "size < "

    .line 126
    .line 127
    const-string v7, ": "

    .line 128
    .line 129
    invoke-static {v4, v6, v7}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    iget-wide v6, p0, Led/e;->b:J

    .line 134
    .line 135
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v6, " (to read code point prefixed 0x"

    .line 139
    .line 140
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    new-array v2, v2, [C

    .line 144
    .line 145
    sget-object v6, Lc5/u;->h:[C

    .line 146
    .line 147
    shr-int/lit8 v7, v0, 0x4

    .line 148
    .line 149
    and-int/lit8 v7, v7, 0xf

    .line 150
    .line 151
    aget-char v7, v6, v7

    .line 152
    .line 153
    aput-char v7, v2, v3

    .line 154
    .line 155
    and-int/lit8 v0, v0, 0xf

    .line 156
    .line 157
    aget-char v0, v6, v0

    .line 158
    .line 159
    aput-char v0, v2, v5

    .line 160
    .line 161
    new-instance v0, Ljava/lang/String;

    .line 162
    .line 163
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const/16 v0, 0x29

    .line 170
    .line 171
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v1

    .line 182
    :cond_a
    const-wide/16 v0, 0x1

    .line 183
    .line 184
    invoke-virtual {p0, v0, v1}, Led/e;->skip(J)V

    .line 185
    .line 186
    .line 187
    :goto_3
    const v1, 0xfffd

    .line 188
    .line 189
    .line 190
    :cond_b
    return v1

    .line 191
    :cond_c
    new-instance v0, Ljava/io/EOFException;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 194
    .line 195
    .line 196
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Led/e;->b:J

    .line 2
    .line 3
    const-wide/32 v2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-gtz v4, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-eqz v2, :cond_1

    .line 14
    .line 15
    long-to-int v1, v0

    .line 16
    invoke-virtual {p0, v1}, Led/e;->v(I)Led/h;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Led/h;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "size > Int.MAX_VALUE: "

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method public final v(I)Led/h;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Led/h;->d:Led/h;

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-wide v0, p0, Led/e;->b:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    int-to-long v4, p1

    .line 11
    invoke-static/range {v0 .. v5}, La6/a;->g(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Led/e;->a:Led/e0;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v2, p1, :cond_2

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget v4, v0, Led/e0;->c:I

    .line 25
    .line 26
    iget v5, v0, Led/e0;->b:I

    .line 27
    .line 28
    if-eq v4, v5, :cond_1

    .line 29
    .line 30
    sub-int/2addr v4, v5

    .line 31
    add-int/2addr v2, v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    iget-object v0, v0, Led/e0;->f:Led/e0;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 38
    .line 39
    const-string v0, "s.limit == s.pos"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    new-array v0, v3, [[B

    .line 46
    .line 47
    mul-int/lit8 v2, v3, 0x2

    .line 48
    .line 49
    new-array v2, v2, [I

    .line 50
    .line 51
    iget-object v4, p0, Led/e;->a:Led/e0;

    .line 52
    .line 53
    move-object v5, v4

    .line 54
    const/4 v4, 0x0

    .line 55
    :goto_1
    if-ge v1, p1, :cond_3

    .line 56
    .line 57
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v6, v5, Led/e0;->a:[B

    .line 61
    .line 62
    aput-object v6, v0, v4

    .line 63
    .line 64
    iget v6, v5, Led/e0;->c:I

    .line 65
    .line 66
    iget v7, v5, Led/e0;->b:I

    .line 67
    .line 68
    sub-int/2addr v6, v7

    .line 69
    add-int/2addr v1, v6

    .line 70
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    aput v6, v2, v4

    .line 75
    .line 76
    add-int v6, v4, v3

    .line 77
    .line 78
    iget v7, v5, Led/e0;->b:I

    .line 79
    .line 80
    aput v7, v2, v6

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    iput-boolean v6, v5, Led/e0;->d:Z

    .line 84
    .line 85
    add-int/2addr v4, v6

    .line 86
    iget-object v5, v5, Led/e0;->f:Led/e0;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance p1, Led/g0;

    .line 90
    .line 91
    invoke-direct {p1, v0, v2}, Led/g0;-><init>([[B[I)V

    .line 92
    .line 93
    .line 94
    :goto_2
    return-object p1
.end method

.method public final w(Led/e;J)J
    .locals 5

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-wide v2, p0, Led/e;->b:J

    .line 18
    .line 19
    cmp-long v4, v2, v0

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    const-wide/16 p1, -0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    cmp-long v0, p2, v2

    .line 27
    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    move-wide p2, v2

    .line 31
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Led/e;->M(Led/e;J)V

    .line 32
    .line 33
    .line 34
    move-wide p1, p2

    .line 35
    :goto_1
    return-wide p1

    .line 36
    :cond_3
    const-string p1, "byteCount < 0: "

    .line 37
    .line 38
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p2
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Led/e;->B(I)Led/e0;

    move-result-object v2

    iget v3, v2, Led/e0;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Led/e0;->a:[B

    iget v5, v2, Led/e0;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Led/e0;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Led/e0;->c:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Led/e;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Led/e;->b:J

    return v0
.end method

.method public final write([B)Led/f;
    .locals 2

    const-string v0, "source"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Led/e;->write([BII)V

    return-object p0
.end method

.method public final bridge synthetic write([BII)Led/f;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Led/e;->write([BII)V

    return-object p0
.end method

.method public final write([BII)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, La6/a;->g(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Led/e;->B(I)Led/e0;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Led/e0;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Led/e0;->c:I

    add-int v3, p2, v1

    iget-object v4, v0, Led/e0;->a:[B

    invoke-static {v2, p1, p2, v4, v3}, Lm9/i;->h0(I[BI[BI)V

    iget p2, v0, Led/e0;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Led/e0;->c:I

    move p2, v3

    goto :goto_0

    .line 2
    :cond_0
    iget-wide p1, p0, Led/e;->b:J

    add-long/2addr p1, v7

    .line 3
    iput-wide p1, p0, Led/e;->b:J

    return-void
.end method

.method public final bridge synthetic writeByte(I)Led/f;
    .locals 0

    invoke-virtual {p0, p1}, Led/e;->O(I)V

    return-object p0
.end method

.method public final bridge synthetic writeInt(I)Led/f;
    .locals 0

    invoke-virtual {p0, p1}, Led/e;->c0(I)V

    return-object p0
.end method

.method public final bridge synthetic writeShort(I)Led/f;
    .locals 0

    invoke-virtual {p0, p1}, Led/e;->d0(I)V

    return-object p0
.end method

.method public final z(J)Led/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_0

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
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-wide v0, p0, Led/e;->b:J

    .line 20
    .line 21
    cmp-long v2, v0, p1

    .line 22
    .line 23
    if-ltz v2, :cond_2

    .line 24
    .line 25
    const-wide/16 v0, 0x1000

    .line 26
    .line 27
    cmp-long v2, p1, v0

    .line 28
    .line 29
    if-ltz v2, :cond_1

    .line 30
    .line 31
    long-to-int v0, p1

    .line 32
    invoke-virtual {p0, v0}, Led/e;->v(I)Led/h;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, p2}, Led/e;->skip(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance v0, Led/h;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Led/e;->k(J)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Led/h;-><init>([B)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-object v0

    .line 50
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_3
    const-string v0, "byteCount: "

    .line 57
    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p2
.end method
