.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateModuleCheckWorker$doWork$2$1"
    f = "UpdateModuleCheckWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;->a:Lud/d0;

    .line 7
    .line 8
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "apiClientSession.create(\u2026teCheckerAPI::class.java)"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v2, p1

    .line 20
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;

    .line 21
    .line 22
    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;->b:Ljava/lang/String;

    .line 23
    .line 24
    const-string v4, "android"

    .line 25
    .line 26
    iget-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;->c:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;->d:Ljava/lang/String;

    .line 29
    .line 30
    const-string v7, "tr.gov.turkiye.edevlet.kapisi.google.kazatutanagi"

    .line 31
    .line 32
    invoke-interface/range {v2 .. v7}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;->checkModuleSpecificUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

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
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 41
    .line 42
    const-string v2, "response"

    .line 43
    .line 44
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
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
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 60
    .line 61
    invoke-direct {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    instance-of p1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 65
    .line 66
    if-eqz p1, :cond_a

    .line 67
    .line 68
    move-object p1, v1

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
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;

    .line 76
    .line 77
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/UpdateCheckExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 82
    .line 83
    if-eqz v2, :cond_8

    .line 84
    .line 85
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 86
    .line 87
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;

    .line 92
    .line 93
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;->getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 v1, 0x0

    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->getModuleServiceInfo()Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    goto :goto_1

    .line 105
    :cond_0
    move-object p1, v1

    .line 106
    :goto_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz p1, :cond_1

    .line 111
    .line 112
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;->getModuleName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v7, v3

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    move-object v7, v1

    .line 119
    :goto_2
    if-eqz p1, :cond_2

    .line 120
    .line 121
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;->getWarningMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    move-object v8, v3

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    move-object v8, v1

    .line 128
    :goto_3
    if-eqz p1, :cond_3

    .line 129
    .line 130
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;->isModuleActive()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    move-object v6, v3

    .line 139
    goto :goto_4

    .line 140
    :cond_3
    move-object v6, v1

    .line 141
    :goto_4
    if-eqz p1, :cond_4

    .line 142
    .line 143
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;->getHasUpdateForModule()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    move-object v9, v3

    .line 152
    goto :goto_5

    .line 153
    :cond_4
    move-object v9, v1

    .line 154
    :goto_5
    if-eqz p1, :cond_5

    .line 155
    .line 156
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;->getUpdateServiceInfo()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    if-eqz v3, :cond_5

    .line 161
    .line 162
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;->getTitle()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    move-object v10, v3

    .line 167
    goto :goto_6

    .line 168
    :cond_5
    move-object v10, v1

    .line 169
    :goto_6
    if-eqz p1, :cond_6

    .line 170
    .line 171
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;->getUpdateServiceInfo()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-eqz v3, :cond_6

    .line 176
    .line 177
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;->getUpdateType()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    move-object v11, v3

    .line 182
    goto :goto_7

    .line 183
    :cond_6
    move-object v11, v1

    .line 184
    :goto_7
    if-eqz p1, :cond_7

    .line 185
    .line 186
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;->getUpdateServiceInfo()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_7

    .line 191
    .line 192
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;->getDescription()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :cond_7
    move-object v12, v1

    .line 197
    new-instance p1, Ldf/n0;

    .line 198
    .line 199
    const/4 v5, 0x1

    .line 200
    move-object v4, p1

    .line 201
    invoke-direct/range {v4 .. v12}, Ldf/n0;-><init>(ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, p1}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    goto :goto_9

    .line 212
    :cond_8
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 213
    .line 214
    if-eqz p1, :cond_9

    .line 215
    .line 216
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    goto :goto_9

    .line 221
    :cond_9
    :goto_8
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;)V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    goto :goto_9

    .line 229
    :cond_a
    instance-of p1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 230
    .line 231
    if-eqz p1, :cond_b

    .line 232
    .line 233
    goto :goto_8

    .line 234
    :cond_b
    new-instance p1, Lj7/p;

    .line 235
    .line 236
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 237
    .line 238
    .line 239
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    :catch_1
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;)V

    .line 241
    .line 242
    .line 243
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    :goto_9
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 248
    .line 249
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-object p1
.end method
