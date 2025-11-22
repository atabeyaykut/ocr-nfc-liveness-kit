.class public final Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;",
        "",
        "empty",
        "",
        "sorted",
        "unsorted",
        "(ZZZ)V",
        "getEmpty",
        "()Z",
        "getSorted",
        "getUnsorted",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final empty:Z
    .annotation runtime Ll8/k;
        name = "empty"
    .end annotation
.end field

.field private final sorted:Z
    .annotation runtime Ll8/k;
        name = "sorted"
    .end annotation
.end field

.field private final unsorted:Z
    .annotation runtime Ll8/k;
        name = "unsorted"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->empty:Z

    iput-boolean p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->sorted:Z

    iput-boolean p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->unsorted:Z

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;ZZZILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->empty:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->sorted:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->unsorted:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->copy(ZZZ)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->empty:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->sorted:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->unsorted:Z

    return v0
.end method

.method public final copy(ZZZ)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;

    invoke-direct {v0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;-><init>(ZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->empty:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->empty:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->sorted:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->sorted:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->unsorted:Z

    iget-boolean p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->unsorted:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEmpty()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->empty:Z

    return v0
.end method

.method public final getSorted()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->sorted:Z

    return v0
.end method

.method public final getUnsorted()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->unsorted:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->empty:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->sorted:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->unsorted:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InProgressSortInfo(empty="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->empty:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", sorted="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->sorted:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", unsorted="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;->unsorted:Z

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
