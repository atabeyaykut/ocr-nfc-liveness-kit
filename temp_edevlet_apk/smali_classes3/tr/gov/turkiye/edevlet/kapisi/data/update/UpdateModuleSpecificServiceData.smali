.class public final Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;",
        "",
        "resultCode",
        "",
        "resultMessage",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;",
        "moduleServiceInfo",
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;",
        "(ILtr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;)V",
        "getModuleServiceInfo",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;",
        "setModuleServiceInfo",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;)V",
        "getResultCode",
        "()I",
        "setResultCode",
        "(I)V",
        "getResultMessage",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;",
        "setResultMessage",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;)V",
        "component1",
        "component2",
        "component3",
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
.field private moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;
    .annotation runtime Ll8/k;
        name = "moduleInfo"
    .end annotation
.end field

.field private resultCode:I
    .annotation runtime Ll8/k;
        name = "resultCode"
    .end annotation
.end field

.field private resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;
    .annotation runtime Ll8/k;
        name = "resultMessage"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILtr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultCode:I

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    return-void
.end method

.method public synthetic constructor <init>(ILtr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;ILkotlin/jvm/internal/d;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;-><init>(ILtr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;ILtr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultCode:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->copy(ILtr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;)Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultCode:I

    return v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    return-object v0
.end method

.method public final component3()Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    return-object v0
.end method

.method public final copy(ILtr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;)Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;

    invoke-direct {v0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;-><init>(ILtr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultCode:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getModuleServiceInfo()Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultCode:I

    return v0
.end method

.method public final getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setModuleServiceInfo(Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    return-void
.end method

.method public final setResultCode(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultCode:I

    return-void
.end method

.method public final setResultMessage(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateModuleSpecificServiceData(resultCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", moduleServiceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->moduleServiceInfo:Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
