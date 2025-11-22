.class public final Lzg/i;
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

.method public static l()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;
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
.method public final a(Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    instance-of v3, v0, Lzg/i$a;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lzg/i$a;

    iget v4, v3, Lzg/i$a;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lzg/i$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v3, Lzg/i$a;

    invoke-direct {v3, v1, v0}, Lzg/i$a;-><init>(Lzg/i;Lp9/d;)V

    :goto_0
    iget-object v0, v3, Lzg/i$a;->d:Ljava/lang/Object;

    sget-object v4, Lq9/a;->a:Lq9/a;

    iget v5, v3, Lzg/i$a;->f:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v3, Lzg/i$a;->c:Ljava/lang/String;

    iget-object v5, v3, Lzg/i$a;->b:Ljava/lang/String;

    iget-object v6, v3, Lzg/i$a;->a:Lzg/i;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v20, v5

    move-object v5, v2

    move-object/from16 v2, v20

    goto/16 :goto_6

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lzg/i;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lzg/i;->l()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v8

    :goto_1
    if-eqz v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Lzg/i;->b()Lud/d0;

    move-result-object v5

    const-class v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v5, v9}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    const-string v9, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v5

    check-cast v10, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_7

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_4

    :cond_7
    move-object v12, v2

    :goto_4
    const/4 v11, 0x0

    invoke-static {v12}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lzg/i;->d()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android"

    invoke-virtual/range {p0 .. p0}, Lzg/i;->e()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lzg/i;->c()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v13, p2

    invoke-static/range {v10 .. v19}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->downloadMedia$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v9, "response"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v5, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v5, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    instance-of v0, v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_e

    move-object v0, v5

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v9, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v9, :cond_8

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_8
    instance-of v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v5, :cond_9

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_9
    instance-of v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v5, :cond_a

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_a
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_d

    iput-object v1, v3, Lzg/i$a;->a:Lzg/i;

    iput-object v2, v3, Lzg/i$a;->b:Ljava/lang/String;

    move-object/from16 v5, p2

    iput-object v5, v3, Lzg/i$a;->c:Ljava/lang/String;

    iput v6, v3, Lzg/i$a;->f:I

    const-wide/16 v9, 0x7d0

    invoke-static {v9, v10, v3}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    return-object v4

    :cond_b
    move-object v6, v1

    :goto_6
    iput-object v8, v3, Lzg/i$a;->a:Lzg/i;

    iput-object v8, v3, Lzg/i$a;->b:Ljava/lang/String;

    iput-object v8, v3, Lzg/i$a;->c:Ljava/lang/String;

    iput v7, v3, Lzg/i$a;->f:I

    invoke-virtual {v6, v2, v5, v3}, Lzg/i;->a(Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_c

    return-object v4

    :cond_c
    :goto_7
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_d
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_e
    instance-of v0, v5, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_f

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_11
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    return-object v0
.end method

.method public final b()Lud/d0;
    .locals 1

    iget-object v0, p0, Lzg/i;->a:Lud/d0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mApiClient"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzg/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mAppMode"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzg/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mAppVersion"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzg/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()Lgf/b;
    .locals 1

    iget-object v0, p0, Lzg/i;->e:Lgf/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mNetworkHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g(Lp9/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lzg/i$b;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lzg/i$b;

    iget v3, v2, Lzg/i$b;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lzg/i$b;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lzg/i$b;

    invoke-direct {v2, v1, v0}, Lzg/i$b;-><init>(Lzg/i;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lzg/i$b;->b:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lzg/i$b;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

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
    iget-object v4, v2, Lzg/i$b;->a:Lzg/i;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lzg/i;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lzg/i;->l()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lzg/i;->b()Lud/d0;

    move-result-object v4

    const-class v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v4, v8}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    const-string v8, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lzg/i;->d()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android"

    invoke-virtual/range {p0 .. p0}, Lzg/i;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lzg/i;->c()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->makeConfirmationRequestForGuest$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v8, "response"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_f

    move-object v0, v4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v8, :cond_5

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v8, :cond_6

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_6
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v8, :cond_7

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_7
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_a

    iput-object v1, v2, Lzg/i$b;->a:Lzg/i;

    iput v7, v2, Lzg/i$b;->d:I

    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    move-object v4, v1

    :goto_3
    iput-object v6, v2, Lzg/i$b;->a:Lzg/i;

    iput v5, v2, Lzg/i$b;->d:I

    invoke-virtual {v4, v2}, Lzg/i;->g(Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    :goto_4
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_a
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;->getConfirmationGuestRequestData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestData;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v6

    :cond_b
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    :cond_d
    :goto_5
    if-eqz v7, :cond_e

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_f
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_10

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_11
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_12
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    return-object v0
.end method

.method public final h(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lzg/i$c;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lzg/i$c;

    iget v3, v2, Lzg/i$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lzg/i$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lzg/i$c;

    invoke-direct {v2, v1, v0}, Lzg/i$c;-><init>(Lzg/i;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lzg/i$c;->c:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lzg/i$c;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

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
    iget-object v4, v2, Lzg/i$c;->b:Ljava/lang/String;

    iget-object v6, v2, Lzg/i$c;->a:Lzg/i;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lzg/i;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lzg/i;->l()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lzg/i;->b()Lud/d0;

    move-result-object v0

    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v0, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lzg/i;->d()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android"

    invoke-virtual/range {p0 .. p0}, Lzg/i;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lzg/i;->c()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v8 .. v16}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->makeConfirmationRequestForHost$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v8, "response"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_f

    move-object v0, v4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v8, :cond_5

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v8, :cond_6

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_6
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v8, :cond_7

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_7
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_a

    iput-object v1, v2, Lzg/i$c;->a:Lzg/i;

    move-object/from16 v4, p1

    iput-object v4, v2, Lzg/i$c;->b:Ljava/lang/String;

    iput v6, v2, Lzg/i$c;->e:I

    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    move-object v6, v1

    :goto_3
    iput-object v7, v2, Lzg/i$c;->a:Lzg/i;

    iput-object v7, v2, Lzg/i$c;->b:Ljava/lang/String;

    iput v5, v2, Lzg/i$c;->e:I

    invoke-virtual {v6, v4, v2}, Lzg/i;->h(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    :goto_4
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_a
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;->getConfirmationHostRequestData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestData;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v7

    :cond_b
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    :cond_d
    :goto_5
    if-eqz v6, :cond_e

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_f
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_10

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_11
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_12
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    return-object v0
.end method

.method public final i(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lzg/i$d;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lzg/i$d;

    iget v3, v2, Lzg/i$d;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lzg/i$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lzg/i$d;

    invoke-direct {v2, v1, v0}, Lzg/i$d;-><init>(Lzg/i;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lzg/i$d;->c:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lzg/i$d;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

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
    iget-object v4, v2, Lzg/i$d;->b:Ljava/lang/String;

    iget-object v6, v2, Lzg/i$d;->a:Lzg/i;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lzg/i;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lzg/i;->l()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lzg/i;->b()Lud/d0;

    move-result-object v0

    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v0, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lzg/i;->d()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android"

    invoke-virtual/range {p0 .. p0}, Lzg/i;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lzg/i;->c()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v8 .. v16}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideHostAccidentAddress$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v8, "response"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_f

    move-object v0, v4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v8, :cond_5

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v8, :cond_6

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_6
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v8, :cond_7

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_7
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_a

    iput-object v1, v2, Lzg/i$d;->a:Lzg/i;

    move-object/from16 v4, p1

    iput-object v4, v2, Lzg/i$d;->b:Ljava/lang/String;

    iput v6, v2, Lzg/i$d;->e:I

    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    move-object v6, v1

    :goto_3
    iput-object v7, v2, Lzg/i$d;->a:Lzg/i;

    iput-object v7, v2, Lzg/i$d;->b:Ljava/lang/String;

    iput v5, v2, Lzg/i$d;->e:I

    invoke-virtual {v6, v4, v2}, Lzg/i;->i(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    :goto_4
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_a
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;->getHostReportLocationData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationData;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v7

    :cond_b
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    :cond_d
    :goto_5
    if-eqz v6, :cond_e

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_f
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_10

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_11
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_12
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    return-object v0
.end method

.method public final j(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    instance-of v2, v0, Lzg/i$e;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lzg/i$e;

    iget v3, v2, Lzg/i$e;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lzg/i$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lzg/i$e;

    invoke-direct {v2, v1, v0}, Lzg/i$e;-><init>(Lzg/i;Lp9/d;)V

    :goto_0
    move-object v12, v2

    iget-object v0, v12, Lzg/i$e;->c:Ljava/lang/Object;

    sget-object v13, Lq9/a;->a:Lq9/a;

    iget v2, v12, Lzg/i$e;->e:I

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v15, :cond_2

    if-ne v2, v14, :cond_1

    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v12, Lzg/i$e;->b:Ljava/lang/String;

    iget-object v3, v12, Lzg/i$e;->a:Lzg/i;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v14, v10

    goto/16 :goto_6

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lzg/i;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lzg/i;->l()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v10

    :goto_1
    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lzg/i;->b()Lud/d0;

    move-result-object v2

    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v2, v3}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v2

    check-cast v16, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/16 v25, 0x0

    if-eqz v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_7

    const/16 v17, 0x0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lzg/i;->d()Ljava/lang/String;

    move-result-object v19

    const-string v20, "android"

    invoke-virtual/range {p0 .. p0}, Lzg/i;->e()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lzg/i;->c()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-static/range {v16 .. v24}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideMediaList$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0

    move-object v14, v10

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lzg/i;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual/range {p0 .. p0}, Lzg/i;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lzg/i;->c()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v0, 0x0

    move-object/from16 v2, v16

    move-object/from16 v4, p1

    move-object v14, v10

    move-object v10, v0

    invoke-static/range {v2 .. v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideMediaList$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v3, "response"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_12

    move-object v0, v2

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v3, :cond_8

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_8
    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v3, :cond_9

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_9
    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v3, :cond_a

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_a
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_d

    iput-object v1, v12, Lzg/i$e;->a:Lzg/i;

    iput-object v11, v12, Lzg/i$e;->b:Ljava/lang/String;

    iput v15, v12, Lzg/i$e;->e:I

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3, v12}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_b

    return-object v13

    :cond_b
    move-object v3, v1

    move-object v2, v11

    :goto_6
    iput-object v14, v12, Lzg/i$e;->a:Lzg/i;

    iput-object v14, v12, Lzg/i$e;->b:Ljava/lang/String;

    const/4 v4, 0x2

    iput v4, v12, Lzg/i$e;->e:I

    invoke-virtual {v3, v2, v12}, Lzg/i;->j(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_c

    return-object v13

    :cond_c
    :goto_7
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :cond_d
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;->getMediaListData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListData;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_e
    move-object v10, v14

    :goto_8
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    const/4 v15, 0x0

    :cond_10
    :goto_9
    if-eqz v15, :cond_11

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_11
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_12
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_13

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_13
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_14
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_15
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_b
    return-object v0
.end method

.method public final k(Lp9/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lzg/i$f;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lzg/i$f;

    iget v3, v2, Lzg/i$f;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lzg/i$f;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lzg/i$f;

    invoke-direct {v2, v1, v0}, Lzg/i$f;-><init>(Lzg/i;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lzg/i$f;->b:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lzg/i$f;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lzg/i$f;->a:Lzg/i;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_a

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lzg/i;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lzg/i;->l()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v7

    :goto_1
    if-eqz v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lzg/i;->b()Lud/d0;

    move-result-object v4

    const-class v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v4, v8}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    const-string v8, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lzg/i;->d()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android"

    invoke-virtual/range {p0 .. p0}, Lzg/i;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lzg/i;->c()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideReportDetailsById$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v8, "response"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_1a

    move-object v0, v4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v8, :cond_10

    move-object v0, v4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;->getReportDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;->getPartiesObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PartiesObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PartiesObject;->getReportDetailMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailMap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailMap;->getReportDetailSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->getReportDetailMainInfo()Leg/i;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v7

    :goto_3
    if-eqz v0, :cond_f

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->beginTransaction()V

    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v2, v3}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v3

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-direct {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;-><init>()V

    invoke-virtual {v0}, Leg/i;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setRole(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setReportStatus(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setConsolidatedStatus(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setUpdateDate(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setCreateDate(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->f()Leg/g;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Leg/g;->a()Leg/l;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Leg/l;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_6
    move-object v6, v7

    :goto_4
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setReportId(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->f()Leg/g;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Leg/g;->a()Leg/l;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Leg/l;->c()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_7
    move-object v6, v7

    :goto_5
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->f()Leg/g;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Leg/g;->a()Leg/l;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Leg/l;->c()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_8
    move-object v6, v7

    :goto_6
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setReportPartyStatus(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setAccidentDate(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->e()Leg/c;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Leg/c;->a()Leg/m;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Leg/m;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_9
    move-object v6, v7

    :goto_7
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setCity(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->e()Leg/c;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Leg/c;->a()Leg/m;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Leg/m;->d()Ljava/lang/String;

    move-result-object v7

    :cond_a
    invoke-virtual {v5, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->j()Leg/x;

    move-result-object v6

    invoke-virtual {v6}, Leg/x;->a()Leg/t;

    move-result-object v6

    invoke-virtual {v6}, Leg/t;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setVehiclePlateCityCode(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->j()Leg/x;

    move-result-object v6

    invoke-virtual {v6}, Leg/x;->a()Leg/t;

    move-result-object v6

    invoke-virtual {v6}, Leg/t;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setVehiclePlateNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->f()Leg/g;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Leg/g;->a()Leg/l;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Leg/l;->b()Leg/p;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Leg/p;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leg/o;

    new-instance v7, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    invoke-direct {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;-><init>()V

    invoke-virtual {v6}, Leg/o;->a()Leg/n;

    move-result-object v8

    invoke-virtual {v8}, Leg/n;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->setComment(Ljava/lang/String;)V

    invoke-virtual {v6}, Leg/o;->a()Leg/n;

    move-result-object v8

    invoke-virtual {v8}, Leg/n;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->setName(Ljava/lang/String;)V

    invoke-virtual {v6}, Leg/o;->a()Leg/n;

    move-result-object v8

    invoke-virtual {v8}, Leg/n;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->setIdentityType(Ljava/lang/String;)V

    invoke-virtual {v6}, Leg/o;->a()Leg/n;

    move-result-object v8

    invoke-virtual {v8}, Leg/n;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->setIdentityNumber(Ljava/lang/String;)V

    invoke-virtual {v6}, Leg/o;->a()Leg/n;

    move-result-object v8

    invoke-virtual {v8}, Leg/n;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->setReportPartyId(Ljava/lang/String;)V

    invoke-virtual {v6}, Leg/o;->a()Leg/n;

    move-result-object v8

    invoke-virtual {v8}, Leg/n;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->setPartyRole(Ljava/lang/String;)V

    invoke-virtual {v6}, Leg/o;->a()Leg/n;

    move-result-object v6

    invoke-virtual {v6}, Leg/n;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->setPlate(Ljava/lang/String;)V

    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getParticipants()Lio/realm/q0;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6, v7}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    if-nez v3, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setReport(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;)V

    :goto_9
    if-eqz v3, :cond_e

    invoke-virtual {v2, v3}, Lio/realm/g0;->B(Lio/realm/s0;)V

    :cond_e
    invoke-virtual {v2}, Lio/realm/a;->c()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_10
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v8, :cond_11

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_11
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v8, :cond_12

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_12
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_15

    iput-object v1, v2, Lzg/i$f;->a:Lzg/i;

    iput v6, v2, Lzg/i$f;->d:I

    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_13

    return-object v3

    :cond_13
    move-object v4, v1

    :goto_a
    iput-object v7, v2, Lzg/i$f;->a:Lzg/i;

    iput v5, v2, Lzg/i$f;->d:I

    invoke-virtual {v4, v2}, Lzg/i;->k(Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_14

    return-object v3

    :cond_14
    :goto_b
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :cond_15
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;->getReportDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v7

    :cond_16
    if-eqz v7, :cond_18

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_c

    :cond_17
    const/4 v6, 0x0

    :cond_18
    :goto_c
    if-eqz v6, :cond_19

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_19
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_1a
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_1b

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_1b
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_1c
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_1d
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_e
    return-object v0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v0, p4

    const-string v2, "partyId "

    instance-of v3, v0, Lzg/i$g;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lzg/i$g;

    iget v4, v3, Lzg/i$g;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lzg/i$g;->g:I

    goto :goto_0

    :cond_0
    new-instance v3, Lzg/i$g;

    invoke-direct {v3, v1, v0}, Lzg/i$g;-><init>(Lzg/i;Lp9/d;)V

    :goto_0
    move-object v12, v3

    iget-object v0, v12, Lzg/i$g;->e:Ljava/lang/Object;

    sget-object v11, Lq9/a;->a:Lq9/a;

    iget v3, v12, Lzg/i$g;->g:I

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v8, :cond_2

    if-ne v3, v10, :cond_1

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
    iget-object v2, v12, Lzg/i$g;->d:Ljava/lang/String;

    iget-object v3, v12, Lzg/i$g;->c:Ljava/lang/String;

    iget-object v4, v12, Lzg/i$g;->b:Ljava/lang/String;

    iget-object v5, v12, Lzg/i$g;->a:Lzg/i;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v14, v3

    move-object v13, v4

    move-object v4, v11

    move-object v3, v12

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lzg/i;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lzg/i;->l()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v9

    :goto_1
    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lzg/i;->b()Lud/d0;

    move-result-object v0

    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v0, v3}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    sget-object v3, Lyd/a;->a:Lyd/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reportId "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reportPartyId "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lzg/i;->d()Ljava/lang/String;

    move-result-object v16

    const-string v17, "android"

    invoke-virtual/range {p0 .. p0}, Lzg/i;->e()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lzg/i;->c()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v2, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    const/16 v22, 0x0

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v23, v11

    move/from16 v11, v20

    move-object v15, v12

    move-object/from16 v12, v21

    invoke-static/range {v2 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveReport$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v3, "response"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_f

    move-object v0, v2

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v3, :cond_5

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_5
    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v3, :cond_6

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_6
    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v3, :cond_7

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_7
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_a

    iput-object v1, v15, Lzg/i$g;->a:Lzg/i;

    iput-object v13, v15, Lzg/i$g;->b:Ljava/lang/String;

    iput-object v14, v15, Lzg/i$g;->c:Ljava/lang/String;

    move-object/from16 v2, p3

    move-object v3, v15

    iput-object v2, v3, Lzg/i$g;->d:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lzg/i$g;->g:I

    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5, v3}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v4, v23

    if-ne v0, v4, :cond_8

    return-object v4

    :cond_8
    move-object v5, v1

    :goto_3
    const/4 v6, 0x0

    iput-object v6, v3, Lzg/i$g;->a:Lzg/i;

    iput-object v6, v3, Lzg/i$g;->b:Ljava/lang/String;

    iput-object v6, v3, Lzg/i$g;->c:Ljava/lang/String;

    iput-object v6, v3, Lzg/i$g;->d:Ljava/lang/String;

    const/4 v6, 0x2

    iput v6, v3, Lzg/i$g;->g:I

    invoke-virtual {v5, v13, v14, v2, v3}, Lzg/i;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    return-object v4

    :cond_9
    :goto_4
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_a
    const/4 v4, 0x1

    const/4 v6, 0x0

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;->getSaveReportData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportData;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_b
    move-object v9, v6

    :goto_5
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_e

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v9}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_f
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_10

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_11
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_12
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    return-object v0
.end method
