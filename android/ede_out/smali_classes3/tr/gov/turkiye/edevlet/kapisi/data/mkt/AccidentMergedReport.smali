.class public Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;
.super Lio/realm/v0;
.source "SourceFile"

# interfaces
.implements Lio/realm/r1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u00080\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008O\u0010PR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0004\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0004\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R$\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0004\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0004\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R$\u0010$\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0004\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R$\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0004\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R$\u0010*\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0004\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0004\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R$\u00100\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u0004\u001a\u0004\u00081\u0010\u0006\"\u0004\u00082\u0010\u0008R$\u00104\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R$\u0010:\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0004\u001a\u0004\u0008;\u0010\u0006\"\u0004\u0008<\u0010\u0008R$\u0010=\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010\u0004\u001a\u0004\u0008>\u0010\u0006\"\u0004\u0008?\u0010\u0008R\"\u0010A\u001a\u00020@8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR*\u0010I\u001a\n\u0012\u0004\u0012\u00020H\u0018\u00010G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010N\u00a8\u0006Q"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;",
        "Lio/realm/v0;",
        "",
        "reportPartyStatus",
        "Ljava/lang/String;",
        "getReportPartyStatus",
        "()Ljava/lang/String;",
        "setReportPartyStatus",
        "(Ljava/lang/String;)V",
        "accidentDate",
        "getAccidentDate",
        "setAccidentDate",
        "role",
        "getRole",
        "setRole",
        "reportId",
        "getReportId",
        "setReportId",
        "city",
        "getCity",
        "setCity",
        "district",
        "getDistrict",
        "setDistrict",
        "reportStatus",
        "getReportStatus",
        "setReportStatus",
        "plate",
        "getPlate",
        "setPlate",
        "expireDate",
        "getExpireDate",
        "setExpireDate",
        "reportPartyId",
        "getReportPartyId",
        "setReportPartyId",
        "id",
        "getId",
        "setId",
        "consolidatedStatus",
        "getConsolidatedStatus",
        "setConsolidatedStatus",
        "updateDate",
        "getUpdateDate",
        "setUpdateDate",
        "createDate",
        "getCreateDate",
        "setCreateDate",
        "status",
        "getStatus",
        "setStatus",
        "",
        "reportNumber",
        "Ljava/lang/Integer;",
        "getReportNumber",
        "()Ljava/lang/Integer;",
        "setReportNumber",
        "(Ljava/lang/Integer;)V",
        "vehiclePlateNumber",
        "getVehiclePlateNumber",
        "setVehiclePlateNumber",
        "vehiclePlateCityCode",
        "getVehiclePlateCityCode",
        "setVehiclePlateCityCode",
        "",
        "hasPdf",
        "Z",
        "getHasPdf",
        "()Z",
        "setHasPdf",
        "(Z)V",
        "Lio/realm/q0;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;",
        "participants",
        "Lio/realm/q0;",
        "getParticipants",
        "()Lio/realm/q0;",
        "setParticipants",
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
.field private accidentDate:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private consolidatedStatus:Ljava/lang/String;

.field private createDate:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private expireDate:Ljava/lang/String;

.field private hasPdf:Z

.field private id:Ljava/lang/String;

.field private participants:Lio/realm/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private plate:Ljava/lang/String;

.field private reportId:Ljava/lang/String;

.field private reportNumber:Ljava/lang/Integer;

.field private reportPartyId:Ljava/lang/String;

.field private reportPartyStatus:Ljava/lang/String;

.field private reportStatus:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private updateDate:Ljava/lang/String;

.field private vehiclePlateCityCode:Ljava/lang/String;

.field private vehiclePlateNumber:Ljava/lang/String;


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
    new-instance v0, Lio/realm/q0;

    invoke-direct {v0}, Lio/realm/q0;-><init>()V

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$participants(Lio/realm/q0;)V

    return-void
.end method


# virtual methods
.method public final getAccidentDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$accidentDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$city()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConsolidatedStatus()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$consolidatedStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCreateDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$createDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDistrict()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$district()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExpireDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHasPdf()Z
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$hasPdf()Z

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getParticipants()Lio/realm/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$participants()Lio/realm/q0;

    move-result-object v0

    return-object v0
.end method

.method public final getPlate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$plate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReportId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$reportId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReportNumber()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$reportNumber()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getReportPartyId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$reportPartyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReportPartyStatus()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$reportPartyStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReportStatus()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$reportStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$role()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdateDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$updateDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVehiclePlateCityCode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$vehiclePlateCityCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVehiclePlateNumber()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmGet$vehiclePlateNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$accidentDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->accidentDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$city()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->city:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$consolidatedStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->consolidatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$createDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$district()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->district:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$expireDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->expireDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$hasPdf()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->hasPdf:Z

    return v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$participants()Lio/realm/q0;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->participants:Lio/realm/q0;

    return-object v0
.end method

.method public realmGet$plate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->plate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$reportId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$reportNumber()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$reportPartyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportPartyId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$reportPartyStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportPartyStatus:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$reportStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportStatus:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$role()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->role:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updateDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$vehiclePlateCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->vehiclePlateCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$vehiclePlateNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->vehiclePlateNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$accidentDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->accidentDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$city(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->city:Ljava/lang/String;

    return-void
.end method

.method public realmSet$consolidatedStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->consolidatedStatus:Ljava/lang/String;

    return-void
.end method

.method public realmSet$createDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->createDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$district(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->district:Ljava/lang/String;

    return-void
.end method

.method public realmSet$expireDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->expireDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$hasPdf(Z)V
    .locals 0

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->hasPdf:Z

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$participants(Lio/realm/q0;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->participants:Lio/realm/q0;

    return-void
.end method

.method public realmSet$plate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->plate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$reportId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$reportNumber(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportNumber:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$reportPartyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportPartyId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$reportPartyStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportPartyStatus:Ljava/lang/String;

    return-void
.end method

.method public realmSet$reportStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->reportStatus:Ljava/lang/String;

    return-void
.end method

.method public realmSet$role(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->role:Ljava/lang/String;

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->status:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updateDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->updateDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$vehiclePlateCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->vehiclePlateCityCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$vehiclePlateNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->vehiclePlateNumber:Ljava/lang/String;

    return-void
.end method

.method public final setAccidentDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$accidentDate(Ljava/lang/String;)V

    return-void
.end method

.method public final setCity(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$city(Ljava/lang/String;)V

    return-void
.end method

.method public final setConsolidatedStatus(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$consolidatedStatus(Ljava/lang/String;)V

    return-void
.end method

.method public final setCreateDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$createDate(Ljava/lang/String;)V

    return-void
.end method

.method public final setDistrict(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$district(Ljava/lang/String;)V

    return-void
.end method

.method public final setExpireDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$expireDate(Ljava/lang/String;)V

    return-void
.end method

.method public final setHasPdf(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$hasPdf(Z)V

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public final setParticipants(Lio/realm/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$participants(Lio/realm/q0;)V

    return-void
.end method

.method public final setPlate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$plate(Ljava/lang/String;)V

    return-void
.end method

.method public final setReportId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$reportId(Ljava/lang/String;)V

    return-void
.end method

.method public final setReportNumber(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$reportNumber(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setReportPartyId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$reportPartyId(Ljava/lang/String;)V

    return-void
.end method

.method public final setReportPartyStatus(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$reportPartyStatus(Ljava/lang/String;)V

    return-void
.end method

.method public final setReportStatus(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$reportStatus(Ljava/lang/String;)V

    return-void
.end method

.method public final setRole(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$role(Ljava/lang/String;)V

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$status(Ljava/lang/String;)V

    return-void
.end method

.method public final setUpdateDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$updateDate(Ljava/lang/String;)V

    return-void
.end method

.method public final setVehiclePlateCityCode(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$vehiclePlateCityCode(Ljava/lang/String;)V

    return-void
.end method

.method public final setVehiclePlateNumber(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->realmSet$vehiclePlateNumber(Ljava/lang/String;)V

    return-void
.end method
