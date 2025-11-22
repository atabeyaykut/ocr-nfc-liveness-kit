.class public final Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003J7\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001J\t\u0010!\u001a\u00020\u0007H\u00d6\u0001R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\""
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;",
        "",
        "resultCode",
        "",
        "institutionDetailContent",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;",
        "baseUrl",
        "",
        "baseUrls",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
        "(ILtr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;Ljava/lang/String;Ljava/util/List;)V",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "setBaseUrl",
        "(Ljava/lang/String;)V",
        "getBaseUrls",
        "()Ljava/util/List;",
        "getInstitutionDetailContent",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;",
        "getResultCode",
        "()I",
        "setResultCode",
        "(I)V",
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

.field private final baseUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "serviceDomainURLs"
    .end annotation
.end field

.field private final institutionDetailContent:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;
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
.method public constructor <init>(ILtr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
            ">;)V"
        }
    .end annotation

    const-string v0, "institutionDetailContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrls"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->resultCode:I

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->institutionDetailContent:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrl:Ljava/lang/String;

    iput-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrls:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;ILtr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->resultCode:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->institutionDetailContent:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrl:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrls:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->copy(ILtr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;Ljava/lang/String;Ljava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->resultCode:I

    return v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->institutionDetailContent:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrls:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILtr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;Ljava/lang/String;Ljava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;"
        }
    .end annotation

    const-string v0, "institutionDetailContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrls"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;

    invoke-direct {v0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;-><init>(ILtr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->resultCode:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->resultCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->institutionDetailContent:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->institutionDetailContent:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrl:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrls:Ljava/util/List;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrls:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrls:Ljava/util/List;

    return-object v0
.end method

.method public final getInstitutionDetailContent()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->institutionDetailContent:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->resultCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->resultCode:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->institutionDetailContent:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    .line 6
    .line 7
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrl:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v2, 0x1f

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrls:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    return v1
.end method

.method public final setBaseUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public final setResultCode(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->resultCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InstitutionDetailData(resultCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->resultCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", institutionDetailContent="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->institutionDetailContent:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailContent;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", baseUrl="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrl:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", baseUrls="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->baseUrls:Ljava/util/List;

    .line 39
    .line 40
    const/16 v2, 0x29

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->j(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
