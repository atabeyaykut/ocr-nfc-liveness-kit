.class public final Lbe/a;
.super Lgf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgf/f<",
        "Lbe/a$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lbe/f;

.field public final c:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method public constructor <init>(Lbe/f;)V
    .locals 1

    .line 1
    const-string v0, "manualDynamicFieldRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lbe/a;->b:Lbe/f;

    .line 10
    .line 11
    sget-object p1, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 12
    .line 13
    iput-object p1, p0, Lbe/a;->c:Lkotlinx/coroutines/scheduling/b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/scheduling/b;
    .locals 1

    iget-object v0, p0, Lbe/a;->c:Lkotlinx/coroutines/scheduling/b;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lbe/a$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object p1, p0, Lbe/a;->b:Lbe/f;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p2, p1, Lbe/f;->e:Lgf/b;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    if-eqz p2, :cond_d

    .line 16
    .line 17
    invoke-virtual {p2}, Lgf/b;->a()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_c

    .line 22
    .line 23
    iget-object p2, p1, Lbe/f;->a:Lud/d0;

    .line 24
    .line 25
    if-eqz p2, :cond_b

    .line 26
    .line 27
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v0, "mApiClient.create(BarcodeVerifyAPI::class.java)"

    .line 34
    .line 35
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object v0, p2

    .line 39
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;

    .line 40
    .line 41
    const-string v2, "android"

    .line 42
    .line 43
    iget-object v3, p1, Lbe/f;->b:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v3, :cond_a

    .line 46
    .line 47
    iget-object v4, p1, Lbe/f;->d:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v4, :cond_9

    .line 50
    .line 51
    iget-object v5, p1, Lbe/f;->c:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v5, :cond_8

    .line 54
    .line 55
    invoke-interface/range {v0 .. v5}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;->verifyDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 64
    .line 65
    const-string v0, "response"

    .line 66
    .line 67
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    move-object p1, p2

    .line 92
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 93
    .line 94
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;

    .line 99
    .line 100
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 105
    .line 106
    if-eqz v0, :cond_0

    .line 107
    .line 108
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 109
    .line 110
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 111
    .line 112
    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;

    .line 117
    .line 118
    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;->getBarcodeData()Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_0
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 128
    .line 129
    if-eqz p1, :cond_1

    .line 130
    .line 131
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 132
    .line 133
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 134
    .line 135
    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_1
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 144
    .line 145
    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;

    .line 150
    .line 151
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;->getMessageArr()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const/4 p2, 0x0

    .line 156
    if-eqz p1, :cond_2

    .line 157
    .line 158
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    move-object v6, p1

    .line 163
    check-cast v6, Ljava/lang/String;

    .line 164
    .line 165
    :cond_2
    if-eqz v6, :cond_3

    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_4

    .line 172
    .line 173
    :cond_3
    const/4 p2, 0x1

    .line 174
    :cond_4
    if-eqz p2, :cond_5

    .line 175
    .line 176
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 177
    .line 178
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 179
    .line 180
    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 188
    .line 189
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 190
    .line 191
    invoke-direct {p2, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_6
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 199
    .line 200
    if-eqz p1, :cond_7

    .line 201
    .line 202
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 203
    .line 204
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 205
    .line 206
    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_7
    new-instance p1, Lj7/p;

    .line 214
    .line 215
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 216
    .line 217
    .line 218
    throw p1

    .line 219
    :cond_8
    const-string p1, "mAppMode"

    .line 220
    .line 221
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v6

    .line 225
    :cond_9
    const-string p1, "mLanguage"

    .line 226
    .line 227
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v6

    .line 231
    :cond_a
    const-string p1, "mAppVersion"

    .line 232
    .line 233
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v6

    .line 237
    :cond_b
    const-string p1, "mApiClient"

    .line 238
    .line 239
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v6

    .line 243
    :cond_c
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 244
    .line 245
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 246
    .line 247
    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_d
    const-string p1, "mNetworkHelper"

    .line 255
    .line 256
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 261
    .line 262
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 263
    .line 264
    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    :goto_1
    return-object p1
.end method
