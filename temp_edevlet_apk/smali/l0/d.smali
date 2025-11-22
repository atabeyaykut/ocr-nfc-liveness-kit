.class public final Ll0/d;
.super Ll0/b;
.source "SourceFile"


# instance fields
.field public final A:Landroid/graphics/Rect;

.field public B:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public C:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final y:Le0/a;

.field public final z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ld0/l;Ll0/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll0/b;-><init>(Ld0/l;Ll0/e;)V

    new-instance p1, Le0/a;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Le0/a;-><init>(I)V

    iput-object p1, p0, Ll0/d;->y:Le0/a;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ll0/d;->z:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ll0/d;->A:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ll0/b;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {p0}, Ll0/d;->q()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Lp0/g;->c()F

    move-result v0

    mul-float v0, v0, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lp0/g;->c()F

    move-result p3

    mul-float p3, p3, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Ll0/b;->l:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public final f(Lq0/c;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Ll0/b;->f(Lq0/c;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ld0/q;->E:Landroid/graphics/ColorFilter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Ll0/d;->B:Lg0/p;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lg0/p;

    .line 15
    .line 16
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Ll0/d;->B:Lg0/p;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Ld0/q;->H:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    if-ne p2, v0, :cond_3

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Ll0/d;->C:Lg0/p;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance p2, Lg0/p;

    .line 32
    .line 33
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Ll0/d;->C:Lg0/p;

    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method public final j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ll0/d;->q()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lp0/g;->c()F

    move-result v1

    iget-object v2, p0, Ll0/d;->y:Le0/a;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Ll0/d;->B:Lg0/p;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lg0/p;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    iget-object v3, p0, Ll0/d;->z:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v1

    float-to-int p3, p3

    iget-object v1, p0, Ll0/d;->A:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final q()Landroid/graphics/Bitmap;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ll0/d;->C:Lg0/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lg0/p;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Ll0/b;->n:Ll0/e;

    .line 15
    .line 16
    iget-object v0, v0, Ll0/e;->g:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Ll0/b;->m:Ld0/l;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    move-object v2, v5

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    iget-object v2, v1, Ld0/l;->j:Lh0/b;

    .line 32
    .line 33
    if-eqz v2, :cond_7

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    instance-of v7, v6, Landroid/view/View;

    .line 43
    .line 44
    if-eqz v7, :cond_3

    .line 45
    .line 46
    check-cast v6, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    move-object v6, v5

    .line 54
    :goto_1
    iget-object v2, v2, Lh0/b;->a:Landroid/content/Context;

    .line 55
    .line 56
    if-nez v6, :cond_4

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_6

    .line 65
    .line 66
    :cond_5
    const/4 v2, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_6
    const/4 v2, 0x0

    .line 69
    :goto_2
    if-nez v2, :cond_7

    .line 70
    .line 71
    iput-object v5, v1, Ld0/l;->j:Lh0/b;

    .line 72
    .line 73
    :cond_7
    iget-object v2, v1, Ld0/l;->j:Lh0/b;

    .line 74
    .line 75
    if-nez v2, :cond_8

    .line 76
    .line 77
    new-instance v2, Lh0/b;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    iget-object v7, v1, Ld0/l;->k:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v8, v1, Ld0/l;->b:Ld0/f;

    .line 86
    .line 87
    iget-object v8, v8, Ld0/f;->d:Ljava/util/Map;

    .line 88
    .line 89
    invoke-direct {v2, v6, v7, v8}, Lh0/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, v1, Ld0/l;->j:Lh0/b;

    .line 93
    .line 94
    :cond_8
    iget-object v2, v1, Ld0/l;->j:Lh0/b;

    .line 95
    .line 96
    :goto_3
    if-eqz v2, :cond_e

    .line 97
    .line 98
    iget-object v1, v2, Lh0/b;->b:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v6, v2, Lh0/b;->c:Ljava/util/Map;

    .line 101
    .line 102
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Ld0/n;

    .line 107
    .line 108
    if-nez v6, :cond_9

    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :cond_9
    iget-object v7, v6, Ld0/n;->d:Landroid/graphics/Bitmap;

    .line 113
    .line 114
    if-eqz v7, :cond_a

    .line 115
    .line 116
    move-object v5, v7

    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_a
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    .line 120
    .line 121
    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-boolean v4, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 125
    .line 126
    const/16 v8, 0xa0

    .line 127
    .line 128
    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 129
    .line 130
    const-string v8, "data:"

    .line 131
    .line 132
    iget-object v9, v6, Ld0/n;->c:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_b

    .line 139
    .line 140
    const-string v8, "base64,"

    .line 141
    .line 142
    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-lez v8, :cond_b

    .line 147
    .line 148
    const/16 v1, 0x2c

    .line 149
    .line 150
    :try_start_0
    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(I)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    add-int/2addr v1, v4

    .line 155
    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 160
    .line 161
    .line 162
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    array-length v4, v1

    .line 164
    invoke-static {v1, v3, v4, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :goto_4
    move-object v5, v1

    .line 169
    goto :goto_5

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v1, "data URL did not have correct base64 format."

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_b
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-nez v3, :cond_d

    .line 179
    .line 180
    iget-object v3, v2, Lh0/b;->a:Landroid/content/Context;

    .line 181
    .line 182
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 202
    .line 203
    .line 204
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 205
    :try_start_2
    invoke-static {v1, v5, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 206
    .line 207
    .line 208
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 209
    iget v3, v6, Ld0/n;->a:I

    .line 210
    .line 211
    iget v5, v6, Ld0/n;->b:I

    .line 212
    .line 213
    sget-object v6, Lp0/g;->a:Lp0/g$a;

    .line 214
    .line 215
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-ne v6, v3, :cond_c

    .line 220
    .line 221
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-ne v6, v5, :cond_c

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_c
    invoke-static {v1, v3, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 233
    .line 234
    .line 235
    move-object v1, v3

    .line 236
    goto :goto_4

    .line 237
    :goto_5
    sget-object v1, Lh0/b;->d:Ljava/lang/Object;

    .line 238
    .line 239
    monitor-enter v1

    .line 240
    :try_start_3
    iget-object v2, v2, Lh0/b;->c:Ljava/util/Map;

    .line 241
    .line 242
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Ld0/n;

    .line 247
    .line 248
    iput-object v5, v0, Ld0/n;->d:Landroid/graphics/Bitmap;

    .line 249
    .line 250
    monitor-exit v1

    .line 251
    goto :goto_8

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    throw v0

    .line 255
    :catch_1
    move-exception v0

    .line 256
    const-string v1, "Unable to decode image."

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_d
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 260
    .line 261
    const-string v1, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    .line 262
    .line 263
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 267
    :catch_2
    move-exception v0

    .line 268
    const-string v1, "Unable to open asset."

    .line 269
    .line 270
    :goto_6
    invoke-static {v1, v0}, Lp0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_e
    iget-object v1, v1, Ld0/l;->b:Ld0/f;

    .line 275
    .line 276
    if-nez v1, :cond_f

    .line 277
    .line 278
    move-object v0, v5

    .line 279
    goto :goto_7

    .line 280
    :cond_f
    iget-object v1, v1, Ld0/f;->d:Ljava/util/Map;

    .line 281
    .line 282
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ld0/n;

    .line 287
    .line 288
    :goto_7
    if-eqz v0, :cond_10

    .line 289
    .line 290
    iget-object v5, v0, Ld0/n;->d:Landroid/graphics/Bitmap;

    .line 291
    .line 292
    :cond_10
    :goto_8
    return-object v5
.end method
