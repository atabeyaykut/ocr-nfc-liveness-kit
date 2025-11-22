.class public final Lfh/c;
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lfh/c;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;",
            ">;>;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;",
            ")V"
        }
    .end annotation

    const-string v0, "saveDifferentVehicleState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveDifferentVehicleResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfh/c;->a:Lr0/b;

    iput-object p2, p0, Lfh/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;ILkotlin/jvm/internal/d;)V
    .locals 7

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lr0/d1;->b:Lr0/d1;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveData;IIZILkotlin/jvm/internal/d;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lfh/c;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;)V

    return-void
.end method

.method public static copy$default(Lfh/c;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;ILjava/lang/Object;)Lfh/c;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lfh/c;->a:Lr0/b;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lfh/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string p0, "saveDifferentVehicleState"

    .line 17
    .line 18
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "saveDifferentVehicleResponse"

    .line 22
    .line 23
    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Lfh/c;

    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lfh/c;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;)V

    .line 29
    .line 30
    .line 31
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lfh/c;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;
    .locals 1

    iget-object v0, p0, Lfh/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfh/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfh/c;

    iget-object v1, p1, Lfh/c;->a:Lr0/b;

    iget-object v3, p0, Lfh/c;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfh/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    iget-object p1, p1, Lfh/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lfh/c;->a:Lr0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfh/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileAccidentDifferentVehicleState(saveDifferentVehicleState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfh/c;->a:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", saveDifferentVehicleResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
