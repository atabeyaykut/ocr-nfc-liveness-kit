.class public final Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;",
        "",
        "serviceList",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;",
        "login",
        "",
        "isSuccess",
        "",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;IZ)V",
        "()Z",
        "getLogin",
        "()I",
        "getServiceList",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;",
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
.field private final isSuccess:Z
    .annotation runtime Ll8/k;
        name = "return"
    .end annotation
.end field

.field private final login:I
    .annotation runtime Ll8/k;
        name = "login"
    .end annotation
.end field

.field private final serviceList:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;
    .annotation runtime Ll8/k;
        name = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;IZ)V
    .locals 1

    const-string v0, "serviceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->serviceList:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    iput p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->login:I

    iput-boolean p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->isSuccess:Z

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;IZILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->serviceList:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->login:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->isSuccess:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->copy(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;IZ)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->serviceList:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->login:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->isSuccess:Z

    return v0
.end method

.method public final copy(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;IZ)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;
    .locals 1

    const-string v0, "serviceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;

    invoke-direct {v0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->serviceList:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->serviceList:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->login:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->login:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->isSuccess:Z

    iget-boolean p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->isSuccess:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLogin()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->login:I

    return v0
.end method

.method public final getServiceList()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->serviceList:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->serviceList:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->login:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->isSuccess:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->isSuccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ServiceDetailModel(serviceList="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->serviceList:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", login="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->login:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isSuccess="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;->isSuccess:Z

    .line 29
    .line 30
    const/16 v2, 0x29

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->f(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
