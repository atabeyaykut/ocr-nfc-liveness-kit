.class public final Lfh/b;
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
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    instance-of v2, v0, Lfh/b$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lfh/b$a;

    iget v3, v2, Lfh/b$a;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lfh/b$a;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lfh/b$a;

    invoke-direct {v2, v1, v0}, Lfh/b$a;-><init>(Lfh/b;Lp9/d;)V

    :goto_0
    iget-object v0, v2, Lfh/b$a;->e:Ljava/lang/Object;

    sget-object v3, Lq9/a;->a:Lq9/a;

    iget v4, v2, Lfh/b$a;->g:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v7, :cond_1

    :try_start_0
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_11

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lfh/b$a;->d:Ljava/lang/String;

    iget-object v5, v2, Lfh/b$a;->c:Ljava/lang/String;

    iget-object v8, v2, Lfh/b$a;->b:Ljava/lang/String;

    iget-object v9, v2, Lfh/b$a;->a:Lfh/b;

    :try_start_1
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v9

    move-object v9, v4

    move-object v4, v8

    goto/16 :goto_10

    :cond_3
    invoke-static {v0}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 1
    :try_start_2
    iget-object v0, v1, Lfh/b;->e:Lgf/b;

    if-eqz v0, :cond_26

    .line 2
    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_25

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

    if-eqz v4, :cond_24

    .line 4
    iget-object v0, v1, Lfh/b;->a:Lud/d0;

    if-eqz v0, :cond_23

    .line 5
    const-class v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v0, v8}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "mApiClient.create(Mobile\u2026entReportAPI::class.java)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v1, Lfh/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 7
    iget-object v8, v1, Lfh/b;->d:Ljava/lang/String;

    if-eqz v8, :cond_21

    .line 8
    iget-object v15, v1, Lfh/b;->c:Ljava/lang/String;

    if-eqz v15, :cond_20

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const-string v18, "android"

    const/16 v21, 0x45

    const/16 v22, 0x0

    move-object/from16 v13, p3

    move-object/from16 v14, p2

    move-object/from16 v20, v15

    move-object/from16 v15, p1

    move-object/from16 v17, v0

    move-object/from16 v19, v8

    .line 9
    invoke-static/range {v9 .. v22}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI$DefaultImpls;->saveDifferentVehicle$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MobileAccidentReportAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lud/b;

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

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v8, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    instance-of v0, v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz v0, :cond_1e

    move-object v0, v8

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object v0

    instance-of v9, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    const/4 v10, 0x0

    if-eqz v9, :cond_14

    move-object v0, v8

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;->getVehicleSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveData;->getVehicleSaveObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveObject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveObject;->getVehicleSaveMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveMap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveMap;->getVehicleSaveSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveSubData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveSubData;->getVehicleSaveInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_13

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v2

    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    invoke-direct {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;-><init>()V

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_8
    move-object v7, v6

    :goto_6
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setId(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getPlateNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_9
    move-object v7, v6

    :goto_7
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setPlateNumber(Ljava/lang/String;)V

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getPlateCityCode()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_a
    move-object v7, v6

    :goto_8
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setPlateCityCode(Ljava/lang/String;)V

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_b
    move-object v7, v6

    :goto_9
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setUpdatedDate(Ljava/lang/String;)V

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getDocumentSerialCode()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_c
    move-object v7, v6

    :goto_a
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setDocumentSerialCode(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getDocumentSerialNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_d
    move-object v7, v6

    :goto_b
    invoke-virtual {v3, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setDocumentSerialNumber(Ljava/lang/String;)V

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getOwnerDifferentFromDriver()Z

    move-result v7

    if-ne v7, v5, :cond_e

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setOwnerDifferentFromDriver(Z)V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getOwnerIdentityNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_f
    move-object v5, v6

    :goto_d
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setOwnerIdentityNumber(Ljava/lang/String;)V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :cond_10
    move-object v5, v6

    :goto_e
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setUpdatedDate(Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/realm/a;->beginTransaction()V

    new-instance v5, Lio/realm/q0;

    invoke-direct {v5}, Lio/realm/q0;-><init>()V

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveInfo;->getPolicies()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicies;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicies;->getPolicyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v9, v10, 0x1

    if-ltz v10, :cond_11

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyArray;

    new-instance v11, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    invoke-direct {v11}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setId(Ljava/lang/String;)V

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyArray;->getPolicyInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyInfo;

    move-result-object v10

    invoke-virtual {v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setCompanyName(Ljava/lang/String;)V

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyArray;->getPolicyInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyInfo;

    move-result-object v10

    invoke-virtual {v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyInfo;->getStartDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setStartDate(Ljava/lang/String;)V

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyArray;->getPolicyInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyInfo;

    move-result-object v10

    invoke-virtual {v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyInfo;->getEndDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setEndDate(Ljava/lang/String;)V

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyArray;->getPolicyInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyInfo;

    move-result-object v7

    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehiclePolicyInfo;->getProductCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->setProductCode(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    move v10, v9

    goto :goto_f

    :cond_11
    invoke-static {}, Lb8/f;->k0()V

    throw v6

    :catch_1
    move-exception v0

    goto/16 :goto_13

    :cond_12
    invoke-virtual {v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->setPolicies(Lio/realm/q0;)V

    invoke-virtual {v4, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setVehicle(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;)V

    invoke-virtual {v2, v4}, Lio/realm/g0;->B(Lio/realm/s0;)V

    invoke-virtual {v2}, Lio/realm/a;->c()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_13
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :cond_14
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz v4, :cond_15

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :cond_15
    instance-of v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz v4, :cond_16

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :cond_16
    instance-of v0, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    if-eqz v0, :cond_19

    iput-object v1, v2, Lfh/b$a;->a:Lfh/b;

    move-object/from16 v4, p1

    iput-object v4, v2, Lfh/b$a;->b:Ljava/lang/String;

    move-object/from16 v8, p2

    iput-object v8, v2, Lfh/b$a;->c:Ljava/lang/String;

    move-object/from16 v9, p3

    iput-object v9, v2, Lfh/b$a;->d:Ljava/lang/String;

    iput v5, v2, Lfh/b$a;->g:I

    const-wide/16 v10, 0x5dc

    invoke-static {v10, v11, v2}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_17

    return-object v3

    :cond_17
    move-object v0, v1

    move-object v5, v8

    :goto_10
    iput-object v6, v2, Lfh/b$a;->a:Lfh/b;

    iput-object v6, v2, Lfh/b$a;->b:Ljava/lang/String;

    iput-object v6, v2, Lfh/b$a;->c:Ljava/lang/String;

    iput-object v6, v2, Lfh/b$a;->d:Ljava/lang/String;

    iput v7, v2, Lfh/b$a;->g:I

    invoke-virtual {v0, v4, v5, v9, v2}, Lfh/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_18

    return-object v3

    :cond_18
    :goto_11
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    goto/16 :goto_14

    :cond_19
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;->getVehicleSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveData;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveData;->getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->getMessageText()Ljava/lang/String;

    move-result-object v6

    :cond_1a
    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_12

    :cond_1b
    const/4 v5, 0x0

    :cond_1c
    :goto_12
    if-eqz v5, :cond_1d

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_1d
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-direct {v2, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_1e
    instance-of v0, v8, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz v0, :cond_1f

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_1f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_20
    const-string v0, "mAppMode"

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6

    :cond_21
    const-string v0, "mLanguage"

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6

    :cond_22
    const-string v0, "mAppVersion"

    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6

    :cond_23
    const-string v0, "mApiClient"

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6

    .line 14
    :cond_24
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_25
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_26
    const-string v0, "mNetworkHelper"

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 16
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_14
    return-object v0
.end method
