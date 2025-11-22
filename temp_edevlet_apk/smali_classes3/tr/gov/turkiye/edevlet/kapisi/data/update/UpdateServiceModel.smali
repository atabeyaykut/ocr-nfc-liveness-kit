.class public final Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;",
        "",
        "isSuccess",
        "",
        "login",
        "",
        "updateCheckData",
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;",
        "(ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;)V",
        "()Z",
        "setSuccess",
        "(Z)V",
        "getLogin",
        "()I",
        "setLogin",
        "(I)V",
        "getUpdateCheckData",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;",
        "setUpdateCheckData",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
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
.field private isSuccess:Z
    .annotation runtime Ll8/k;
        name = "return"
    .end annotation
.end field

.field private login:I
    .annotation runtime Ll8/k;
        name = "login"
    .end annotation
.end field

.field private updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;
    .annotation runtime Ll8/k;
        name = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;-><init>(ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess:Z

    iput p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->login:I

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    return-void
.end method

.method public synthetic constructor <init>(ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;ILkotlin/jvm/internal/d;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;-><init>(ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;)V

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->login:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->copy(ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;)Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->login:I

    return v0
.end method

.method public final component3()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    return-object v0
.end method

.method public final copy(ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;)Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;

    invoke-direct {v0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;-><init>(ZILtr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->login:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->login:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLogin()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->login:I

    return v0
.end method

.method public final getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->login:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess:Z

    return v0
.end method

.method public final setLogin(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->login:I

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess:Z

    return-void
.end method

.method public final setUpdateCheckData(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateServiceModel(isSuccess="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", login="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->login:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateCheckData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->updateCheckData:Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
