.class public Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/s0;
.implements Lio/realm/f2;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\'\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008N\u0010OR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0004\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0004\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R$\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0004\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0004\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R$\u0010$\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0004\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R$\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0004\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R$\u0010+\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R$\u00102\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R$\u00109\u001a\u0004\u0018\u0001088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R$\u0010@\u001a\u0004\u0018\u00010?8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER*\u0010H\u001a\n\u0012\u0004\u0012\u00020G\u0018\u00010F8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010M\u00a8\u0006P"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;",
        "Lio/realm/s0;",
        "",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "nameSurname",
        "getNameSurname",
        "setNameSurname",
        "phoneNumber",
        "getPhoneNumber",
        "setPhoneNumber",
        "role",
        "getRole",
        "setRole",
        "dashPointId",
        "getDashPointId",
        "setDashPointId",
        "dashPoint",
        "getDashPoint",
        "setDashPoint",
        "scenarioId",
        "getScenarioId",
        "setScenarioId",
        "accidentComment",
        "getAccidentComment",
        "setAccidentComment",
        "status",
        "getStatus",
        "setStatus",
        "consolidatedStatus",
        "getConsolidatedStatus",
        "setConsolidatedStatus",
        "createdDate",
        "getCreatedDate",
        "setCreatedDate",
        "expiredDate",
        "getExpiredDate",
        "setExpiredDate",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;",
        "driver",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;",
        "getDriver",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;",
        "setDriver",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;)V",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;",
        "location",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;",
        "getLocation",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;",
        "setLocation",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;)V",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;",
        "vehicle",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;",
        "getVehicle",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;",
        "setVehicle",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;)V",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;",
        "report",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;",
        "getReport",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;",
        "setReport",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;)V",
        "Lio/realm/q0;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;",
        "media",
        "Lio/realm/q0;",
        "getMedia",
        "()Lio/realm/q0;",
        "setMedia",
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
.field private accidentComment:Ljava/lang/String;

.field private consolidatedStatus:Ljava/lang/String;

.field private createdDate:Ljava/lang/String;

.field private dashPoint:Ljava/lang/String;

.field private dashPointId:Ljava/lang/String;

.field private driver:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

.field private expiredDate:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

.field private media:Lio/realm/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;",
            ">;"
        }
    .end annotation
.end field

.field private nameSurname:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private report:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

.field private role:Ljava/lang/String;

.field private scenarioId:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private vehicle:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;


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
    return-void
.end method


# virtual methods
.method public final getAccidentComment()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$accidentComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConsolidatedStatus()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$consolidatedStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCreatedDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$createdDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDashPoint()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$dashPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDashPointId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$dashPointId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDriver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$driver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiredDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$expiredDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$location()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    move-result-object v0

    return-object v0
.end method

.method public final getMedia()Lio/realm/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$media()Lio/realm/q0;

    move-result-object v0

    return-object v0
.end method

.method public final getNameSurname()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$nameSurname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReport()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$report()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    move-result-object v0

    return-object v0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$role()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScenarioId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$scenarioId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmGet$vehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$accidentComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->accidentComment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$consolidatedStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->consolidatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$createdDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$dashPoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->dashPoint:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$dashPointId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->dashPointId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$driver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->driver:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    return-object v0
.end method

.method public realmGet$expiredDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->expiredDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$location()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    return-object v0
.end method

.method public realmGet$media()Lio/realm/q0;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->media:Lio/realm/q0;

    return-object v0
.end method

.method public realmGet$nameSurname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->nameSurname:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$phoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$report()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->report:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    return-object v0
.end method

.method public realmGet$role()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->role:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$scenarioId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->scenarioId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$vehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->vehicle:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    return-object v0
.end method

.method public realmSet$accidentComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->accidentComment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$consolidatedStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->consolidatedStatus:Ljava/lang/String;

    return-void
.end method

.method public realmSet$createdDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->createdDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$dashPoint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->dashPoint:Ljava/lang/String;

    return-void
.end method

.method public realmSet$dashPointId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->dashPointId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$driver(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->driver:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    return-void
.end method

.method public realmSet$expiredDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->expiredDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$location(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    return-void
.end method

.method public realmSet$media(Lio/realm/q0;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->media:Lio/realm/q0;

    return-void
.end method

.method public realmSet$nameSurname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->nameSurname:Ljava/lang/String;

    return-void
.end method

.method public realmSet$phoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$report(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->report:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    return-void
.end method

.method public realmSet$role(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->role:Ljava/lang/String;

    return-void
.end method

.method public realmSet$scenarioId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->scenarioId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->status:Ljava/lang/String;

    return-void
.end method

.method public realmSet$vehicle(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->vehicle:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    return-void
.end method

.method public final setAccidentComment(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$accidentComment(Ljava/lang/String;)V

    return-void
.end method

.method public final setConsolidatedStatus(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$consolidatedStatus(Ljava/lang/String;)V

    return-void
.end method

.method public final setCreatedDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$createdDate(Ljava/lang/String;)V

    return-void
.end method

.method public final setDashPoint(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$dashPoint(Ljava/lang/String;)V

    return-void
.end method

.method public final setDashPointId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$dashPointId(Ljava/lang/String;)V

    return-void
.end method

.method public final setDriver(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$driver(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;)V

    return-void
.end method

.method public final setExpiredDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$expiredDate(Ljava/lang/String;)V

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public final setLocation(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$location(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;)V

    return-void
.end method

.method public final setMedia(Lio/realm/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$media(Lio/realm/q0;)V

    return-void
.end method

.method public final setNameSurname(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$nameSurname(Ljava/lang/String;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$phoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method public final setReport(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$report(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;)V

    return-void
.end method

.method public final setRole(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$role(Ljava/lang/String;)V

    return-void
.end method

.method public final setScenarioId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$scenarioId(Ljava/lang/String;)V

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$status(Ljava/lang/String;)V

    return-void
.end method

.method public final setVehicle(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->realmSet$vehicle(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;)V

    return-void
.end method
