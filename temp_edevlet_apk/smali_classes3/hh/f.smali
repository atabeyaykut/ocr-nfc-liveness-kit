.class public final Lhh/f;
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

.field public final e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

.field public final f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lhh/f;-><init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;",
            ">;>;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;",
            ">;>;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;",
            ">;>;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "photoSaveState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptionSaveState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationSaveState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "photoSaveData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationSaveData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptionSaveData"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationType"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhh/f;->a:Lr0/b;

    iput-object p2, p0, Lhh/f;->b:Lr0/b;

    iput-object p3, p0, Lhh/f;->c:Lr0/b;

    iput-object p4, p0, Lhh/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    iput-object p5, p0, Lhh/f;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    iput-object p6, p0, Lhh/f;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    iput-object p7, p0, Lhh/f;->g:Ljava/lang/Integer;

    iput-object p8, p0, Lhh/f;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/d;)V
    .locals 14

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    sget-object v2, Lr0/d1;->b:Lr0/d1;

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v2, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveData;IIZILkotlin/jvm/internal/d;)V

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveData;IIZILkotlin/jvm/internal/d;)V

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf

    const/4 v13, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveData;IIZILkotlin/jvm/internal/d;)V

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, "saveMedia"

    goto :goto_7

    :cond_7
    move-object/from16 v0, p8

    :goto_7
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v2

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v0

    invoke-direct/range {p1 .. p9}, Lhh/f;-><init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static copy$default(Lhh/f;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lhh/f;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lhh/f;->a:Lr0/b;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lhh/f;->b:Lr0/b;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lhh/f;->c:Lr0/b;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lhh/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lhh/f;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lhh/f;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lhh/f;->g:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lhh/f;->h:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "photoSaveState"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptionSaveState"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationSaveState"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "photoSaveData"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationSaveData"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptionSaveData"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationType"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhh/f;

    move-object p0, v0

    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-direct/range {p0 .. p8}, Lhh/f;-><init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final component1()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lhh/f;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lhh/f;->b:Lr0/b;

    return-object v0
.end method

.method public final component3()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lhh/f;->c:Lr0/b;

    return-object v0
.end method

.method public final component4()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;
    .locals 1

    iget-object v0, p0, Lhh/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    return-object v0
.end method

.method public final component5()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;
    .locals 1

    iget-object v0, p0, Lhh/f;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    return-object v0
.end method

.method public final component6()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;
    .locals 1

    iget-object v0, p0, Lhh/f;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lhh/f;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhh/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhh/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lhh/f;

    iget-object v1, p1, Lhh/f;->a:Lr0/b;

    iget-object v3, p0, Lhh/f;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lhh/f;->b:Lr0/b;

    iget-object v3, p1, Lhh/f;->b:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lhh/f;->c:Lr0/b;

    iget-object v3, p1, Lhh/f;->c:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lhh/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    iget-object v3, p1, Lhh/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lhh/f;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    iget-object v3, p1, Lhh/f;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lhh/f;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    iget-object v3, p1, Lhh/f;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lhh/f;->g:Ljava/lang/Integer;

    iget-object v3, p1, Lhh/f;->g:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lhh/f;->h:Ljava/lang/String;

    iget-object p1, p1, Lhh/f;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lhh/f;->a:Lr0/b;

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
    iget-object v1, p0, Lhh/f;->b:Lr0/b;

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
    iget-object v1, p0, Lhh/f;->c:Lr0/b;

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/browser/browseractions/b;->d(Lr0/b;II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lhh/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    .line 24
    .line 25
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v1, v0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget-object v0, p0, Lhh/f;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    .line 33
    .line 34
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lhh/f;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    .line 42
    .line 43
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, v0

    .line 48
    mul-int/lit8 v1, v1, 0x1f

    .line 49
    .line 50
    iget-object v0, p0, Lhh/f;->g:Ljava/lang/Integer;

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :goto_0
    add-int/2addr v1, v0

    .line 61
    mul-int/lit8 v1, v1, 0x1f

    .line 62
    .line 63
    iget-object v0, p0, Lhh/f;->h:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v0, v1

    .line 70
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MobileAccidentInformationState(photoSaveState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lhh/f;->a:Lr0/b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", descriptionSaveState="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lhh/f;->b:Lr0/b;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", locationSaveState="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lhh/f;->c:Lr0/b;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", photoSaveData="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lhh/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", locationSaveData="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lhh/f;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", descriptionSaveData="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lhh/f;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", uploadedMediaIndex="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lhh/f;->g:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", operationType="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lhh/f;->h:Ljava/lang/String;

    .line 79
    .line 80
    const/16 v2, 0x29

    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method
