.class public final Lm3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field public static c:Lm3/k;


# instance fields
.field public final a:Landroid/content/Context;

.field public volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lm3/k;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lm3/k;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    const-class v0, Lm3/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm3/k;->c:Lm3/k;

    if-nez v1, :cond_0

    invoke-static {p0}, Lm3/y;->a(Landroid/content/Context;)V

    new-instance v1, Lm3/k;

    invoke-direct {v1, p0}, Lm3/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lm3/k;->c:Lm3/k;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lm3/k;->c:Lm3/k;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final varargs c(Landroid/content/pm/PackageInfo;[Lm3/u;)Lm3/u;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Lm3/v;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lm3/v;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lm3/u;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static final d(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4
    .param p0    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    const-string v2, "com.android.vending"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.google.android.gms"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :cond_3
    :goto_0
    if-eqz p0, :cond_5

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    sget-object p1, Lm3/x;->a:[Lm3/u;

    invoke-static {p0, p1}, Lm3/k;->c(Landroid/content/pm/PackageInfo;[Lm3/u;)Lm3/u;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-array p1, v0, [Lm3/u;

    sget-object v2, Lm3/x;->a:[Lm3/u;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    invoke-static {p0, p1}, Lm3/k;->c(Landroid/content/pm/PackageInfo;[Lm3/u;)Lm3/u;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v1
.end method


# virtual methods
.method public final b(I)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lm3/k;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move/from16 v2, p1

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_e

    .line 18
    .line 19
    array-length v5, v2

    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    goto/16 :goto_b

    .line 23
    .line 24
    :cond_0
    move-object v0, v3

    .line 25
    const/4 v6, 0x0

    .line 26
    :goto_0
    if-ge v6, v5, :cond_d

    .line 27
    .line 28
    aget-object v13, v2, v6

    .line 29
    .line 30
    const-string v14, "Failed to get Google certificates from remote"

    .line 31
    .line 32
    const-string v15, "GoogleCertificates"

    .line 33
    .line 34
    const-string v7, "null pkg"

    .line 35
    .line 36
    if-nez v13, :cond_1

    .line 37
    .line 38
    new-instance v0, Lm3/g0;

    .line 39
    .line 40
    invoke-direct {v0, v4, v7, v3}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_a

    .line 44
    .line 45
    :cond_1
    iget-object v0, v1, Lm3/k;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_a

    .line 52
    .line 53
    sget-object v0, Lm3/y;->a:Lm3/s;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    :try_start_0
    invoke-static {}, Lm3/y;->c()V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lm3/y;->c:Lr3/s0;

    .line 63
    .line 64
    invoke-interface {v0}, Lr3/s0;->h()Z

    .line 65
    .line 66
    .line 67
    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto/16 :goto_9

    .line 74
    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    :goto_1
    :try_start_1
    invoke-static {v15, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_2
    const/4 v12, 0x1

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-object v0, v1, Lm3/k;->a:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {v0}, Lm3/j;->a(Landroid/content/Context;)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 95
    .line 96
    .line 97
    move-result-object v16

    .line 98
    :try_start_2
    sget-object v0, Lm3/y;->e:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    .line 102
    .line 103
    :try_start_3
    invoke-static {}, Lm3/y;->c()V
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    .line 105
    .line 106
    :try_start_4
    new-instance v0, Lm3/z;

    .line 107
    .line 108
    const/4 v10, 0x0

    .line 109
    sget-object v7, Lm3/y;->e:Landroid/content/Context;

    .line 110
    .line 111
    new-instance v11, Lz3/d;

    .line 112
    .line 113
    invoke-direct {v11, v7}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/16 v17, 0x0

    .line 117
    .line 118
    move-object v7, v0

    .line 119
    move-object v8, v13

    .line 120
    const/4 v4, 0x1

    .line 121
    move/from16 v12, v17

    .line 122
    .line 123
    invoke-direct/range {v7 .. v12}, Lm3/z;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 124
    .line 125
    .line 126
    :try_start_5
    sget-object v7, Lm3/y;->c:Lr3/s0;

    .line 127
    .line 128
    invoke-interface {v7, v0}, Lr3/s0;->r0(Lm3/z;)Lm3/b0;

    .line 129
    .line 130
    .line 131
    move-result-object v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    :try_start_6
    iget-boolean v7, v0, Lm3/b0;->a:Z

    .line 133
    .line 134
    if-eqz v7, :cond_2

    .line 135
    .line 136
    iget v0, v0, Lm3/b0;->d:I

    .line 137
    .line 138
    invoke-static {v0}, Lc5/w;->J(I)I

    .line 139
    .line 140
    .line 141
    new-instance v0, Lm3/g0;

    .line 142
    .line 143
    invoke-direct {v0, v4, v3, v3}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_2
    iget-object v4, v0, Lm3/b0;->b:Ljava/lang/String;

    .line 148
    .line 149
    iget v7, v0, Lm3/b0;->c:I

    .line 150
    .line 151
    invoke-static {v7}, Lb8/f;->s0(I)I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    const/4 v8, 0x4

    .line 156
    if-ne v7, v8, :cond_3

    .line 157
    .line 158
    new-instance v7, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 159
    .line 160
    invoke-direct {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_3
    move-object v7, v3

    .line 165
    :goto_3
    const-string v8, "error checking package certificate"

    .line 166
    .line 167
    if-nez v4, :cond_4

    .line 168
    .line 169
    move-object v4, v8

    .line 170
    :cond_4
    iget v8, v0, Lm3/b0;->d:I

    .line 171
    .line 172
    invoke-static {v8}, Lc5/w;->J(I)I

    .line 173
    .line 174
    .line 175
    iget v0, v0, Lm3/b0;->c:I

    .line 176
    .line 177
    invoke-static {v0}, Lb8/f;->s0(I)I

    .line 178
    .line 179
    .line 180
    new-instance v0, Lm3/g0;

    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    invoke-direct {v0, v8, v4, v7}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :catch_2
    move-exception v0

    .line 188
    invoke-static {v15, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    const-string v4, "module call"

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :catch_3
    move-exception v0

    .line 195
    move-object v4, v0

    .line 196
    invoke-static {v15, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    const-string v0, "module init: "

    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move-object/from16 v18, v4

    .line 214
    .line 215
    move-object v4, v0

    .line 216
    move-object/from16 v0, v18

    .line 217
    .line 218
    :goto_4
    new-instance v7, Lm3/g0;

    .line 219
    .line 220
    const/4 v8, 0x0

    .line 221
    invoke-direct {v7, v8, v4, v0}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 222
    .line 223
    .line 224
    move-object v0, v7

    .line 225
    :goto_5
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_8

    .line 229
    .line 230
    :catchall_1
    move-exception v0

    .line 231
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_5
    const/4 v4, 0x1

    .line 236
    :try_start_7
    iget-object v0, v1, Lm3/k;->a:Landroid/content/Context;

    .line 237
    .line 238
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const/16 v8, 0x40

    .line 243
    .line 244
    invoke-virtual {v0, v13, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 245
    .line 246
    .line 247
    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    .line 248
    iget-object v8, v1, Lm3/k;->a:Landroid/content/Context;

    .line 249
    .line 250
    invoke-static {v8}, Lm3/j;->a(Landroid/content/Context;)Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-nez v0, :cond_6

    .line 255
    .line 256
    new-instance v0, Lm3/g0;

    .line 257
    .line 258
    const/4 v9, 0x0

    .line 259
    invoke-direct {v0, v9, v7, v3}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 260
    .line 261
    .line 262
    goto :goto_8

    .line 263
    :cond_6
    const/4 v9, 0x0

    .line 264
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 265
    .line 266
    if-eqz v7, :cond_9

    .line 267
    .line 268
    array-length v7, v7

    .line 269
    if-eq v7, v4, :cond_7

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_7
    new-instance v7, Lm3/v;

    .line 273
    .line 274
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 275
    .line 276
    aget-object v10, v10, v9

    .line 277
    .line 278
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    invoke-direct {v7, v10}, Lm3/v;-><init>([B)V

    .line 283
    .line 284
    .line 285
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    :try_start_8
    invoke-static {v10, v7, v8, v9}, Lm3/y;->b(Ljava/lang/String;Lm3/u;ZZ)Lm3/g0;

    .line 292
    .line 293
    .line 294
    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 295
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 296
    .line 297
    .line 298
    iget-boolean v9, v8, Lm3/g0;->a:Z

    .line 299
    .line 300
    if-eqz v9, :cond_8

    .line 301
    .line 302
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 303
    .line 304
    if-eqz v0, :cond_8

    .line 305
    .line 306
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 307
    .line 308
    and-int/lit8 v0, v0, 0x2

    .line 309
    .line 310
    if-eqz v0, :cond_8

    .line 311
    .line 312
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    const/4 v11, 0x0

    .line 317
    :try_start_9
    invoke-static {v10, v7, v11, v4}, Lm3/y;->b(Ljava/lang/String;Lm3/u;ZZ)Lm3/g0;

    .line 318
    .line 319
    .line 320
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 321
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 322
    .line 323
    .line 324
    iget-boolean v0, v0, Lm3/g0;->a:Z

    .line 325
    .line 326
    if-eqz v0, :cond_8

    .line 327
    .line 328
    const-string v0, "debuggable release cert app rejected"

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :catchall_2
    move-exception v0

    .line 332
    move-object v2, v0

    .line 333
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 334
    .line 335
    .line 336
    throw v2

    .line 337
    :cond_8
    move-object v0, v8

    .line 338
    goto :goto_8

    .line 339
    :catchall_3
    move-exception v0

    .line 340
    move-object v2, v0

    .line 341
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 342
    .line 343
    .line 344
    throw v2

    .line 345
    :cond_9
    :goto_6
    const-string v0, "single cert required"

    .line 346
    .line 347
    :goto_7
    new-instance v4, Lm3/g0;

    .line 348
    .line 349
    const/4 v7, 0x0

    .line 350
    invoke-direct {v4, v7, v0, v3}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 351
    .line 352
    .line 353
    move-object v0, v4

    .line 354
    :goto_8
    iget-boolean v4, v0, Lm3/g0;->a:Z

    .line 355
    .line 356
    if-eqz v4, :cond_b

    .line 357
    .line 358
    iput-object v13, v1, Lm3/k;->b:Ljava/lang/String;

    .line 359
    .line 360
    goto :goto_a

    .line 361
    :catch_4
    move-exception v0

    .line 362
    const-string v4, "no pkg "

    .line 363
    .line 364
    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    new-instance v7, Lm3/g0;

    .line 369
    .line 370
    const/4 v8, 0x0

    .line 371
    invoke-direct {v7, v8, v4, v0}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 372
    .line 373
    .line 374
    move-object v0, v7

    .line 375
    goto :goto_a

    .line 376
    :goto_9
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 377
    .line 378
    .line 379
    throw v0

    .line 380
    :cond_a
    sget-object v0, Lm3/g0;->d:Lm3/g0;

    .line 381
    .line 382
    :cond_b
    :goto_a
    iget-boolean v4, v0, Lm3/g0;->a:Z

    .line 383
    .line 384
    if-eqz v4, :cond_c

    .line 385
    .line 386
    goto :goto_c

    .line 387
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 388
    .line 389
    const/4 v4, 0x0

    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :cond_d
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    goto :goto_c

    .line 396
    :cond_e
    :goto_b
    new-instance v0, Lm3/g0;

    .line 397
    .line 398
    const-string v2, "no pkgs"

    .line 399
    .line 400
    const/4 v4, 0x0

    .line 401
    invoke-direct {v0, v4, v2, v3}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 402
    .line 403
    .line 404
    :goto_c
    iget-boolean v2, v0, Lm3/g0;->a:Z

    .line 405
    .line 406
    if-nez v2, :cond_10

    .line 407
    .line 408
    const/4 v2, 0x3

    .line 409
    const-string v3, "GoogleCertificatesRslt"

    .line 410
    .line 411
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_10

    .line 416
    .line 417
    iget-object v2, v0, Lm3/g0;->c:Ljava/lang/Throwable;

    .line 418
    .line 419
    if-eqz v2, :cond_f

    .line 420
    .line 421
    invoke-virtual {v0}, Lm3/g0;->a()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .line 427
    .line 428
    goto :goto_d

    .line 429
    :cond_f
    invoke-virtual {v0}, Lm3/g0;->a()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    :cond_10
    :goto_d
    iget-boolean v0, v0, Lm3/g0;->a:Z

    .line 437
    .line 438
    return v0
.end method
