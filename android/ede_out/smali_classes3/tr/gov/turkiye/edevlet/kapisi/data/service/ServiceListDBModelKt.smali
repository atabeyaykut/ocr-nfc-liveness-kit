.class public final Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListDBModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001\u00a8\u0006\u0005"
    }
    d2 = {
        "convertNormalStatus",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        "isFavorite",
        "",
        "convertProgressItem",
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
.method public static final convertNormalStatus(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setConfigPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getInstitutionCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getInstitutionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getExplanation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setExplanation(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getIconName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setIconName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setLink(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrlCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrl(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavoriteProgress(Z)V

    return-object v0
.end method

.method public static final convertProgressItem(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setServiceName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setConfigPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getInstitutionCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getInstitutionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setInstitutionName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getExplanation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setExplanation(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getIconName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setIconName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setLink(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrlCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setBaseUrl(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavoriteProgress(Z)V

    return-object v0
.end method
