.class public final synthetic Lg7/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lg7/a0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lg7/a0;)V
    .locals 0
    .param p1    # Lg7/a0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7/z;->a:Lg7/a0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/z;->a:Lg7/a0;

    .line 2
    .line 3
    iget-object v1, v0, Lg7/a0;->a:Ljava/net/URL;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Starting download of: "

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "FirebaseMessaging"

    .line 16
    .line 17
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lg7/a0;->a:Ljava/net/URL;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/high16 v4, 0x100000

    .line 31
    .line 32
    if-gt v3, v4, :cond_c

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :try_start_0
    iput-object v1, v0, Lg7/a0;->c:Ljava/io/InputStream;

    .line 39
    .line 40
    sget v3, Lk4/g;->a:I

    .line 41
    .line 42
    new-instance v3, Lk4/f;

    .line 43
    .line 44
    invoke-direct {v3, v1}, Lk4/f;-><init>(Ljava/io/InputStream;)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Ljava/util/ArrayDeque;

    .line 48
    .line 49
    const/16 v6, 0x14

    .line 50
    .line 51
    invoke-direct {v5, v6}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 52
    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    const/16 v7, 0x2000

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    :goto_0
    const/4 v9, -0x1

    .line 59
    const v10, 0x7ffffff7

    .line 60
    .line 61
    .line 62
    if-ge v8, v10, :cond_4

    .line 63
    .line 64
    sub-int/2addr v10, v8

    .line 65
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    new-array v11, v10, [B

    .line 70
    .line 71
    invoke-virtual {v5, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    :goto_1
    if-ge v12, v10, :cond_1

    .line 76
    .line 77
    sub-int v13, v10, v12

    .line 78
    .line 79
    invoke-virtual {v3, v11, v12, v13}, Lk4/f;->read([BII)I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-ne v13, v9, :cond_0

    .line 84
    .line 85
    new-array v3, v8, [B

    .line 86
    .line 87
    move v7, v8

    .line 88
    :goto_2
    if-lez v7, :cond_5

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    check-cast v9, [B

    .line 95
    .line 96
    array-length v10, v9

    .line 97
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    sub-int v11, v8, v7

    .line 102
    .line 103
    invoke-static {v9, v6, v3, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    sub-int/2addr v7, v10

    .line 107
    goto :goto_2

    .line 108
    :cond_0
    add-int/2addr v12, v13

    .line 109
    add-int/2addr v8, v13

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    int-to-long v9, v7

    .line 112
    add-long/2addr v9, v9

    .line 113
    const-wide/32 v11, 0x7fffffff

    .line 114
    .line 115
    .line 116
    cmp-long v7, v9, v11

    .line 117
    .line 118
    if-lez v7, :cond_2

    .line 119
    .line 120
    const v7, 0x7fffffff

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    const-wide/32 v11, -0x80000000

    .line 125
    .line 126
    .line 127
    cmp-long v7, v9, v11

    .line 128
    .line 129
    if-gez v7, :cond_3

    .line 130
    .line 131
    const/high16 v7, -0x80000000

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    long-to-int v7, v9

    .line 135
    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {v3}, Lk4/f;->read()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-ne v3, v9, :cond_a

    .line 141
    .line 142
    new-array v3, v10, [B

    .line 143
    .line 144
    const v7, 0x7ffffff7

    .line 145
    .line 146
    .line 147
    :goto_3
    if-lez v7, :cond_5

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    check-cast v8, [B

    .line 154
    .line 155
    array-length v9, v8

    .line 156
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    sub-int v11, v10, v7

    .line 161
    .line 162
    invoke-static {v8, v6, v3, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    sub-int/2addr v7, v9

    .line 166
    goto :goto_3

    .line 167
    :cond_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 168
    .line 169
    .line 170
    const/4 v1, 0x2

    .line 171
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    iget-object v1, v0, Lg7/a0;->a:Ljava/net/URL;

    .line 178
    .line 179
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    add-int/lit8 v5, v5, 0x22

    .line 190
    .line 191
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    .line 193
    .line 194
    const-string v5, "Downloaded "

    .line 195
    .line 196
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    array-length v5, v3

    .line 200
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v5, " bytes from "

    .line 204
    .line 205
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :cond_6
    array-length v1, v3

    .line 219
    if-gt v1, v4, :cond_9

    .line 220
    .line 221
    array-length v1, v3

    .line 222
    invoke-static {v3, v6, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-eqz v1, :cond_8

    .line 227
    .line 228
    const/4 v3, 0x3

    .line 229
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_7

    .line 234
    .line 235
    iget-object v0, v0, Lg7/a0;->a:Ljava/net/URL;

    .line 236
    .line 237
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const-string v3, "Successfully downloaded image: "

    .line 242
    .line 243
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    :cond_7
    return-object v1

    .line 251
    :cond_8
    new-instance v1, Ljava/io/IOException;

    .line 252
    .line 253
    iget-object v0, v0, Lg7/a0;->a:Ljava/net/URL;

    .line 254
    .line 255
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v2, "Failed to decode image: "

    .line 260
    .line 261
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1

    .line 269
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 270
    .line 271
    const-string v1, "Image exceeds max size of 1048576"

    .line 272
    .line 273
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_a
    :try_start_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    .line 278
    .line 279
    const-string v2, "input is too large to fit in a byte array"

    .line 280
    .line 281
    invoke-direct {v0, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :catchall_0
    move-exception v0

    .line 286
    if-eqz v1, :cond_b

    .line 287
    .line 288
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 289
    .line 290
    .line 291
    :catchall_1
    :cond_b
    throw v0

    .line 292
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 293
    .line 294
    const-string v1, "Content-Length exceeds max size of 1048576"

    .line 295
    .line 296
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0
.end method
