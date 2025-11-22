.class public final Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;",
        "",
        "isSuccess",
        "",
        "login",
        "",
        "cityListData",
        "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;",
        "(ZILtr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;)V",
        "getCityListData",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;",
        "setCityListData",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;)V",
        "()Z",
        "setSuccess",
        "(Z)V",
        "getLogin",
        "()I",
        "setLogin",
        "(I)V",
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
.field private cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;
    .annotation runtime Ll8/k;
        name = "data"
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(ZILtr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;)V
    .locals 1

    const-string v0, "cityListData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->isSuccess:Z

    iput p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->login:I

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;ZILtr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->isSuccess:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->login:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->copy(ZILtr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;)Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->isSuccess:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->login:I

    return v0
.end method

.method public final component3()Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    return-object v0
.end method

.method public final copy(ZILtr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;)Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;
    .locals 1

    const-string v0, "cityListData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;

    invoke-direct {v0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;-><init>(ZILtr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->isSuccess:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->isSuccess:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->login:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->login:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCityListData()Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    return-object v0
.end method

.method public final getLogin()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->login:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->isSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->login:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->isSuccess:Z

    return v0
.end method

.method public final setCityListData(Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    return-void
.end method

.method public final setLogin(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->login:I

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->isSuccess:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstitutionCityListModel(isSuccess="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", login="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->login:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cityListData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;->cityListData:Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
