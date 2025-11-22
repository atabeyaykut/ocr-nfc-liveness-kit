.class public final Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0008H\u00c6\u0003J3\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000cR\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;",
        "",
        "initializeData",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;",
        "isQueueService",
        "",
        "login",
        "isSuccess",
        "",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;IIZ)V",
        "getInitializeData",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;",
        "()I",
        "()Z",
        "getLogin",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final initializeData:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;
    .annotation runtime Ll8/k;
        name = "data"
    .end annotation
.end field

.field private final isQueueService:I
    .annotation runtime Ll8/k;
        name = "kuyrukMu"
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;IIZILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->initializeData:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    iput p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isQueueService:I

    iput p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->login:I

    iput-boolean p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isSuccess:Z

    return-void
.end method

.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;IIZILkotlin/jvm/internal/d;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;IIZ)V

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;IIZILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->initializeData:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isQueueService:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->login:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isSuccess:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->copy(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;IIZ)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->initializeData:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isQueueService:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->login:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isSuccess:Z

    return v0
.end method

.method public final copy(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;IIZ)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;

    invoke-direct {v0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;IIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->initializeData:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->initializeData:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isQueueService:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isQueueService:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->login:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->login:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isSuccess:Z

    iget-boolean p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isSuccess:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getInitializeData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->initializeData:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    return-object v0
.end method

.method public final getLogin()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->login:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->initializeData:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isQueueService:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->login:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isSuccess:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isQueueService()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isQueueService:I

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isSuccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InitializeResponseModel(initializeData="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->initializeData:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isQueueService="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isQueueService:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", login="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->login:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isSuccess="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->isSuccess:Z

    .line 39
    .line 40
    const/16 v2, 0x29

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->f(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
