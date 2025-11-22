.class public final Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;",
        "",
        "resultCode",
        "",
        "updateServiceInfo",
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;",
        "(ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)V",
        "getResultCode",
        "()I",
        "setResultCode",
        "(I)V",
        "getUpdateServiceInfo",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;",
        "setUpdateServiceInfo",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private resultCode:I
    .annotation runtime Ll8/k;
        name = "resultCode"
    .end annotation
.end field

.field private updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;
    .annotation runtime Ll8/k;
        name = "updateInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;-><init>(ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->resultCode:I

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    return-void
.end method

.method public synthetic constructor <init>(ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;ILkotlin/jvm/internal/d;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;-><init>(ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->resultCode:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->copy(ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->resultCode:I

    return v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    return-object v0
.end method

.method public final copy(ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    invoke-direct {v0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;-><init>(ILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->resultCode:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->resultCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->resultCode:I

    return v0
.end method

.method public final getUpdateServiceInfo()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setResultCode(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->resultCode:I

    return-void
.end method

.method public final setUpdateServiceInfo(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateServiceData(resultCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateServiceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->updateServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
