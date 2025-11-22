.class public final Lch/j;
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


# virtual methods
.method public final a(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lch/j$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lch/j$a;

    iget v3, v2, Lch/j$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lch/j$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lch/j$a;

    invoke-direct {v2, v1, v0}, Lch/j$a;-><init>(Lch/j;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lch/j$a;->c:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lch/j$a;->e:I

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
    iget-object v4, v2, Lch/j$a;->b:Ljava/lang/String;

    iget-object v7, v2, Lch/j$a;->a:Lch/j;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 1
    :try_start_2
    iget-object v0, v1, Lch/j;->e:Lgf/b;

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->m()V

    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v0, v4}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz v4, :cond_4

    .line 4
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_17

    .line 5
    iget-object v0, v1, Lch/j;->a:Lud/d0;

    if-eqz v0, :cond_16

    .line 6
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

    .line 7
    iget-object v13, v1, Lch/j;->b:Ljava/lang/String;

    if-eqz v13, :cond_15

    const-string v14, "android"

    .line 8
    iget-object v15, v1, Lch/j;->d:Ljava/lang/String;

    if-eqz v15, :cond_14

    .line 9
    iget-object v0, v1, Lch/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_13

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v12, p1

    move-object/from16 v16, v0

    .line 10
    invoke-static/range {v9 .. v18}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveDashPoint$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

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

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v9, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v9, :cond_7

    move-object v0, v8

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveModel;->getDashPointSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveData;->getSaveDashPointObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointObject;->getSaveDashPointMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointMap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointMap;->getSaveDashPointSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointSubData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointSubData;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointInfo;

    move-result-object v5

    :cond_5
    if-eqz v5, :cond_6

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    new-instance v2, La3/j;

    invoke-direct {v2, v5, v4}, La3/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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

    iput-object v1, v2, Lch/j$a;->a:Lch/j;

    move-object/from16 v4, p1

    iput-object v4, v2, Lch/j$a;->b:Ljava/lang/String;

    iput v7, v2, Lch/j$a;->e:I

    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    return-object v3

    :cond_a
    move-object v7, v1

    :goto_3
    iput-object v5, v2, Lch/j$a;->a:Lch/j;

    iput-object v5, v2, Lch/j$a;->b:Ljava/lang/String;

    iput v6, v2, Lch/j$a;->e:I

    invoke-virtual {v7, v4, v2}, Lch/j;->a(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

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

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveModel;->getDashPointSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveData;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

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

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5

    :cond_14
    const-string v0, "mLanguage"

    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5

    :cond_15
    const-string v0, "mAppVersion"

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5

    :cond_16
    const-string v0, "mApiClient"

    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5

    .line 15
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

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 17
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    return-object v0
.end method
