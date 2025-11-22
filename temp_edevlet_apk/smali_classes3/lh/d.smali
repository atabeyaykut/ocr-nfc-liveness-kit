.class public final Llh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/p;


# instance fields
.field public final a:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

.field public final c:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;


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

    invoke-direct/range {v0 .. v6}, Llh/d;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;",
            ">;>;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;",
            ">;>;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;",
            ")V"
        }
    .end annotation

    const-string v0, "generateQRState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generateQRData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkQRState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkQRData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llh/d;->a:Lr0/b;

    iput-object p2, p0, Llh/d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    iput-object p3, p0, Llh/d;->c:Lr0/b;

    iput-object p4, p0, Llh/d;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;ILkotlin/jvm/internal/d;)V
    .locals 8

    and-int/lit8 p6, p5, 0x1

    sget-object v0, Lr0/d1;->b:Lr0/d1;

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRData;IIZILkotlin/jvm/internal/d;)V

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    new-instance p4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanData;IIZILkotlin/jvm/internal/d;)V

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Llh/d;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;)V

    return-void
.end method

.method public static copy$default(Llh/d;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;ILjava/lang/Object;)Llh/d;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Llh/d;->a:Lr0/b;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Llh/d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Llh/d;->c:Lr0/b;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Llh/d;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "generateQRState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "generateQRData"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "checkQRState"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "checkQRData"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Llh/d;

    invoke-direct {p0, p1, p2, p3, p4}, Llh/d;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;)V

    return-object p0
.end method


# virtual methods
.method public final component1()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Llh/d;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;
    .locals 1

    iget-object v0, p0, Llh/d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    return-object v0
.end method

.method public final component3()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Llh/d;->c:Lr0/b;

    return-object v0
.end method

.method public final component4()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;
    .locals 1

    iget-object v0, p0, Llh/d;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llh/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Llh/d;

    iget-object v1, p1, Llh/d;->a:Lr0/b;

    iget-object v3, p0, Llh/d;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Llh/d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    iget-object v3, p1, Llh/d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Llh/d;->c:Lr0/b;

    iget-object v3, p1, Llh/d;->c:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Llh/d;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    iget-object p1, p1, Llh/d;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Llh/d;->a:Lr0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Llh/d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    .line 10
    .line 11
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Llh/d;->c:Lr0/b;

    .line 19
    .line 20
    const/16 v2, 0x1f

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->d(Lr0/b;II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Llh/d;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    .line 27
    .line 28
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileAccidentGenerateQRState(generateQRState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Llh/d;->a:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", generateQRData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llh/d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkQRState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llh/d;->c:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkQRData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llh/d;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
