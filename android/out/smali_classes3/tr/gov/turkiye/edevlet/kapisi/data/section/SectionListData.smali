.class public final Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;",
        "",
        "content",
        "Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;",
        "resultCode",
        "",
        "resultText",
        "",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;ILjava/lang/String;)V",
        "getContent",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;",
        "getResultCode",
        "()I",
        "getResultText",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
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
.field private final content:Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;
    .annotation runtime Ll8/k;
        name = "content"
    .end annotation
.end field

.field private final resultCode:I
    .annotation runtime Ll8/k;
        name = "resultCode"
    .end annotation
.end field

.field private final resultText:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "resultText"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;ILjava/lang/String;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->content:Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;

    iput p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultCode:I

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultText:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;ILjava/lang/String;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->content:Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultCode:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultText:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->copy(Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;ILjava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->content:Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultCode:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;ILjava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;

    invoke-direct {v0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->content:Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->content:Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultCode:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultCode:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultText:Ljava/lang/String;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultText:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getContent()Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->content:Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultCode:I

    return v0
.end method

.method public final getResultText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->content:Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SectionListData(content="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->content:Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", resultCode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultCode:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", resultText="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->resultText:Ljava/lang/String;

    .line 29
    .line 30
    const/16 v2, 0x29

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
