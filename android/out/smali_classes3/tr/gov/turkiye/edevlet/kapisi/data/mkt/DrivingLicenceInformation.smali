.class public final Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008(\u0008\u0086\u0008\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0011J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0005H\u00c6\u0003J\t\u0010%\u001a\u00020\u0007H\u00c6\u0003J\t\u0010&\u001a\u00020\tH\u00c6\u0003J\t\u0010\'\u001a\u00020\u0007H\u00c6\u0003J\t\u0010(\u001a\u00020\tH\u00c6\u0003J\t\u0010)\u001a\u00020\u0007H\u00c6\u0003J\t\u0010*\u001a\u00020\u0007H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003Jw\u0010,\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010-\u001a\u00020\u00032\u0008\u0010.\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010/\u001a\u00020\u0005H\u00d6\u0001J\t\u00100\u001a\u00020\u0007H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017R\u0016\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019R\u0016\u0010\u000c\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017R\u0016\u0010\r\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0017R\u0016\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0013R\u0016\u0010\u000f\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017R\u0016\u0010\u0010\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0013\u00a8\u00061"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;",
        "",
        "adaySurucuMu",
        "",
        "belgeNo",
        "",
        "kartHarfSeriNo",
        "",
        "kullaniciKimlikNo",
        "",
        "sorgulananAd",
        "sorgulananKimlikNo",
        "sorgulananSoyad",
        "surucuBelgeTur",
        "tckkYaYuklendiMi",
        "verildigiBirim",
        "yeniTipBelgeMi",
        "(ZILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V",
        "getAdaySurucuMu",
        "()Z",
        "getBelgeNo",
        "()I",
        "getKartHarfSeriNo",
        "()Ljava/lang/String;",
        "getKullaniciKimlikNo",
        "()J",
        "getSorgulananAd",
        "getSorgulananKimlikNo",
        "getSorgulananSoyad",
        "getSurucuBelgeTur",
        "getTckkYaYuklendiMi",
        "getVerildigiBirim",
        "getYeniTipBelgeMi",
        "component1",
        "component10",
        "component11",
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
.field private final adaySurucuMu:Z
    .annotation runtime Ll8/k;
        name = "adaySurucuMu"
    .end annotation
.end field

.field private final belgeNo:I
    .annotation runtime Ll8/k;
        name = "belgeNo"
    .end annotation
.end field

.field private final kartHarfSeriNo:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "kartHarfSeriNo"
    .end annotation
.end field

.field private final kullaniciKimlikNo:J
    .annotation runtime Ll8/k;
        name = "kullaniciKimlikNo"
    .end annotation
.end field

.field private final sorgulananAd:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "sorgulananAd"
    .end annotation
.end field

.field private final sorgulananKimlikNo:J
    .annotation runtime Ll8/k;
        name = "sorgulananKimlikNo"
    .end annotation
.end field

.field private final sorgulananSoyad:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "sorgulananSoyad"
    .end annotation
.end field

.field private final surucuBelgeTur:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "surucuBelgeTur"
    .end annotation
.end field

.field private final tckkYaYuklendiMi:Z
    .annotation runtime Ll8/k;
        name = "tckkYaYuklendiMi"
    .end annotation
.end field

.field private final verildigiBirim:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "verildigiBirim"
    .end annotation
.end field

.field private final yeniTipBelgeMi:Z
    .annotation runtime Ll8/k;
        name = "yeniTipBelgeMi"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    const-string v0, "kartHarfSeriNo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sorgulananAd"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sorgulananSoyad"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surucuBelgeTur"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verildigiBirim"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->adaySurucuMu:Z

    iput p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->belgeNo:I

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kartHarfSeriNo:Ljava/lang/String;

    iput-wide p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kullaniciKimlikNo:J

    iput-object p6, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananAd:Ljava/lang/String;

    iput-wide p7, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananKimlikNo:J

    iput-object p9, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananSoyad:Ljava/lang/String;

    iput-object p10, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->surucuBelgeTur:Ljava/lang/String;

    iput-boolean p11, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->tckkYaYuklendiMi:Z

    iput-object p12, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->verildigiBirim:Ljava/lang/String;

    iput-boolean p13, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->yeniTipBelgeMi:Z

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;ZILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->adaySurucuMu:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->belgeNo:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kartHarfSeriNo:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kullaniciKimlikNo:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananAd:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananKimlikNo:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananSoyad:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->surucuBelgeTur:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-boolean v12, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->tckkYaYuklendiMi:Z

    goto :goto_8

    :cond_8
    move/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->verildigiBirim:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->yeniTipBelgeMi:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p13

    :goto_a
    move p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->copy(ZILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->adaySurucuMu:Z

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->verildigiBirim:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->yeniTipBelgeMi:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->belgeNo:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kartHarfSeriNo:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kullaniciKimlikNo:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananAd:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananKimlikNo:J

    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananSoyad:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->surucuBelgeTur:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->tckkYaYuklendiMi:Z

    return v0
.end method

.method public final copy(ZILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;
    .locals 15

    const-string v0, "kartHarfSeriNo"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sorgulananAd"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sorgulananSoyad"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surucuBelgeTur"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verildigiBirim"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;

    move-object v1, v0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v8, p7

    move/from16 v12, p11

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;-><init>(ZILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->adaySurucuMu:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->adaySurucuMu:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->belgeNo:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->belgeNo:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kartHarfSeriNo:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kartHarfSeriNo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kullaniciKimlikNo:J

    iget-wide v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kullaniciKimlikNo:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananAd:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananAd:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananKimlikNo:J

    iget-wide v5, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananKimlikNo:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananSoyad:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananSoyad:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->surucuBelgeTur:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->surucuBelgeTur:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->tckkYaYuklendiMi:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->tckkYaYuklendiMi:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->verildigiBirim:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->verildigiBirim:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->yeniTipBelgeMi:Z

    iget-boolean p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->yeniTipBelgeMi:Z

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAdaySurucuMu()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->adaySurucuMu:Z

    return v0
.end method

.method public final getBelgeNo()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->belgeNo:I

    return v0
.end method

.method public final getKartHarfSeriNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kartHarfSeriNo:Ljava/lang/String;

    return-object v0
.end method

.method public final getKullaniciKimlikNo()J
    .locals 2

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kullaniciKimlikNo:J

    return-wide v0
.end method

.method public final getSorgulananAd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananAd:Ljava/lang/String;

    return-object v0
.end method

.method public final getSorgulananKimlikNo()J
    .locals 2

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananKimlikNo:J

    return-wide v0
.end method

.method public final getSorgulananSoyad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananSoyad:Ljava/lang/String;

    return-object v0
.end method

.method public final getSurucuBelgeTur()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->surucuBelgeTur:Ljava/lang/String;

    return-object v0
.end method

.method public final getTckkYaYuklendiMi()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->tckkYaYuklendiMi:Z

    return v0
.end method

.method public final getVerildigiBirim()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->verildigiBirim:Ljava/lang/String;

    return-object v0
.end method

.method public final getYeniTipBelgeMi()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->yeniTipBelgeMi:Z

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->adaySurucuMu:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->belgeNo:I

    .line 10
    .line 11
    add-int/2addr v0, v2

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kartHarfSeriNo:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v3, 0x1f

    .line 17
    .line 18
    invoke-static {v2, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kullaniciKimlikNo:J

    .line 23
    .line 24
    const/16 v4, 0x20

    .line 25
    .line 26
    ushr-long v5, v2, v4

    .line 27
    .line 28
    xor-long/2addr v2, v5

    .line 29
    long-to-int v3, v2

    .line 30
    add-int/2addr v0, v3

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananAd:Ljava/lang/String;

    .line 34
    .line 35
    const/16 v3, 0x1f

    .line 36
    .line 37
    invoke-static {v2, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-wide v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananKimlikNo:J

    .line 42
    .line 43
    ushr-long v4, v2, v4

    .line 44
    .line 45
    xor-long/2addr v2, v4

    .line 46
    long-to-int v3, v2

    .line 47
    add-int/2addr v0, v3

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananSoyad:Ljava/lang/String;

    .line 51
    .line 52
    const/16 v3, 0x1f

    .line 53
    .line 54
    invoke-static {v2, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->surucuBelgeTur:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v2, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-boolean v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->tckkYaYuklendiMi:Z

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    :cond_1
    add-int/2addr v0, v2

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->verildigiBirim:Ljava/lang/String;

    .line 73
    .line 74
    const/16 v3, 0x1f

    .line 75
    .line 76
    invoke-static {v2, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-boolean v2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->yeniTipBelgeMi:Z

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v1, v2

    .line 86
    :goto_0
    add-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DrivingLicenceInformation(adaySurucuMu="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->adaySurucuMu:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", belgeNo="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->belgeNo:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", kartHarfSeriNo="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kartHarfSeriNo:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", kullaniciKimlikNo="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->kullaniciKimlikNo:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", sorgulananAd="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananAd:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", sorgulananKimlikNo="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananKimlikNo:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", sorgulananSoyad="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->sorgulananSoyad:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", surucuBelgeTur="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->surucuBelgeTur:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", tckkYaYuklendiMi="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->tckkYaYuklendiMi:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", verildigiBirim="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->verildigiBirim:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", yeniTipBelgeMi="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DrivingLicenceInformation;->yeniTipBelgeMi:Z

    .line 109
    .line 110
    const/16 v2, 0x29

    .line 111
    .line 112
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->f(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method
