.class public final Lhd/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhd/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lhd/d;

.field public final b:Lhd/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lhd/e;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhd/d;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Android Beacon Library;2.20.4;"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ";"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v3, "android_id"

    .line 30
    .line 31
    invoke-static {p1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 42
    .line 43
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 44
    .line 45
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v7, ""

    .line 52
    .line 53
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {v0, p2, p1}, Lhd/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lhd/g;->a:Lhd/d;

    .line 92
    .line 93
    iput-object p3, p0, Lhd/g;->b:Lhd/g$a;

    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lhd/g;->a:Lhd/d;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lhd/d;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object v3, p1, Lhd/d;->d:Ljava/lang/String;

    .line 15
    .line 16
    move-object v5, v0

    .line 17
    move-object v6, v3

    .line 18
    const/4 v4, 0x0

    .line 19
    :cond_0
    const/4 v7, 0x1

    .line 20
    const/4 v8, 0x2

    .line 21
    const-string v9, "DistanceConfigFetcher"

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    new-array v6, v8, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object v3, v6, v2

    .line 28
    .line 29
    const-string v10, "Location"

    .line 30
    .line 31
    invoke-virtual {v5, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    aput-object v11, v6, v7

    .line 36
    .line 37
    const-string v11, "Following redirect from %s to %s"

    .line 38
    .line 39
    invoke-static {v9, v11, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    const/4 v10, -0x1

    .line 49
    iput v10, p1, Lhd/d;->c:I

    .line 50
    .line 51
    :try_start_0
    new-instance v10, Ljava/net/URL;

    .line 52
    .line 53
    invoke-direct {v10, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v10

    .line 58
    new-array v11, v7, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v3, v11, v2

    .line 61
    .line 62
    const-string v12, "Can\'t construct URL from: %s"

    .line 63
    .line 64
    invoke-static {v9, v12, v11}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-object v10, p1, Lhd/d;->b:Ljava/lang/Exception;

    .line 68
    .line 69
    move-object v10, v0

    .line 70
    :goto_0
    if-nez v10, :cond_2

    .line 71
    .line 72
    const-string v10, "URL is null.  Cannot make request"

    .line 73
    .line 74
    new-array v11, v2, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {v9, v10, v11}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_6

    .line 80
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 85
    .line 86
    :try_start_2
    const-string v5, "User-Agent"

    .line 87
    .line 88
    iget-object v11, p1, Lhd/d;->e:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v10, v5, v11}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    iput v5, p1, Lhd/d;->c:I

    .line 98
    .line 99
    const-string v5, "response code is %s"

    .line 100
    .line 101
    new-array v11, v7, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    aput-object v12, v11, v2

    .line 112
    .line 113
    invoke-static {v9, v5, v11}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :catch_1
    move-exception v5

    .line 118
    goto :goto_1

    .line 119
    :catch_2
    move-exception v5

    .line 120
    goto :goto_2

    .line 121
    :catch_3
    move-exception v5

    .line 122
    goto :goto_3

    .line 123
    :catch_4
    move-exception v10

    .line 124
    move-object v13, v10

    .line 125
    move-object v10, v5

    .line 126
    move-object v5, v13

    .line 127
    :goto_1
    const-string v11, "Can\'t reach server"

    .line 128
    .line 129
    new-array v12, v2, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-static {v5, v9, v11, v12}, Lid/b;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catch_5
    move-exception v10

    .line 136
    move-object v13, v10

    .line 137
    move-object v10, v5

    .line 138
    move-object v5, v13

    .line 139
    :goto_2
    const-string v11, "No data exists at \"+urlString"

    .line 140
    .line 141
    new-array v12, v2, [Ljava/lang/Object;

    .line 142
    .line 143
    invoke-static {v5, v9, v11, v12}, Lid/b;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :catch_6
    move-exception v10

    .line 148
    move-object v13, v10

    .line 149
    move-object v10, v5

    .line 150
    move-object v5, v13

    .line 151
    :goto_3
    const-string v11, "Can\'t reach sever.  Have you added android.permission.INTERNET to your manifest?"

    .line 152
    .line 153
    new-array v12, v2, [Ljava/lang/Object;

    .line 154
    .line 155
    invoke-static {v5, v9, v11, v12}, Lid/b;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :goto_4
    iput-object v5, p1, Lhd/d;->b:Ljava/lang/Exception;

    .line 159
    .line 160
    :goto_5
    move-object v5, v10

    .line 161
    :goto_6
    const/16 v10, 0xa

    .line 162
    .line 163
    if-ge v4, v10, :cond_3

    .line 164
    .line 165
    iget v10, p1, Lhd/d;->c:I

    .line 166
    .line 167
    const/16 v11, 0x12e

    .line 168
    .line 169
    if-eq v10, v11, :cond_0

    .line 170
    .line 171
    const/16 v11, 0x12d

    .line 172
    .line 173
    if-eq v10, v11, :cond_0

    .line 174
    .line 175
    const/16 v11, 0x12f

    .line 176
    .line 177
    if-eq v10, v11, :cond_0

    .line 178
    .line 179
    :cond_3
    iget-object v3, p1, Lhd/d;->b:Ljava/lang/Exception;

    .line 180
    .line 181
    if-nez v3, :cond_5

    .line 182
    .line 183
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    .line 184
    .line 185
    new-instance v4, Ljava/io/InputStreamReader;

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 195
    .line 196
    .line 197
    :goto_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    if-eqz v4, :cond_4

    .line 202
    .line 203
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iput-object v1, p1, Lhd/d;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :catch_7
    move-exception v1

    .line 218
    iput-object v1, p1, Lhd/d;->b:Ljava/lang/Exception;

    .line 219
    .line 220
    const-string v3, "error reading beacon data"

    .line 221
    .line 222
    new-array v4, v2, [Ljava/lang/Object;

    .line 223
    .line 224
    invoke-static {v1, v9, v3, v4}, Lid/b;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_5
    :goto_8
    iget-object v1, p0, Lhd/g;->b:Lhd/g$a;

    .line 228
    .line 229
    if-eqz v1, :cond_8

    .line 230
    .line 231
    iget-object v3, p1, Lhd/d;->a:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v4, p1, Lhd/d;->b:Ljava/lang/Exception;

    .line 234
    .line 235
    iget p1, p1, Lhd/d;->c:I

    .line 236
    .line 237
    check-cast v1, Lhd/e;

    .line 238
    .line 239
    iget-object v1, v1, Lhd/e;->a:Lhd/f;

    .line 240
    .line 241
    const-string v5, "ModelSpecificDistanceCalculator"

    .line 242
    .line 243
    if-eqz v4, :cond_6

    .line 244
    .line 245
    new-array p1, v8, [Ljava/lang/Object;

    .line 246
    .line 247
    aput-object v4, p1, v2

    .line 248
    .line 249
    iget-object v1, v1, Lhd/f;->f:Ljava/lang/String;

    .line 250
    .line 251
    aput-object v1, p1, v7

    .line 252
    .line 253
    const-string v1, "Cannot updated distance models from online database at %s"

    .line 254
    .line 255
    invoke-static {v5, v1, p1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_a

    .line 259
    :cond_6
    const/16 v4, 0xc8

    .line 260
    .line 261
    if-eq p1, v4, :cond_7

    .line 262
    .line 263
    new-array v3, v8, [Ljava/lang/Object;

    .line 264
    .line 265
    iget-object v1, v1, Lhd/f;->f:Ljava/lang/String;

    .line 266
    .line 267
    aput-object v1, v3, v2

    .line 268
    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    aput-object p1, v3, v7

    .line 274
    .line 275
    const-string p1, "Cannot updated distance models from online database at %s due to HTTP status code %s"

    .line 276
    .line 277
    invoke-static {v5, p1, v3}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_7
    new-array p1, v7, [Ljava/lang/Object;

    .line 282
    .line 283
    iget-object v4, v1, Lhd/f;->f:Ljava/lang/String;

    .line 284
    .line 285
    aput-object v4, p1, v2

    .line 286
    .line 287
    const-string v4, "Successfully downloaded distance models from online database at %s"

    .line 288
    .line 289
    invoke-static {v5, v4, p1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :try_start_4
    iget-object p1, v1, Lhd/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8

    .line 295
    .line 296
    .line 297
    :try_start_5
    invoke-virtual {v1, v3}, Lhd/f;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 298
    .line 299
    .line 300
    :try_start_6
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 301
    .line 302
    .line 303
    invoke-static {v1, v3}, Lhd/f;->b(Lhd/f;Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_8

    .line 308
    .line 309
    invoke-virtual {v1}, Lhd/f;->f()Z

    .line 310
    .line 311
    .line 312
    iget-object p1, v1, Lhd/f;->e:Lhd/a;

    .line 313
    .line 314
    invoke-virtual {v1, p1}, Lhd/f;->e(Lhd/a;)Lhd/c;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    iput-object p1, v1, Lhd/f;->c:Lhd/c;

    .line 319
    .line 320
    const-string p1, "Successfully updated distance model with latest from online database"

    .line 321
    .line 322
    new-array v1, v2, [Ljava/lang/Object;

    .line 323
    .line 324
    invoke-static {v5, p1, v1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    goto :goto_a

    .line 328
    :catch_8
    move-exception p1

    .line 329
    goto :goto_9

    .line 330
    :catchall_0
    move-exception v1

    .line 331
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 332
    .line 333
    .line 334
    throw v1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8

    .line 335
    :goto_9
    const-string v1, "Cannot parse json from downloaded distance model"

    .line 336
    .line 337
    new-array v2, v2, [Ljava/lang/Object;

    .line 338
    .line 339
    invoke-static {p1, v5, v1, v2}, Lid/b;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_8
    :goto_a
    return-object v0
.end method
