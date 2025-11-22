.class public final Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;",
        "",
        "latitude",
        "",
        "longitude",
        "(DD)V",
        "getLatitude",
        "()D",
        "getLongitude",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final latitude:D
    .annotation runtime Ll8/k;
        name = "latitude"
    .end annotation
.end field

.field private final longitude:D
    .annotation runtime Ll8/k;
        name = "longitude"
    .end annotation
.end field


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->latitude:D

    iput-wide p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->longitude:D

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;DDILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->latitude:D

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->longitude:D

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->copy(DD)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->latitude:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->longitude:D

    return-wide v0
.end method

.method public final copy(DD)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;-><init>(DD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;

    iget-wide v3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->latitude:D

    iget-wide v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->latitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->longitude:D

    iget-wide v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->longitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLatitude()D
    .locals 2

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationInfo(latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
