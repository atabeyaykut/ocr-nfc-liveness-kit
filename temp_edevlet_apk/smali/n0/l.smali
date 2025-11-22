.class public final Ln0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln0/h0<",
        "Lk0/c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln0/l;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lo0/c;F)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lo0/c;->k()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lo0/c;->a()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lo0/c;->e()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lo0/c;->g()D

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    double-to-float v5, v5

    .line 35
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Lo0/c;->c()V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget v2, v0, Ln0/l;->a:I

    .line 49
    .line 50
    const/4 v5, -0x1

    .line 51
    if-ne v2, v5, :cond_4

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    div-int/lit8 v2, v2, 0x4

    .line 58
    .line 59
    iput v2, v0, Ln0/l;->a:I

    .line 60
    .line 61
    :cond_4
    iget v2, v0, Ln0/l;->a:I

    .line 62
    .line 63
    new-array v5, v2, [F

    .line 64
    .line 65
    new-array v2, v2, [I

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    :goto_2
    iget v9, v0, Ln0/l;->a:I

    .line 71
    .line 72
    mul-int/lit8 v9, v9, 0x4

    .line 73
    .line 74
    const/4 v10, 0x2

    .line 75
    const-wide v11, 0x406fe00000000000L    # 255.0

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    if-ge v6, v9, :cond_a

    .line 81
    .line 82
    div-int/lit8 v9, v6, 0x4

    .line 83
    .line 84
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    check-cast v13, Ljava/lang/Float;

    .line 89
    .line 90
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    float-to-double v13, v13

    .line 95
    rem-int/lit8 v15, v6, 0x4

    .line 96
    .line 97
    if-eqz v15, :cond_8

    .line 98
    .line 99
    if-eq v15, v3, :cond_7

    .line 100
    .line 101
    if-eq v15, v10, :cond_6

    .line 102
    .line 103
    const/4 v10, 0x3

    .line 104
    if-eq v15, v10, :cond_5

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    mul-double v13, v13, v11

    .line 108
    .line 109
    double-to-int v10, v13

    .line 110
    const/16 v11, 0xff

    .line 111
    .line 112
    invoke-static {v11, v7, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    aput v10, v2, v9

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    mul-double v13, v13, v11

    .line 120
    .line 121
    double-to-int v8, v13

    .line 122
    goto :goto_3

    .line 123
    :cond_7
    mul-double v13, v13, v11

    .line 124
    .line 125
    double-to-int v7, v13

    .line 126
    goto :goto_3

    .line 127
    :cond_8
    if-lez v9, :cond_9

    .line 128
    .line 129
    add-int/lit8 v10, v9, -0x1

    .line 130
    .line 131
    aget v10, v5, v10

    .line 132
    .line 133
    double-to-float v11, v13

    .line 134
    cmpl-float v10, v10, v11

    .line 135
    .line 136
    if-ltz v10, :cond_9

    .line 137
    .line 138
    const v10, 0x3c23d70a    # 0.01f

    .line 139
    .line 140
    .line 141
    add-float/2addr v11, v10

    .line 142
    aput v11, v5, v9

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_9
    double-to-float v10, v13

    .line 146
    aput v10, v5, v9

    .line 147
    .line 148
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_a
    new-instance v6, Lk0/c;

    .line 152
    .line 153
    invoke-direct {v6, v5, v2}, Lk0/c;-><init>([F[I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-gt v2, v9, :cond_b

    .line 161
    .line 162
    goto/16 :goto_9

    .line 163
    .line 164
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    sub-int/2addr v2, v9

    .line 169
    div-int/2addr v2, v10

    .line 170
    new-array v5, v2, [D

    .line 171
    .line 172
    new-array v7, v2, [D

    .line 173
    .line 174
    const/4 v8, 0x0

    .line 175
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-ge v9, v10, :cond_d

    .line 180
    .line 181
    rem-int/lit8 v10, v9, 0x2

    .line 182
    .line 183
    if-nez v10, :cond_c

    .line 184
    .line 185
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    check-cast v10, Ljava/lang/Float;

    .line 190
    .line 191
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    float-to-double v13, v10

    .line 196
    aput-wide v13, v5, v8

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_c
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    check-cast v10, Ljava/lang/Float;

    .line 204
    .line 205
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    float-to-double v13, v10

    .line 210
    aput-wide v13, v7, v8

    .line 211
    .line 212
    add-int/lit8 v8, v8, 0x1

    .line 213
    .line 214
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_d
    :goto_6
    iget-object v1, v6, Lk0/c;->b:[I

    .line 218
    .line 219
    array-length v8, v1

    .line 220
    if-ge v4, v8, :cond_10

    .line 221
    .line 222
    aget v8, v1, v4

    .line 223
    .line 224
    iget-object v9, v6, Lk0/c;->a:[F

    .line 225
    .line 226
    aget v9, v9, v4

    .line 227
    .line 228
    float-to-double v9, v9

    .line 229
    const/4 v13, 0x1

    .line 230
    :goto_7
    if-ge v13, v2, :cond_f

    .line 231
    .line 232
    add-int/lit8 v14, v13, -0x1

    .line 233
    .line 234
    aget-wide v15, v5, v14

    .line 235
    .line 236
    aget-wide v17, v5, v13

    .line 237
    .line 238
    cmpl-double v19, v17, v9

    .line 239
    .line 240
    if-ltz v19, :cond_e

    .line 241
    .line 242
    sub-double/2addr v9, v15

    .line 243
    sub-double v17, v17, v15

    .line 244
    .line 245
    div-double v9, v9, v17

    .line 246
    .line 247
    sget-object v15, Lp0/f;->a:Landroid/graphics/PointF;

    .line 248
    .line 249
    move v15, v4

    .line 250
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 251
    .line 252
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(DD)D

    .line 253
    .line 254
    .line 255
    move-result-wide v3

    .line 256
    const-wide/16 v9, 0x0

    .line 257
    .line 258
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 259
    .line 260
    .line 261
    move-result-wide v3

    .line 262
    aget-wide v9, v7, v14

    .line 263
    .line 264
    aget-wide v13, v7, v13

    .line 265
    .line 266
    sub-double/2addr v13, v9

    .line 267
    mul-double v13, v13, v3

    .line 268
    .line 269
    add-double/2addr v13, v9

    .line 270
    mul-double v13, v13, v11

    .line 271
    .line 272
    double-to-int v3, v13

    .line 273
    goto :goto_8

    .line 274
    :cond_e
    move v15, v4

    .line 275
    add-int/lit8 v13, v13, 0x1

    .line 276
    .line 277
    const/4 v3, 0x1

    .line 278
    goto :goto_7

    .line 279
    :cond_f
    move v15, v4

    .line 280
    add-int/lit8 v3, v2, -0x1

    .line 281
    .line 282
    aget-wide v3, v7, v3

    .line 283
    .line 284
    mul-double v3, v3, v11

    .line 285
    .line 286
    double-to-int v3, v3

    .line 287
    :goto_8
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    invoke-static {v3, v4, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    aput v3, v1, v15

    .line 304
    .line 305
    add-int/lit8 v4, v15, 0x1

    .line 306
    .line 307
    const/4 v3, 0x1

    .line 308
    goto :goto_6

    .line 309
    :cond_10
    :goto_9
    return-object v6
.end method
