.class public final Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;",
        "",
        "accidentAddress",
        "",
        "accidentPoint",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;",
        "devicePoint",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;",
        "deviceAddress",
        "(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;Ljava/lang/String;)V",
        "getAccidentAddress",
        "()Ljava/lang/String;",
        "getAccidentPoint",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;",
        "getDeviceAddress",
        "getDevicePoint",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final accidentAddress:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "accidentAddress"
    .end annotation
.end field

.field private final accidentPoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;
    .annotation runtime Ll8/k;
        name = "accidentPoint"
    .end annotation
.end field

.field private final deviceAddress:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "deviceAddress"
    .end annotation
.end field

.field private final devicePoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;
    .annotation runtime Ll8/k;
        name = "devicePoint"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;Ljava/lang/String;)V
    .locals 1

    const-string v0, "accidentAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accidentPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devicePoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentAddress:Ljava/lang/String;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentPoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->devicePoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;

    iput-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->deviceAddress:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;Ljava/lang/String;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentAddress:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentPoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->devicePoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->deviceAddress:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->copy(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;Ljava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentPoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;

    return-object v0
.end method

.method public final component3()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->devicePoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;Ljava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;
    .locals 1

    const-string v0, "accidentAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accidentPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devicePoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;

    invoke-direct {v0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;-><init>(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentAddress:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentPoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentPoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->devicePoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->devicePoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->deviceAddress:Ljava/lang/String;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->deviceAddress:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAccidentAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccidentPoint()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentPoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;

    return-object v0
.end method

.method public final getDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevicePoint()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->devicePoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentPoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->devicePoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HostReportLocationListItem(accidentAddress="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentAddress:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", accidentPoint="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->accidentPoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", devicePoint="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->devicePoint:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", deviceAddress="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->deviceAddress:Ljava/lang/String;

    .line 39
    .line 40
    const/16 v2, 0x29

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
