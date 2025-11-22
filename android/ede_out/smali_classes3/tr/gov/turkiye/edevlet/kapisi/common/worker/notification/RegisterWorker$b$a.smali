.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker$doWork$2$1"
    f = "RegisterWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;

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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "token"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 28
    :goto_1
    if-nez v1, :cond_6

    .line 29
    .line 30
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;->a:Lud/d0;

    .line 31
    .line 32
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterAPI;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "apiClientRegister.create(RegisterAPI::class.java)"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v2, v1

    .line 44
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterAPI;

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    const-string v4, "add"

    .line 48
    .line 49
    const-string v5, "gcm"

    .line 50
    .line 51
    const-string v7, "tr.gov.turkiye.edevlet.kapisi.v21"

    .line 52
    .line 53
    iget-object v8, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;->b:Ljava/lang/String;

    .line 54
    .line 55
    const-string v9, "android"

    .line 56
    .line 57
    iget-object v10, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;->c:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v11, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;->d:Ljava/lang/String;

    .line 60
    .line 61
    move-object v6, p1

    .line 62
    invoke-interface/range {v2 .. v11}, Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterAPI;->registerUserToPush(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 63
    .line 64
    .line 65
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    :try_start_1
    invoke-interface {v1}, Lud/b;->execute()Lud/c0;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 71
    .line 72
    const-string v3, "response"

    .line 73
    .line 74
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v2, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception v1

    .line 86
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 90
    .line 91
    invoke-direct {v2, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    instance-of v1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    move-object v1, v2

    .line 99
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 100
    .line 101
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;

    .line 106
    .line 107
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RegisterExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    instance-of v1, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 112
    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    new-instance v1, Lorg/json/JSONObject;

    .line 116
    .line 117
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 118
    .line 119
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;

    .line 124
    .line 125
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;->getRegisterData()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v2, "success"

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const-string v3, "true"

    .line 143
    .line 144
    invoke-static {v2, v3}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    :try_start_3
    const-string v2, "message"

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v2, "contentJSON.getJSONObject(\"message\")"

    .line 157
    .line 158
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v2, "device_id"

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;->b(Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;)V

    .line 168
    .line 169
    .line 170
    const-string v2, "deviceID"

    .line 171
    .line 172
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v0, p1, v1}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catch_1
    :cond_2
    :try_start_4
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;->b(Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    :goto_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    goto :goto_5

    .line 187
    :cond_4
    instance-of p1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 188
    .line 189
    if-eqz p1, :cond_5

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_5
    new-instance p1, Lj7/p;

    .line 193
    .line 194
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_6
    :goto_4
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 199
    .line 200
    .line 201
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 202
    goto :goto_5

    .line 203
    :catch_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :goto_5
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 208
    .line 209
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-object p1
.end method
