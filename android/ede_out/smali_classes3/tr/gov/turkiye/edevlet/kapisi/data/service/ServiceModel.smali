.class public final Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008!\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0008H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0008H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003Jt\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010,\u001a\u00020\u0008H\u00d6\u0001J\t\u0010-\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013R\u0016\u0010\u000b\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017R\u0016\u0010\u000c\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013\u00a8\u0006."
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;",
        "",
        "configPath",
        "",
        "explanation",
        "question",
        "iconName",
        "institutionCode",
        "",
        "institutionName",
        "link",
        "serviceCode",
        "serviceName",
        "baseUrlCode",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V",
        "getBaseUrlCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getConfigPath",
        "()Ljava/lang/String;",
        "getExplanation",
        "getIconName",
        "getInstitutionCode",
        "()I",
        "getInstitutionName",
        "getLink",
        "getQuestion",
        "getServiceCode",
        "getServiceName",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;",
        "equals",
        "",
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
.field private final baseUrlCode:Ljava/lang/Integer;
    .annotation runtime Ll8/k;
        name = "serviceDomainType"
    .end annotation
.end field

.field private final configPath:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "configPath"
    .end annotation
.end field

.field private final explanation:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "explanation"
    .end annotation
.end field

.field private final iconName:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "iconName"
    .end annotation
.end field

.field private final institutionCode:I
    .annotation runtime Ll8/k;
        name = "institutionCode"
    .end annotation
.end field

.field private final institutionName:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "institutionName"
    .end annotation
.end field

.field private final link:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "link"
    .end annotation
.end field

.field private final question:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "question"
    .end annotation
.end field

.field private final serviceCode:I
    .annotation runtime Ll8/k;
        name = "serviceCode"
    .end annotation
.end field

.field private final serviceName:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "serviceName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "configPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "explanation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "question"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "institutionName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceName"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->configPath:Ljava/lang/String;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->explanation:Ljava/lang/String;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->question:Ljava/lang/String;

    iput-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->iconName:Ljava/lang/String;

    iput p5, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionCode:I

    iput-object p6, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionName:Ljava/lang/String;

    iput-object p7, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->link:Ljava/lang/String;

    iput p8, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceCode:I

    iput-object p9, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceName:Ljava/lang/String;

    iput-object p10, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->baseUrlCode:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->configPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->explanation:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->question:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->iconName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionCode:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->link:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceCode:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceName:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->baseUrlCode:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->configPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->baseUrlCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->explanation:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->question:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionCode:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceCode:I

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;
    .locals 12

    const-string v0, "configPath"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "explanation"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "question"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconName"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "institutionName"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceName"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    move-object v1, v0

    move/from16 v6, p5

    move/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->configPath:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->configPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->explanation:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->explanation:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->question:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->question:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->iconName:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->iconName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionCode:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionCode:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionName:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->link:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->link:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceCode:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceCode:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceName:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->baseUrlCode:Ljava/lang/Integer;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->baseUrlCode:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getBaseUrlCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->baseUrlCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getConfigPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->configPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getExplanation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->explanation:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstitutionCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionCode:I

    return v0
.end method

.method public final getInstitutionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuestion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->question:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceCode:I

    return v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->configPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->explanation:Ljava/lang/String;

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->question:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->iconName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionCode:I

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->link:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceCode:I

    .line 47
    .line 48
    add-int/2addr v0, v1

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    .line 51
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->baseUrlCode:Ljava/lang/Integer;

    .line 58
    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :goto_0
    add-int/2addr v0, v1

    .line 68
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceModel(configPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->configPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", explanation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->explanation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", question="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->iconName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", institutionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", institutionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->institutionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", baseUrlCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;->baseUrlCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
