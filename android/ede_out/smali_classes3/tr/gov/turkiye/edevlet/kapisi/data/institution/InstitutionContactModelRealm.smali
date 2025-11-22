.class public Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/s0;
.implements Lio/realm/n1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008+\u0010,R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0013\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R$\u0010\u0016\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u000e\u001a\u0004\u0008\u0017\u0010\u0010\"\u0004\u0008\u0018\u0010\u0012R$\u0010\u0019\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u000e\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012R$\u0010\u001c\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u000e\u001a\u0004\u0008\u001d\u0010\u0010\"\u0004\u0008\u001e\u0010\u0012R$\u0010\u001f\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u000e\u001a\u0004\u0008 \u0010\u0010\"\u0004\u0008!\u0010\u0012R$\u0010\"\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u000e\u001a\u0004\u0008#\u0010\u0010\"\u0004\u0008$\u0010\u0012R\"\u0010&\u001a\u00020%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008&\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;",
        "Lio/realm/s0;",
        "",
        "contactId",
        "I",
        "getContactId",
        "()I",
        "setContactId",
        "(I)V",
        "institutionCode",
        "getInstitutionCode",
        "setInstitutionCode",
        "",
        "contactAddress",
        "Ljava/lang/String;",
        "getContactAddress",
        "()Ljava/lang/String;",
        "setContactAddress",
        "(Ljava/lang/String;)V",
        "contactEmail",
        "getContactEmail",
        "setContactEmail",
        "contactName",
        "getContactName",
        "setContactName",
        "contactWebsite",
        "getContactWebsite",
        "setContactWebsite",
        "contactPhone",
        "getContactPhone",
        "setContactPhone",
        "contactLongitude",
        "getContactLongitude",
        "setContactLongitude",
        "contactLatitude",
        "getContactLatitude",
        "setContactLatitude",
        "",
        "isMainInstitution",
        "Z",
        "()Z",
        "setMainInstitution",
        "(Z)V",
        "<init>",
        "()V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private contactAddress:Ljava/lang/String;

.field private contactEmail:Ljava/lang/String;

.field private contactId:I

.field private contactLatitude:Ljava/lang/String;

.field private contactLongitude:Ljava/lang/String;

.field private contactName:Ljava/lang/String;

.field private contactPhone:Ljava/lang/String;

.field private contactWebsite:Ljava/lang/String;

.field private institutionCode:I

.field private isMainInstitution:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->a()V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactAddress(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactEmail(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactWebsite(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactPhone(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactLongitude(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactLatitude(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getContactAddress()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$contactAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContactEmail()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$contactEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContactId()I
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$contactId()I

    move-result v0

    return v0
.end method

.method public final getContactLatitude()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$contactLatitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContactLongitude()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$contactLongitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContactName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$contactName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContactPhone()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$contactPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContactWebsite()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$contactWebsite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstitutionCode()I
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$institutionCode()I

    move-result v0

    return v0
.end method

.method public final isMainInstitution()Z
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmGet$isMainInstitution()Z

    move-result v0

    return v0
.end method

.method public realmGet$contactAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactAddress:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$contactEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactEmail:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$contactId()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactId:I

    return v0
.end method

.method public realmGet$contactLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$contactLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$contactName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$contactPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactPhone:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$contactWebsite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$institutionCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->institutionCode:I

    return v0
.end method

.method public realmGet$isMainInstitution()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->isMainInstitution:Z

    return v0
.end method

.method public realmSet$contactAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactAddress:Ljava/lang/String;

    return-void
.end method

.method public realmSet$contactEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactEmail:Ljava/lang/String;

    return-void
.end method

.method public realmSet$contactId(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactId:I

    return-void
.end method

.method public realmSet$contactLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactLatitude:Ljava/lang/String;

    return-void
.end method

.method public realmSet$contactLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactLongitude:Ljava/lang/String;

    return-void
.end method

.method public realmSet$contactName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$contactPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactPhone:Ljava/lang/String;

    return-void
.end method

.method public realmSet$contactWebsite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->contactWebsite:Ljava/lang/String;

    return-void
.end method

.method public realmSet$institutionCode(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->institutionCode:I

    return-void
.end method

.method public realmSet$isMainInstitution(Z)V
    .locals 0

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->isMainInstitution:Z

    return-void
.end method

.method public final setContactAddress(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactAddress(Ljava/lang/String;)V

    return-void
.end method

.method public final setContactEmail(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactEmail(Ljava/lang/String;)V

    return-void
.end method

.method public final setContactId(I)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactId(I)V

    return-void
.end method

.method public final setContactLatitude(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactLatitude(Ljava/lang/String;)V

    return-void
.end method

.method public final setContactLongitude(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactLongitude(Ljava/lang/String;)V

    return-void
.end method

.method public final setContactName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactName(Ljava/lang/String;)V

    return-void
.end method

.method public final setContactPhone(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactPhone(Ljava/lang/String;)V

    return-void
.end method

.method public final setContactWebsite(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$contactWebsite(Ljava/lang/String;)V

    return-void
.end method

.method public final setInstitutionCode(I)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$institutionCode(I)V

    return-void
.end method

.method public final setMainInstitution(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->realmSet$isMainInstitution(Z)V

    return-void
.end method
