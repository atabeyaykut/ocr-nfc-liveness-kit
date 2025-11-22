.class public final Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\'\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0010\u0014J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u00c6\u0003J\u000f\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u00c6\u0003J\t\u0010*\u001a\u00020\u0010H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000f\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u00c6\u0003J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\u000f\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\u00c1\u0001\u00106\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u00c6\u0001J\u0013\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010:\u001a\u00020;H\u00d6\u0001J\t\u0010<\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u000c\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018R\u0016\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0018R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0018R\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0016R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0018R\u0016\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0018R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0018R\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0016\u00a8\u0006="
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;",
        "",
        "expireDate",
        "",
        "partyId",
        "report",
        "",
        "role",
        "status",
        "updateDate",
        "accidentComment",
        "consolidatedStatus",
        "createDate",
        "dashPoint",
        "driver",
        "location",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;",
        "phoneNumber",
        "nameSurname",
        "vehicle",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V",
        "getAccidentComment",
        "()Ljava/util/List;",
        "getConsolidatedStatus",
        "()Ljava/lang/String;",
        "getCreateDate",
        "getDashPoint",
        "getDriver",
        "getExpireDate",
        "getLocation",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;",
        "getNameSurname",
        "getPartyId",
        "getPhoneNumber",
        "getReport",
        "getRole",
        "getStatus",
        "getUpdateDate",
        "getVehicle",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final accidentComment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "accidentComment"
    .end annotation
.end field

.field private final consolidatedStatus:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "consolidatedStatus"
    .end annotation
.end field

.field private final createDate:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "createDate"
    .end annotation
.end field

.field private final dashPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "dashPoint"
    .end annotation
.end field

.field private final driver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "driver"
    .end annotation
.end field

.field private final expireDate:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "expireDate"
    .end annotation
.end field

.field private final location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;
    .annotation runtime Ll8/k;
        name = "location"
    .end annotation
.end field

.field private final nameSurname:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "nameSurname"
    .end annotation
.end field

.field private final partyId:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "id"
    .end annotation
.end field

.field private final phoneNumber:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "phoneNumber"
    .end annotation
.end field

.field private final report:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "report"
    .end annotation
.end field

.field private final role:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "role"
    .end annotation
.end field

.field private final status:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "status"
    .end annotation
.end field

.field private final updateDate:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "updateDate"
    .end annotation
.end field

.field private final vehicle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll8/k;
        name = "vehicle"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

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

    move-object/from16 v13, p15

    const-string v14, "expireDate"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "partyId"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "report"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "role"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "status"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "updateDate"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "accidentComment"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "consolidatedStatus"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "createDate"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "dashPoint"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "driver"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "location"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "vehicle"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->expireDate:Ljava/lang/String;

    iput-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->partyId:Ljava/lang/String;

    iput-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->report:Ljava/util/List;

    iput-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->role:Ljava/lang/String;

    iput-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->status:Ljava/lang/String;

    iput-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->updateDate:Ljava/lang/String;

    iput-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->accidentComment:Ljava/util/List;

    iput-object v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->consolidatedStatus:Ljava/lang/String;

    iput-object v9, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->createDate:Ljava/lang/String;

    iput-object v10, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->dashPoint:Ljava/util/List;

    iput-object v11, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->driver:Ljava/util/List;

    iput-object v12, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;

    move-object/from16 v1, p13

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->phoneNumber:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->nameSurname:Ljava/lang/String;

    iput-object v13, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->vehicle:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->expireDate:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->partyId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->report:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->role:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->status:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->updateDate:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->accidentComment:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->consolidatedStatus:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->createDate:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->dashPoint:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->driver:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->phoneNumber:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->nameSurname:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->vehicle:Ljava/util/List;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p15

    :goto_e
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

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->expireDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->dashPoint:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->driver:Ljava/util/List;

    return-object v0
.end method

.method public final component12()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->nameSurname:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->vehicle:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->partyId:Ljava/lang/String;

    return-object v0
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

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->report:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->role:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->accidentComment:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->consolidatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;"
        }
    .end annotation

    const-string v0, "expireDate"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partyId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accidentComment"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consolidatedStatus"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createDate"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dashPoint"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "driver"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vehicle"

    move-object/from16 v15, p15

    invoke-static {v15, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;

    move-object v1, v0

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->expireDate:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->expireDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->partyId:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->partyId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->report:Ljava/util/List;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->report:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->role:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->role:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->status:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->updateDate:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->updateDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->accidentComment:Ljava/util/List;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->accidentComment:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->consolidatedStatus:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->consolidatedStatus:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->createDate:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->createDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->dashPoint:Ljava/util/List;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->dashPoint:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->driver:Ljava/util/List;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->driver:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->nameSurname:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->nameSurname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->vehicle:Ljava/util/List;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->vehicle:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAccidentComment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->accidentComment:Ljava/util/List;

    return-object v0
.end method

.method public final getConsolidatedStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->consolidatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreateDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getDashPoint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->dashPoint:Ljava/util/List;

    return-object v0
.end method

.method public final getDriver()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->driver:Ljava/util/List;

    return-object v0
.end method

.method public final getExpireDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->expireDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;

    return-object v0
.end method

.method public final getNameSurname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->nameSurname:Ljava/lang/String;

    return-object v0
.end method

.method public final getPartyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->partyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getReport()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->report:Ljava/util/List;

    return-object v0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->role:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getVehicle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->vehicle:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->expireDate:Ljava/lang/String;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->partyId:Ljava/lang/String;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->report:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/internal/c;->c(Ljava/util/List;II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->role:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->status:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->updateDate:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->accidentComment:Ljava/util/List;

    .line 42
    .line 43
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/internal/c;->c(Ljava/util/List;II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->consolidatedStatus:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->createDate:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->dashPoint:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/internal/c;->c(Ljava/util/List;II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->driver:Ljava/util/List;

    .line 66
    .line 67
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/internal/c;->c(Ljava/util/List;II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;

    .line 72
    .line 73
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v1, v0

    .line 78
    mul-int/lit8 v1, v1, 0x1f

    .line 79
    .line 80
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->phoneNumber:Ljava/lang/String;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    if-nez v0, :cond_0

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    :goto_0
    add-int/2addr v1, v0

    .line 92
    mul-int/lit8 v1, v1, 0x1f

    .line 93
    .line 94
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->nameSurname:Ljava/lang/String;

    .line 95
    .line 96
    if-nez v0, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    :goto_1
    add-int/2addr v1, v2

    .line 104
    mul-int/lit8 v1, v1, 0x1f

    .line 105
    .line 106
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->vehicle:Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    add-int/2addr v0, v1

    .line 113
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InitializeData(expireDate="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->expireDate:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", partyId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->partyId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", report="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->report:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", role="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->role:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", status="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->status:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", updateDate="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->updateDate:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", accidentComment="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->accidentComment:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", consolidatedStatus="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->consolidatedStatus:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", createDate="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->createDate:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", dashPoint="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->dashPoint:Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", driver="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->driver:Ljava/util/List;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", location="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->location:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", phoneNumber="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->phoneNumber:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", nameSurname="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->nameSurname:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", vehicle="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->vehicle:Ljava/util/List;

    .line 149
    .line 150
    const/16 v2, 0x29

    .line 151
    .line 152
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->j(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    return-object v0
.end method
