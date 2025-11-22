.class public final Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u00080\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0015J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001bJ\t\u0010/\u001a\u00020\u0011H\u00c6\u0003J\t\u00100\u001a\u00020\u0011H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00be\u0001\u0010;\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010<J\u0013\u0010=\u001a\u00020\u00112\u0008\u0010>\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010?\u001a\u00020\u000fH\u00d6\u0001J\t\u0010@\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0017R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0017R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0017R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0017R\u0016\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010#R\u0016\u0010\u0012\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010#R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0017R\u0016\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0017R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0017R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0017R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0017R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0017\u00a8\u0006A"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
        "",
        "serviceName",
        "",
        "serviceCode",
        "institutionName",
        "institutionCode",
        "institutionType",
        "serviceFolderName",
        "serviceURL",
        "serviceFolderNameEng",
        "serviceNameEng",
        "iconName",
        "url",
        "baseUrlCode",
        "",
        "isConceptService",
        "",
        "isNativePage",
        "iconUrl",
        "baseUrl",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;)V",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "setBaseUrl",
        "(Ljava/lang/String;)V",
        "getBaseUrlCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getIconName",
        "getIconUrl",
        "setIconUrl",
        "getInstitutionCode",
        "getInstitutionName",
        "getInstitutionType",
        "()Z",
        "getServiceCode",
        "getServiceFolderName",
        "getServiceFolderNameEng",
        "getServiceName",
        "getServiceNameEng",
        "getServiceURL",
        "getUrl",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
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
.field private baseUrl:Ljava/lang/String;

.field private final baseUrlCode:Ljava/lang/Integer;
    .annotation runtime Ll8/k;
        name = "serviceDomainType"
    .end annotation
.end field

.field private final iconName:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "iconName"
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;

.field private final institutionCode:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "kurumKodu"
    .end annotation
.end field

.field private final institutionName:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "kurumAdi"
    .end annotation
.end field

.field private final institutionType:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "kurumTipi"
    .end annotation
.end field

.field private final isConceptService:Z
    .annotation runtime Ll8/k;
        name = "isConcept"
    .end annotation
.end field

.field private final isNativePage:Z
    .annotation runtime Ll8/k;
        name = "isNativePage"
    .end annotation
.end field

.field private final serviceCode:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "hizmetKodu"
    .end annotation
.end field

.field private final serviceFolderName:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "mobilHizmetKlasoru"
    .end annotation
.end field

.field private final serviceFolderNameEng:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "engFolder"
    .end annotation
.end field

.field private final serviceName:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "hizmetAdi"
    .end annotation
.end field

.field private final serviceNameEng:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "engHeader"
    .end annotation
.end field

.field private final serviceURL:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "mobilHizmetURL"
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    const-string v7, "serviceName"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "serviceCode"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "institutionName"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "institutionCode"

    invoke-static {p4, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "serviceFolderName"

    invoke-static {p6, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "serviceURL"

    invoke-static {p7, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceName:Ljava/lang/String;

    iput-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceCode:Ljava/lang/String;

    iput-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionName:Ljava/lang/String;

    iput-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionCode:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionType:Ljava/lang/String;

    iput-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderName:Ljava/lang/String;

    iput-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceURL:Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderNameEng:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceNameEng:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconName:Ljava/lang/String;

    move-object/from16 v1, p11

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->url:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrlCode:Ljava/lang/Integer;

    move/from16 v1, p13

    iput-boolean v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isConceptService:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isNativePage:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconUrl:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/d;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit16 v1, v0, 0x1000

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    move/from16 v16, p13

    :goto_0
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    move/from16 v17, p14

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    invoke-direct/range {v3 .. v19}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionCode:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionType:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceURL:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderNameEng:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceNameEng:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconName:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->url:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrlCode:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isConceptService:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isNativePage:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconUrl:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrl:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrlCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isConceptService:Z

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isNativePage:Z

    return v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionType:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderNameEng:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceNameEng:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const-string v0, "serviceName"

    move-object/from16 v17, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceCode"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "institutionName"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "institutionCode"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceFolderName"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceURL"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceName:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceCode:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionName:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionCode:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionType:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderName:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceURL:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceURL:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderNameEng:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderNameEng:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceNameEng:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceNameEng:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconName:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->url:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrlCode:Ljava/lang/Integer;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrlCode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isConceptService:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isConceptService:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isNativePage:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isNativePage:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrl:Ljava/lang/String;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrlCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrlCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIconName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstitutionCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstitutionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstitutionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceFolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceFolderNameEng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderNameEng:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceNameEng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceNameEng:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceName:Ljava/lang/String;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceCode:Ljava/lang/String;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionType:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_0
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderName:Ljava/lang/String;

    .line 44
    .line 45
    const/16 v3, 0x1f

    .line 46
    .line 47
    invoke-static {v1, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceURL:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderNameEng:Ljava/lang/String;

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :goto_1
    add-int/2addr v0, v1

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    .line 70
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceNameEng:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    :goto_2
    add-int/2addr v0, v1

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    .line 83
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconName:Ljava/lang/String;

    .line 84
    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    :goto_3
    add-int/2addr v0, v1

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    .line 95
    .line 96
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->url:Ljava/lang/String;

    .line 97
    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    goto :goto_4

    .line 102
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    :goto_4
    add-int/2addr v0, v1

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    .line 108
    .line 109
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrlCode:Ljava/lang/Integer;

    .line 110
    .line 111
    if-nez v1, :cond_5

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    goto :goto_5

    .line 115
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    :goto_5
    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    .line 121
    .line 122
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isConceptService:Z

    .line 123
    .line 124
    const/4 v3, 0x1

    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    :cond_6
    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isNativePage:Z

    .line 132
    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_7
    move v3, v1

    .line 137
    :goto_6
    add-int/2addr v0, v3

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    .line 139
    .line 140
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconUrl:Ljava/lang/String;

    .line 141
    .line 142
    if-nez v1, :cond_8

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    goto :goto_7

    .line 146
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    :goto_7
    add-int/2addr v0, v1

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    .line 153
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrl:Ljava/lang/String;

    .line 154
    .line 155
    if-nez v1, :cond_9

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    :goto_8
    add-int/2addr v0, v2

    .line 163
    return v0
.end method

.method public final isConceptService()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isConceptService:Z

    return v0
.end method

.method public final isNativePage()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isNativePage:Z

    return v0
.end method

.method public final setBaseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public final setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SearchServiceContent(serviceName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", serviceCode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceCode:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", institutionName="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", institutionCode="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionCode:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", institutionType="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->institutionType:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", serviceFolderName="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", serviceURL="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceURL:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", serviceFolderNameEng="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceFolderNameEng:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", serviceNameEng="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->serviceNameEng:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", iconName="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", url="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->url:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", baseUrlCode="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrlCode:Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", isConceptService="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isConceptService:Z

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", isNativePage="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isNativePage:Z

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", iconUrl="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->iconUrl:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", baseUrl="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->baseUrl:Ljava/lang/String;

    .line 159
    .line 160
    const/16 v2, 0x29

    .line 161
    .line 162
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    return-object v0
.end method
