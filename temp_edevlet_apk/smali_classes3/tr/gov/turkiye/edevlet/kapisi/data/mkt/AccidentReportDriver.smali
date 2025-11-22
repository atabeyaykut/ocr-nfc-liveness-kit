.class public Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;
.super Lio/realm/v0;
.source "SourceFile"

# interfaces
.implements Lio/realm/t1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008!\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008!\u0010\"R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0004\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0004\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R$\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0004\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008\u00a8\u0006#"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;",
        "Lio/realm/v0;",
        "",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "name",
        "getName",
        "setName",
        "surName",
        "getSurName",
        "setSurName",
        "birthDate",
        "getBirthDate",
        "setBirthDate",
        "phoneNumber",
        "getPhoneNumber",
        "setPhoneNumber",
        "identityNumber",
        "getIdentityNumber",
        "setIdentityNumber",
        "identityType",
        "getIdentityType",
        "setIdentityType",
        "createdDate",
        "getCreatedDate",
        "setCreatedDate",
        "updatedDate",
        "getUpdatedDate",
        "setUpdatedDate",
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
.field private birthDate:Ljava/lang/String;

.field private createdDate:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private identityNumber:Ljava/lang/String;

.field private identityType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private surName:Ljava/lang/String;

.field private updatedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/realm/v0;-><init>()V

    instance-of v0, p0, Lio/realm/internal/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getBirthDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmGet$birthDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCreatedDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmGet$createdDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentityNumber()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmGet$identityNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentityType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmGet$identityType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSurName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmGet$surName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdatedDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmGet$updatedDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$birthDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->birthDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$createdDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$identityNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->identityNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$identityType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->identityType:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$phoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$surName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->surName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updatedDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$birthDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->birthDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$createdDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->createdDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$identityNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->identityNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$identityType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->identityType:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$phoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$surName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->surName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updatedDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public final setBirthDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmSet$birthDate(Ljava/lang/String;)V

    return-void
.end method

.method public final setCreatedDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmSet$createdDate(Ljava/lang/String;)V

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public final setIdentityNumber(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmSet$identityNumber(Ljava/lang/String;)V

    return-void
.end method

.method public final setIdentityType(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmSet$identityType(Ljava/lang/String;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmSet$phoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method public final setSurName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmSet$surName(Ljava/lang/String;)V

    return-void
.end method

.method public final setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;->realmSet$updatedDate(Ljava/lang/String;)V

    return-void
.end method
