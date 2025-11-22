.class public final Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0015\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\nH\u00c6\u0003JA\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\n2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;",
        "",
        "resultCode",
        "",
        "resultText",
        "",
        "resultMessage",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;",
        "twoFactorWarningText",
        "twoFactorEnabled",
        "",
        "(ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ljava/lang/String;Z)V",
        "getResultCode",
        "()I",
        "getResultMessage",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;",
        "getResultText",
        "()Ljava/lang/String;",
        "getTwoFactorEnabled",
        "()Z",
        "getTwoFactorWarningText",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
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
.field private final resultCode:I
    .annotation runtime Ll8/k;
        name = "resultCode"
    .end annotation
.end field

.field private final resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;
    .annotation runtime Ll8/k;
        name = "resultMessage"
    .end annotation
.end field

.field private final resultText:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "resultText"
    .end annotation
.end field

.field private final twoFactorEnabled:Z
    .annotation runtime Ll8/k;
        name = "twoFactorEnabled"
    .end annotation
.end field

.field private final twoFactorWarningText:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "twoFactorWarningText"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultCode:I

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultText:Ljava/lang/String;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    iput-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorWarningText:Ljava/lang/String;

    iput-boolean p5, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ljava/lang/String;ZILkotlin/jvm/internal/d;)V
    .locals 6

    const/4 p7, 0x1

    and-int/2addr p6, p7

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;-><init>(ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ljava/lang/String;ZILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultCode:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultText:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorWarningText:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorEnabled:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->copy(ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ljava/lang/String;Z)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultCode:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorWarningText:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorEnabled:Z

    return v0
.end method

.method public final copy(ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ljava/lang/String;Z)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;
    .locals 7

    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;-><init>(ILjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultCode:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultText:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorWarningText:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorWarningText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorEnabled:Z

    iget-boolean p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorEnabled:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultCode:I

    return v0
.end method

.method public final getResultMessage()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    return-object v0
.end method

.method public final getResultText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTwoFactorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorEnabled:Z

    return v0
.end method

.method public final getTwoFactorWarningText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorWarningText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultText:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorWarningText:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorEnabled:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TwoFactorData(resultCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", resultText="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultText:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", resultMessage="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->resultMessage:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ResultMessage;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", twoFactorWarningText="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorWarningText:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", twoFactorEnabled="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->twoFactorEnabled:Z

    .line 49
    .line 50
    const/16 v2, 0x29

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->f(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
