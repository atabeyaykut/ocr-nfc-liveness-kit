.class public final Lzg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lzg/a;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    const/4 p1, 0x0

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lzg/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

    iput-object p2, p0, Lzg/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lzg/a;Ljava/lang/String;)Lzg/a;
    .locals 1

    new-instance v0, Lzg/a;

    iget-object p0, p0, Lzg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

    invoke-direct {v0, p0, p1}, Lzg/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzg/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lzg/a;

    iget-object v1, p1, Lzg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

    iget-object v3, p0, Lzg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lzg/a;->b:Ljava/lang/String;

    iget-object p1, p1, Lzg/a;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lzg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lzg/a;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaItemModel(media="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lzg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", content="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lzg/a;->b:Ljava/lang/String;

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
