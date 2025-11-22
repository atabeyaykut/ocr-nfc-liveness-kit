.class public final Lhh/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lud/d0;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lgf/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;
    .locals 2

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->m()V

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v0, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lhh/e$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lhh/e$a;

    iget v3, v2, Lhh/e$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lhh/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lhh/e$a;

    invoke-direct {v2, v1, v0}, Lhh/e$a;-><init>(Lhh/e;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lhh/e$a;->c:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lhh/e$a;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lhh/e$a;->b:Ljava/lang/String;

    iget-object v7, v2, Lhh/e$a;->a:Lhh/e;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 1
    :try_start_2
    iget-object v0, v1, Lhh/e;->e:Lgf/b;

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lhh/e;->a()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_17

    .line 3
    iget-object v0, v1, Lhh/e;->a:Lud/d0;

    if-eqz v0, :cond_16

    .line 4
    const-class v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v0, v8}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v10, 0x0

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 5
    iget-object v13, v1, Lhh/e;->b:Ljava/lang/String;

    if-eqz v13, :cond_15

    const-string v14, "android"

    .line 6
    iget-object v15, v1, Lhh/e;->d:Ljava/lang/String;

    if-eqz v15, :cond_14

    .line 7
    iget-object v0, v1, Lhh/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_13

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v12, p1

    move-object/from16 v16, v0

    .line 8
    invoke-static/range {v9 .. v18}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveDescription$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v9, "response"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v8, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of v0, v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_11

    move-object v0, v8

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v9, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v9, :cond_7

    move-object v0, v8

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;->getDescriptionSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveData;->getDescriptionSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveObject;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveMap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveMap;->getDescriptionSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveSubData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveSubData;->getDescriptionSaveInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveInfo;

    move-result-object v5

    :cond_5
    if-eqz v5, :cond_6

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    new-instance v2, Landroidx/camera/camera2/interop/h;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v5, v4}, Landroidx/camera/camera2/interop/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_6
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_7
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v4, :cond_8

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_8
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v4, :cond_9

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_9
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_c

    iput-object v1, v2, Lhh/e$a;->a:Lhh/e;

    move-object/from16 v4, p1

    iput-object v4, v2, Lhh/e$a;->b:Ljava/lang/String;

    iput v7, v2, Lhh/e$a;->e:I

    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    return-object v3

    :cond_a
    move-object v7, v1

    :goto_3
    iput-object v5, v2, Lhh/e$a;->a:Lhh/e;

    iput-object v5, v2, Lhh/e$a;->b:Ljava/lang/String;

    iput v6, v2, Lhh/e$a;->e:I

    invoke-virtual {v7, v4, v2}, Lhh/e;->b(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    return-object v3

    :cond_b
    :goto_4
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_c
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;->getDescriptionSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveData;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v5

    :cond_d
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v7, 0x0

    :cond_f
    :goto_5
    if-eqz v7, :cond_10

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_11
    instance-of v0, v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_12

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_12
    new-instance v0, Lj7/p;

    invoke-direct {v0}, Lj7/p;-><init>()V

    throw v0

    :cond_13
    const-string v0, "mAppMode"

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5

    :cond_14
    const-string v0, "mLanguage"

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5

    :cond_15
    const-string v0, "mAppVersion"

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5

    :cond_16
    const-string v0, "mApiClient"

    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5

    .line 13
    :cond_17
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_18
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_19
    const-string v0, "mNetworkHelper"

    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 15
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    instance-of v2, v0, Lhh/e$b;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lhh/e$b;

    .line 11
    .line 12
    iget v3, v2, Lhh/e$b;->f:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lhh/e$b;->f:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lhh/e$b;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lhh/e$b;-><init>(Lhh/e;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lhh/e$b;->d:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lq9/a;->a:Lq9/a;

    .line 32
    .line 33
    iget v4, v2, Lhh/e$b;->f:I

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x2

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    if-eq v4, v5, :cond_2

    .line 41
    .line 42
    if-ne v4, v7, :cond_1

    .line 43
    .line 44
    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .line 46
    .line 47
    goto/16 :goto_8

    .line 48
    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_2
    iget-object v4, v2, Lhh/e$b;->c:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v5, v2, Lhh/e$b;->b:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v8, v2, Lhh/e$b;->a:Lhh/e;

    .line 62
    .line 63
    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    move-object v0, v8

    .line 67
    move-object v8, v4

    .line 68
    move-object v4, v5

    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :try_start_2
    iget-object v0, v1, Lhh/e;->e:Lgf/b;

    .line 75
    .line 76
    if-eqz v0, :cond_20

    .line 77
    .line 78
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1f

    .line 83
    .line 84
    invoke-static {}, Lhh/e;->a()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    move-object v0, v6

    .line 96
    :goto_1
    if-eqz v0, :cond_1e

    .line 97
    .line 98
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    move-object v0, v6

    .line 110
    :goto_2
    const/4 v8, 0x0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    const/4 v0, 0x0

    .line 116
    :goto_3
    iget-object v9, v1, Lhh/e;->a:Lud/d0;

    .line 117
    .line 118
    if-eqz v9, :cond_1d

    .line 119
    .line 120
    const-class v10, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    .line 121
    .line 122
    invoke-virtual {v9, v10}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    const-string v10, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    .line 127
    .line 128
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v11, v9

    .line 132
    check-cast v11, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 133
    .line 134
    const/4 v12, 0x0

    .line 135
    const-string v9, "mAppMode"

    .line 136
    .line 137
    const-string v10, "mLanguage"

    .line 138
    .line 139
    const-string v13, "mAppVersion"

    .line 140
    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    :try_start_3
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    if-eqz v14, :cond_7

    .line 155
    .line 156
    invoke-virtual {v14}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    goto :goto_4

    .line 161
    :cond_7
    move-object v14, v6

    .line 162
    :goto_4
    iget-object v15, v1, Lhh/e;->b:Ljava/lang/String;

    .line 163
    .line 164
    if-eqz v15, :cond_a

    .line 165
    .line 166
    const-string v18, "android"

    .line 167
    .line 168
    iget-object v13, v1, Lhh/e;->d:Ljava/lang/String;

    .line 169
    .line 170
    if-eqz v13, :cond_9

    .line 171
    .line 172
    iget-object v10, v1, Lhh/e;->c:Ljava/lang/String;

    .line 173
    .line 174
    if-eqz v10, :cond_8

    .line 175
    .line 176
    const/16 v21, 0x1

    .line 177
    .line 178
    const/16 v22, 0x0

    .line 179
    .line 180
    move-object v9, v13

    .line 181
    move-object v13, v0

    .line 182
    move-object v0, v15

    .line 183
    move-object/from16 v15, p1

    .line 184
    .line 185
    move-object/from16 v16, p2

    .line 186
    .line 187
    move-object/from16 v17, v0

    .line 188
    .line 189
    move-object/from16 v19, v9

    .line 190
    .line 191
    move-object/from16 v20, v10

    .line 192
    .line 193
    invoke-static/range {v11 .. v22}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveLocation$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    goto :goto_5

    .line 198
    :cond_8
    invoke-static {v9}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v6

    .line 202
    :cond_9
    invoke-static {v10}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v6

    .line 206
    :cond_a
    invoke-static {v13}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v6

    .line 210
    :cond_b
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    const/4 v14, 0x0

    .line 218
    iget-object v15, v1, Lhh/e;->b:Ljava/lang/String;

    .line 219
    .line 220
    if-eqz v15, :cond_1c

    .line 221
    .line 222
    const-string v18, "android"

    .line 223
    .line 224
    iget-object v13, v1, Lhh/e;->d:Ljava/lang/String;

    .line 225
    .line 226
    if-eqz v13, :cond_1b

    .line 227
    .line 228
    iget-object v10, v1, Lhh/e;->c:Ljava/lang/String;

    .line 229
    .line 230
    if-eqz v10, :cond_1a

    .line 231
    .line 232
    const/16 v21, 0x5

    .line 233
    .line 234
    const/16 v22, 0x0

    .line 235
    .line 236
    const/4 v12, 0x0

    .line 237
    move-object v9, v13

    .line 238
    move-object v13, v0

    .line 239
    move-object v0, v15

    .line 240
    move-object/from16 v15, p1

    .line 241
    .line 242
    move-object/from16 v16, p2

    .line 243
    .line 244
    move-object/from16 v17, v0

    .line 245
    .line 246
    move-object/from16 v19, v9

    .line 247
    .line 248
    move-object/from16 v20, v10

    .line 249
    .line 250
    invoke-static/range {v11 .. v22}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveLocation$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    .line 251
    .line 252
    .line 253
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 254
    :goto_5
    :try_start_4
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 259
    .line 260
    const-string v10, "response"

    .line 261
    .line 262
    invoke-static {v0, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :catch_0
    move-exception v0

    .line 274
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 275
    .line 276
    .line 277
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 278
    .line 279
    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    :goto_6
    instance-of v0, v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 283
    .line 284
    if-eqz v0, :cond_18

    .line 285
    .line 286
    move-object v0, v9

    .line 287
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 288
    .line 289
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    .line 294
    .line 295
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    instance-of v10, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    .line 300
    .line 301
    if-eqz v10, :cond_e

    .line 302
    .line 303
    move-object v0, v9

    .line 304
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 305
    .line 306
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    .line 311
    .line 312
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;->getLocationSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveData;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    if-eqz v0, :cond_c

    .line 317
    .line 318
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveData;->getLocationSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveObject;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    if-eqz v0, :cond_c

    .line 323
    .line 324
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveObject;->getLocationSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveMap;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    if-eqz v0, :cond_c

    .line 329
    .line 330
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveMap;->getLocationSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveSubData;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    if-eqz v0, :cond_c

    .line 335
    .line 336
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveSubData;->getLocationSaveInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    :cond_c
    if-eqz v6, :cond_d

    .line 341
    .line 342
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-instance v2, La3/k;

    .line 347
    .line 348
    invoke-direct {v2, v6, v4}, La3/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v2}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 355
    .line 356
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 357
    .line 358
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_a

    .line 366
    .line 367
    :cond_d
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 368
    .line 369
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 370
    .line 371
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_a

    .line 378
    .line 379
    :cond_e
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    .line 380
    .line 381
    if-eqz v4, :cond_f

    .line 382
    .line 383
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 384
    .line 385
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 386
    .line 387
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_a

    .line 394
    .line 395
    :cond_f
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    .line 396
    .line 397
    if-eqz v4, :cond_10

    .line 398
    .line 399
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 400
    .line 401
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 402
    .line 403
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_a

    .line 410
    .line 411
    :cond_10
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    .line 412
    .line 413
    if-eqz v0, :cond_13

    .line 414
    .line 415
    iput-object v1, v2, Lhh/e$b;->a:Lhh/e;

    .line 416
    .line 417
    move-object/from16 v4, p1

    .line 418
    .line 419
    iput-object v4, v2, Lhh/e$b;->b:Ljava/lang/String;

    .line 420
    .line 421
    move-object/from16 v8, p2

    .line 422
    .line 423
    iput-object v8, v2, Lhh/e$b;->c:Ljava/lang/String;

    .line 424
    .line 425
    iput v5, v2, Lhh/e$b;->f:I

    .line 426
    .line 427
    const-wide/16 v9, 0x7d0

    .line 428
    .line 429
    invoke-static {v9, v10, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    if-ne v0, v3, :cond_11

    .line 434
    .line 435
    return-object v3

    .line 436
    :cond_11
    move-object v0, v1

    .line 437
    :goto_7
    iput-object v6, v2, Lhh/e$b;->a:Lhh/e;

    .line 438
    .line 439
    iput-object v6, v2, Lhh/e$b;->b:Ljava/lang/String;

    .line 440
    .line 441
    iput-object v6, v2, Lhh/e$b;->c:Ljava/lang/String;

    .line 442
    .line 443
    iput v7, v2, Lhh/e$b;->f:I

    .line 444
    .line 445
    invoke-virtual {v0, v4, v8, v2}, Lhh/e;->c(Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    if-ne v0, v3, :cond_12

    .line 450
    .line 451
    return-object v3

    .line 452
    :cond_12
    :goto_8
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 453
    .line 454
    goto/16 :goto_a

    .line 455
    .line 456
    :cond_13
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 457
    .line 458
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    .line 463
    .line 464
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;->getLocationSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveData;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    if-eqz v0, :cond_14

    .line 469
    .line 470
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    if-eqz v0, :cond_14

    .line 475
    .line 476
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    :cond_14
    if-eqz v6, :cond_16

    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-nez v0, :cond_15

    .line 487
    .line 488
    goto :goto_9

    .line 489
    :cond_15
    const/4 v5, 0x0

    .line 490
    :cond_16
    :goto_9
    if-eqz v5, :cond_17

    .line 491
    .line 492
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 493
    .line 494
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 495
    .line 496
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 497
    .line 498
    .line 499
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 500
    .line 501
    .line 502
    goto :goto_a

    .line 503
    :cond_17
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 504
    .line 505
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 506
    .line 507
    invoke-direct {v2, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 511
    .line 512
    .line 513
    goto :goto_a

    .line 514
    :cond_18
    instance-of v0, v9, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 515
    .line 516
    if-eqz v0, :cond_19

    .line 517
    .line 518
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 519
    .line 520
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 521
    .line 522
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 526
    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_19
    new-instance v0, Lj7/p;

    .line 530
    .line 531
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 532
    .line 533
    .line 534
    throw v0

    .line 535
    :cond_1a
    invoke-static {v9}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    throw v6

    .line 539
    :cond_1b
    invoke-static {v10}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    throw v6

    .line 543
    :cond_1c
    invoke-static {v13}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    throw v6

    .line 547
    :cond_1d
    const-string v0, "mApiClient"

    .line 548
    .line 549
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    throw v6

    .line 553
    :cond_1e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 554
    .line 555
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 556
    .line 557
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 558
    .line 559
    .line 560
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 561
    .line 562
    .line 563
    goto :goto_a

    .line 564
    :cond_1f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 565
    .line 566
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 567
    .line 568
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    .line 569
    .line 570
    .line 571
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 572
    .line 573
    .line 574
    goto :goto_a

    .line 575
    :cond_20
    const-string v0, "mNetworkHelper"

    .line 576
    .line 577
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 581
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 582
    .line 583
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    .line 584
    .line 585
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    .line 586
    .line 587
    .line 588
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 589
    .line 590
    .line 591
    :goto_a
    return-object v0
.end method

.method public final d(Lhh/i;Lp9/d;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhh/i;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    instance-of v3, v0, Lhh/e$c;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lhh/e$c;

    iget v4, v3, Lhh/e$c;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lhh/e$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lhh/e$c;

    invoke-direct {v3, v1, v0}, Lhh/e$c;-><init>(Lhh/e;Lp9/d;)V

    :goto_0
    iget-object v0, v3, Lhh/e$c;->c:Ljava/lang/Object;

    sget-object v4, Lq9/a;->a:Lq9/a;

    iget v5, v3, Lhh/e$c;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v3, Lhh/e$c;->b:Lhh/i;

    iget-object v5, v3, Lhh/e$c;->a:Lhh/e;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 1
    :try_start_2
    iget-object v0, v1, Lhh/e;->e:Lgf/b;

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lhh/e;->a()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_17

    .line 3
    iget-object v0, v1, Lhh/e;->a:Lud/d0;

    if-eqz v0, :cond_16

    .line 4
    const-class v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v0, v9}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v9, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v0

    check-cast v10, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lhh/i;->a:Ljava/lang/String;

    .line 6
    iget-object v9, v2, Lhh/i;->g:Ljava/lang/String;

    .line 7
    iget-object v14, v2, Lhh/i;->c:Ljava/lang/String;

    .line 8
    iget-object v15, v2, Lhh/i;->d:Ljava/lang/String;

    .line 9
    iget-object v13, v1, Lhh/e;->b:Ljava/lang/String;

    if-eqz v13, :cond_15

    .line 10
    iget-object v11, v1, Lhh/e;->d:Ljava/lang/String;

    if-eqz v11, :cond_14

    .line 11
    iget-object v7, v1, Lhh/e;->c:Ljava/lang/String;

    if-eqz v7, :cond_13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "android"

    const/16 v22, 0x5

    const/16 v23, 0x0

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v20, v13

    move-object/from16 v13, v17

    move-object/from16 v16, v0

    move-object/from16 v17, v20

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    .line 12
    invoke-static/range {v10 .. v23}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveMedia$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v9, "response"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v7, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of v0, v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_11

    move-object v0, v7

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v9, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v9, :cond_7

    move-object v0, v7

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;->getPhotoSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveData;->getPhotoSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveObject;->getPhotoSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveSubData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveSubData;->getPhotoSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveMap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveMap;->getPhotoSaveInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;

    move-result-object v6

    :cond_5
    if-eqz v6, :cond_6

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    new-instance v2, Lhh/d;

    invoke-direct {v2, v6, v5}, Lhh/d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;)V

    invoke-virtual {v0, v2}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_7
    instance-of v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v5, :cond_8

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_8
    instance-of v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v5, :cond_9

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_9
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_c

    iput-object v1, v3, Lhh/e$c;->a:Lhh/e;

    iput-object v2, v3, Lhh/e$c;->b:Lhh/i;

    iput v8, v3, Lhh/e$c;->e:I

    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8, v3}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_a

    return-object v4

    :cond_a
    move-object v5, v1

    :goto_3
    iput-object v6, v3, Lhh/e$c;->a:Lhh/e;

    iput-object v6, v3, Lhh/e$c;->b:Lhh/i;

    const/4 v6, 0x2

    iput v6, v3, Lhh/e$c;->e:I

    invoke-virtual {v5, v2, v3}, Lhh/e;->d(Lhh/i;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    return-object v4

    :cond_b
    :goto_4
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_6

    :cond_c
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;->getPhotoSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveData;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v6

    :cond_d
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v8, 0x0

    :cond_f
    :goto_5
    if-eqz v8, :cond_10

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_11
    instance-of v0, v7, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_12

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_12
    new-instance v0, Lj7/p;

    invoke-direct {v0}, Lj7/p;-><init>()V

    throw v0

    :cond_13
    const-string v0, "mAppMode"

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6

    :cond_14
    const-string v0, "mLanguage"

    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6

    :cond_15
    const-string v0, "mAppVersion"

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6

    :cond_16
    const-string v0, "mApiClient"

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6

    .line 17
    :cond_17
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_18
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_19
    const-string v0, "mNetworkHelper"

    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 19
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    return-object v0
.end method
