.class public final La3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/p;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb3/d;

.field public final c:La3/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb3/d;La3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/d;->a:Landroid/content/Context;

    iput-object p2, p0, La3/d;->b:Lb3/d;

    iput-object p3, p0, La3/d;->c:La3/e;

    return-void
.end method


# virtual methods
.method public final a(Lu2/s;IZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Landroid/content/ComponentName;

    .line 8
    .line 9
    iget-object v4, v0, La3/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    const-class v5, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 12
    .line 13
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "jobscheduler"

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroid/app/job/JobScheduler;

    .line 23
    .line 24
    new-instance v6, Ljava/util/zip/Adler32;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/util/zip/Adler32;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v7, "UTF-8"

    .line 34
    .line 35
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v6, v4}, Ljava/util/zip/Adler32;->update([B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lu2/s;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v6, v4}, Ljava/util/zip/Adler32;->update([B)V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x4

    .line 62
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual/range {p1 .. p1}, Lu2/s;->d()Lr2/d;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-static {v8}, Le3/a;->a(Lr2/d;)I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v6, v7}, Ljava/util/zip/Adler32;->update([B)V

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Lu2/s;->c()[B

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    if-eqz v7, :cond_0

    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Lu2/s;->c()[B

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v6, v7}, Ljava/util/zip/Adler32;->update([B)V

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-virtual {v6}, Ljava/util/zip/Adler32;->getValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    long-to-int v7, v6

    .line 103
    const/4 v6, 0x1

    .line 104
    const/4 v8, 0x0

    .line 105
    const-string v9, "JobInfoScheduler"

    .line 106
    .line 107
    const-string v10, "attemptNumber"

    .line 108
    .line 109
    if-nez p3, :cond_3

    .line 110
    .line 111
    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    if-eqz v12, :cond_2

    .line 124
    .line 125
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    check-cast v12, Landroid/app/job/JobInfo;

    .line 130
    .line 131
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-virtual {v13, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getId()I

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    if-ne v12, v7, :cond_1

    .line 144
    .line 145
    if-lt v13, v2, :cond_2

    .line 146
    .line 147
    const/4 v11, 0x1

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    const/4 v11, 0x0

    .line 150
    :goto_0
    if-eqz v11, :cond_3

    .line 151
    .line 152
    const-string v2, "Upload for context %s is already scheduled. Returning..."

    .line 153
    .line 154
    invoke-static {v1, v9, v2}, Lc5/w;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    iget-object v11, v0, La3/d;->b:Lb3/d;

    .line 159
    .line 160
    invoke-interface {v11, v1}, Lb3/d;->D(Lu2/s;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v11

    .line 164
    new-instance v13, Landroid/app/job/JobInfo$Builder;

    .line 165
    .line 166
    invoke-direct {v13, v7, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p1 .. p1}, Lu2/s;->d()Lr2/d;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    iget-object v14, v0, La3/d;->c:La3/e;

    .line 174
    .line 175
    move-object v15, v5

    .line 176
    invoke-virtual {v14, v3, v11, v12, v2}, La3/e;->b(Lr2/d;JI)J

    .line 177
    .line 178
    .line 179
    move-result-wide v4

    .line 180
    invoke-virtual {v13, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14}, La3/e;->c()Ljava/util/Map;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, La3/e$a;

    .line 192
    .line 193
    invoke-virtual {v3}, La3/e$a;->b()Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    sget-object v4, La3/e$b;->a:La3/e$b;

    .line 198
    .line 199
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    const/4 v5, 0x2

    .line 204
    if-eqz v4, :cond_4

    .line 205
    .line 206
    invoke-virtual {v13, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_4
    invoke-virtual {v13, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 211
    .line 212
    .line 213
    :goto_1
    sget-object v4, La3/e$b;->c:La3/e$b;

    .line 214
    .line 215
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_5

    .line 220
    .line 221
    invoke-virtual {v13, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 222
    .line 223
    .line 224
    :cond_5
    sget-object v4, La3/e$b;->b:La3/e$b;

    .line 225
    .line 226
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_6

    .line 231
    .line 232
    invoke-virtual {v13, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 233
    .line 234
    .line 235
    :cond_6
    new-instance v3, Landroid/os/PersistableBundle;

    .line 236
    .line 237
    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v10, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    const-string v4, "backendName"

    .line 244
    .line 245
    invoke-virtual/range {p1 .. p1}, Lu2/s;->b()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    invoke-virtual {v3, v4, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p1 .. p1}, Lu2/s;->d()Lr2/d;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-static {v4}, Le3/a;->a(Lr2/d;)I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    const-string v10, "priority"

    .line 261
    .line 262
    invoke-virtual {v3, v10, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual/range {p1 .. p1}, Lu2/s;->c()[B

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    if-eqz v4, :cond_7

    .line 270
    .line 271
    invoke-virtual/range {p1 .. p1}, Lu2/s;->c()[B

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-static {v4, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    const-string v10, "extras"

    .line 280
    .line 281
    invoke-virtual {v3, v10, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :cond_7
    invoke-virtual {v13, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 285
    .line 286
    .line 287
    const/4 v3, 0x5

    .line 288
    new-array v3, v3, [Ljava/lang/Object;

    .line 289
    .line 290
    aput-object v1, v3, v8

    .line 291
    .line 292
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    aput-object v4, v3, v6

    .line 297
    .line 298
    invoke-virtual/range {p1 .. p1}, Lu2/s;->d()Lr2/d;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v14, v1, v11, v12, v2}, La3/e;->b(Lr2/d;JI)J

    .line 303
    .line 304
    .line 305
    move-result-wide v6

    .line 306
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    aput-object v1, v3, v5

    .line 311
    .line 312
    const/4 v1, 0x3

    .line 313
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    aput-object v4, v3, v1

    .line 318
    .line 319
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const/4 v2, 0x4

    .line 324
    aput-object v1, v3, v2

    .line 325
    .line 326
    invoke-static {v9}, Lc5/w;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    const-string v2, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    .line 331
    .line 332
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    invoke-virtual {v13}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    move-object v5, v15

    .line 344
    invoke-virtual {v5, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 345
    .line 346
    .line 347
    return-void
.end method

.method public final b(Lu2/s;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La3/d;->a(Lu2/s;IZ)V

    return-void
.end method
