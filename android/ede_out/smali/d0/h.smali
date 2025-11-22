.class public final Ld0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ld0/r<",
        "Ld0/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld0/h;->a:Landroid/content/Context;

    iput-object p2, p0, Ld0/h;->b:Ljava/lang/String;

    iput-object p3, p0, Ld0/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld0/h;->a:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Ld0/c;->b:Lm0/f;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    const-class v2, Lm0/f;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    sget-object v1, Ld0/c;->b:Lm0/f;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lm0/f;

    .line 15
    .line 16
    invoke-static {v0}, Ld0/c;->b(Landroid/content/Context;)Lm0/e;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v3, Lm0/b;

    .line 21
    .line 22
    invoke-direct {v3}, Lm0/b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v0, v3}, Lm0/f;-><init>(Lm0/e;Lm0/b;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Ld0/c;->b:Lm0/f;

    .line 29
    .line 30
    :cond_0
    monitor-exit v2

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Ld0/h;->b:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Ld0/h;->c:Ljava/lang/String;

    .line 38
    .line 39
    sget-object v3, Lm0/c;->c:Lm0/c;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_2
    iget-object v6, v1, Lm0/f;->a:Lm0/e;

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    :try_start_1
    new-instance v7, Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {v6}, Lm0/e;->b()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    sget-object v9, Lm0/c;->b:Lm0/c;

    .line 59
    .line 60
    invoke-static {v0, v9, v4}, Lm0/e;->a(Ljava/lang/String;Lm0/c;Z)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    new-instance v7, Ljava/io/File;

    .line 75
    .line 76
    invoke-virtual {v6}, Lm0/e;->b()Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-static {v0, v3, v4}, Lm0/e;->a(Ljava/lang/String;Lm0/c;Z)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move-object v7, v5

    .line 95
    :goto_1
    if-nez v7, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    new-instance v6, Ljava/io/FileInputStream;

    .line 99
    .line 100
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    const-string v10, ".zip"

    .line 108
    .line 109
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_6

    .line 114
    .line 115
    move-object v9, v3

    .line 116
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lp0/c;->a()V

    .line 120
    .line 121
    .line 122
    new-instance v7, Landroid/util/Pair;

    .line 123
    .line 124
    invoke-direct {v7, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catch_0
    nop

    .line 129
    :goto_2
    move-object v7, v5

    .line 130
    :goto_3
    if-nez v7, :cond_7

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_7
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v6, Lm0/c;

    .line 136
    .line 137
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v7, Ljava/io/InputStream;

    .line 140
    .line 141
    if-ne v6, v3, :cond_8

    .line 142
    .line 143
    new-instance v3, Ljava/util/zip/ZipInputStream;

    .line 144
    .line 145
    invoke-direct {v3, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v3, v0}, Ld0/g;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ld0/r;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    goto :goto_4

    .line 153
    :cond_8
    invoke-static {v7, v0}, Ld0/g;->c(Ljava/io/InputStream;Ljava/lang/String;)Ld0/r;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :goto_4
    iget-object v3, v3, Ld0/r;->a:Ljava/lang/Object;

    .line 158
    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    check-cast v3, Ld0/f;

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_9
    :goto_5
    move-object v3, v5

    .line 165
    :goto_6
    if-eqz v3, :cond_a

    .line 166
    .line 167
    new-instance v0, Ld0/r;

    .line 168
    .line 169
    invoke-direct {v0, v3}, Ld0/r;-><init>(Ld0/f;)V

    .line 170
    .line 171
    .line 172
    goto :goto_b

    .line 173
    :cond_a
    invoke-static {}, Lp0/c;->a()V

    .line 174
    .line 175
    .line 176
    const-string v3, "LottieFetchResult close failed "

    .line 177
    .line 178
    invoke-static {}, Lp0/c;->a()V

    .line 179
    .line 180
    .line 181
    :try_start_2
    iget-object v6, v1, Lm0/f;->b:Lm0/b;

    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Lm0/b;->a(Ljava/lang/String;)Lm0/a;

    .line 187
    .line 188
    .line 189
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    iget-object v6, v5, Lm0/a;->a:Ljava/net/HttpURLConnection;

    .line 191
    .line 192
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    div-int/lit8 v7, v7, 0x64
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    .line 198
    const/4 v8, 0x2

    .line 199
    if-ne v7, v8, :cond_b

    .line 200
    .line 201
    const/4 v4, 0x1

    .line 202
    goto :goto_7

    .line 203
    :catchall_1
    move-exception v0

    .line 204
    goto :goto_c

    .line 205
    :catch_1
    move-exception v0

    .line 206
    goto :goto_9

    .line 207
    :catch_2
    :cond_b
    :goto_7
    if-eqz v4, :cond_c

    .line 208
    .line 209
    :try_start_4
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v1, v0, v4, v6, v2}, Lm0/f;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ld0/r;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {}, Lp0/c;->a()V

    .line 222
    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_c
    new-instance v0, Ld0/r;

    .line 226
    .line 227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    invoke-virtual {v5}, Lm0/a;->a()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v1}, Ld0/r;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    .line 238
    .line 239
    :goto_8
    :try_start_5
    invoke-virtual {v5}, Lm0/a;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 240
    .line 241
    .line 242
    goto :goto_b

    .line 243
    :catch_3
    move-exception v1

    .line 244
    invoke-static {v3, v1}, Lp0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    .line 246
    .line 247
    goto :goto_b

    .line 248
    :goto_9
    :try_start_6
    new-instance v1, Ld0/r;

    .line 249
    .line 250
    invoke-direct {v1, v0}, Ld0/r;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 251
    .line 252
    .line 253
    if-eqz v5, :cond_d

    .line 254
    .line 255
    :try_start_7
    invoke-virtual {v5}, Lm0/a;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 256
    .line 257
    .line 258
    goto :goto_a

    .line 259
    :catch_4
    move-exception v0

    .line 260
    invoke-static {v3, v0}, Lp0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    :cond_d
    :goto_a
    move-object v0, v1

    .line 264
    :goto_b
    iget-object v1, p0, Ld0/h;->c:Ljava/lang/String;

    .line 265
    .line 266
    if-eqz v1, :cond_e

    .line 267
    .line 268
    iget-object v2, v0, Ld0/r;->a:Ljava/lang/Object;

    .line 269
    .line 270
    if-eqz v2, :cond_e

    .line 271
    .line 272
    sget-object v3, Li0/g;->b:Li0/g;

    .line 273
    .line 274
    check-cast v2, Ld0/f;

    .line 275
    .line 276
    iget-object v3, v3, Li0/g;->a:Landroidx/collection/LruCache;

    .line 277
    .line 278
    invoke-virtual {v3, v1, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    :cond_e
    return-object v0

    .line 282
    :goto_c
    if-eqz v5, :cond_f

    .line 283
    .line 284
    :try_start_8
    invoke-virtual {v5}, Lm0/a;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 285
    .line 286
    .line 287
    goto :goto_d

    .line 288
    :catch_5
    move-exception v1

    .line 289
    invoke-static {v3, v1}, Lp0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    :cond_f
    :goto_d
    throw v0
.end method
