.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker$doWork$2$1"
    f = "InfoMessageWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
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

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;

    invoke-direct {v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;Lp9/d;)V

    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;->a:Ljava/lang/Object;

    return-object v0
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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker$b$a;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lnc/a0;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;->a:Lud/d0;

    .line 13
    .line 14
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageAPI;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "apiClientSession.create(\u2026foMessageAPI::class.java)"

    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageAPI;

    .line 26
    .line 27
    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;->b:Ljava/lang/String;

    .line 28
    .line 29
    const-string v4, "android"

    .line 30
    .line 31
    iget-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v2, v3, v4, v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageAPI;->fetchInfoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 36
    .line 37
    .line 38
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :try_start_1
    invoke-interface {v2}, Lud/b;->execute()Lud/c0;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 44
    .line 45
    const-string v4, "response"

    .line 46
    .line 47
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v3, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 63
    .line 64
    invoke-direct {v3, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    instance-of v2, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 68
    .line 69
    if-eqz v2, :cond_7

    .line 70
    .line 71
    move-object v2, v3

    .line 72
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 73
    .line 74
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;

    .line 79
    .line 80
    invoke-static {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    instance-of v4, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 85
    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 89
    .line 90
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;

    .line 95
    .line 96
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->getInfoMessageData()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    move-object v3, v2

    .line 101
    check-cast v3, Ljava/util/Collection;

    .line 102
    .line 103
    const/4 v4, 0x1

    .line 104
    if-eqz v3, :cond_1

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_0

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_0
    const/4 v3, 0x0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 116
    :goto_2
    if-nez v3, :cond_3

    .line 117
    .line 118
    check-cast v2, Ljava/lang/Iterable;

    .line 119
    .line 120
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;

    .line 135
    .line 136
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getId()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    invoke-static {v0, v5}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;I)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_2

    .line 145
    .line 146
    invoke-static {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelKt;->checkMessageType(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_2

    .line 151
    .line 152
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v2, Lqe/a;

    .line 157
    .line 158
    invoke-direct {v2, v4, v3}, Lqe/a;-><init>(ZLtr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Lio/realm/g0;->r(Ljava/lang/Class;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    :goto_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    goto :goto_5

    .line 182
    :cond_5
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 183
    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v2, Lqe/a;

    .line 191
    .line 192
    invoke-direct {v2, v1, p1}, Lqe/a;-><init>(ZLtr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 193
    .line 194
    .line 195
    :goto_4
    invoke-virtual {v0, v2}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    goto :goto_5

    .line 203
    :cond_6
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v2, Lqe/a;

    .line 208
    .line 209
    invoke-direct {v2, v1, p1}, Lqe/a;-><init>(ZLtr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_7
    instance-of v0, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 214
    .line 215
    if-eqz v0, :cond_8

    .line 216
    .line 217
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v2, Lqe/a;

    .line 222
    .line 223
    invoke-direct {v2, v1, p1}, Lqe/a;-><init>(ZLtr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_8
    new-instance v0, Lj7/p;

    .line 228
    .line 229
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 230
    .line 231
    .line 232
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 233
    :catch_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v2, Lqe/a;

    .line 238
    .line 239
    invoke-direct {v2, v1, p1}, Lqe/a;-><init>(ZLtr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2}, Lqd/b;->i(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    :goto_5
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 250
    .line 251
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    return-object p1
.end method
