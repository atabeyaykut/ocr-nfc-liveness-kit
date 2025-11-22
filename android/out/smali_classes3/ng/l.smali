.class public final Lng/l;
.super Lgf/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lng/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgf/e<",
        "Lng/l$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lng/h;

.field public final c:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method public constructor <init>(Lng/h;)V
    .locals 1

    .line 1
    const-string v0, "searchRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lng/l;->b:Lng/h;

    .line 10
    .line 11
    sget-object p1, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 12
    .line 13
    iput-object p1, p0, Lng/l;->c:Lkotlinx/coroutines/scheduling/b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/scheduling/b;
    .locals 1

    iget-object v0, p0, Lng/l;->c:Lkotlinx/coroutines/scheduling/b;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lng/l$a;

    .line 1
    iget-object v2, p1, Lng/l$a;->a:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lng/l;->b:Lng/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "query"

    .line 3
    invoke-static {v2, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object p2, p1, Lng/h;->e:Lgf/b;

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 5
    invoke-virtual {p2}, Lgf/b;->a()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 6
    iget-object p2, p1, Lng/h;->a:Lud/d0;

    if-eqz p2, :cond_9

    .line 7
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceListAPI;

    invoke-virtual {p2, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "mApiClient.create(Search\u2026rviceListAPI::class.java)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceListAPI;

    const/4 v1, 0x1

    .line 8
    iget-object v3, p1, Lng/h;->b:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v4, "android"

    .line 9
    iget-object v5, p1, Lng/h;->d:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 10
    iget-object v6, p1, Lng/h;->c:Ljava/lang/String;

    if-eqz v6, :cond_6

    move-object v0, p2

    .line 11
    invoke-interface/range {v0 .. v6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceListAPI;->searchService(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    move-result-object p1

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    invoke-direct {p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    if-eqz p1, :cond_4

    move-object p1, p2

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;

    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceListExtensionKt;->completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;

    move-result-object p1

    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    if-eqz v0, :cond_1

    move-object p1, p2

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;->getSearchServiceData()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceData;

    move-result-object p1

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceData;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;->getSearchServiceData()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceData;->getBaseUrls()Ljava/util/List;

    move-result-object v0

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;->getSearchServiceData()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceData;

    move-result-object p2

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceData;->getContent()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getIconName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".webp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareBaseUrl(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->setBaseUrl(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-direct {p1, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    instance-of p2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    if-eqz p2, :cond_2

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    if-eqz p1, :cond_3

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    instance-of p1, p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    if-eqz p1, :cond_5

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    new-instance p1, Lj7/p;

    invoke-direct {p1}, Lj7/p;-><init>()V

    throw p1

    :cond_6
    const-string p1, "mAppMode"

    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string p1, "mLanguage"

    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string p1, "mAppVersion"

    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string p1, "mApiClient"

    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_a
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_b
    const-string p1, "mNetworkHelper"

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 18
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    return-object p1
.end method
