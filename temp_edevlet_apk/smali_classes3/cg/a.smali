.class public final Lcg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContent(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "content"

    const-string v1, "content "

    const-string v2, "value"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lyd/a;->a:Lyd/a$a;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "login"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/p;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ldf/p;-><init>(Z)V

    goto/16 :goto_1

    :cond_0
    const-string p1, "loading"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/n;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ldf/n;-><init>(Z)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "loginBackgroundProcess"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/o;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ldf/o;-><init>(Z)V

    goto/16 :goto_1

    :cond_2
    const-string p1, "forgetpass"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/h;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ldf/h;-><init>(Z)V

    goto/16 :goto_1

    :cond_3
    const-string p1, "pnsclear"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/j0;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ldf/j0;-><init>(Z)V

    goto/16 :goto_1

    :cond_4
    const-string p1, "2auth_req"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/m0;

    invoke-direct {v0}, Ldf/m0;-><init>()V

    goto/16 :goto_1

    :cond_5
    const-string p1, "language"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v1, Ldf/m;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldf/m;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "edkOpenServices"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "baseURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "service"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v7, Ldf/v;

    const-string v1, "baseUrl"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "folderName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "serviceDetailConfig.getString(\"folderName\")"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "serviceDetailConfig.getString(\"url\")"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "serviceDetailConfig.getString(\"name\")"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serviceDomainType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ldf/v;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lqd/b;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    const-string p1, "externalLink"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v1, Ldf/f;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldf/f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string p1, "newRegisterCode"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v1, Ls4/da;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Ls4/da;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p1, v1}, Lqd/b;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    const-string p1, "registerDevice"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v1, Ldf/a0;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldf/a0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string p1, "twofactorReq"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v1, Ldf/k0;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldf/k0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string p1, "pushApproval"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v1, Ldf/s;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldf/s;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string p1, "karekodGiris"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/e0;

    invoke-direct {v0}, Ldf/e0;-><init>()V

    goto/16 :goto_1

    :cond_d
    const-string p1, "checkNfc"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/c;

    invoke-direct {v0}, Ldf/c;-><init>()V

    goto/16 :goto_1

    :cond_e
    const-string p1, "verificationById"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v1, Ldf/l;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldf/l;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    const-string p1, "kimlikDogrula"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v1, Ldf/k;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldf/k;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string p1, "removeRegisteredDevice"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/b0;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ldf/b0;-><init>(Z)V

    goto/16 :goto_1

    :cond_11
    const-string p1, "checkRegisteredDevice"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/d;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    invoke-direct {v0, v1}, Ldf/d;-><init>(I)V

    goto :goto_1

    :cond_12
    const-string p1, "requestTwoFactor"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v1, Ldf/l0;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldf/l0;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string p1, "readMrz"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/b0;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ldf/b0;-><init>(Z)V

    goto :goto_1

    :cond_14
    const-string p1, "readQr"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/b0;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ldf/b0;-><init>(Z)V

    goto :goto_1

    :cond_15
    const-string p1, "qrCodeOperations"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/y;

    invoke-direct {v0}, Ldf/y;-><init>()V

    goto :goto_1

    :cond_16
    const-string p1, "verifyDocument"

    invoke-static {v3, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/b;

    invoke-direct {v0}, Ldf/b;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Lqd/b;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_2
    return-void
.end method
