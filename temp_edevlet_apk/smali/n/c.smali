.class public final Ln/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/f;

.field public final b:Lp/m;


# direct methods
.method public constructor <init>(Le/f;Lp/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/c;->a:Le/f;

    iput-object p2, p0, Ln/c;->b:Lp/m;

    return-void
.end method

.method public static c(Lk/i;Lp/g;Ln/b$a;Ln/b$b;)Lp/n;
    .locals 9

    .line 1
    new-instance v8, Lp/n;

    .line 2
    .line 3
    iget-object v0, p1, Lp/g;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    iget-object v2, p3, Ln/b$b;->a:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v0, "coil#disk_cache_key"

    .line 18
    .line 19
    iget-object p3, p3, Ln/b$b;->b:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v2, v0, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    move-object v5, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v5, v4

    .line 35
    :goto_0
    const-string v0, "coil#is_sampled"

    .line 36
    .line 37
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    instance-of v0, p3, Ljava/lang/Boolean;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    move-object v4, p3

    .line 46
    check-cast v4, Ljava/lang/Boolean;

    .line 47
    .line 48
    :cond_1
    const/4 p3, 0x0

    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    move v6, v0

    .line 58
    :goto_1
    sget-object v0, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 59
    .line 60
    instance-of v0, p0, Lk/i;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-boolean p0, p0, Lk/i;->g:Z

    .line 65
    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    const/4 p0, 0x1

    .line 69
    const/4 v7, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const/4 v7, 0x0

    .line 72
    :goto_2
    move-object v0, v8

    .line 73
    move-object v2, p1

    .line 74
    move-object v4, p2

    .line 75
    invoke-direct/range {v0 .. v7}, Lp/n;-><init>(Landroid/graphics/drawable/Drawable;Lp/g;ILn/b$a;Ljava/lang/String;ZZ)V

    .line 76
    .line 77
    .line 78
    return-object v8
.end method


# virtual methods
.method public final a(Lp/g;Ln/b$a;Lq/e;I)Ln/b$b;
    .locals 17

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v1, Lp/g;->t:I

    .line 10
    .line 11
    invoke-static {v4}, Landroidx/camera/core/impl/utils/f;->d(I)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x0

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    return-object v5

    .line 19
    :cond_0
    iget-object v4, v0, Ln/c;->a:Le/f;

    .line 20
    .line 21
    invoke-interface {v4}, Le/f;->b()Ln/b;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {v4, v2}, Ln/b;->b(Ln/b$a;)Ln/b$b;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :goto_0
    if-nez v4, :cond_2

    .line 34
    .line 35
    goto/16 :goto_e

    .line 36
    .line 37
    :cond_2
    iget-object v6, v4, Ln/b$b;->a:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    if-nez v7, :cond_3

    .line 44
    .line 45
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    .line 47
    :cond_3
    iget-object v8, v0, Ln/c;->b:Lp/m;

    .line 48
    .line 49
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v7}, Lp/m;->a(Lp/g;Landroid/graphics/Bitmap$Config;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_4

    .line 57
    .line 58
    goto/16 :goto_b

    .line 59
    .line 60
    :cond_4
    iget-object v7, v4, Ln/b$b;->b:Ljava/util/Map;

    .line 61
    .line 62
    const-string v9, "coil#is_sampled"

    .line 63
    .line 64
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    instance-of v9, v7, Ljava/lang/Boolean;

    .line 69
    .line 70
    if-eqz v9, :cond_5

    .line 71
    .line 72
    check-cast v7, Ljava/lang/Boolean;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    move-object v7, v5

    .line 76
    :goto_1
    if-nez v7, :cond_6

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    goto :goto_2

    .line 80
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    :goto_2
    invoke-static/range {p3 .. p3}, Lx5/a;->m(Lq/e;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const/4 v10, 0x1

    .line 89
    if-eqz v9, :cond_7

    .line 90
    .line 91
    if-eqz v7, :cond_15

    .line 92
    .line 93
    goto/16 :goto_b

    .line 94
    .line 95
    :cond_7
    iget-object v2, v2, Ln/b$a;->b:Ljava/util/Map;

    .line 96
    .line 97
    const-string v9, "coil#transformation_size"

    .line 98
    .line 99
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v2, :cond_8

    .line 106
    .line 107
    invoke-virtual/range {p3 .. p3}, Lq/e;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    goto/16 :goto_d

    .line 116
    .line 117
    :cond_8
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    iget-object v9, v3, Lq/e;->a:Lq/a;

    .line 126
    .line 127
    instance-of v11, v9, Lq/a$a;

    .line 128
    .line 129
    const v12, 0x7fffffff

    .line 130
    .line 131
    .line 132
    if-eqz v11, :cond_9

    .line 133
    .line 134
    check-cast v9, Lq/a$a;

    .line 135
    .line 136
    iget v9, v9, Lq/a$a;->a:I

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_9
    const v9, 0x7fffffff

    .line 140
    .line 141
    .line 142
    :goto_3
    iget-object v3, v3, Lq/e;->b:Lq/a;

    .line 143
    .line 144
    instance-of v11, v3, Lq/a$a;

    .line 145
    .line 146
    if-eqz v11, :cond_a

    .line 147
    .line 148
    check-cast v3, Lq/a$a;

    .line 149
    .line 150
    iget v3, v3, Lq/a$a;->a:I

    .line 151
    .line 152
    move/from16 v11, p4

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_a
    move/from16 v11, p4

    .line 156
    .line 157
    const v3, 0x7fffffff

    .line 158
    .line 159
    .line 160
    :goto_4
    invoke-static {v2, v6, v9, v3, v11}, Lg/f;->a(IIIII)D

    .line 161
    .line 162
    .line 163
    move-result-wide v13

    .line 164
    invoke-static/range {p1 .. p1}, Lu/b;->a(Lp/g;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 169
    .line 170
    if-eqz v1, :cond_c

    .line 171
    .line 172
    cmpl-double v11, v13, v15

    .line 173
    .line 174
    if-lez v11, :cond_b

    .line 175
    .line 176
    move-wide v11, v15

    .line 177
    goto :goto_5

    .line 178
    :cond_b
    move-wide v11, v13

    .line 179
    :goto_5
    int-to-double v8, v9

    .line 180
    move/from16 p2, v6

    .line 181
    .line 182
    int-to-double v5, v2

    .line 183
    mul-double v5, v5, v11

    .line 184
    .line 185
    sub-double/2addr v8, v5

    .line 186
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    .line 187
    .line 188
    .line 189
    move-result-wide v5

    .line 190
    cmpg-double v2, v5, v15

    .line 191
    .line 192
    if-lez v2, :cond_15

    .line 193
    .line 194
    int-to-double v2, v3

    .line 195
    move/from16 v5, p2

    .line 196
    .line 197
    int-to-double v5, v5

    .line 198
    mul-double v11, v11, v5

    .line 199
    .line 200
    sub-double/2addr v2, v11

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 202
    .line 203
    .line 204
    move-result-wide v2

    .line 205
    cmpg-double v5, v2, v15

    .line 206
    .line 207
    if-gtz v5, :cond_12

    .line 208
    .line 209
    goto :goto_c

    .line 210
    :cond_c
    move v5, v6

    .line 211
    const/high16 v6, -0x80000000

    .line 212
    .line 213
    if-eq v9, v6, :cond_e

    .line 214
    .line 215
    if-ne v9, v12, :cond_d

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_d
    const/4 v8, 0x0

    .line 219
    goto :goto_7

    .line 220
    :cond_e
    :goto_6
    const/4 v8, 0x1

    .line 221
    :goto_7
    if-nez v8, :cond_f

    .line 222
    .line 223
    sub-int/2addr v9, v2

    .line 224
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-gt v2, v10, :cond_12

    .line 229
    .line 230
    :cond_f
    if-eq v3, v6, :cond_11

    .line 231
    .line 232
    if-ne v3, v12, :cond_10

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_10
    const/4 v2, 0x0

    .line 236
    goto :goto_9

    .line 237
    :cond_11
    :goto_8
    const/4 v2, 0x1

    .line 238
    :goto_9
    if-nez v2, :cond_15

    .line 239
    .line 240
    sub-int/2addr v3, v5

    .line 241
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-gt v2, v10, :cond_12

    .line 246
    .line 247
    goto :goto_c

    .line 248
    :cond_12
    cmpg-double v2, v13, v15

    .line 249
    .line 250
    if-nez v2, :cond_13

    .line 251
    .line 252
    const/4 v2, 0x1

    .line 253
    goto :goto_a

    .line 254
    :cond_13
    const/4 v2, 0x0

    .line 255
    :goto_a
    if-nez v2, :cond_14

    .line 256
    .line 257
    if-nez v1, :cond_14

    .line 258
    .line 259
    goto :goto_b

    .line 260
    :cond_14
    cmpl-double v1, v13, v15

    .line 261
    .line 262
    if-lez v1, :cond_15

    .line 263
    .line 264
    if-eqz v7, :cond_15

    .line 265
    .line 266
    :goto_b
    const/4 v8, 0x0

    .line 267
    goto :goto_d

    .line 268
    :cond_15
    :goto_c
    const/4 v8, 0x1

    .line 269
    :goto_d
    if-eqz v8, :cond_16

    .line 270
    .line 271
    move-object v5, v4

    .line 272
    goto :goto_f

    .line 273
    :cond_16
    :goto_e
    const/4 v5, 0x0

    .line 274
    :goto_f
    return-object v5
.end method

.method public final b(Lp/g;Ljava/lang/Object;Lp/k;Le/b;)Ln/b$a;
    .locals 8

    .line 1
    iget-object v0, p1, Lp/g;->e:Ln/b$a;

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    invoke-interface {p4}, Le/b;->k()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ln/c;->a:Le/f;

    .line 9
    .line 10
    invoke-interface {v0}, Le/f;->getComponents()Le/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Le/a;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    const/4 v4, 0x0

    .line 23
    if-ge v3, v1, :cond_1

    .line 24
    .line 25
    add-int/lit8 v5, v3, 0x1

    .line 26
    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ll9/g;

    .line 32
    .line 33
    iget-object v6, v3, Ll9/g;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v6, Ll/b;

    .line 36
    .line 37
    iget-object v3, v3, Ll9/g;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {v3, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-interface {v6, p2, p3}, Ll/b;->a(Ljava/lang/Object;Lp/k;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    :cond_0
    move v3, v5

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v3, v4

    .line 60
    :cond_2
    invoke-interface {p4}, Le/b;->l()V

    .line 61
    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    return-object v4

    .line 66
    :cond_3
    iget-object p2, p1, Lp/g;->D:Lp/l;

    .line 67
    .line 68
    iget-object p2, p2, Lp/l;->a:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    sget-object v0, Lm9/w;->a:Lm9/w;

    .line 75
    .line 76
    if-eqz p4, :cond_4

    .line 77
    .line 78
    move-object p4, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    new-instance p4, Ljava/util/LinkedHashMap;

    .line 81
    .line 82
    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lp/l$b;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    :goto_2
    iget-object p1, p1, Lp/g;->l:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_6

    .line 128
    .line 129
    new-instance p1, Ln/b$a;

    .line 130
    .line 131
    invoke-direct {p1, v3, v0}, Ln/b$a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    .line 133
    .line 134
    return-object p1

    .line 135
    :cond_6
    invoke-static {p4}, Lm9/e0;->V0(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    move-object p4, p1

    .line 140
    check-cast p4, Ljava/util/Collection;

    .line 141
    .line 142
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result p4

    .line 146
    xor-int/lit8 p4, p4, 0x1

    .line 147
    .line 148
    if-eqz p4, :cond_8

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    :goto_3
    if-ge v2, p4, :cond_7

    .line 155
    .line 156
    add-int/lit8 v0, v2, 0x1

    .line 157
    .line 158
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Ls/b;

    .line 163
    .line 164
    const-string v4, "coil#transformation_"

    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-interface {v1}, Ls/b;->b()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move v2, v0

    .line 182
    goto :goto_3

    .line 183
    :cond_7
    iget-object p1, p3, Lp/k;->d:Lq/e;

    .line 184
    .line 185
    invoke-virtual {p1}, Lq/e;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const-string p3, "coil#transformation_size"

    .line 190
    .line 191
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_8
    new-instance p1, Ln/b$a;

    .line 195
    .line 196
    invoke-direct {p1, v3, p2}, Ln/b$a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    .line 198
    .line 199
    return-object p1

    .line 200
    :cond_9
    return-object v0
.end method
