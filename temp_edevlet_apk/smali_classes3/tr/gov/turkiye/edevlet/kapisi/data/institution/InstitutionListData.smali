.class public final Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\tH\u00c6\u0003J7\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\"\u001a\u00020\tH\u00d6\u0001R\u001e\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0016\u00a8\u0006#"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;",
        "",
        "resultCode",
        "",
        "institutionList",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;",
        "kod",
        "baseUrl",
        "",
        "(ILjava/util/List;ILjava/lang/String;)V",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "setBaseUrl",
        "(Ljava/lang/String;)V",
        "getInstitutionList",
        "()Ljava/util/List;",
        "setInstitutionList",
        "(Ljava/util/List;)V",
        "getKod",
        "()I",
        "setKod",
        "(I)V",
        "getResultCode",
        "setResultCode",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private baseUrl:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "baseUrl"
    .end annotation
.end field

.field private institutionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "content"
    .end annotation
.end field

.field private kod:I
    .annotation runtime Ll8/k;
        name = "kod"
    .end annotation
.end field

.field private resultCode:I
    .annotation runtime Ll8/k;
        name = "resultCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "institutionList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->resultCode:I

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->institutionList:Ljava/util/List;

    iput p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->kod:I

    iput-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;ILjava/util/List;ILjava/lang/String;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->resultCode:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->institutionList:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->kod:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->baseUrl:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->copy(ILjava/util/List;ILjava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->resultCode:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->institutionList:Ljava/util/List;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->kod:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/util/List;ILjava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;"
        }
    .end annotation

    const-string v0, "institutionList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    invoke-direct {v0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;-><init>(ILjava/util/List;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->resultCode:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->resultCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->institutionList:Ljava/util/List;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->institutionList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->kod:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->kod:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->baseUrl:Ljava/lang/String;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->baseUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstitutionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->institutionList:Ljava/util/List;

    return-object v0
.end method

.method public final getKod()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->kod:I

    return v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->resultCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->resultCode:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->institutionList:Ljava/util/List;

    .line 6
    .line 7
    const/16 v2, 0x1f

    .line 8
    .line 9
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/internal/c;->c(Ljava/util/List;II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->kod:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->baseUrl:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v0

    .line 25
    return v1
.end method

.method public final setBaseUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public final setInstitutionList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->institutionList:Ljava/util/List;

    return-void
.end method

.method public final setKod(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->kod:I

    return-void
.end method

.method public final setResultCode(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->resultCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InstitutionListData(resultCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->resultCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", institutionList="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->institutionList:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", kod="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->kod:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", baseUrl="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->baseUrl:Ljava/lang/String;

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
