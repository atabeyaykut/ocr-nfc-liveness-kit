.class public final Le1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/b0$h;,
        Le1/b0$d;,
        Le1/b0$g;,
        Le1/b0$c;,
        Le1/b0$f;,
        Le1/b0$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv0/j<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lv0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/g<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lv0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Le1/b0$e;

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le1/b0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le1/b0$f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ly0/c;

.field public final c:Le1/b0$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Le1/b0$a;

    .line 8
    .line 9
    invoke-direct {v1}, Le1/b0$a;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lv0/g;

    .line 13
    .line 14
    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 15
    .line 16
    invoke-direct {v2, v3, v0, v1}, Lv0/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lv0/g$b;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Le1/b0;->d:Lv0/g;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Le1/b0$b;

    .line 27
    .line 28
    invoke-direct {v1}, Le1/b0$b;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lv0/g;

    .line 32
    .line 33
    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 34
    .line 35
    invoke-direct {v2, v3, v0, v1}, Lv0/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lv0/g$b;)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Le1/b0;->e:Lv0/g;

    .line 39
    .line 40
    new-instance v0, Le1/b0$e;

    .line 41
    .line 42
    invoke-direct {v0}, Le1/b0$e;-><init>()V

    .line 43
    .line 44
    .line 45
    sput-object v0, Le1/b0;->f:Le1/b0$e;

    .line 46
    .line 47
    const-string v0, "TP1A"

    .line 48
    .line 49
    const-string v1, "TD1A.220804.031"

    .line 50
    .line 51
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Le1/b0;->g:Ljava/util/List;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(Ly0/c;Le1/b0$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly0/c;",
            "Le1/b0$f<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/b0;->b:Ly0/c;

    iput-object p2, p0, Le1/b0;->a:Le1/b0$f;

    sget-object p1, Le1/b0;->f:Le1/b0$e;

    iput-object p1, p0, Le1/b0;->c:Le1/b0$e;

    return-void
.end method

.method public static c(Landroid/media/MediaMetadataRetriever;JIIILe1/l;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move/from16 v0, p4

    .line 3
    .line 4
    move/from16 v1, p5

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v4, 0x1b

    .line 11
    .line 12
    const/16 v8, 0x18

    .line 13
    .line 14
    const/4 v9, 0x3

    .line 15
    const-string v10, "VideoDecoder"

    .line 16
    .line 17
    if-lt v3, v4, :cond_2

    .line 18
    .line 19
    const/high16 v3, -0x80000000

    .line 20
    .line 21
    if-eq v0, v3, :cond_2

    .line 22
    .line 23
    if-eq v1, v3, :cond_2

    .line 24
    .line 25
    sget-object v3, Le1/l;->d:Le1/l$f;

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x12

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x13

    .line 40
    .line 41
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {p0, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/16 v6, 0x5a

    .line 58
    .line 59
    if-eq v5, v6, :cond_0

    .line 60
    .line 61
    const/16 v6, 0x10e

    .line 62
    .line 63
    if-ne v5, v6, :cond_1

    .line 64
    .line 65
    :cond_0
    move v11, v4

    .line 66
    move v4, v3

    .line 67
    move v3, v11

    .line 68
    :cond_1
    invoke-virtual {v2, v3, v4, v0, v1}, Le1/l;->b(IIII)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-float v1, v3

    .line 73
    mul-float v1, v1, v0

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    int-to-float v1, v4

    .line 80
    mul-float v0, v0, v1

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    move-object v1, p0

    .line 87
    move-wide v2, p1

    .line 88
    move v4, p3

    .line 89
    invoke-static/range {v1 .. v6}, Le1/a0;->a(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;

    .line 90
    .line 91
    .line 92
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    invoke-static {v10, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    const-string v1, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame"

    .line 102
    .line 103
    invoke-static {v10, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :cond_2
    const/4 v0, 0x0

    .line 107
    :goto_0
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 114
    .line 115
    const-string v2, "Pixel"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const/4 v2, 0x1

    .line 122
    const/4 v3, 0x0

    .line 123
    const/16 v4, 0x21

    .line 124
    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    .line 129
    if-ne v1, v4, :cond_5

    .line 130
    .line 131
    sget-object v1, Le1/b0;->g:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_6

    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Ljava/lang/String;

    .line 148
    .line 149
    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_4

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    const/16 v5, 0x1e

    .line 161
    .line 162
    if-lt v1, v5, :cond_6

    .line 163
    .line 164
    if-ge v1, v4, :cond_6

    .line 165
    .line 166
    :goto_1
    const/4 v1, 0x1

    .line 167
    goto :goto_2

    .line 168
    :cond_6
    const/4 v1, 0x0

    .line 169
    :goto_2
    if-nez v1, :cond_7

    .line 170
    .line 171
    goto/16 :goto_6

    .line 172
    .line 173
    :cond_7
    const/16 v1, 0x24

    .line 174
    .line 175
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    const/16 v4, 0x23

    .line 180
    .line 181
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    const/4 v5, 0x7

    .line 194
    const/4 v6, 0x6

    .line 195
    if-eq v1, v5, :cond_8

    .line 196
    .line 197
    if-ne v1, v6, :cond_9

    .line 198
    .line 199
    :cond_8
    if-ne v4, v6, :cond_9

    .line 200
    .line 201
    const/4 v1, 0x1

    .line 202
    goto :goto_3

    .line 203
    :cond_9
    const/4 v1, 0x0

    .line 204
    :goto_3
    if-eqz v1, :cond_b

    .line 205
    .line 206
    invoke-virtual {p0, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 215
    .line 216
    .line 217
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    const/16 v4, 0xb4

    .line 219
    .line 220
    if-ne v1, v4, :cond_a

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_a
    const/4 v2, 0x0

    .line 224
    :goto_4
    move v3, v2

    .line 225
    goto :goto_5

    .line 226
    :catch_0
    nop

    .line 227
    invoke-static {v10, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_b

    .line 232
    .line 233
    const-string v1, "Exception trying to extract HDR transfer function or rotation"

    .line 234
    .line 235
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    :cond_b
    :goto_5
    if-nez v3, :cond_c

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_c
    invoke-static {v10, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_d

    .line 246
    .line 247
    const-string v1, "Applying HDR 180 deg thumbnail correction"

    .line 248
    .line 249
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    :cond_d
    new-instance v1, Landroid/graphics/Matrix;

    .line 253
    .line 254
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    int-to-float v2, v2

    .line 262
    const/high16 v3, 0x40000000    # 2.0f

    .line 263
    .line 264
    div-float/2addr v2, v3

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    int-to-float v4, v4

    .line 270
    div-float/2addr v4, v3

    .line 271
    const/high16 v3, 0x43340000    # 180.0f

    .line 272
    .line 273
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 274
    .line 275
    .line 276
    const/4 v2, 0x0

    .line 277
    const/4 v3, 0x0

    .line 278
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    const/4 v6, 0x1

    .line 287
    move-object p0, v0

    .line 288
    move p1, v2

    .line 289
    move p2, v3

    .line 290
    move p3, v4

    .line 291
    move/from16 p4, v5

    .line 292
    .line 293
    move-object/from16 p5, v1

    .line 294
    .line 295
    move/from16 p6, v6

    .line 296
    .line 297
    invoke-static/range {p0 .. p6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    :goto_6
    if-eqz v0, :cond_e

    .line 302
    .line 303
    return-object v0

    .line 304
    :cond_e
    new-instance v0, Le1/b0$h;

    .line 305
    .line 306
    invoke-direct {v0}, Le1/b0$h;-><init>()V

    .line 307
    .line 308
    .line 309
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lv0/h;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lv0/h;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILv0/h;)Lx0/w;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lv0/h;",
            ")",
            "Lx0/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le1/b0;->d:Lv0/g;

    .line 2
    .line 3
    invoke-virtual {p4, v0}, Lv0/h;->c(Lv0/g;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v4, v2, v0

    .line 16
    .line 17
    if-gez v4, :cond_1

    .line 18
    .line 19
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    cmp-long v4, v2, v0

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Le1/b0;->e:Lv0/g;

    .line 47
    .line 48
    invoke-virtual {p4, v0}, Lv0/h;->c(Lv0/g;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Integer;

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_2
    sget-object v1, Le1/l;->f:Lv0/g;

    .line 62
    .line 63
    invoke-virtual {p4, v1}, Lv0/h;->c(Lv0/g;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    check-cast p4, Le1/l;

    .line 68
    .line 69
    if-nez p4, :cond_3

    .line 70
    .line 71
    sget-object p4, Le1/l;->e:Le1/l$d;

    .line 72
    .line 73
    :cond_3
    move-object v7, p4

    .line 74
    iget-object p4, p0, Le1/b0;->c:Le1/b0$e;

    .line 75
    .line 76
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance p4, Landroid/media/MediaMetadataRetriever;

    .line 80
    .line 81
    invoke-direct {p4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 82
    .line 83
    .line 84
    const/16 v8, 0x1d

    .line 85
    .line 86
    :try_start_0
    iget-object v1, p0, Le1/b0;->a:Le1/b0$f;

    .line 87
    .line 88
    invoke-interface {v1, p4, p1}, Le1/b0$f;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    move-object v1, p4

    .line 96
    move v5, p2

    .line 97
    move v6, p3

    .line 98
    invoke-static/range {v1 .. v7}, Le1/b0;->c(Landroid/media/MediaMetadataRetriever;JIIILe1/l;)Landroid/graphics/Bitmap;

    .line 99
    .line 100
    .line 101
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    if-lt p2, v8, :cond_4

    .line 105
    .line 106
    invoke-static {p4}, Landroidx/appcompat/widget/r;->l(Landroid/media/MediaMetadataRetriever;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 111
    .line 112
    .line 113
    :goto_1
    iget-object p2, p0, Le1/b0;->b:Ly0/c;

    .line 114
    .line 115
    invoke-static {p1, p2}, Le1/e;->b(Landroid/graphics/Bitmap;Ly0/c;)Le1/e;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 122
    .line 123
    if-lt p2, v8, :cond_5

    .line 124
    .line 125
    invoke-static {p4}, Landroidx/appcompat/widget/r;->l(Landroid/media/MediaMetadataRetriever;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 130
    .line 131
    .line 132
    :goto_2
    throw p1
.end method
