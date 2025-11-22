.class public final Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a#\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006\u001a \u0010\u0007\u001a\u00020\u0008*\u00020\t2\u0006\u0010\n\u001a\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u001a(\u0010\u0007\u001a\u00020\u0008*\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\r\u001a\u00020\u000e\u001a(\u0010\u000f\u001a\u00020\u0008*\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0001\u001a\u0012\u0010\u0011\u001a\u00020\u0008*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005\u00a8\u0006\u0014"
    }
    d2 = {
        "prepareBaseUrl",
        "",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
        "code",
        "",
        "(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/String;",
        "prepareResult",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;",
        "iconBaseUrl",
        "baseUrlList",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;",
        "favoriteStatus",
        "",
        "prepareResultWithIconName",
        "iconName",
        "prepareSearchService",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
        "serviceCode",
        "data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final prepareBaseUrl(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;->getCode()I

    move-result v2

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public static final prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;Ljava/lang/String;Ljava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconBaseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrlList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getServiceCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setConfigPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getInstitutionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getInstitutionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getExplanation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setExplanation(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getIconName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setIconName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getConfigPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setLink(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrlCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareBaseUrl(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrl(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    return-object v0
.end method

.method public static final prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;Ljava/lang/String;Ljava/util/List;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
            ">;Z)",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconBaseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrlList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setConfigPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getInstitutionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getInstitutionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getExplanation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setExplanation(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getIconName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setIconName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setLink(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrlCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareBaseUrl(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    return-object v0
.end method

.method public static final prepareResultWithIconName(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;Ljava/util/List;ZLjava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrlList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setConfigPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getInstitutionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getInstitutionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getExplanation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setExplanation(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setIconName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getLink()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setLink(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrlCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareBaseUrl(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    return-object v0
.end method

.method public static final prepareSearchService(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;I)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceFolderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setConfigPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getInstitutionCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmc/i;->t(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getInstitutionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionName(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setExplanation(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setIconName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setLink(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrlCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrl(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    return-object v0
.end method
