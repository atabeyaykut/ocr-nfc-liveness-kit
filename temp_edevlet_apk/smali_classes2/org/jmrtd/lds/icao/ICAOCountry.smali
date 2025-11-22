.class public Lorg/jmrtd/lds/icao/ICAOCountry;
.super Lnet/sf/scuba/data/Country;
.source "SourceFile"


# static fields
.field public static final DE:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final EUE:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final GBD:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final GBN:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final GBO:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final GBP:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final GBS:Lorg/jmrtd/lds/icao/ICAOCountry;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final RKS:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final UNA:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final UNK:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final UNO:Lorg/jmrtd/lds/icao/ICAOCountry;

.field private static final VALUES:[Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XBA:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XCC:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XCE:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XCO:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XDC:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XEC:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XES:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XIM:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XMP:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XOM:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XPO:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XXA:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XXB:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XXC:Lorg/jmrtd/lds/icao/ICAOCountry;

.field public static final XXX:Lorg/jmrtd/lds/icao/ICAOCountry;

.field private static final serialVersionUID:J = 0x28d76eb5f659363aL


# instance fields
.field private alpha2Code:Ljava/lang/String;

.field private alpha3Code:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nationality:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    const-string v0, "org.jmrtd"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/icao/ICAOCountry;->LOGGER:Ljava/util/logging/Logger;

    new-instance v0, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v1, "Germany"

    const-string v2, "German"

    const-string v3, "DE"

    const-string v4, "D<<"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jmrtd/lds/icao/ICAOCountry;->DE:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v1, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v2, "Republic of Kosovo"

    const-string v3, "Kosovar"

    const-string v4, "KS"

    const-string v5, "RKS"

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/jmrtd/lds/icao/ICAOCountry;->RKS:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v2, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v3, "GBD"

    const-string v4, "British Dependent territories citizen"

    const-string v5, "GB"

    invoke-direct {v2, v5, v3, v4}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jmrtd/lds/icao/ICAOCountry;->GBD:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v3, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v4, "GBN"

    const-string v6, "British National (Overseas)"

    invoke-direct {v3, v5, v4, v6}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/jmrtd/lds/icao/ICAOCountry;->GBN:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v4, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v6, "GBO"

    const-string v7, "British Overseas citizen"

    invoke-direct {v4, v5, v6, v7}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jmrtd/lds/icao/ICAOCountry;->GBO:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v6, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v7, "GBP"

    const-string v8, "British Protected person"

    invoke-direct {v6, v5, v7, v8}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/jmrtd/lds/icao/ICAOCountry;->GBP:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v7, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v8, "GBS"

    const-string v9, "British Subject"

    invoke-direct {v7, v5, v8, v9}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/jmrtd/lds/icao/ICAOCountry;->GBS:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v5, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v8, "Stateless person"

    const-string v9, "Stateless"

    const-string v10, "XX"

    const-string v11, "XXA"

    invoke-direct {v5, v10, v11, v8, v9}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/jmrtd/lds/icao/ICAOCountry;->XXA:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v8, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v9, "XXB"

    const-string v11, "Refugee"

    invoke-direct {v8, v10, v9, v11, v11}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/jmrtd/lds/icao/ICAOCountry;->XXB:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v9, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v11, "XXC"

    const-string v12, "Refugee (other)"

    invoke-direct {v9, v10, v11, v12, v12}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lorg/jmrtd/lds/icao/ICAOCountry;->XXC:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v11, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v12, "XXX"

    const-string v13, "Unspecified"

    invoke-direct {v11, v10, v12, v13, v13}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/jmrtd/lds/icao/ICAOCountry;->XXX:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v12, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v13, "Europe"

    const-string v14, "European"

    const-string v15, "EU"

    move-object/from16 v16, v11

    const-string v11, "EUE"

    invoke-direct {v12, v15, v11, v13, v14}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lorg/jmrtd/lds/icao/ICAOCountry;->EUE:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v11, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v13, "UNO"

    const-string v14, "United Nations Organization"

    const-string v15, "UN"

    invoke-direct {v11, v15, v13, v14}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/jmrtd/lds/icao/ICAOCountry;->UNO:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v13, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v14, "UNA"

    move-object/from16 v17, v11

    const-string v11, "United Nations Agency"

    invoke-direct {v13, v15, v14, v11}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lorg/jmrtd/lds/icao/ICAOCountry;->UNA:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v11, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v14, "UNK"

    move-object/from16 v18, v13

    const-string v13, "United Nations Interim Administration Mission in Kosovo"

    invoke-direct {v11, v15, v14, v13}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/jmrtd/lds/icao/ICAOCountry;->UNK:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v13, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v14, "XBA"

    const-string v15, "African Development Bank (ADB)"

    invoke-direct {v13, v10, v14, v15}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lorg/jmrtd/lds/icao/ICAOCountry;->XBA:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v14, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v15, "XIM"

    move-object/from16 v19, v13

    const-string v13, "African Export-Import Bank (AFREXIM bank)"

    invoke-direct {v14, v10, v15, v13}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lorg/jmrtd/lds/icao/ICAOCountry;->XIM:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v13, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v15, "XCC"

    move-object/from16 v20, v14

    const-string v14, "Carribean Community or one of its emissaries (CARICOM)"

    move-object/from16 v21, v11

    const-string v11, "XC"

    invoke-direct {v13, v11, v15, v14}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lorg/jmrtd/lds/icao/ICAOCountry;->XCC:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v11, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v14, "XCE"

    const-string v15, "Council of Europe"

    invoke-direct {v11, v10, v14, v15}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/jmrtd/lds/icao/ICAOCountry;->XCE:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v11, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v14, "XCO"

    const-string v15, "Common Market for Eastern an Southern Africa (COMESA)"

    invoke-direct {v11, v10, v14, v15}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/jmrtd/lds/icao/ICAOCountry;->XCO:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v14, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v15, "XEC"

    move-object/from16 v22, v11

    const-string v11, "Economic Community of West African States (ECOWAS)"

    invoke-direct {v14, v10, v15, v11}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lorg/jmrtd/lds/icao/ICAOCountry;->XEC:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v11, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v15, "XPO"

    move-object/from16 v23, v14

    const-string v14, "International Criminal Police Organization (INTERPOL)"

    move-object/from16 v24, v13

    const-string v13, "XP"

    invoke-direct {v11, v13, v15, v14}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/jmrtd/lds/icao/ICAOCountry;->XPO:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v13, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v14, "XES"

    const-string v15, "Organization of Eastern Caribbean States (OECS)"

    invoke-direct {v13, v10, v14, v15}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lorg/jmrtd/lds/icao/ICAOCountry;->XES:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v13, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v14, "XMP"

    const-string v15, "Parliamentary Assembly of the Mediterranean (PAM)"

    invoke-direct {v13, v10, v14, v15}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lorg/jmrtd/lds/icao/ICAOCountry;->XMP:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v13, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v14, "XOM"

    const-string v15, "Sovereign Military Order of Malta or one of its emissaries"

    move-object/from16 v25, v11

    const-string v11, "XO"

    invoke-direct {v13, v11, v14, v15}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lorg/jmrtd/lds/icao/ICAOCountry;->XOM:Lorg/jmrtd/lds/icao/ICAOCountry;

    new-instance v11, Lorg/jmrtd/lds/icao/ICAOCountry;

    const-string v14, "XDC"

    const-string v15, "Southern African Development Community"

    invoke-direct {v11, v10, v14, v15}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/jmrtd/lds/icao/ICAOCountry;->XDC:Lorg/jmrtd/lds/icao/ICAOCountry;

    const/16 v10, 0x16

    new-array v10, v10, [Lorg/jmrtd/lds/icao/ICAOCountry;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v6, v10, v0

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v5, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    const/16 v0, 0xa

    aput-object v16, v10, v0

    const/16 v0, 0xb

    aput-object v12, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v21, v10, v0

    const/16 v0, 0xf

    aput-object v19, v10, v0

    const/16 v0, 0x10

    aput-object v20, v10, v0

    const/16 v0, 0x11

    aput-object v24, v10, v0

    const/16 v0, 0x12

    aput-object v22, v10, v0

    const/16 v0, 0x13

    aput-object v23, v10, v0

    const/16 v0, 0x14

    aput-object v25, v10, v0

    const/16 v0, 0x15

    aput-object v13, v10, v0

    sput-object v10, Lorg/jmrtd/lds/icao/ICAOCountry;->VALUES:[Lorg/jmrtd/lds/icao/ICAOCountry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/scuba/data/Country;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p3}, Lorg/jmrtd/lds/icao/ICAOCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/scuba/data/Country;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/lds/icao/ICAOCountry;->alpha2Code:Ljava/lang/String;

    iput-object p2, p0, Lorg/jmrtd/lds/icao/ICAOCountry;->alpha3Code:Ljava/lang/String;

    iput-object p3, p0, Lorg/jmrtd/lds/icao/ICAOCountry;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/jmrtd/lds/icao/ICAOCountry;->nationality:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lnet/sf/scuba/data/Country;
    .locals 5

    .line 1
    sget-object v0, Lorg/jmrtd/lds/icao/ICAOCountry;->VALUES:[Lorg/jmrtd/lds/icao/ICAOCountry;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget-object v4, v3, Lorg/jmrtd/lds/icao/ICAOCountry;->alpha3Code:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :try_start_0
    invoke-static {p0}, Lnet/sf/scuba/data/Country;->getInstance(Ljava/lang/String;)Lnet/sf/scuba/data/Country;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    sget-object v1, Lorg/jmrtd/lds/icao/ICAOCountry;->LOGGER:Ljava/util/logging/Logger;

    .line 28
    .line 29
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 30
    .line 31
    const-string v3, "Unknown country"

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v1, "Illegal ICAO country alpha 3 code "

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/ICAOCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/ICAOCountry;->nationality:Ljava/lang/String;

    return-object v0
.end method

.method public toAlpha2Code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/ICAOCountry;->alpha2Code:Ljava/lang/String;

    return-object v0
.end method

.method public toAlpha3Code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/ICAOCountry;->alpha3Code:Ljava/lang/String;

    return-object v0
.end method

.method public valueOf()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
