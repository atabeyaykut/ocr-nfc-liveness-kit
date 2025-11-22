.class public final Lbe/n;
.super Lgf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgf/f<",
        "Lbe/n$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;",
        ">;>;>;"
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
    iput-object p1, p0, Lbe/n;->b:Lbe/f;

    .line 10
    .line 11
    sget-object p1, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 12
    .line 13
    iput-object p1, p0, Lbe/n;->c:Lkotlinx/coroutines/scheduling/b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/scheduling/b;
    .locals 1

    iget-object v0, p0, Lbe/n;->c:Lkotlinx/coroutines/scheduling/b;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p1

    check-cast v0, Lbe/n$a;

    .line 1
    iget-boolean v1, v0, Lbe/n$a;->b:Z

    const/4 v2, 0x1

    const-string v3, "mAppMode"

    const-string v4, "mLanguage"

    const-string v5, "mAppVersion"

    const-string v6, "mApiClient"

    const-string v7, "mNetworkHelper"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "response"

    const-string v11, "mApiClient.create(BarcodeVerifyAPI::class.java)"

    .line 2
    const-class v12, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;

    move-object/from16 v13, p0

    iget-object v14, v13, Lbe/n;->b:Lbe/f;

    if-eqz v1, :cond_e

    .line 3
    iget-object v0, v0, Lbe/n$a;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    :try_start_0
    iget-object v1, v14, Lbe/f;->e:Lgf/b;

    if-eqz v1, :cond_d

    .line 6
    invoke-virtual {v1}, Lgf/b;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 7
    iget-object v1, v14, Lbe/f;->a:Lud/d0;

    if-eqz v1, :cond_b

    .line 8
    invoke-virtual {v1, v12}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v1

    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;

    .line 9
    iget-object v1, v14, Lbe/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 10
    iget-object v5, v14, Lbe/f;->d:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 11
    iget-object v4, v14, Lbe/f;->c:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v16, "type"

    const-string v18, "android"

    move-object/from16 v17, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    .line 12
    invoke-interface/range {v15 .. v21}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;->fetchValidationFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    instance-of v0, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequestOnLogin(Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v0, :cond_1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;->getBarcodeVerifyFieldData()Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldData;->getFields()Ljava/util/List;

    move-result-object v9

    :cond_0
    invoke-direct {v0, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;->getMessageArr()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    :cond_2
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_5
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v1, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_6
    instance-of v0, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_7

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_7
    new-instance v0, Lj7/p;

    invoke-direct {v0}, Lj7/p;-><init>()V

    throw v0

    .line 13
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9

    .line 14
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9

    .line 15
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9

    .line 16
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9

    .line 17
    :cond_c
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 18
    :cond_d
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 19
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 20
    :cond_e
    iget-object v0, v0, Lbe/n$a;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    :try_start_3
    iget-object v1, v14, Lbe/f;->e:Lgf/b;

    if-eqz v1, :cond_1d

    .line 23
    invoke-virtual {v1}, Lgf/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 24
    iget-object v1, v14, Lbe/f;->a:Lud/d0;

    if-eqz v1, :cond_1b

    .line 25
    invoke-virtual {v1, v12}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;

    .line 26
    iget-object v6, v14, Lbe/f;->b:Ljava/lang/String;

    if-eqz v6, :cond_1a

    .line 27
    iget-object v5, v14, Lbe/f;->d:Ljava/lang/String;

    if-eqz v5, :cond_19

    .line 28
    iget-object v4, v14, Lbe/f;->c:Ljava/lang/String;

    if-eqz v4, :cond_18

    const-string v15, "type"

    const-string v17, "android"

    move-object v14, v1

    move-object/from16 v16, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    .line 29
    invoke-interface/range {v14 .. v20}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;->fetchValidationFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of v0, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_16

    move-object v0, v1

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v3, :cond_10

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;->getBarcodeVerifyFieldData()Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldData;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldData;->getFields()Ljava/util/List;

    move-result-object v9

    :cond_f
    invoke-direct {v0, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_10
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v0, :cond_11

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_11
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;->getMessageArr()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    :cond_12
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_3

    :cond_13
    const/4 v2, 0x0

    :cond_14
    :goto_3
    if-eqz v2, :cond_15

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_15
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v1, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_16
    instance-of v0, v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_17

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_17
    new-instance v0, Lj7/p;

    invoke-direct {v0}, Lj7/p;-><init>()V

    throw v0

    .line 30
    :cond_18
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9

    .line 31
    :cond_19
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9

    .line 32
    :cond_1a
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9

    .line 33
    :cond_1b
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9

    .line 34
    :cond_1c
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 35
    :cond_1d
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 36
    :catch_3
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method
