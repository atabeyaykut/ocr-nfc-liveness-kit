.class public Lorg/jmrtd/lds/icao/DG12File;
.super Lorg/jmrtd/lds/DataGroup;
.source "SourceFile"


# static fields
.field public static final CONTENT_SPECIFIC_CONSTRUCTED_TAG:I = 0xa0

.field public static final COUNT_TAG:I = 0x2

.field public static final DATE_AND_TIME_OF_PERSONALIZATION_TAG:I = 0x5f55

.field public static final DATE_OF_ISSUE_TAG:I = 0x5f26

.field public static final ENDORSEMENTS_AND_OBSERVATIONS_TAG:I = 0x5f1b

.field public static final IMAGE_OF_FRONT_TAG:I = 0x5f1d

.field public static final IMAGE_OF_REAR_TAG:I = 0x5f1e

.field public static final ISSUING_AUTHORITY_TAG:I = 0x5f19

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAME_OF_OTHER_PERSON_TAG:I = 0x5f1a

.field public static final PERSONALIZATION_SYSTEM_SERIAL_NUMBER_TAG:I = 0x5f56

.field private static final SDF:Ljava/lang/String; = "yyyyMMdd"

.field private static final SDTF:Ljava/lang/String; = "yyyyMMddhhmmss"

.field private static final TAG_LIST_TAG:I = 0x5c

.field public static final TAX_OR_EXIT_REQUIREMENTS_TAG:I = 0x5f1c

.field private static final serialVersionUID:J = -0x1b78203798429daaL


# instance fields
.field private dateAndTimeOfPersonalization:Ljava/lang/String;

.field private dateOfIssue:Ljava/lang/String;

.field private endorsementsAndObservations:Ljava/lang/String;

.field private imageOfFront:[B

.field private imageOfRear:[B

.field private issuingAuthority:Ljava/lang/String;

.field private namesOfOtherPersons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private personalizationSystemSerialNumber:Ljava/lang/String;

.field private tagPresenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private taxOrExitRequirements:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/icao/DG12File;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x6c

    invoke-direct {p0, v0, p1}, Lorg/jmrtd/lds/DataGroup;-><init>(ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lorg/jmrtd/lds/DataGroup;-><init>(I)V

    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->issuingAuthority:Ljava/lang/String;

    iput-object p2, p0, Lorg/jmrtd/lds/icao/DG12File;->dateOfIssue:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    if-nez p3, :cond_0

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    iput-object p4, p0, Lorg/jmrtd/lds/icao/DG12File;->endorsementsAndObservations:Ljava/lang/String;

    iput-object p5, p0, Lorg/jmrtd/lds/icao/DG12File;->taxOrExitRequirements:Ljava/lang/String;

    iput-object p6, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfFront:[B

    iput-object p7, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfRear:[B

    iput-object p8, p0, Lorg/jmrtd/lds/icao/DG12File;->dateAndTimeOfPersonalization:Ljava/lang/String;

    iput-object p9, p0, Lorg/jmrtd/lds/icao/DG12File;->personalizationSystemSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B[BLjava/util/Date;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddhhmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v11, v2

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lorg/jmrtd/lds/icao/DG12File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseDateAndTimeOfPersonalization([B)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->dateAndTimeOfPersonalization:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lorg/jmrtd/lds/icao/DG12File;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Exception"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private parseDateOfIssue([B)V
    .locals 5

    const-string v0, "Wrong date format"

    if-eqz p1, :cond_2

    array-length v1, p1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->dateOfIssue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lorg/jmrtd/lds/icao/DG12File;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lorg/jmrtd/lds/icao/DG12File;->LOGGER:Ljava/util/logging/Logger;

    const-string v2, "DG12 date of issue is not in expected ccyymmdd ASCII format"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->dateOfIssue:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseEndorsementsAndObservations([B)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->endorsementsAndObservations:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jmrtd/lds/icao/DG12File;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->endorsementsAndObservations:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private parseImageOfFront([B)V
    .locals 0

    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfFront:[B

    return-void
.end method

.method private parseImageOfRear([B)V
    .locals 0

    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfRear:[B

    return-void
.end method

.method private parseIssuingAuthority([B)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->issuingAuthority:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jmrtd/lds/icao/DG12File;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->issuingAuthority:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private declared-synchronized parseNameOfOtherPerson([B)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lorg/jmrtd/lds/icao/DG12File;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private parsePersonalizationSystemSerialNumber([B)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->personalizationSystemSerialNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jmrtd/lds/icao/DG12File;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->personalizationSystemSerialNumber:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private parseTaxOrExitRequirements([B)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->taxOrExitRequirements:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jmrtd/lds/icao/DG12File;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/DG12File;->taxOrExitRequirements:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private readField(ILnet/sf/scuba/tlv/TLVInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa0

    .line 6
    .line 7
    const-string v2, "Expected "

    .line 8
    .line 9
    if-ne v0, v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const-string v0, ", found "

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne p1, v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne p1, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    array-length v3, p1

    .line 37
    if-ne v3, v1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    aget-byte p1, p1, v1

    .line 41
    .line 42
    and-int/lit16 p1, p1, 0xff

    .line 43
    .line 44
    :goto_0
    if-ge v1, p1, :cond_8

    .line 45
    .line 46
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/16 v4, 0x5f1a

    .line 51
    .line 52
    if-ne v3, v4, :cond_0

    .line 53
    .line 54
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-direct {p0, v3}, Lorg/jmrtd/lds/icao/DG12File;->parseNameOfOtherPerson([B)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "Number of content specific fields should be encoded in single byte, found "

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p2

    .line 123
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string v0, "Expected length 1 count length, found "

    .line 126
    .line 127
    invoke-static {v0, p1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p2

    .line 135
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p2

    .line 167
    :cond_4
    if-ne v0, p1, :cond_9

    .line 168
    .line 169
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const/16 p2, 0x5f26

    .line 177
    .line 178
    if-eq v0, p2, :cond_7

    .line 179
    .line 180
    const/16 p2, 0x5f55

    .line 181
    .line 182
    if-eq v0, p2, :cond_6

    .line 183
    .line 184
    const/16 p2, 0x5f56

    .line 185
    .line 186
    if-eq v0, p2, :cond_5

    .line 187
    .line 188
    packed-switch v0, :pswitch_data_0

    .line 189
    .line 190
    .line 191
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v1, "Unknown field tag in DG12: "

    .line 196
    .line 197
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v0, p2}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;->parseImageOfRear([B)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;->parseImageOfFront([B)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;->parseTaxOrExitRequirements([B)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;->parseEndorsementsAndObservations([B)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;->parseNameOfOtherPerson([B)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :pswitch_5
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;->parseIssuingAuthority([B)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_5
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;->parsePersonalizationSystemSerialNumber([B)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_6
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;->parseDateAndTimeOfPersonalization([B)V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_7
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;->parseDateOfIssue([B)V

    .line 241
    .line 242
    .line 243
    :cond_8
    :goto_1
    return-void

    .line 244
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 245
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string p1, ", but found "

    .line 259
    .line 260
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p2

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x5f19
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/jmrtd/lds/icao/DG12File;

    invoke-virtual {p0}, Lorg/jmrtd/lds/icao/DG12File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jmrtd/lds/icao/DG12File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDateAndTimeOfPersonalization()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->dateAndTimeOfPersonalization:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfIssue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->dateOfIssue:Ljava/lang/String;

    return-object v0
.end method

.method public getEndorsementsAndObservations()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->endorsementsAndObservations:Ljava/lang/String;

    return-object v0
.end method

.method public getImageOfFront()[B
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfFront:[B

    return-object v0
.end method

.method public getImageOfRear()[B
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfRear:[B

    return-object v0
.end method

.method public getIssuingAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->issuingAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getNamesOfOtherPersons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    return-object v0
.end method

.method public getPersonalizationSystemSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->personalizationSystemSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    const/16 v0, 0x6c

    return v0
.end method

.method public getTagPresenceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->issuingAuthority:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x5f19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->dateOfIssue:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    const/16 v1, 0x5f26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    const/16 v1, 0x5f1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->endorsementsAndObservations:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    const/16 v1, 0x5f1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->taxOrExitRequirements:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    const/16 v1, 0x5f1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfFront:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    const/16 v1, 0x5f1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfRear:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    const/16 v1, 0x5f1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->dateAndTimeOfPersonalization:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    const/16 v1, 0x5f55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->personalizationSystemSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    const/16 v1, 0x5f56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->tagPresenceList:Ljava/util/List;

    return-object v0
.end method

.method public getTaxOrExitRequirements()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/DG12File;->taxOrExitRequirements:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/jmrtd/lds/icao/DG12File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x70

    return v0
.end method

.method public readContent(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/scuba/tlv/TLVInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/scuba/tlv/TLVInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/scuba/tlv/TLVInputStream;

    invoke-direct {v0, p1}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    new-instance v4, Lnet/sf/scuba/tlv/TLVInputStream;

    invoke-direct {v4, v2}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v4

    invoke-static {v4}, Lnet/sf/scuba/tlv/TLVUtil;->getTagLength(I)I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lorg/jmrtd/lds/icao/DG12File;->readField(ILnet/sf/scuba/tlv/TLVInputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected tag list in DG12"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DG12File ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->issuingAuthority:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lorg/jmrtd/lds/icao/DG12File;->dateOfIssue:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v3, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    move-object v3, v2

    .line 49
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lorg/jmrtd/lds/icao/DG12File;->endorsementsAndObservations:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v3, :cond_4

    .line 58
    .line 59
    move-object v3, v2

    .line 60
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lorg/jmrtd/lds/icao/DG12File;->taxOrExitRequirements:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v3, :cond_5

    .line 69
    .line 70
    move-object v3, v2

    .line 71
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfFront:[B

    .line 78
    .line 79
    const-string v4, ")"

    .line 80
    .line 81
    const-string v5, "image ("

    .line 82
    .line 83
    if-nez v3, :cond_6

    .line 84
    .line 85
    move-object v3, v2

    .line 86
    goto :goto_2

    .line 87
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v6, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfFront:[B

    .line 93
    .line 94
    array-length v6, v6

    .line 95
    invoke-static {v3, v6, v4}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfRear:[B

    .line 106
    .line 107
    if-nez v3, :cond_7

    .line 108
    .line 109
    move-object v3, v2

    .line 110
    goto :goto_3

    .line 111
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v5, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfRear:[B

    .line 117
    .line 118
    array-length v5, v5

    .line 119
    invoke-static {v3, v5, v4}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lorg/jmrtd/lds/icao/DG12File;->dateAndTimeOfPersonalization:Ljava/lang/String;

    .line 130
    .line 131
    if-nez v3, :cond_8

    .line 132
    .line 133
    move-object v3, v2

    .line 134
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->personalizationSystemSerialNumber:Ljava/lang/String;

    .line 141
    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    move-object v2, v1

    .line 146
    :goto_4
    const-string v1, "]"

    .line 147
    .line 148
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0
.end method

.method public writeContent(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lnet/sf/scuba/tlv/TLVOutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lnet/sf/scuba/tlv/TLVOutputStream;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lnet/sf/scuba/tlv/TLVOutputStream;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lnet/sf/scuba/tlv/TLVOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 11
    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :goto_0
    const/16 v0, 0x5c

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/jmrtd/lds/icao/DG12File;->getTagPresenceList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/io/DataOutputStream;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValueEnd()V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const/16 v2, 0x5f26

    .line 79
    .line 80
    const-string v3, "UTF-8"

    .line 81
    .line 82
    if-eq v1, v2, :cond_6

    .line 83
    .line 84
    const/16 v2, 0x5f55

    .line 85
    .line 86
    if-eq v1, v2, :cond_5

    .line 87
    .line 88
    const/16 v2, 0x5f56

    .line 89
    .line 90
    if-eq v1, v2, :cond_4

    .line 91
    .line 92
    packed-switch v1, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v2, "Unknown field tag in DG12: "

    .line 100
    .line 101
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v0}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :pswitch_0
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfRear:[B

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :pswitch_1
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->imageOfFront:[B

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :pswitch_2
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->taxOrExitRequirements:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :pswitch_3
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->endorsementsAndObservations:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :pswitch_4
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    .line 165
    .line 166
    if-nez v1, :cond_2

    .line 167
    .line 168
    new-instance v1, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    .line 174
    .line 175
    :cond_2
    const/16 v1, 0xa0

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 178
    .line 179
    .line 180
    const/4 v1, 0x2

    .line 181
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->write(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValueEnd()V

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->namesOfOtherPersons:Ljava/util/List;

    .line 197
    .line 198
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_3

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Ljava/lang/String;

    .line 213
    .line 214
    const/16 v4, 0x5f1a

    .line 215
    .line 216
    invoke-virtual {p1, v4}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {p1, v2}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_3
    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValueEnd()V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :pswitch_5
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->issuingAuthority:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_4
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->personalizationSystemSerialNumber:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_5
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 273
    .line 274
    .line 275
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->dateAndTimeOfPersonalization:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_2

    .line 285
    .line 286
    :cond_6
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 287
    .line 288
    .line 289
    iget-object v1, p0, Lorg/jmrtd/lds/icao/DG12File;->dateOfIssue:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {p1, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_2

    .line 299
    .line 300
    :cond_7
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x5f19
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
