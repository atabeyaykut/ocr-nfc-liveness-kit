.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Landroidx/work/ListenableWorker$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker$doWork$2$1"
    f = "DownloadMediaWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "mediaId"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "mediaName"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "partyId"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v13, 0x1

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v3, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 51
    :goto_1
    if-nez v3, :cond_e

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 v3, 0x0

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 65
    :goto_3
    if-nez v3, :cond_e

    .line 66
    .line 67
    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;->a:Lud/d0;

    .line 68
    .line 69
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "apiClientSession.create(\u2026entReportAPI::class.java)"

    .line 76
    .line 77
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;->b:Ljava/lang/String;

    .line 84
    .line 85
    const-string v8, "android"

    .line 86
    .line 87
    iget-object v9, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;->c:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v10, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;->d:Ljava/lang/String;

    .line 90
    .line 91
    const/4 v11, 0x1

    .line 92
    const/4 v12, 0x0

    .line 93
    invoke-static/range {v3 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->downloadMedia$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 94
    .line 95
    .line 96
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :try_start_1
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 102
    .line 103
    const-string v4, "response"

    .line 104
    .line 105
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {v3, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 121
    .line 122
    invoke-direct {v3, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :goto_4
    instance-of v0, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 126
    .line 127
    if-eqz v0, :cond_c

    .line 128
    .line 129
    move-object v0, v3

    .line 130
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 131
    .line 132
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;

    .line 137
    .line 138
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 143
    .line 144
    if-eqz v4, :cond_8

    .line 145
    .line 146
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 147
    .line 148
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;

    .line 153
    .line 154
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;->getDownloadMediaData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaData;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaData;->getDownloadMediaObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaObject;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_4

    .line 165
    .line 166
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaObject;->getDownloadMediaMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaMap;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_4

    .line 171
    .line 172
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaMap;->getDownloadMediaData()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    goto :goto_5

    .line 177
    :cond_4
    move-object v0, p1

    .line 178
    :goto_5
    if-eqz v0, :cond_5

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-nez v3, :cond_6

    .line 185
    .line 186
    :cond_5
    const/4 v2, 0x1

    .line 187
    :cond_6
    if-nez v2, :cond_7

    .line 188
    .line 189
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    new-instance v3, Lse/a;

    .line 194
    .line 195
    invoke-direct {v3, v1, v0, v13}, Lse/a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    goto/16 :goto_9

    .line 206
    .line 207
    :cond_7
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    new-instance v2, Lse/a;

    .line 212
    .line 213
    invoke-direct {v2, v1}, Lse/a;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_8
    instance-of v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 218
    .line 219
    if-eqz v2, :cond_9

    .line 220
    .line 221
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-instance v2, Lse/a;

    .line 226
    .line 227
    invoke-direct {v2, v1}, Lse/a;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_9
    instance-of v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 232
    .line 233
    if-eqz v2, :cond_a

    .line 234
    .line 235
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v2, Lse/a;

    .line 240
    .line 241
    invoke-direct {v2, v1}, Lse/a;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_a
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 246
    .line 247
    if-eqz v0, :cond_b

    .line 248
    .line 249
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    goto :goto_9

    .line 254
    :cond_b
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    new-instance v2, Lse/a;

    .line 259
    .line 260
    invoke-direct {v2, v1}, Lse/a;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :goto_6
    invoke-virtual {v0, v2}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_c
    instance-of v0, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 268
    .line 269
    if-eqz v0, :cond_d

    .line 270
    .line 271
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    new-instance v1, Lse/a;

    .line 276
    .line 277
    invoke-direct {v1, p1}, Lse/a;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_d
    new-instance v0, Lj7/p;

    .line 282
    .line 283
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 284
    .line 285
    .line 286
    throw v0

    .line 287
    :cond_e
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    new-instance v1, Lse/a;

    .line 292
    .line 293
    invoke-direct {v1, p1}, Lse/a;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_7
    invoke-virtual {v0, v1}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :goto_8
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 300
    .line 301
    .line 302
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 303
    goto :goto_9

    .line 304
    :catch_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    new-instance v1, Lse/a;

    .line 309
    .line 310
    invoke-direct {v1, p1}, Lse/a;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    :goto_9
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 321
    .line 322
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    return-object p1
.end method
