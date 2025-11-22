.class public final Lbe/h;
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
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

.field public final e:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbe/h;-><init>(Lr0/b;Ljava/util/List;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;ZILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;Ljava/util/List;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;",
            ">;>;>;",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;",
            ">;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;",
            ">;>;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;",
            "Z)V"
        }
    .end annotation

    const-string v0, "dynamicFieldState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verifyDocState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbe/h;->a:Lr0/b;

    iput-object p2, p0, Lbe/h;->b:Ljava/util/List;

    iput-object p3, p0, Lbe/h;->c:Lr0/b;

    iput-object p4, p0, Lbe/h;->d:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    iput-boolean p5, p0, Lbe/h;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Ljava/util/List;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;ZILkotlin/jvm/internal/d;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    sget-object v0, Lr0/d1;->b:Lr0/d1;

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    sget-object p2, Lm9/v;->a:Lm9/v;

    :cond_1
    move-object v1, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p3

    :goto_1
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    new-instance p4, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    const/4 p1, 0x0

    invoke-direct {p4, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;-><init>(Ljava/lang/String;)V

    :cond_3
    move-object v2, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    const/4 p6, 0x0

    goto :goto_2

    :cond_4
    move p6, p5

    :goto_2
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v0

    move-object p5, v2

    invoke-direct/range {p1 .. p6}, Lbe/h;-><init>(Lr0/b;Ljava/util/List;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;Z)V

    return-void
.end method

.method public static copy$default(Lbe/h;Lr0/b;Ljava/util/List;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;ZILjava/lang/Object;)Lbe/h;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lbe/h;->a:Lr0/b;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lbe/h;->b:Ljava/util/List;

    .line 12
    .line 13
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lbe/h;->c:Lr0/b;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lbe/h;->d:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-boolean p5, p0, Lbe/h;->e:Z

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string p0, "dynamicFieldState"

    .line 39
    .line 40
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p0, "verifyDocState"

    .line 44
    .line 45
    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lbe/h;

    .line 49
    .line 50
    move-object p2, p0

    .line 51
    move-object p3, p1

    .line 52
    move-object p4, p7

    .line 53
    move-object p5, v0

    .line 54
    move-object p6, v1

    .line 55
    move p7, v2

    .line 56
    invoke-direct/range {p2 .. p7}, Lbe/h;-><init>(Lr0/b;Ljava/util/List;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;Z)V

    .line 57
    .line 58
    .line 59
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
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lbe/h;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbe/h;->b:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lbe/h;->c:Lr0/b;

    return-object v0
.end method

.method public final component4()Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;
    .locals 1

    iget-object v0, p0, Lbe/h;->d:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lbe/h;->e:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lbe/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lbe/h;

    iget-object v1, p1, Lbe/h;->a:Lr0/b;

    iget-object v3, p0, Lbe/h;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lbe/h;->b:Ljava/util/List;

    iget-object v3, p1, Lbe/h;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lbe/h;->c:Lr0/b;

    iget-object v3, p1, Lbe/h;->c:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lbe/h;->d:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    iget-object v3, p1, Lbe/h;->d:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lbe/h;->e:Z

    iget-boolean p1, p1, Lbe/h;->e:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lbe/h;->a:Lr0/b;

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
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lbe/h;->b:Ljava/util/List;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Lbe/h;->c:Lr0/b;

    .line 24
    .line 25
    const/16 v3, 0x1f

    .line 26
    .line 27
    invoke-static {v2, v0, v3}, Landroidx/browser/browseractions/b;->d(Lr0/b;II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v2, p0, Lbe/h;->d:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_1
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-boolean v1, p0, Lbe/h;->e:Z

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_2
    add-int/2addr v0, v1

    .line 49
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ManualDynamicFieldState(dynamicFieldState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lbe/h;->a:Lr0/b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", dynamicFieldList="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lbe/h;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", verifyDocState="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lbe/h;->c:Lr0/b;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", barcodeDoc="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lbe/h;->d:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isVerificationOperation="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lbe/h;->e:Z

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
