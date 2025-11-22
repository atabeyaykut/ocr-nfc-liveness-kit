.class public final Lp2/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp2/d;


# direct methods
.method public constructor <init>(Lp2/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp2/c;->a:Lp2/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, [Landroid/net/Uri;

    .line 4
    .line 5
    const-string v1, "params"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    const-string v2, "context"

    .line 14
    .line 15
    move-object/from16 v3, p0

    .line 16
    .line 17
    iget-object v4, v3, Lp2/c;->a:Lp2/d;

    .line 18
    .line 19
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "uri"

    .line 23
    .line 24
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-string v7, "image_picker.png"

    .line 34
    .line 35
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const-string v7, "r"

    .line 43
    .line 44
    invoke-virtual {v6, v0, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    new-instance v6, Ljava/io/FileInputStream;

    .line 57
    .line 58
    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v6, Ljava/io/FileOutputStream;

    .line 66
    .line 67
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-wide/16 v9, 0x0

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 77
    .line 78
    .line 79
    move-result-wide v11

    .line 80
    move-object v7, v6

    .line 81
    move-object v8, v0

    .line 82
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :cond_0
    const/4 v5, 0x0

    .line 97
    :goto_0
    if-eqz v5, :cond_e

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    :goto_1
    if-eqz v0, :cond_1

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-virtual {v4, v5, v6}, Lp2/d;->d(Ljava/io/File;I)Ljava/io/File;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-nez v8, :cond_2

    .line 112
    .line 113
    if-lez v6, :cond_e

    .line 114
    .line 115
    invoke-virtual {v4, v5, v7}, Lp2/d;->d(Ljava/io/File;I)Ljava/io/File;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    goto/16 :goto_9

    .line 120
    .line 121
    :cond_2
    const-wide/16 v9, 0x0

    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    iget-wide v11, v4, Lp2/d;->d:J

    .line 125
    .line 126
    cmp-long v7, v11, v9

    .line 127
    .line 128
    if-lez v7, :cond_5

    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 131
    .line 132
    .line 133
    move-result-wide v13

    .line 134
    sub-long/2addr v13, v11

    .line 135
    const/high16 v7, 0x100000

    .line 136
    .line 137
    int-to-long v1, v7

    .line 138
    cmp-long v7, v13, v1

    .line 139
    .line 140
    if-lez v7, :cond_3

    .line 141
    .line 142
    const/4 v1, 0x3

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    const v1, 0x7d000

    .line 145
    .line 146
    .line 147
    int-to-long v1, v1

    .line 148
    cmp-long v7, v13, v1

    .line 149
    .line 150
    if-lez v7, :cond_4

    .line 151
    .line 152
    const/4 v1, 0x2

    .line 153
    goto :goto_2

    .line 154
    :cond_4
    const/4 v1, 0x1

    .line 155
    :goto_2
    add-int/2addr v1, v6

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    add-int/lit8 v1, v6, 0x1

    .line 158
    .line 159
    :goto_3
    cmp-long v2, v11, v9

    .line 160
    .line 161
    if-lez v2, :cond_6

    .line 162
    .line 163
    const/4 v2, 0x1

    .line 164
    goto :goto_4

    .line 165
    :cond_6
    const/4 v2, 0x0

    .line 166
    :goto_4
    if-eqz v2, :cond_7

    .line 167
    .line 168
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 169
    .line 170
    .line 171
    move-result-wide v13

    .line 172
    sub-long/2addr v13, v11

    .line 173
    cmp-long v2, v13, v9

    .line 174
    .line 175
    if-lez v2, :cond_7

    .line 176
    .line 177
    const/4 v2, 0x1

    .line 178
    goto :goto_5

    .line 179
    :cond_7
    const/4 v2, 0x0

    .line 180
    :goto_5
    if-nez v2, :cond_a

    .line 181
    .line 182
    iget v7, v4, Lp2/d;->b:I

    .line 183
    .line 184
    if-lez v7, :cond_a

    .line 185
    .line 186
    iget v9, v4, Lp2/d;->c:I

    .line 187
    .line 188
    if-lez v9, :cond_a

    .line 189
    .line 190
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 191
    .line 192
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    .line 197
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-static {v10, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 202
    .line 203
    .line 204
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 205
    .line 206
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 211
    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-gt v10, v7, :cond_9

    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-le v2, v9, :cond_8

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_8
    const/4 v0, 0x0

    .line 230
    :cond_9
    :goto_6
    move v2, v0

    .line 231
    :cond_a
    if-nez v2, :cond_d

    .line 232
    .line 233
    :try_start_1
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    .line 234
    .line 235
    invoke-direct {v0, v5}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    .line 236
    .line 237
    .line 238
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    .line 239
    .line 240
    invoke-direct {v1, v8}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    .line 241
    .line 242
    .line 243
    const-string v9, "FNumber"

    .line 244
    .line 245
    const-string v10, "ExposureTime"

    .line 246
    .line 247
    const-string v11, "ISOSpeedRatings"

    .line 248
    .line 249
    const-string v12, "GPSAltitude"

    .line 250
    .line 251
    const-string v13, "GPSAltitudeRef"

    .line 252
    .line 253
    const-string v14, "FocalLength"

    .line 254
    .line 255
    const-string v15, "GPSDateStamp"

    .line 256
    .line 257
    const-string v16, "WhiteBalance"

    .line 258
    .line 259
    const-string v17, "GPSProcessingMethod"

    .line 260
    .line 261
    const-string v18, "GPSTimeStamp"

    .line 262
    .line 263
    const-string v19, "DateTime"

    .line 264
    .line 265
    const-string v20, "Flash"

    .line 266
    .line 267
    const-string v21, "GPSLatitude"

    .line 268
    .line 269
    const-string v22, "GPSLatitudeRef"

    .line 270
    .line 271
    const-string v23, "GPSLongitude"

    .line 272
    .line 273
    const-string v24, "GPSLongitudeRef"

    .line 274
    .line 275
    const-string v25, "Make"

    .line 276
    .line 277
    const-string v26, "Model"

    .line 278
    .line 279
    const-string v27, "Orientation"

    .line 280
    .line 281
    filled-new-array/range {v9 .. v27}, [Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v2}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_c

    .line 298
    .line 299
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    check-cast v4, Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    if-eqz v5, :cond_b

    .line 310
    .line 311
    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_c
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    .line 321
    .line 322
    goto :goto_8

    .line 323
    :catch_1
    move-exception v0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v2, "Error preserving Exif data on selected image: "

    .line 327
    .line 328
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    const-string v1, "ExifDataCopier"

    .line 339
    .line 340
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    :goto_8
    move-object v2, v8

    .line 344
    goto :goto_9

    .line 345
    :cond_d
    move v7, v6

    .line 346
    move-object v0, v8

    .line 347
    move v6, v1

    .line 348
    const/4 v1, 0x0

    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :cond_e
    const/4 v2, 0x0

    .line 352
    :goto_9
    return-object v2
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp2/c;->a:Lp2/d;

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "Uri.fromFile(file)"

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lp2/a;->a:Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->b:Lp2/b;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v3, v1, Lp2/b;->b:Ljava/io/File;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    :cond_0
    iput-object v2, v1, Lp2/b;->b:Ljava/io/File;

    .line 40
    .line 41
    :cond_1
    iget-object v1, v0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->c:Lp2/e;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v3, v1, Lp2/e;->g:Ljava/io/File;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 50
    .line 51
    .line 52
    :cond_2
    iput-object v2, v1, Lp2/e;->g:Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->t(Landroid/net/Uri;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string p1, "mCropProvider"

    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v2

    .line 64
    :cond_4
    const p1, 0x7f13008c

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lp2/a;->c(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method
