.class public final Lqg/f;
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

.method public static b(I)Ljava/util/List;
    .locals 2

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->m()V

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-virtual {v0, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "categoryCode"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    move-result-object p0

    invoke-static {p0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILp9/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lqg/f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lqg/f$a;

    iget v1, v0, Lqg/f$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lqg/f$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lqg/f$a;

    invoke-direct {v0, p0, p2}, Lqg/f$a;-><init>(Lqg/f;Lp9/d;)V

    :goto_0
    iget-object p2, v0, Lqg/f$a;->a:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lqg/f$a;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    :try_start_0
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_5

    :cond_3
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    :try_start_1
    invoke-static {p1}, Lqg/f;->b(I)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_11

    .line 1
    iget-object p2, p0, Lqg/f;->e:Lgf/b;

    if-eqz p2, :cond_10

    .line 2
    invoke-virtual {p2}, Lgf/b;->a()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 3
    iget-object p2, p0, Lqg/f;->a:Lud/d0;

    if-eqz p2, :cond_e

    .line 4
    const-class v3, Lqg/a;

    invoke-virtual {p2, v3}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    const-string v3, "mApiClient.create(Instit\u2026nCityListAPI::class.java)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p2

    check-cast v5, Lqg/a;

    const-string v6, "CityList"

    .line 5
    iget-object v8, p0, Lqg/f;->b:Ljava/lang/String;

    if-eqz v8, :cond_d

    const-string v9, "android"

    .line 6
    iget-object v10, p0, Lqg/f;->d:Ljava/lang/String;

    if-eqz v10, :cond_c

    .line 7
    iget-object v11, p0, Lqg/f;->c:Ljava/lang/String;

    if-eqz v11, :cond_b

    move v7, p1

    .line 8
    invoke-interface/range {v5 .. v11}, Lqg/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {p2}, Lud/b;->execute()Lud/c0;

    move-result-object p2

    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v5, "response"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v3, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {v3, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of p2, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz p2, :cond_9

    move-object p2, v3

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;

    invoke-static {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/CityListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object p2

    instance-of v5, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v5, :cond_6

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object p2

    const-string v5, "realm"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    invoke-virtual {p2, v5}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v5

    const-string v6, "cityId"

    invoke-virtual {v5, v6}, Lio/realm/RealmQuery;->g(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;

    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->getCityListData()Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    move-result-object v3

    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->getCityListContent()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;

    add-int/2addr v5, v4

    invoke-static {v7, v5, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/CityListExtensionKt;->prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;II)Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-instance v3, Landroidx/camera/core/impl/p;

    const/4 v5, 0x6

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/impl/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v3}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    sget-object p2, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 9
    sget-object p2, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 10
    new-instance v3, Lqg/f$b;

    invoke-direct {v3, p0, p1, v2}, Lqg/f$b;-><init>(Lqg/f;ILp9/d;)V

    iput v4, v0, Lqg/f$a;->c:I

    invoke-static {p2, v3, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_12

    return-object v1

    :cond_6
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz p1, :cond_7

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_7
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz p1, :cond_8

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    instance-of p1, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz p1, :cond_a

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    new-instance p1, Lj7/p;

    invoke-direct {p1}, Lj7/p;-><init>()V

    throw p1

    :cond_b
    const-string p1, "mAppMode"

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v2

    :cond_c
    const-string p1, "mLanguage"

    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v2

    :cond_d
    const-string p1, "mAppVersion"

    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v2

    :cond_e
    const-string p1, "mApiClient"

    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_f
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    const-string p1, "mNetworkHelper"

    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_11
    sget-object p2, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 18
    sget-object p2, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 19
    new-instance v4, Lqg/f$c;

    invoke-direct {v4, p0, p1, v2}, Lqg/f$c;-><init>(Lqg/f;ILp9/d;)V

    iput v3, v0, Lqg/f$a;->c:I

    invoke-static {p2, v4, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_12

    return-object v1

    :cond_12
    :goto_5
    move-object p1, p2

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    return-object p1
.end method
