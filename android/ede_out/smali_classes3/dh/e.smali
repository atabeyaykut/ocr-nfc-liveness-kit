.class public final Ldh/e;
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

.field public final f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

.field public final g:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Ldh/e;-><init>(Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;",
            ">;>;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;",
            ">;>;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;",
            ">;>;",
            "Ljava/lang/String;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;",
            ")V"
        }
    .end annotation

    const-string v0, "carListState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveDriverState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveVehicleState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "carList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveDriverResponse"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveVehicleResponse"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldh/e;->a:Lr0/b;

    iput-object p2, p0, Ldh/e;->b:Lr0/b;

    iput-object p3, p0, Ldh/e;->c:Lr0/b;

    iput-object p4, p0, Ldh/e;->d:Ljava/lang/String;

    iput-object p5, p0, Ldh/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    iput-object p6, p0, Ldh/e;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    iput-object p7, p0, Ldh/e;->g:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILkotlin/jvm/internal/d;)V
    .locals 13

    and-int/lit8 v0, p8, 0x1

    sget-object v1, Lr0/d1;->b:Lr0/d1;

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p8, 0x4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v1, p3

    :goto_2
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_3

    const-string v3, "SaveDriver"

    goto :goto_3

    :cond_3
    move-object/from16 v3, p4

    :goto_3
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_4

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListData;IIZILkotlin/jvm/internal/d;)V

    goto :goto_4

    :cond_4
    move-object/from16 v4, p5

    :goto_4
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_5

    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveData;IIZILkotlin/jvm/internal/d;)V

    goto :goto_5

    :cond_5
    move-object/from16 v5, p6

    :goto_5
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_6

    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    move-object p1, v6

    move-object p2, v7

    move/from16 p3, v8

    move/from16 p4, v9

    move/from16 p5, v10

    move/from16 p6, v11

    move-object/from16 p7, v12

    invoke-direct/range {p1 .. p7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveData;IIZILkotlin/jvm/internal/d;)V

    goto :goto_6

    :cond_6
    move-object/from16 v6, p7

    :goto_6
    move-object p1, p0

    move-object p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    invoke-direct/range {p1 .. p8}, Ldh/e;-><init>(Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;)V

    return-void
.end method

.method public static copy$default(Ldh/e;Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;ILjava/lang/Object;)Ldh/e;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Ldh/e;->a:Lr0/b;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Ldh/e;->b:Lr0/b;

    .line 12
    .line 13
    :cond_1
    move-object p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Ldh/e;->c:Lr0/b;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Ldh/e;->d:Ljava/lang/String;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Ldh/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-object p6, p0, Ldh/e;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    .line 40
    .line 41
    :cond_5
    move-object v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget-object p7, p0, Ldh/e;->g:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    .line 47
    .line 48
    :cond_6
    move-object v4, p7

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string p0, "carListState"

    .line 53
    .line 54
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "saveDriverState"

    .line 58
    .line 59
    invoke-static {p9, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p0, "saveVehicleState"

    .line 63
    .line 64
    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p0, "operationType"

    .line 68
    .line 69
    invoke-static {v1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p0, "carList"

    .line 73
    .line 74
    invoke-static {v2, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string p0, "saveDriverResponse"

    .line 78
    .line 79
    invoke-static {v3, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p0, "saveVehicleResponse"

    .line 83
    .line 84
    invoke-static {v4, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance p0, Ldh/e;

    .line 88
    .line 89
    move-object p2, p0

    .line 90
    move-object p3, p1

    .line 91
    move-object p4, p9

    .line 92
    move-object p5, v0

    .line 93
    move-object p6, v1

    .line 94
    move-object p7, v2

    .line 95
    move-object p8, v3

    .line 96
    move-object p9, v4

    .line 97
    invoke-direct/range {p2 .. p9}, Ldh/e;-><init>(Lr0/b;Lr0/b;Lr0/b;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;)V

    .line 98
    .line 99
    .line 100
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ldh/e;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ldh/e;->b:Lr0/b;

    return-object v0
.end method

.method public final component3()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ldh/e;->c:Lr0/b;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldh/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;
    .locals 1

    iget-object v0, p0, Ldh/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    return-object v0
.end method

.method public final component6()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;
    .locals 1

    iget-object v0, p0, Ldh/e;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    return-object v0
.end method

.method public final component7()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;
    .locals 1

    iget-object v0, p0, Ldh/e;->g:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldh/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldh/e;

    iget-object v1, p1, Ldh/e;->a:Lr0/b;

    iget-object v3, p0, Ldh/e;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ldh/e;->b:Lr0/b;

    iget-object v3, p1, Ldh/e;->b:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ldh/e;->c:Lr0/b;

    iget-object v3, p1, Ldh/e;->c:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ldh/e;->d:Ljava/lang/String;

    iget-object v3, p1, Ldh/e;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ldh/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    iget-object v3, p1, Ldh/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ldh/e;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    iget-object v3, p1, Ldh/e;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ldh/e;->g:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    iget-object p1, p1, Ldh/e;->g:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ldh/e;->a:Lr0/b;

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
    iget-object v1, p0, Ldh/e;->b:Lr0/b;

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroidx/browser/browseractions/b;->d(Lr0/b;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Ldh/e;->c:Lr0/b;

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/browser/browseractions/b;->d(Lr0/b;II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Ldh/e;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Ldh/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    .line 30
    .line 31
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    mul-int/lit8 v1, v1, 0x1f

    .line 37
    .line 38
    iget-object v0, p0, Ldh/e;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    .line 39
    .line 40
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v1, p0, Ldh/e;->g:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    .line 48
    .line 49
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileAccidentDriverState(carListState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldh/e;->a:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", saveDriverState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldh/e;->b:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", saveVehicleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldh/e;->c:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldh/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldh/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", saveDriverResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldh/e;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", saveVehicleResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldh/e;->g:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
