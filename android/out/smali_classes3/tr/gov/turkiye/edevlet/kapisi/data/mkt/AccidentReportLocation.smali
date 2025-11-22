.class public Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;
.super Lio/realm/v0;
.source "SourceFile"

# interfaces
.implements Lio/realm/v1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0006\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008)\u0010*R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0013\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0004\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R$\u0010\u0019\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u000e\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012R$\u0010\u001c\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u000e\u001a\u0004\u0008\u001d\u0010\u0010\"\u0004\u0008\u001e\u0010\u0012R$\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0004\u001a\u0004\u0008 \u0010\u0006\"\u0004\u0008!\u0010\u0008R$\u0010#\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;",
        "Lio/realm/v0;",
        "",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "deviceAddress",
        "getDeviceAddress",
        "setDeviceAddress",
        "",
        "deviceLatitude",
        "Ljava/lang/Double;",
        "getDeviceLatitude",
        "()Ljava/lang/Double;",
        "setDeviceLatitude",
        "(Ljava/lang/Double;)V",
        "deviceLongitude",
        "getDeviceLongitude",
        "setDeviceLongitude",
        "accidentAddress",
        "getAccidentAddress",
        "setAccidentAddress",
        "accidentLatitude",
        "getAccidentLatitude",
        "setAccidentLatitude",
        "accidentLongitude",
        "getAccidentLongitude",
        "setAccidentLongitude",
        "updatedDate",
        "getUpdatedDate",
        "setUpdatedDate",
        "",
        "radius",
        "Ljava/lang/Integer;",
        "getRadius",
        "()Ljava/lang/Integer;",
        "setRadius",
        "(Ljava/lang/Integer;)V",
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
.field private accidentAddress:Ljava/lang/String;

.field private accidentLatitude:Ljava/lang/Double;

.field private accidentLongitude:Ljava/lang/Double;

.field private deviceAddress:Ljava/lang/String;

.field private deviceLatitude:Ljava/lang/Double;

.field private deviceLongitude:Ljava/lang/Double;

.field private id:Ljava/lang/String;

.field private radius:Ljava/lang/Integer;

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
.method public final getAccidentAddress()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmGet$accidentAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAccidentLatitude()Ljava/lang/Double;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmGet$accidentLatitude()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getAccidentLongitude()Ljava/lang/Double;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmGet$accidentLongitude()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceAddress()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmGet$deviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceLatitude()Ljava/lang/Double;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmGet$deviceLatitude()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceLongitude()Ljava/lang/Double;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmGet$deviceLongitude()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRadius()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmGet$radius()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdatedDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmGet$updatedDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$accidentAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->accidentAddress:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$accidentLatitude()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->accidentLatitude:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$accidentLongitude()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->accidentLongitude:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$deviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$deviceLatitude()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->deviceLatitude:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$deviceLongitude()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->deviceLongitude:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$radius()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->radius:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$updatedDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$accidentAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->accidentAddress:Ljava/lang/String;

    return-void
.end method

.method public realmSet$accidentLatitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->accidentLatitude:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$accidentLongitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->accidentLongitude:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$deviceAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->deviceAddress:Ljava/lang/String;

    return-void
.end method

.method public realmSet$deviceLatitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->deviceLatitude:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$deviceLongitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->deviceLongitude:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$radius(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->radius:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$updatedDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public final setAccidentAddress(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmSet$accidentAddress(Ljava/lang/String;)V

    return-void
.end method

.method public final setAccidentLatitude(Ljava/lang/Double;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmSet$accidentLatitude(Ljava/lang/Double;)V

    return-void
.end method

.method public final setAccidentLongitude(Ljava/lang/Double;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmSet$accidentLongitude(Ljava/lang/Double;)V

    return-void
.end method

.method public final setDeviceAddress(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmSet$deviceAddress(Ljava/lang/String;)V

    return-void
.end method

.method public final setDeviceLatitude(Ljava/lang/Double;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmSet$deviceLatitude(Ljava/lang/Double;)V

    return-void
.end method

.method public final setDeviceLongitude(Ljava/lang/Double;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmSet$deviceLongitude(Ljava/lang/Double;)V

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public final setRadius(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmSet$radius(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->realmSet$updatedDate(Ljava/lang/String;)V

    return-void
.end method
