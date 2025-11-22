.class public final Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J#\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R$\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;",
        "",
        "resultCode",
        "",
        "cityListContent",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;",
        "(ILjava/util/List;)V",
        "getCityListContent",
        "()Ljava/util/List;",
        "setCityListContent",
        "(Ljava/util/List;)V",
        "getResultCode",
        "()I",
        "setResultCode",
        "(I)V",
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
.field private cityListContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "content"
    .end annotation
.end field

.field private resultCode:I
    .annotation runtime Ll8/k;
        name = "resultCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cityListContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->resultCode:I

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->cityListContent:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;ILjava/util/List;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->resultCode:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->cityListContent:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->copy(ILjava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->resultCode:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->cityListContent:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;"
        }
    .end annotation

    const-string v0, "cityListContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    invoke-direct {v0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->resultCode:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->resultCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->cityListContent:Ljava/util/List;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->cityListContent:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCityListContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->cityListContent:Ljava/util/List;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->resultCode:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->cityListContent:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final setCityListContent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->cityListContent:Ljava/util/List;

    return-void
.end method

.method public final setResultCode(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->resultCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InstitutionCityListData(resultCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->resultCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", cityListContent="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListData;->cityListContent:Ljava/util/List;

    .line 19
    .line 20
    const/16 v2, 0x29

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->j(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
