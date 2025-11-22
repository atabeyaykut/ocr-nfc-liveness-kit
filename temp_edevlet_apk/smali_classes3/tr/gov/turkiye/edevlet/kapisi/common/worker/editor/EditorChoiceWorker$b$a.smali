.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.editor.EditorChoiceWorker$doWork$2$1"
    f = "EditorChoiceWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;->a:Lud/d0;

    .line 7
    .line 8
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceAPI;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "apiClientLogin.create(Ed\u2026ceServiceAPI::class.java)"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v2, p1

    .line 20
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceAPI;

    .line 21
    .line 22
    const-string v3, "EditorsChoice"

    .line 23
    .line 24
    iget-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;->b:Ljava/lang/String;

    .line 25
    .line 26
    const-string v5, "android"

    .line 27
    .line 28
    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface/range {v2 .. v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceAPI;->fetchServiceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 41
    .line 42
    const-string v1, "response"

    .line 43
    .line 44
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    move-object p1, v0

    .line 69
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 70
    .line 71
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 76
    .line 77
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getBaseUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    move-object v1, v0

    .line 86
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 87
    .line 88
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 93
    .line 94
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getBaseUrls()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const-string v3, "getDefaultInstance()"

    .line 107
    .line 108
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move-object v3, v0

    .line 112
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 113
    .line 114
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 119
    .line 120
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getContent()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Ljava/lang/Iterable;

    .line 129
    .line 130
    new-instance v4, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v6, 0x0

    .line 145
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    const/4 v8, 0x0

    .line 150
    if-eqz v7, :cond_1

    .line 151
    .line 152
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    add-int/lit8 v9, v6, 0x1

    .line 157
    .line 158
    if-ltz v6, :cond_0

    .line 159
    .line 160
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    .line 161
    .line 162
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 163
    .line 164
    invoke-direct {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    new-instance v10, Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-direct {v10, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    .line 177
    .line 178
    .line 179
    new-instance v8, Ljava/lang/Integer;

    .line 180
    .line 181
    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;->setServiceInsertion(Ljava/lang/Integer;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Lio/realm/a;->beginTransaction()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v6}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Lio/realm/a;->c()V

    .line 194
    .line 195
    .line 196
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 197
    .line 198
    invoke-direct {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    new-instance v10, Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-direct {v10, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-virtual {v6, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceName(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getConfigPath()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-virtual {v6, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setConfigPath(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getInstitutionCode()I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    new-instance v10, Ljava/lang/Integer;

    .line 232
    .line 233
    invoke-direct {v10, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionCode(Ljava/lang/Integer;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getInstitutionName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {v6, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionName(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getExplanation()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    invoke-virtual {v6, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setExplanation(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getIconName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v6, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setIconName(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getLink()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-virtual {v6, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setLink(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    invoke-virtual {v6, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrlCode(Ljava/lang/Integer;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-static {v1, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareBaseUrl(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v6, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrl(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move v6, v9

    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_0
    invoke-static {}, Lb8/f;->k0()V

    .line 310
    .line 311
    .line 312
    throw v8

    .line 313
    :cond_1
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 314
    .line 315
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;

    .line 320
    .line 321
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;->getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;->getConceptServices()Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-eqz v0, :cond_3

    .line 330
    .line 331
    check-cast v0, Ljava/lang/Iterable;

    .line 332
    .line 333
    new-instance v3, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-eqz v6, :cond_3

    .line 351
    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    add-int/lit8 v7, v5, 0x1

    .line 357
    .line 358
    if-ltz v5, :cond_2

    .line 359
    .line 360
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    .line 361
    .line 362
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 363
    .line 364
    invoke-direct {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;-><init>()V

    .line 365
    .line 366
    .line 367
    new-instance v9, Ljava/lang/Integer;

    .line 368
    .line 369
    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setServiceInsertion(Ljava/lang/Integer;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    new-instance v10, Ljava/lang/Integer;

    .line 380
    .line 381
    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceName()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    invoke-virtual {v5, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setServiceName(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getConfigPath()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    invoke-virtual {v5, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setConfigPath(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getInstitutionCode()I

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    new-instance v10, Ljava/lang/Integer;

    .line 406
    .line 407
    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setInstitutionCode(Ljava/lang/Integer;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getInstitutionName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    invoke-virtual {v5, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setInstitutionName(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getExplanation()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    invoke-virtual {v5, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setExplanation(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    new-instance v9, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getIconName()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v10

    .line 439
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    invoke-virtual {v5, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setIconName(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getLink()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v9

    .line 453
    invoke-virtual {v5, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setLink(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    invoke-virtual {v5, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setBaseUrlCode(Ljava/lang/Integer;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-static {v1, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareBaseUrl(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->setBaseUrl(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2}, Lio/realm/a;->beginTransaction()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2, v5}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2}, Lio/realm/a;->c()V

    .line 481
    .line 482
    .line 483
    sget-object v5, Ll9/m;->a:Ll9/m;

    .line 484
    .line 485
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move v5, v7

    .line 489
    goto/16 :goto_2

    .line 490
    .line 491
    :cond_2
    invoke-static {}, Lb8/f;->k0()V

    .line 492
    .line 493
    .line 494
    throw v8

    .line 495
    :cond_3
    invoke-virtual {v2}, Lio/realm/a;->beginTransaction()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2, v4}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2}, Lio/realm/a;->c()V

    .line 502
    .line 503
    .line 504
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    goto :goto_3

    .line 509
    :cond_4
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 510
    .line 511
    if-eqz p1, :cond_5

    .line 512
    .line 513
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    goto :goto_3

    .line 518
    :cond_5
    new-instance p1, Lj7/p;

    .line 519
    .line 520
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 521
    .line 522
    .line 523
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 524
    :catch_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    :goto_3
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 529
    .line 530
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    return-object p1
.end method
