.class public final Lag/b;
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
.method public final a(IILjava/lang/Integer;Lp9/d;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v0, p4

    const-class v12, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    const-string v13, "categoryCode"

    const-string v14, "institutionCode"

    const-class v15, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    instance-of v2, v0, Lag/b$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lag/b$a;

    iget v3, v2, Lag/b$a;->c:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lag/b$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v2, Lag/b$a;

    invoke-direct {v2, v1, v0}, Lag/b$a;-><init>(Lag/b;Lp9/d;)V

    :goto_0
    move-object v9, v2

    iget-object v0, v9, Lag/b$a;->a:Ljava/lang/Object;

    sget-object v8, Lq9/a;->a:Lq9/a;

    iget v2, v9, Lag/b$a;->c:I

    const/4 v7, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_d

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 1
    :try_start_1
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->m()V

    invoke-virtual {v0, v15}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 4
    new-instance v2, Lag/b$b;

    invoke-direct {v2, v10, v11, v5}, Lag/b$b;-><init>(IILp9/d;)V

    iput v6, v9, Lag/b$a;->c:I

    invoke-static {v0, v2, v9}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_11

    return-object v8

    .line 5
    :cond_4
    iget-object v0, v1, Lag/b;->e:Lgf/b;

    if-eqz v0, :cond_1b

    .line 6
    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7
    iget-object v0, v1, Lag/b;->a:Lud/d0;

    if-eqz v0, :cond_19

    .line 8
    const-class v2, Lag/a;

    invoke-virtual {v0, v2}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "mApiClient.create(Instit\u2026ionDetailAPI::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lag/a;

    const-string v3, "InstitutionDetail"

    .line 9
    iget-object v0, v1, Lag/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v16, "android"

    .line 10
    iget-object v4, v1, Lag/b;->d:Ljava/lang/String;

    if-eqz v4, :cond_17

    move-object/from16 p4, v9

    .line 11
    iget-object v9, v1, Lag/b;->c:Ljava/lang/String;

    if-eqz v9, :cond_16

    move-object/from16 v17, v4

    move/from16 v4, p1

    move-object v1, v5

    move/from16 v5, p2

    const/4 v1, 0x1

    move-object v6, v0

    move-object/from16 v7, v16

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    move-object/from16 v19, p4

    .line 12
    invoke-interface/range {v2 .. v9}, Lag/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v3, "response"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_14

    move-object v0, v2

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/InstitutionListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v3, :cond_12

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->m()V

    const/4 v3, 0x2

    if-eq v11, v1, :cond_5

    if-eq v11, v3, :cond_5

    const/4 v4, 0x5

    if-eq v11, v4, :cond_5

    const/16 v4, 0x5a

    if-eq v11, v4, :cond_5

    const/16 v4, 0x5b

    if-eq v11, v4, :cond_5

    invoke-virtual {v0, v15}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v4

    .line 13
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 14
    invoke-virtual {v4, v5, v14}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 15
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 16
    invoke-virtual {v4, v5, v13}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v15}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v4

    .line 17
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 18
    invoke-virtual {v4, v5, v14}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 19
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 20
    invoke-virtual {v4, v5, v13}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    const-string v5, "cityCode"

    move-object/from16 v6, p3

    invoke-virtual {v4, v6, v5}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v4}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v4

    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    if-nez v4, :cond_6

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_6
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;->getInstitutionDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;

    move-result-object v2

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getIconName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->getBaseUrls()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lio/realm/a;->beginTransaction()V

    new-instance v7, Lio/realm/q0;

    invoke-direct {v7}, Lio/realm/q0;-><init>()V

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->getInstitutionDetailContent()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    move-result-object v8

    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;->getServiceList()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v3, "serviceCode"

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    if-eqz v14, :cond_9

    :try_start_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v17, v14

    check-cast v17, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    invoke-virtual {v0, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    move-result v15

    move-object/from16 p4, v8

    .line 21
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 22
    invoke-virtual {v1, v8, v3}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v1

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v8, p4

    const/4 v1, 0x1

    const/4 v3, 0x2

    goto :goto_4

    :cond_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    invoke-virtual {v0, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v14

    invoke-virtual {v13}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    move-result v13

    .line 23
    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 24
    invoke-virtual {v14, v15, v3}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v14}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v13

    check-cast v13, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v7, v13}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    const/4 v8, 0x0

    invoke-static {v3, v6, v8, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareResultWithIconName(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;Ljava/util/List;ZLjava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-result-object v3

    new-array v9, v8, [Lio/realm/v;

    invoke-virtual {v0, v3, v9}, Lio/realm/g0;->p(Lio/realm/s0;[Lio/realm/v;)Lio/realm/s0;

    move-result-object v3

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v7, v3}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    invoke-virtual {v0, v12}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v3, "contactId"

    invoke-virtual {v1, v3}, Lio/realm/RealmQuery;->g(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v8

    goto :goto_9

    :cond_c
    const/4 v8, 0x0

    :goto_9
    new-instance v1, Lio/realm/q0;

    invoke-direct {v1}, Lio/realm/q0;-><init>()V

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->getInstitutionDetailContent()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    move-result-object v2

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;->getContactList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;

    invoke-virtual {v0, v12}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    iget-object v13, v9, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    iget-object v14, v9, Lio/realm/RealmQuery;->b:Lio/realm/g0;

    :try_start_5
    const-string v15, "contactPhone"

    move-object/from16 p4, v2

    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getTelephone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v15, v2}, Lio/realm/RealmQuery;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v14}, Lio/realm/a;->b()V

    invoke-virtual {v13}, Lio/realm/internal/TableQuery;->g()V

    const-string v2, "contactWebsite"

    .line 26
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getWebsite()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v2, v15}, Lio/realm/RealmQuery;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v14}, Lio/realm/a;->b()V

    invoke-virtual {v13}, Lio/realm/internal/TableQuery;->g()V

    const-string v2, "contactAddress"

    .line 28
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Lio/realm/RealmQuery;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v2

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    if-nez v2, :cond_d

    const/4 v6, 0x1

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_e

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v2, p4

    goto :goto_a

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;

    const/4 v5, 0x1

    add-int/2addr v8, v5

    invoke-static {v3, v8, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/InstitutionExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;II)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Lio/realm/v;

    invoke-virtual {v0, v3, v6}, Lio/realm/g0;->p(Lio/realm/s0;[Lio/realm/v;)Lio/realm/s0;

    move-result-object v3

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-virtual {v1, v3}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_10
    invoke-virtual {v4, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setServiceList(Lio/realm/q0;)V

    invoke-virtual {v4, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setContactList(Lio/realm/q0;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setOpened(Z)V

    invoke-virtual {v0}, Lio/realm/a;->c()V

    invoke-virtual {v0}, Lio/realm/a;->m()V

    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 29
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 30
    new-instance v1, Lag/b$c;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v11, v2}, Lag/b$c;-><init>(IILp9/d;)V

    move-object/from16 v2, v19

    const/4 v3, 0x2

    iput v3, v2, Lag/b$a;->c:I

    invoke-static {v0, v1, v2}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    return-object v1

    :cond_11
    :goto_d
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto :goto_e

    :cond_12
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v0, :cond_13

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_13
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_14
    instance-of v0, v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_15

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_15
    new-instance v0, Lj7/p;

    invoke-direct {v0}, Lj7/p;-><init>()V

    throw v0

    :cond_16
    const-string v0, "mAppMode"

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_17
    move-object v1, v5

    const-string v0, "mLanguage"

    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v1

    :cond_18
    move-object v1, v5

    const-string v0, "mAppVersion"

    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v1

    :cond_19
    const-string v0, "mApiClient"

    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 35
    :cond_1a
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_1b
    const-string v0, "mNetworkHelper"

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 37
    :catch_1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_e
    return-object v0
.end method
