.class public Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;
.super Lio/realm/v0;
.source "SourceFile"

# interfaces
.implements Lio/realm/d2;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008*\u0010+R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0004\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0004\u001a\u0004\u0008\u001a\u0010\u0006\"\u0004\u0008\u001b\u0010\u0008R$\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0004\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008\u001e\u0010\u0008R$\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0004\u001a\u0004\u0008 \u0010\u0006\"\u0004\u0008!\u0010\u0008R*\u0010$\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;",
        "Lio/realm/v0;",
        "",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "plateCityCode",
        "getPlateCityCode",
        "setPlateCityCode",
        "plateNumber",
        "getPlateNumber",
        "setPlateNumber",
        "",
        "ownerDifferentFromDriver",
        "Z",
        "getOwnerDifferentFromDriver",
        "()Z",
        "setOwnerDifferentFromDriver",
        "(Z)V",
        "documentSerialCode",
        "getDocumentSerialCode",
        "setDocumentSerialCode",
        "documentSerialNumber",
        "getDocumentSerialNumber",
        "setDocumentSerialNumber",
        "ownerIdentityNumber",
        "getOwnerIdentityNumber",
        "setOwnerIdentityNumber",
        "updatedDate",
        "getUpdatedDate",
        "setUpdatedDate",
        "Lio/realm/q0;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;",
        "policies",
        "Lio/realm/q0;",
        "getPolicies",
        "()Lio/realm/q0;",
        "setPolicies",
        "(Lio/realm/q0;)V",
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
.field private documentSerialCode:Ljava/lang/String;

.field private documentSerialNumber:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ownerDifferentFromDriver:Z

.field private ownerIdentityNumber:Ljava/lang/String;

.field private plateCityCode:Ljava/lang/String;

.field private plateNumber:Ljava/lang/String;

.field private policies:Lio/realm/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;",
            ">;"
        }
    .end annotation
.end field

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
.method public final getDocumentSerialCode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmGet$documentSerialCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDocumentSerialNumber()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmGet$documentSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerDifferentFromDriver()Z
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmGet$ownerDifferentFromDriver()Z

    move-result v0

    return v0
.end method

.method public final getOwnerIdentityNumber()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmGet$ownerIdentityNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlateCityCode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmGet$plateCityCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlateNumber()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmGet$plateNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPolicies()Lio/realm/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmGet$policies()Lio/realm/q0;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdatedDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmGet$updatedDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$documentSerialCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->documentSerialCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$documentSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->documentSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$ownerDifferentFromDriver()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->ownerDifferentFromDriver:Z

    return v0
.end method

.method public realmGet$ownerIdentityNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->ownerIdentityNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$plateCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->plateCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$plateNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->plateNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$policies()Lio/realm/q0;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->policies:Lio/realm/q0;

    return-object v0
.end method

.method public realmGet$updatedDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$documentSerialCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->documentSerialCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$documentSerialNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->documentSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$ownerDifferentFromDriver(Z)V
    .locals 0

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->ownerDifferentFromDriver:Z

    return-void
.end method

.method public realmSet$ownerIdentityNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->ownerIdentityNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$plateCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->plateCityCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$plateNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->plateNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$policies(Lio/realm/q0;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->policies:Lio/realm/q0;

    return-void
.end method

.method public realmSet$updatedDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public final setDocumentSerialCode(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmSet$documentSerialCode(Ljava/lang/String;)V

    return-void
.end method

.method public final setDocumentSerialNumber(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmSet$documentSerialNumber(Ljava/lang/String;)V

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public final setOwnerDifferentFromDriver(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmSet$ownerDifferentFromDriver(Z)V

    return-void
.end method

.method public final setOwnerIdentityNumber(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmSet$ownerIdentityNumber(Ljava/lang/String;)V

    return-void
.end method

.method public final setPlateCityCode(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmSet$plateCityCode(Ljava/lang/String;)V

    return-void
.end method

.method public final setPlateNumber(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmSet$plateNumber(Ljava/lang/String;)V

    return-void
.end method

.method public final setPolicies(Lio/realm/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmSet$policies(Lio/realm/q0;)V

    return-void
.end method

.method public final setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->realmSet$updatedDate(Ljava/lang/String;)V

    return-void
.end method
