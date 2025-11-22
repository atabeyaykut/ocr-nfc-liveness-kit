.class public final Ltr/gov/turkiye/edevlet/kapisi/data/extension/InstitutionExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u001a*\u0010\u0000\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "prepareResult",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;",
        "id",
        "",
        "institutionCode",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;",
        "iconBaseUrl",
        "",
        "categoryCode",
        "cityCode",
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
.method public static final prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;II)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;-><init>()V

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setContactId(I)V

    invoke-virtual {v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setInstitutionCode(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setContactName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setContactAddress(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getTelephone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setContactPhone(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getWebsite()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setContactWebsite(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setContactEmail(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getLatitude()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setContactLatitude(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->getLongitude()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setContactLongitude(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContact;->isMainInstitution()Z

    move-result p0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->setMainInstitution(Z)V

    return-object v0
.end method

.method public static final prepareResult(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;Ljava/lang/String;III)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconBaseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;-><init>()V

    invoke-virtual {v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setInstitutionId(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;->getInstitutionCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setInstitutionCode(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;->getInstitutionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setInstitutionName(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;->getIconName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setIconName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;->getTotalCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setServiceCount(I)V

    invoke-virtual {v0, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setCategoryCode(I)V

    invoke-virtual {v0, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setCityCode(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;->getSectionCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setSectionCode(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->setOpened(Z)V

    return-object v0
.end method
