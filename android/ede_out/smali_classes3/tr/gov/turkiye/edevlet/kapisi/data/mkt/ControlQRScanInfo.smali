.class public final Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;",
        "",
        "checked",
        "",
        "participants",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;",
        "(ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;)V",
        "getChecked",
        "()Z",
        "getParticipants",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;",
        "component1",
        "component2",
        "copy",
        "equals",
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
.field private final checked:Z
    .annotation runtime Ll8/k;
        name = "checked"
    .end annotation
.end field

.field private final participants:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;
    .annotation runtime Ll8/k;
        name = "participants"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;)V
    .locals 1

    const-string v0, "participants"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->checked:Z

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->participants:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->checked:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->participants:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->copy(ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->checked:Z

    return v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->participants:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    return-object v0
.end method

.method public final copy(ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;
    .locals 1

    const-string v0, "participants"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;

    invoke-direct {v0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;-><init>(ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->checked:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->checked:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->participants:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->participants:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getChecked()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->checked:Z

    return v0
.end method

.method public final getParticipants()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->participants:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->checked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->participants:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlQRScanInfo(checked="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->checked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", participants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->participants:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
