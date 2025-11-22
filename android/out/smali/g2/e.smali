.class public final Lg2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Lg2/c;

.field public final c:Lg2/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lg2/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lg2/f;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lg2/a;

    .line 7
    .line 8
    invoke-direct {v1}, Lg2/a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lg2/e;->a:Ljava/util/HashSet;

    .line 20
    .line 21
    iput-object v0, p0, Lg2/e;->b:Lg2/c;

    .line 22
    .line 23
    iput-object v1, p0, Lg2/e;->c:Lg2/b;

    .line 24
    .line 25
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lg2/e;->b:Lg2/c;

    .line 2
    .line 3
    check-cast v0, Lg2/f;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lg2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 22
    :goto_1
    const-string v2, "lib"

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance p3, Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p3

    .line 36
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "."

    .line 43
    .line 44
    invoke-static {p2, v0, p3}, Landroidx/camera/core/impl/utils/f;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const-string v0, "realm-jni"

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-array v1, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    const-string v2, "Beginning load of %s..."

    .line 23
    .line 24
    invoke-static {v2, v1}, Lg2/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v0, p2}, Lg2/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p2, "Given library is either null or empty"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p2, "Given context is null"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget-object v4, v1, Lg2/e;->b:Lg2/c;

    .line 8
    .line 9
    iget-object v5, v1, Lg2/e;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v7, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-array v0, v6, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v3, v0, v7

    .line 22
    .line 23
    const-string v2, "%s already loaded previously!"

    .line 24
    .line 25
    invoke-static {v2, v0}, Lg2/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const/4 v8, 0x2

    .line 30
    :try_start_0
    move-object v0, v4

    .line 31
    check-cast v0, Lg2/f;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static/range {p2 .. p2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const-string v0, "%s (%s) was loaded normally!"

    .line 43
    .line 44
    new-array v9, v8, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v3, v9, v7

    .line 47
    .line 48
    aput-object p3, v9, v6

    .line 49
    .line 50
    invoke-static {v0, v9}, Lg2/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-array v9, v6, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    aput-object v0, v9, v7

    .line 62
    .line 63
    const-string v0, "Loading the library normally failed: %s"

    .line 64
    .line 65
    invoke-static {v0, v9}, Lg2/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-array v0, v8, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v3, v0, v7

    .line 71
    .line 72
    aput-object p3, v0, v6

    .line 73
    .line 74
    const-string v9, "%s (%s) was not loaded normally, re-linking..."

    .line 75
    .line 76
    invoke-static {v9, v0}, Lg2/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p0 .. p3}, Lg2/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_1

    .line 88
    .line 89
    goto/16 :goto_c

    .line 90
    .line 91
    :cond_1
    const-string v9, "lib"

    .line 92
    .line 93
    invoke-virtual {v2, v9, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual/range {p0 .. p3}, Lg2/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    move-object v11, v4

    .line 102
    check-cast v11, Lg2/f;

    .line 103
    .line 104
    invoke-virtual {v11, v3}, Lg2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    new-instance v13, Lg2/d;

    .line 109
    .line 110
    invoke-direct {v13, v12}, Lg2/d;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v13}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    if-nez v9, :cond_2

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    array-length v12, v9

    .line 121
    const/4 v13, 0x0

    .line 122
    :goto_0
    if-ge v13, v12, :cond_4

    .line 123
    .line 124
    aget-object v14, v9, v13

    .line 125
    .line 126
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v15

    .line 130
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-nez v6, :cond_3

    .line 139
    .line 140
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 141
    .line 142
    .line 143
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 144
    .line 145
    const/4 v6, 0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 151
    .line 152
    array-length v9, v6

    .line 153
    if-lez v9, :cond_5

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_5
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v6, :cond_7

    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-nez v9, :cond_6

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    const/4 v9, 0x0

    .line 168
    goto :goto_3

    .line 169
    :cond_7
    :goto_2
    const/4 v9, 0x1

    .line 170
    :goto_3
    if-nez v9, :cond_8

    .line 171
    .line 172
    new-array v9, v8, [Ljava/lang/String;

    .line 173
    .line 174
    sget-object v10, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 175
    .line 176
    aput-object v10, v9, v7

    .line 177
    .line 178
    const/4 v10, 0x1

    .line 179
    aput-object v6, v9, v10

    .line 180
    .line 181
    move-object v6, v9

    .line 182
    goto :goto_4

    .line 183
    :cond_8
    const/4 v10, 0x1

    .line 184
    new-array v6, v10, [Ljava/lang/String;

    .line 185
    .line 186
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 187
    .line 188
    aput-object v9, v6, v7

    .line 189
    .line 190
    :goto_4
    invoke-virtual {v11, v3}, Lg2/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    iget-object v10, v1, Lg2/e;->c:Lg2/b;

    .line 195
    .line 196
    check-cast v10, Lg2/a;

    .line 197
    .line 198
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    :try_start_1
    invoke-static {v2, v6, v9, v1}, Lg2/a;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lg2/e;)Lg2/a$a;

    .line 202
    .line 203
    .line 204
    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 205
    if-eqz v11, :cond_e

    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    :goto_5
    add-int/lit8 v6, v2, 0x1

    .line 209
    .line 210
    const/4 v12, 0x5

    .line 211
    iget-object v13, v11, Lg2/a$a;->a:Ljava/util/zip/ZipFile;

    .line 212
    .line 213
    if-ge v2, v12, :cond_c

    .line 214
    .line 215
    :try_start_2
    const-string v2, "Found %s! Extracting..."

    .line 216
    .line 217
    const/4 v12, 0x1

    .line 218
    new-array v14, v12, [Ljava/lang/Object;

    .line 219
    .line 220
    aput-object v9, v14, v7

    .line 221
    .line 222
    invoke-static {v2, v14}, Lg2/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .line 224
    .line 225
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-nez v2, :cond_9

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 232
    .line 233
    .line 234
    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    if-nez v2, :cond_9

    .line 236
    .line 237
    goto :goto_a

    .line 238
    :cond_9
    :try_start_4
    iget-object v2, v11, Lg2/a$a;->b:Ljava/util/zip/ZipEntry;

    .line 239
    .line 240
    invoke-virtual {v13, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 241
    .line 242
    .line 243
    move-result-object v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 244
    :try_start_5
    new-instance v12, Ljava/io/FileOutputStream;

    .line 245
    .line 246
    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 247
    .line 248
    .line 249
    const/16 v14, 0x1000

    .line 250
    .line 251
    :try_start_6
    new-array v14, v14, [B

    .line 252
    .line 253
    const-wide/16 v16, 0x0

    .line 254
    .line 255
    :goto_6
    invoke-virtual {v2, v14}, Ljava/io/InputStream;->read([B)I

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    const/4 v10, -0x1

    .line 260
    if-ne v15, v10, :cond_b

    .line 261
    .line 262
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 273
    .line 274
    .line 275
    move-result-wide v14
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 276
    cmp-long v10, v16, v14

    .line 277
    .line 278
    if-eqz v10, :cond_a

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_a
    :try_start_7
    invoke-static {v2}, Lg2/a;->a(Ljava/io/Closeable;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v12}, Lg2/a;->a(Ljava/io/Closeable;)V

    .line 285
    .line 286
    .line 287
    const/4 v2, 0x1

    .line 288
    invoke-virtual {v0, v2, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v2, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 295
    .line 296
    .line 297
    goto :goto_b

    .line 298
    :catchall_0
    move-exception v0

    .line 299
    goto :goto_e

    .line 300
    :cond_b
    :try_start_8
    invoke-virtual {v12, v14, v7, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 301
    .line 302
    .line 303
    int-to-long v7, v15

    .line 304
    add-long v16, v16, v7

    .line 305
    .line 306
    const/4 v7, 0x0

    .line 307
    const/4 v8, 0x2

    .line 308
    goto :goto_6

    .line 309
    :catchall_1
    move-exception v0

    .line 310
    move-object v10, v12

    .line 311
    goto :goto_8

    .line 312
    :catchall_2
    move-exception v0

    .line 313
    goto :goto_7

    .line 314
    :catchall_3
    move-exception v0

    .line 315
    const/4 v2, 0x0

    .line 316
    :goto_7
    const/4 v10, 0x0

    .line 317
    :goto_8
    :try_start_9
    invoke-static {v2}, Lg2/a;->a(Ljava/io/Closeable;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v10}, Lg2/a;->a(Ljava/io/Closeable;)V

    .line 321
    .line 322
    .line 323
    throw v0

    .line 324
    :catch_1
    const/4 v2, 0x0

    .line 325
    :catch_2
    const/4 v12, 0x0

    .line 326
    :catch_3
    :goto_9
    invoke-static {v2}, Lg2/a;->a(Ljava/io/Closeable;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v12}, Lg2/a;->a(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 330
    .line 331
    .line 332
    goto :goto_a

    .line 333
    :catch_4
    nop

    .line 334
    :goto_a
    move v2, v6

    .line 335
    const/4 v7, 0x0

    .line 336
    const/4 v8, 0x2

    .line 337
    goto/16 :goto_5

    .line 338
    .line 339
    :cond_c
    if-eqz v13, :cond_d

    .line 340
    .line 341
    :goto_b
    :try_start_a
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 342
    .line 343
    .line 344
    :catch_5
    :cond_d
    :goto_c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    check-cast v4, Lg2/f;

    .line 349
    .line 350
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    const/4 v2, 0x2

    .line 360
    new-array v0, v2, [Ljava/lang/Object;

    .line 361
    .line 362
    const/4 v2, 0x0

    .line 363
    aput-object v3, v0, v2

    .line 364
    .line 365
    const/4 v2, 0x1

    .line 366
    aput-object p3, v0, v2

    .line 367
    .line 368
    const-string v2, "%s (%s) was re-linked!"

    .line 369
    .line 370
    invoke-static {v2, v0}, Lg2/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :cond_e
    :try_start_b
    invoke-static {v2, v9}, Lg2/a;->c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 378
    goto :goto_d

    .line 379
    :catch_6
    move-exception v0

    .line 380
    move-object v2, v0

    .line 381
    const/4 v3, 0x1

    .line 382
    :try_start_c
    new-array v0, v3, [Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    const/4 v3, 0x0

    .line 389
    aput-object v2, v0, v3

    .line 390
    .line 391
    :goto_d
    new-instance v2, Lcom/airbnb/epoxy/c0;

    .line 392
    .line 393
    invoke-direct {v2, v6, v9, v0}, Lcom/airbnb/epoxy/c0;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 397
    :goto_e
    move-object v10, v11

    .line 398
    goto :goto_f

    .line 399
    :catchall_4
    move-exception v0

    .line 400
    const/4 v10, 0x0

    .line 401
    :goto_f
    if-eqz v10, :cond_f

    .line 402
    .line 403
    :try_start_d
    iget-object v2, v10, Lg2/a$a;->a:Ljava/util/zip/ZipFile;

    .line 404
    .line 405
    if-eqz v2, :cond_f

    .line 406
    .line 407
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 408
    .line 409
    .line 410
    :catch_7
    :cond_f
    throw v0
.end method
