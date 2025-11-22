.class public final Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;",
        "",
        "code",
        "",
        "name",
        "",
        "(ILjava/lang/String;)V",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
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
.field private code:I
    .annotation runtime Ll8/k;
        name = "code"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->code:I

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;ILjava/lang/String;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->code:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->copy(ILjava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->code:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;

    invoke-direct {v0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->code:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->code:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->name:Ljava/lang/String;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->code:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->code:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->code:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InstitutionCityListContent(code="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->code:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;->name:Ljava/lang/String;

    .line 19
    .line 20
    const/16 v2, 0x29

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
