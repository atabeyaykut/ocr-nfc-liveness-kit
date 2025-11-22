.class public final Lrh/b;
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
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    instance-of v2, v0, Lrh/b$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lrh/b$a;

    iget v3, v2, Lrh/b$a;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lrh/b$a;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lrh/b$a;

    invoke-direct {v2, v1, v0}, Lrh/b$a;-><init>(Lrh/b;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lrh/b$a;->e:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lrh/b$a;->g:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lrh/b$a;->d:Ljava/lang/String;

    iget-object v6, v2, Lrh/b$a;->c:Ljava/lang/String;

    iget-object v7, v2, Lrh/b$a;->b:Ljava/lang/String;

    iget-object v8, v2, Lrh/b$a;->a:Lrh/b;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v8

    move-object v8, v4

    move-object v4, v7

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lrh/b;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lrh/b;->b()Lud/d0;

    move-result-object v0

    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v0, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual/range {p0 .. p0}, Lrh/b;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lrh/b;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lrh/b;->c()Ljava/lang/String;

    move-result-object v15

    const/4 v8, 0x0

    const-string v13, "android"

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-static/range {v7 .. v17}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->downloadCompletedReport$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v7, "response"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_a

    move-object v0, v4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v7, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v7, :cond_4

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v4, :cond_5

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_5
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v4, :cond_6

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_6
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_9

    iput-object v1, v2, Lrh/b$a;->a:Lrh/b;

    move-object/from16 v4, p1

    iput-object v4, v2, Lrh/b$a;->b:Ljava/lang/String;

    move-object/from16 v7, p2

    iput-object v7, v2, Lrh/b$a;->c:Ljava/lang/String;

    move-object/from16 v8, p3

    iput-object v8, v2, Lrh/b$a;->d:Ljava/lang/String;

    iput v6, v2, Lrh/b$a;->g:I

    const-wide/16 v9, 0x7d0

    invoke-static {v9, v10, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object v0, v1

    move-object v6, v7

    :goto_2
    const/4 v7, 0x0

    iput-object v7, v2, Lrh/b$a;->a:Lrh/b;

    iput-object v7, v2, Lrh/b$a;->b:Ljava/lang/String;

    iput-object v7, v2, Lrh/b$a;->c:Ljava/lang/String;

    iput-object v7, v2, Lrh/b$a;->d:Ljava/lang/String;

    iput v5, v2, Lrh/b$a;->g:I

    invoke-virtual {v0, v4, v6, v8, v2}, Lrh/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    :goto_3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto :goto_4

    :cond_9
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_b

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_c
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method

.method public final b()Lud/d0;
    .locals 1

    iget-object v0, p0, Lrh/b;->a:Lud/d0;

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

    iget-object v0, p0, Lrh/b;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lrh/b;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lrh/b;->d:Ljava/lang/String;

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

    iget-object v0, p0, Lrh/b;->e:Lgf/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mNetworkHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g(Lp9/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lrh/b$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lrh/b$b;

    iget v1, v0, Lrh/b$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lrh/b$b;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrh/b$b;

    invoke-direct {v0, p0, p1}, Lrh/b$b;-><init>(Lrh/b;Lp9/d;)V

    :goto_0
    iget-object p1, v0, Lrh/b$b;->b:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lrh/b$b;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lrh/b$b;->a:Lrh/b;

    :try_start_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :cond_3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual {p0}, Lrh/b;->f()Lgf/b;

    move-result-object p1

    invoke-virtual {p1}, Lgf/b;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lrh/b;->b()Lud/d0;

    move-result-object p1

    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {p1, v2}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lrh/b;->d()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android"

    invoke-virtual {p0}, Lrh/b;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lrh/b;->c()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideListOfCompletedReport$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    move-result-object p1

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v5, "response"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    instance-of p1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz p1, :cond_a

    move-object p1, v2

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportListModel;

    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object p1

    instance-of v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v5, :cond_4

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v2, :cond_5

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_5
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v2, :cond_6

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz p1, :cond_9

    iput-object p0, v0, Lrh/b$b;->a:Lrh/b;

    iput v4, v0, Lrh/b$b;->d:I

    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5, v0}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    :goto_2
    const/4 p1, 0x0

    iput-object p1, v0, Lrh/b$b;->a:Lrh/b;

    iput v3, v0, Lrh/b$b;->d:I

    invoke-virtual {v2, v0}, Lrh/b;->g(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto :goto_4

    :cond_9
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    instance-of p1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz p1, :cond_b

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_c
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    return-object p1
.end method

.method public final h(Lp9/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lrh/b$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lrh/b$c;

    iget v1, v0, Lrh/b$c;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lrh/b$c;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrh/b$c;

    invoke-direct {v0, p0, p1}, Lrh/b$c;-><init>(Lrh/b;Lp9/d;)V

    :goto_0
    iget-object p1, v0, Lrh/b$c;->b:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lrh/b$c;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lrh/b$c;->a:Lrh/b;

    :try_start_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :cond_3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual {p0}, Lrh/b;->f()Lgf/b;

    move-result-object p1

    invoke-virtual {p1}, Lgf/b;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lrh/b;->b()Lud/d0;

    move-result-object p1

    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {p1, v2}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lrh/b;->d()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android"

    invoke-virtual {p0}, Lrh/b;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lrh/b;->c()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideListOfReport$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    move-result-object p1

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v5, "response"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    instance-of p1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz p1, :cond_a

    move-object p1, v2

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportListModel;

    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object p1

    instance-of v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v5, :cond_4

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v2, :cond_5

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_5
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v2, :cond_6

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz p1, :cond_9

    iput-object p0, v0, Lrh/b$c;->a:Lrh/b;

    iput v4, v0, Lrh/b$c;->d:I

    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5, v0}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    :goto_2
    const/4 p1, 0x0

    iput-object p1, v0, Lrh/b$c;->a:Lrh/b;

    iput v3, v0, Lrh/b$c;->d:I

    invoke-virtual {v2, v0}, Lrh/b;->h(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto :goto_4

    :cond_9
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    instance-of p1, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz p1, :cond_b

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_c
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    return-object p1
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lrh/b$d;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lrh/b$d;

    iget v3, v2, Lrh/b$d;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lrh/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lrh/b$d;

    invoke-direct {v2, v1, v0}, Lrh/b$d;-><init>(Lrh/b;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lrh/b$d;->c:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lrh/b$d;->e:I

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

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lrh/b$d;->b:Ljava/lang/String;

    iget-object v7, v2, Lrh/b$d;->a:Lrh/b;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lrh/b;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lrh/b;->b()Lud/d0;

    move-result-object v0

    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v0, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lrh/b;->d()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android"

    invoke-virtual/range {p0 .. p0}, Lrh/b;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lrh/b;->c()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v8 .. v16}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideMergedReportDetails$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

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

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_e

    move-object v0, v4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v8, :cond_4

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v8, :cond_5

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_5
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v8, :cond_6

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_6
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_9

    iput-object v1, v2, Lrh/b$d;->a:Lrh/b;

    move-object/from16 v4, p1

    iput-object v4, v2, Lrh/b$d;->b:Ljava/lang/String;

    iput v7, v2, Lrh/b$d;->e:I

    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object v7, v1

    :goto_2
    iput-object v6, v2, Lrh/b$d;->a:Lrh/b;

    iput-object v6, v2, Lrh/b$d;->b:Ljava/lang/String;

    iput v5, v2, Lrh/b$d;->e:I

    invoke-virtual {v7, v4, v2}, Lrh/b;->i(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    :goto_3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_9
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;->getMergeDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailData;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v6

    :cond_a
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    :cond_c
    :goto_4
    if-eqz v7, :cond_d

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_e
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_f

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    return-object v0
.end method

.method public final j(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lrh/b$e;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lrh/b$e;

    iget v3, v2, Lrh/b$e;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lrh/b$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lrh/b$e;

    invoke-direct {v2, v1, v0}, Lrh/b$e;-><init>(Lrh/b;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lrh/b$e;->c:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lrh/b$e;->e:I

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

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lrh/b$e;->b:Ljava/lang/String;

    iget-object v6, v2, Lrh/b$e;->a:Lrh/b;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lrh/b;->f()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lrh/b;->b()Lud/d0;

    move-result-object v0

    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v0, v4}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lrh/b;->d()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android"

    invoke-virtual/range {p0 .. p0}, Lrh/b;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lrh/b;->c()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v8 .. v16}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->provideReportDetailsById$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

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

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_19

    move-object v0, v4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v8, :cond_f

    move-object v0, v4

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;->getReportDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;->getPartiesObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PartiesObject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PartiesObject;->getReportDetailMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailMap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailMap;->getReportDetailSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->getReportDetailMainInfo()Leg/i;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v7

    :goto_2
    if-eqz v0, :cond_e

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v2

    const-string v3, "realm"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v2, v3}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v3

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lio/realm/a;->k()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lio/realm/a;->beginTransaction()V

    :cond_5
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

    goto :goto_3

    :cond_6
    move-object v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setReportId(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->f()Leg/g;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Leg/g;->a()Leg/l;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Leg/l;->c()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    move-object v6, v7

    :goto_4
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0}, Leg/i;->f()Leg/g;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Leg/g;->a()Leg/l;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Leg/l;->c()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_8
    move-object v6, v7

    :goto_5
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

    goto :goto_6

    :cond_9
    move-object v6, v7

    :goto_6
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
    :goto_7
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

    goto :goto_7

    :cond_c
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setReport(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;)V

    invoke-virtual {v2, v3}, Lio/realm/g0;->B(Lio/realm/s0;)V

    invoke-virtual {v2}, Lio/realm/a;->c()V

    :cond_d
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :cond_f
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v8, :cond_10

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :cond_10
    instance-of v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v8, :cond_11

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :cond_11
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_14

    iput-object v1, v2, Lrh/b$e;->a:Lrh/b;

    move-object/from16 v4, p1

    iput-object v4, v2, Lrh/b$e;->b:Ljava/lang/String;

    iput v6, v2, Lrh/b$e;->e:I

    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_12

    return-object v3

    :cond_12
    move-object v6, v1

    :goto_8
    iput-object v7, v2, Lrh/b$e;->a:Lrh/b;

    iput-object v7, v2, Lrh/b$e;->b:Ljava/lang/String;

    iput v5, v2, Lrh/b$e;->e:I

    invoke-virtual {v6, v4, v2}, Lrh/b;->j(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_13

    return-object v3

    :cond_13
    :goto_9
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_14
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;->getReportDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v7

    :cond_15
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_a

    :cond_16
    const/4 v6, 0x0

    :cond_17
    :goto_a
    if-eqz v6, :cond_18

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_18
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_19
    instance-of v0, v4, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_1a

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_1a
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_1b
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_c
    return-object v0
.end method
