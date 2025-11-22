.class public final Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\tH\u00c6\u0003J?\u0010\u0015\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;",
        "",
        "infoMessageData",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;",
        "login",
        "",
        "messageArr",
        "isSuccess",
        "",
        "(Ljava/util/List;ILjava/util/List;Z)V",
        "getInfoMessageData",
        "()Ljava/util/List;",
        "()Z",
        "getLogin",
        "()I",
        "getMessageArr",
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
.field private final infoMessageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "data"
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

.field private final messageArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "messageArr"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;",
            ">;I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "messageArr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->infoMessageData:Ljava/util/List;

    iput p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->login:I

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->messageArr:Ljava/util/List;

    iput-boolean p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->isSuccess:Z

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;Ljava/util/List;ILjava/util/List;ZILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->infoMessageData:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->login:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->messageArr:Ljava/util/List;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->isSuccess:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->copy(Ljava/util/List;ILjava/util/List;Z)Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->infoMessageData:Ljava/util/List;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->login:I

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->messageArr:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->isSuccess:Z

    return v0
.end method

.method public final copy(Ljava/util/List;ILjava/util/List;Z)Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;",
            ">;I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;"
        }
    .end annotation

    const-string v0, "messageArr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;

    invoke-direct {v0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;-><init>(Ljava/util/List;ILjava/util/List;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->infoMessageData:Ljava/util/List;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->infoMessageData:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->login:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->login:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->messageArr:Ljava/util/List;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->messageArr:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->isSuccess:Z

    iget-boolean p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->isSuccess:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getInfoMessageData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->infoMessageData:Ljava/util/List;

    return-object v0
.end method

.method public final getLogin()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->login:I

    return v0
.end method

.method public final getMessageArr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->messageArr:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->infoMessageData:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->login:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->messageArr:Ljava/util/List;

    .line 19
    .line 20
    const/16 v2, 0x1f

    .line 21
    .line 22
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/internal/c;->c(Ljava/util/List;II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->isSuccess:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1
    add-int/2addr v0, v1

    .line 32
    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->isSuccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InfoMessageModel(infoMessageData="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->infoMessageData:Ljava/util/List;

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
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->login:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", messageArr="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->messageArr:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;->isSuccess:Z

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
