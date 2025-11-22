.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$doWork$2$1"
    f = "ServiceDetailWorker.kt"
    l = {
        0x2e,
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "serviceCode"

    .line 4
    .line 5
    iget-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;

    .line 6
    .line 7
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 8
    .line 9
    iget v4, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;->a:I

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    if-eqz v4, :cond_2

    .line 16
    .line 17
    if-eq v4, v6, :cond_1

    .line 18
    .line 19
    if-ne v4, v5, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_2
    invoke-static/range {p1 .. p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v9, -0x1

    .line 43
    invoke-virtual {v4, v0, v9}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eq v4, v9, :cond_a

    .line 48
    .line 49
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v10, "realm"

    .line 54
    .line 55
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 59
    .line 60
    invoke-virtual {v9, v10}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    new-instance v11, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-direct {v11, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10, v11, v0}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 81
    .line 82
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 83
    .line 84
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;

    .line 85
    .line 86
    invoke-direct {v5, v2, v4, v8}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;ILp9/d;)V

    .line 87
    .line 88
    .line 89
    iput v6, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;->a:I

    .line 90
    .line 91
    invoke-static {v0, v5, v1}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-ne v0, v3, :cond_5

    .line 96
    .line 97
    return-object v3

    .line 98
    :cond_3
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;->a:Lud/d0;

    .line 99
    .line 100
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 101
    .line 102
    invoke-virtual {v0, v10}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v10, "apiClientLogin.create(ServiceListAPI::class.java)"

    .line 107
    .line 108
    invoke-static {v0, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move-object v10, v0

    .line 112
    check-cast v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;

    .line 113
    .line 114
    const-string v11, "ServiceDetail"

    .line 115
    .line 116
    iget-object v13, v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;->b:Ljava/lang/String;

    .line 117
    .line 118
    const-string v14, "android"

    .line 119
    .line 120
    iget-object v15, v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;->c:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;->d:Ljava/lang/String;

    .line 123
    .line 124
    move v12, v4

    .line 125
    move-object/from16 v16, v0

    .line 126
    .line 127
    invoke-interface/range {v10 .. v16}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;->fetchServiceDetail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 128
    .line 129
    .line 130
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :try_start_2
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v10, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 136
    .line 137
    const-string v11, "response"

    .line 138
    .line 139
    invoke-static {v0, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {v10, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    new-instance v10, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 155
    .line 156
    invoke-direct {v10, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    :goto_1
    instance-of v0, v10, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 160
    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    move-object v0, v10

    .line 164
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 165
    .line 166
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;

    .line 171
    .line 172
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    instance-of v11, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 177
    .line 178
    if-eqz v11, :cond_4

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    instance-of v6, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 182
    .line 183
    :goto_2
    if-eqz v6, :cond_6

    .line 184
    .line 185
    move-object v0, v10

    .line 186
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 187
    .line 188
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;

    .line 193
    .line 194
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;->getBaseUrl()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    move-object v6, v10

    .line 203
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 204
    .line 205
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;

    .line 210
    .line 211
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;->getBaseUrls()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    check-cast v10, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 220
    .line 221
    invoke-virtual {v10}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    check-cast v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;

    .line 226
    .line 227
    invoke-virtual {v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;->getContent()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    invoke-static {v10, v0, v6, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;Ljava/lang/String;Ljava/util/List;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v9}, Lio/realm/a;->beginTransaction()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9, v0}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v9}, Lio/realm/a;->c()V

    .line 246
    .line 247
    .line 248
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 249
    .line 250
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 251
    .line 252
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$b;

    .line 253
    .line 254
    invoke-direct {v6, v2, v4, v8}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;ILp9/d;)V

    .line 255
    .line 256
    .line 257
    iput v5, v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;->a:I

    .line 258
    .line 259
    invoke-static {v0, v6, v1}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-ne v0, v3, :cond_5

    .line 264
    .line 265
    return-object v3

    .line 266
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    goto :goto_5

    .line 271
    :cond_6
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 272
    .line 273
    if-eqz v0, :cond_7

    .line 274
    .line 275
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    new-instance v2, Lxe/a;

    .line 280
    .line 281
    invoke-direct {v2, v8, v7}, Lxe/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 282
    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_7
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    new-instance v2, Lxe/a;

    .line 290
    .line 291
    invoke-direct {v2, v8, v7}, Lxe/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_8
    instance-of v0, v10, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 296
    .line 297
    if-eqz v0, :cond_9

    .line 298
    .line 299
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    new-instance v2, Lxe/a;

    .line 304
    .line 305
    invoke-direct {v2, v8, v7}, Lxe/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_9
    new-instance v0, Lj7/p;

    .line 310
    .line 311
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 312
    .line 313
    .line 314
    throw v0

    .line 315
    :cond_a
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    new-instance v2, Lxe/a;

    .line 320
    .line 321
    invoke-direct {v2, v8, v7}, Lxe/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 322
    .line 323
    .line 324
    :goto_4
    invoke-virtual {v0, v2}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 328
    .line 329
    .line 330
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 331
    goto :goto_5

    .line 332
    :catch_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    new-instance v2, Lxe/a;

    .line 337
    .line 338
    invoke-direct {v2, v8, v7}, Lxe/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v2}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    :goto_5
    const-string v2, "override suspend fun doW\u2026        }\n        }\n    }"

    .line 349
    .line 350
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return-object v0
.end method
