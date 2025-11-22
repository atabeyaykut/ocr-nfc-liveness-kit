.class public Lorg/jmrtd/lds/icao/MRZInfo;
.super Lorg/jmrtd/lds/AbstractLDSInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;
    }
.end annotation


# static fields
.field public static final DOC_TYPE_ID1:I = 0x1

.field public static final DOC_TYPE_ID2:I = 0x2

.field public static final DOC_TYPE_ID3:I = 0x3

.field public static final DOC_TYPE_UNSPECIFIED:I = 0x0

.field private static final MRZ_CHARS:Ljava/lang/String; = "<0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final serialVersionUID:J = 0x61e8461ed28cf30cL


# instance fields
.field private compositeCheckDigit:C

.field private dateOfBirth:Ljava/lang/String;

.field private dateOfBirthCheckDigit:C

.field private dateOfExpiry:Ljava/lang/String;

.field private dateOfExpiryCheckDigit:C

.field private documentCode:Ljava/lang/String;

.field private documentNumber:Ljava/lang/String;

.field private documentNumberCheckDigit:C

.field private documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

.field private gender:Lnet/sf/scuba/data/Gender;

.field private issuingState:Ljava/lang/String;

.field private nationality:Ljava/lang/String;

.field private optionalData1:Ljava/lang/String;

.field private optionalData2:Ljava/lang/String;

.field private personalNumberCheckDigit:C

.field private primaryIdentifier:Ljava/lang/String;

.field private secondaryIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Lorg/jmrtd/lds/AbstractLDSInfo;-><init>()V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/jmrtd/lds/icao/MRZInfo;->readObject(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Exception"

    invoke-direct {p0}, Lorg/jmrtd/lds/AbstractLDSInfo;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readObject(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getDocumentTypeFromDocumentCode(Ljava/lang/String;)Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    move-result-object v1

    invoke-static/range {p10 .. p10}, Lorg/jmrtd/lds/icao/MRZInfo;->personalNumberToOptionalData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p6

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lorg/jmrtd/lds/icao/MRZInfo;-><init>(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getDocumentTypeFromDocumentCode(Ljava/lang/String;)Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lorg/jmrtd/lds/icao/MRZInfo;-><init>(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/jmrtd/lds/AbstractLDSInfo;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    invoke-static {p1, p2}, Lorg/jmrtd/lds/icao/MRZInfo;->isDocumentCodeConsistentWithDocumentType(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, p5, p10}, Lorg/jmrtd/lds/icao/MRZInfo;->isOptionalDataConsistentWithDocumentType(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p7, :cond_2

    invoke-static {p2}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentCode:Ljava/lang/String;

    iput-object p3, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    invoke-static {p11}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<"

    const-string p3, " "

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->primaryIdentifier:Ljava/lang/String;

    invoke-static {p12}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->secondaryIdentifier:Ljava/lang/String;

    invoke-static {p4}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    iput-object p9, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    iput-object p6, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    iput-object p7, p0, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    iput-object p8, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    if-nez p5, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    if-nez p10, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p10}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Gender must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong optional data length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong document code"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkDigit(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit(Ljava/lang/String;Z)C

    move-result p0

    return p0
.end method

.method private static checkDigit(Ljava/lang/String;Z)C
    .locals 9

    const-string v0, "UTF-8"

    const-string v1, "Error in computing check digit"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :try_start_0
    new-array p0, v2, [B

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    :goto_0
    const/4 v3, 0x3

    new-array v4, v3, [I

    const/4 v5, 0x7

    aput v5, v4, v2

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x2

    aput v5, v4, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_1

    rem-int/lit8 v7, v3, 0x3

    aget v7, v4, v7

    aget-byte v8, p0, v3

    invoke-static {v8}, Lorg/jmrtd/lds/icao/MRZInfo;->decodeMRZDigit(B)I

    move-result v8

    mul-int v7, v7, v8

    add-int/2addr v7, v6

    rem-int/lit8 v6, v7, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    aget-byte p0, p0, v2

    int-to-char p0, p0

    if-eqz p1, :cond_2

    const/16 p1, 0x30

    if-ne p0, p1, :cond_2

    const/16 p0, 0x3c

    :cond_2
    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Error in computing check digit."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private checkDigit()V
    .locals 2

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD3:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit(Ljava/lang/String;Z)C

    move-result v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->personalNumberCheckDigit:C

    :cond_0
    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    invoke-direct {p0, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->getComposite(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->compositeCheckDigit:C

    return-void
.end method

.method public static createMRVAMRZInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;)Lorg/jmrtd/lds/icao/MRZInfo;
    .locals 14

    new-instance v13, Lorg/jmrtd/lds/icao/MRZInfo;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->MRVA:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p5

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lorg/jmrtd/lds/icao/MRZInfo;-><init>(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method

.method public static createMRVBMRZInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;)Lorg/jmrtd/lds/icao/MRZInfo;
    .locals 14

    new-instance v13, Lorg/jmrtd/lds/icao/MRZInfo;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->MRVB:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p5

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lorg/jmrtd/lds/icao/MRZInfo;-><init>(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method

.method public static createTD1MRZInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jmrtd/lds/icao/MRZInfo;
    .locals 14

    new-instance v13, Lorg/jmrtd/lds/icao/MRZInfo;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD1:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    move-object v0, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lorg/jmrtd/lds/icao/MRZInfo;-><init>(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method

.method public static createTD2MRZInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;)Lorg/jmrtd/lds/icao/MRZInfo;
    .locals 14

    new-instance v13, Lorg/jmrtd/lds/icao/MRZInfo;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD2:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p5

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lorg/jmrtd/lds/icao/MRZInfo;-><init>(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method

.method public static createTD3MRZInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;)Lorg/jmrtd/lds/icao/MRZInfo;
    .locals 14

    new-instance v13, Lorg/jmrtd/lds/icao/MRZInfo;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD3:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    invoke-static/range {p9 .. p9}, Lorg/jmrtd/lds/icao/MRZInfo;->personalNumberToOptionalData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    move-object v0, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p5

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lorg/jmrtd/lds/icao/MRZInfo;-><init>(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/scuba/data/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method

.method private static decodeMRZDigit(B)I
    .locals 3

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    packed-switch p0, :pswitch_data_1

    .line 9
    .line 10
    .line 11
    packed-switch p0, :pswitch_data_2

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 15
    .line 16
    const-string v1, "Could not decode MRZ character "

    .line 17
    .line 18
    const-string v2, " (\'"

    .line 19
    .line 20
    invoke-static {v1, p0, v2}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    int-to-char p0, p0

    .line 25
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, "\')"

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :pswitch_0
    const/16 p0, 0x9

    .line 46
    .line 47
    return p0

    .line 48
    :pswitch_1
    const/16 p0, 0x8

    .line 49
    .line 50
    return p0

    .line 51
    :pswitch_2
    const/4 p0, 0x7

    .line 52
    return p0

    .line 53
    :pswitch_3
    const/4 p0, 0x6

    .line 54
    return p0

    .line 55
    :pswitch_4
    const/4 p0, 0x5

    .line 56
    return p0

    .line 57
    :pswitch_5
    const/4 p0, 0x4

    .line 58
    return p0

    .line 59
    :pswitch_6
    const/4 p0, 0x3

    .line 60
    return p0

    .line 61
    :pswitch_7
    const/4 p0, 0x2

    .line 62
    return p0

    .line 63
    :pswitch_8
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :pswitch_9
    const/16 p0, 0x23

    .line 66
    .line 67
    return p0

    .line 68
    :pswitch_a
    const/16 p0, 0x22

    .line 69
    .line 70
    return p0

    .line 71
    :pswitch_b
    const/16 p0, 0x21

    .line 72
    .line 73
    return p0

    .line 74
    :pswitch_c
    const/16 p0, 0x20

    .line 75
    .line 76
    return p0

    .line 77
    :pswitch_d
    const/16 p0, 0x1f

    .line 78
    .line 79
    return p0

    .line 80
    :pswitch_e
    const/16 p0, 0x1e

    .line 81
    .line 82
    return p0

    .line 83
    :pswitch_f
    const/16 p0, 0x1d

    .line 84
    .line 85
    return p0

    .line 86
    :pswitch_10
    const/16 p0, 0x1c

    .line 87
    .line 88
    return p0

    .line 89
    :pswitch_11
    const/16 p0, 0x1b

    .line 90
    .line 91
    return p0

    .line 92
    :pswitch_12
    const/16 p0, 0x1a

    .line 93
    .line 94
    return p0

    .line 95
    :pswitch_13
    const/16 p0, 0x19

    .line 96
    .line 97
    return p0

    .line 98
    :pswitch_14
    const/16 p0, 0x18

    .line 99
    .line 100
    return p0

    .line 101
    :pswitch_15
    const/16 p0, 0x17

    .line 102
    .line 103
    return p0

    .line 104
    :pswitch_16
    const/16 p0, 0x16

    .line 105
    .line 106
    return p0

    .line 107
    :pswitch_17
    const/16 p0, 0x15

    .line 108
    .line 109
    return p0

    .line 110
    :pswitch_18
    const/16 p0, 0x14

    .line 111
    .line 112
    return p0

    .line 113
    :pswitch_19
    const/16 p0, 0x13

    .line 114
    .line 115
    return p0

    .line 116
    :pswitch_1a
    const/16 p0, 0x12

    .line 117
    .line 118
    return p0

    .line 119
    :pswitch_1b
    const/16 p0, 0x11

    .line 120
    .line 121
    return p0

    .line 122
    :pswitch_1c
    const/16 p0, 0x10

    .line 123
    .line 124
    return p0

    .line 125
    :pswitch_1d
    const/16 p0, 0xf

    .line 126
    .line 127
    return p0

    .line 128
    :pswitch_1e
    const/16 p0, 0xe

    .line 129
    .line 130
    return p0

    .line 131
    :pswitch_1f
    const/16 p0, 0xd

    .line 132
    .line 133
    return p0

    .line 134
    :pswitch_20
    const/16 p0, 0xc

    .line 135
    .line 136
    return p0

    .line 137
    :pswitch_21
    const/16 p0, 0xb

    .line 138
    .line 139
    return p0

    .line 140
    :pswitch_22
    const/16 p0, 0xa

    .line 141
    .line 142
    return p0

    .line 143
    :cond_0
    :pswitch_23
    const/4 p0, 0x0

    .line 144
    return p0

    .line 145
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_23
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, ""

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static genderToString(Lnet/sf/scuba/data/Gender;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jmrtd/lds/icao/MRZInfo$1;->$SwitchMap$net$sf$scuba$data$Gender:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "<"

    return-object p0

    :cond_0
    const-string p0, "F"

    return-object p0

    :cond_1
    const-string p0, "M"

    return-object p0
.end method

.method private getComposite(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lorg/jmrtd/lds/icao/MRZInfo$1;->$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq p1, v2, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->personalNumberCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported document type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v2

    :cond_2
    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    const/4 v1, 0x7

    :goto_1
    invoke-static {p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    if-gt v1, v3, :cond_4

    invoke-static {p1, v3}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-static {p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0xd

    invoke-static {v1, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    const/16 v1, 0xb

    goto :goto_1
.end method

.method private static getDocumentType(Ljava/lang/String;I)Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;
    .locals 2

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_5

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-gt v0, v1, :cond_5

    .line 16
    .line 17
    const/16 v0, 0x48

    .line 18
    .line 19
    const-string v1, "V"

    .line 20
    .line 21
    if-eq p1, v0, :cond_3

    .line 22
    .line 23
    const/16 v0, 0x58

    .line 24
    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    const/16 p0, 0x5a

    .line 28
    .line 29
    if-eq p1, p0, :cond_0

    .line 30
    .line 31
    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->UNKNOWN:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD1:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->MRVA:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD3:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->MRVB:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_4
    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD2:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v0, "Was expecting 1 or 2 digit document code, got "

    .line 64
    .line 65
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method private static getDocumentTypeFromDocumentCode(Ljava/lang/String;)Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;
    .locals 1

    const-string v0, "A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "I"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->MRVB:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    return-object p0

    :cond_1
    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD3:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->UNKNOWN:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD1:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    return-object p0
.end method

.method private static isDocumentCodeConsistentWithDocumentType(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$1;->$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    if-eq p0, v3, :cond_4

    if-eq p0, v2, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    return v0

    :cond_2
    const-string p0, "P"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const-string p0, "V"

    goto :goto_0

    :cond_4
    const-string p0, "C"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "I"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "A"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private static isOptionalDataConsistentWithDocumentType(Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lorg/jmrtd/lds/icao/MRZInfo$1;->$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const/4 v3, 0x2

    if-eq p0, v3, :cond_9

    const/4 v3, 0x3

    if-eq p0, v3, :cond_6

    const/4 v3, 0x4

    if-eq p0, v3, :cond_3

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, v0, :cond_2

    :cond_1
    if-nez p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x10

    if-gt p0, p1, :cond_5

    :cond_4
    if-nez p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_8

    :cond_7
    if-nez p2, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x7

    if-gt p0, p1, :cond_b

    :cond_a
    if-nez p2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1

    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, v0, :cond_f

    :cond_d
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xb

    if-gt p0, p1, :cond_f

    :cond_e
    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method private static mrzFormat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "<0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/16 v2, 0x3c

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p1, :cond_3

    const-string p0, "<"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Argument too wide ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " > "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static nameToString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const-string v0, " |<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v1, [Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_2
    const/16 v7, 0x3c

    if-ge v5, v3, :cond_3

    aget-object v8, p0, v5

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "<<"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v0

    const/4 p1, 0x0

    :goto_4
    if-ge p1, p0, :cond_5

    aget-object v3, v0, p1

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_5

    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static personalNumberToOptionalData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-static {p0, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-gt v0, v1, :cond_2

    invoke-static {p0, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong personal number: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static readCountryCode(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readDate(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readGender(Ljava/io/DataInputStream;)Lnet/sf/scuba/data/Gender;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "M"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lnet/sf/scuba/data/Gender;->MALE:Lnet/sf/scuba/data/Gender;

    return-object p1

    :cond_0
    const-string v0, "F"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lnet/sf/scuba/data/Gender;->FEMALE:Lnet/sf/scuba/data/Gender;

    return-object p1

    :cond_1
    sget-object p1, Lnet/sf/scuba/data/Gender;->UNKNOWN:Lnet/sf/scuba/data/Gender;

    return-object p1
.end method

.method private readNameIdentifiers(Ljava/lang/String;)V
    .locals 4

    const-string v0, "<<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, " "

    const-string v2, "<"

    if-gez v0, :cond_0

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->primaryIdentifier:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->secondaryIdentifier:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->primaryIdentifier:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readSecondaryIdentifiers(Ljava/lang/String;)V

    return-void
.end method

.method private readObject(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentCode:Ljava/lang/String;

    invoke-static {v1, p2}, Lorg/jmrtd/lds/icao/MRZInfo;->getDocumentType(Ljava/lang/String;I)Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    move-result-object p2

    iput-object p2, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$1;->$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readObjectTD3OrMRVA(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readObjectTD2orMRVB(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readObjectTD1(Ljava/io/InputStream;)V

    :goto_1
    return-void
.end method

.method private readObjectTD1(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/io/DataInputStream;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :goto_0
    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readCountryCode(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-char v0, v0

    .line 33
    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    .line 34
    .line 35
    const/16 v0, 0xf

    .line 36
    .line 37
    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    .line 46
    .line 47
    iget-char v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    .line 48
    .line 49
    const/16 v2, 0x3c

    .line 50
    .line 51
    if-ne v1, v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-gez v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    :cond_1
    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    .line 74
    .line 75
    add-int/lit8 v2, v0, -0x1

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v3, v4, v1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput-char v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    .line 102
    .line 103
    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    .line 104
    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    .line 120
    .line 121
    :cond_2
    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    .line 128
    .line 129
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readDate(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    int-to-char v0, v0

    .line 140
    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    .line 141
    .line 142
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readGender(Ljava/io/DataInputStream;)Lnet/sf/scuba/data/Gender;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    .line 147
    .line 148
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readDate(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    int-to-char v0, v0

    .line 159
    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    .line 160
    .line 161
    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readCountryCode(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    .line 166
    .line 167
    const/16 v0, 0xb

    .line 168
    .line 169
    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    int-to-char v0, v0

    .line 184
    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->compositeCheckDigit:C

    .line 185
    .line 186
    const/16 v0, 0x1e

    .line 187
    .line 188
    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readNameIdentifiers(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method private readObjectTD2orMRVB(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readCountryCode(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    const/16 v0, 0x1f

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readNameIdentifiers(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readCountryCode(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readDate(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readGender(Ljava/io/DataInputStream;)Lnet/sf/scuba/data/Gender;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readDate(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->MRVB:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    goto :goto_2

    :cond_1
    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD2:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    iget-char v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    const-string v0, ""

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD2:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->compositeCheckDigit:C

    :cond_3
    return-void
.end method

.method private readObjectTD3OrMRVA(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readCountryCode(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    const/16 v0, 0x27

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readNameIdentifiers(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readCountryCode(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readDate(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readGender(Ljava/io/DataInputStream;)Lnet/sf/scuba/data/Gender;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readDate(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->MRVA:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->personalNumberCheckDigit:C

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->compositeCheckDigit:C

    :goto_1
    return-void
.end method

.method private readSecondaryIdentifiers(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->secondaryIdentifier:Ljava/lang/String;

    return-void
.end method

.method private static readString(Ljava/io/DataInputStream;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-byte v1, p0, v0

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    const/16 v1, 0x20

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writeCountryCode(Ljava/lang/String;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeDateOfBirth(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeDateOfExpiry(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeDocumentType(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentCode:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    return-void
.end method

.method private writeGender(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->genderToString(Lnet/sf/scuba/data/Gender;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeName(Ljava/io/DataOutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->primaryIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->secondaryIdentifier:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lorg/jmrtd/lds/icao/MRZInfo;->nameToString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeObjectTD1(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeDocumentType(Ljava/io/DataOutputStream;)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeCountryCode(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0xf

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, v0, p1, v3}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeDateOfBirth(Ljava/io/DataOutputStream;)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeGender(Ljava/io/DataOutputStream;)V

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeDateOfExpiry(Ljava/io/DataOutputStream;)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeCountryCode(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-direct {p0, v0, p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->compositeCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    const/16 v0, 0x1e

    invoke-direct {p0, p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->writeName(Ljava/io/DataOutputStream;I)V

    return-void
.end method

.method private writeObjectTD2OrMRVB(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeDocumentType(Ljava/io/DataOutputStream;)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeCountryCode(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    const/16 v0, 0x1f

    invoke-direct {p0, p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->writeName(Ljava/io/DataOutputStream;I)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD2:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v3}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    const/16 v1, 0x3c

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1, p1, v3}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    iget-char v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeCountryCode(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeDateOfBirth(Ljava/io/DataOutputStream;)V

    iget-char v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeGender(Ljava/io/DataOutputStream;)V

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeDateOfExpiry(Ljava/io/DataOutputStream;)V

    iget-char v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    sget-object v2, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->MRVB:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    goto :goto_4

    :cond_3
    const/4 v1, 0x7

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    :goto_3
    invoke-direct {p0, v0, p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->compositeCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    :goto_4
    return-void
.end method

.method private writeObjectTD3OrMRVA(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeDocumentType(Ljava/io/DataOutputStream;)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeCountryCode(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    const/16 v0, 0x27

    invoke-direct {p0, p1, v0}, Lorg/jmrtd/lds/icao/MRZInfo;->writeName(Ljava/io/DataOutputStream;I)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-direct {p0, v0, p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumberCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeCountryCode(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeDateOfBirth(Ljava/io/DataOutputStream;)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirthCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeGender(Ljava/io/DataOutputStream;)V

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeDateOfExpiry(Ljava/io/DataOutputStream;)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiryCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    sget-object v1, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->MRVA:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-direct {p0, v0, p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-direct {p0, v0, p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->personalNumberCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget-char v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->compositeCheckDigit:C

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    :goto_1
    return-void
.end method

.method private writeString(Ljava/lang/String;Ljava/io/DataOutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p3}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "UTF-8"

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/jmrtd/lds/icao/MRZInfo;

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentCode:Ljava/lang/String;

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->documentCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->primaryIdentifier:Ljava/lang/String;

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->primaryIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->secondaryIdentifier:Ljava/lang/String;

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->secondaryIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->getPersonalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getPersonalNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v1, :cond_9

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    if-nez v1, :cond_5

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v1, :cond_9

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    if-eqz v2, :cond_8

    :cond_7
    if-eqz v1, :cond_9

    iget-object v2, p1, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    iget-object p1, p1, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->equalsModuloFillerChars(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfExpiry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    invoke-virtual {v0}, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->getCode()I

    move-result v0

    return v0
.end method

.method public getGender()Lnet/sf/scuba/data/Gender;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    return-object v0
.end method

.method public getIssuingState()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalData1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalData2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonalNumber()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrimaryIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->primaryIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->secondaryIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryIdentifierComponents()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jmrtd/lds/icao/MRZInfo;->secondaryIdentifier:Ljava/lang/String;

    const-string v1, " |<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x35

    return v0
.end method

.method public setDateOfBirth(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfBirth:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void
.end method

.method public setDateOfExpiry(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->dateOfExpiry:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void
.end method

.method public setDocumentCode(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentCode:Ljava/lang/String;

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getDocumentTypeFromDocumentCode(Ljava/lang/String;)Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    sget-object v0, Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;->TD1:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDocumentNumber(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentNumber:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void
.end method

.method public setGender(Lnet/sf/scuba/data/Gender;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->gender:Lnet/sf/scuba/data/Gender;

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Gender must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIssuingState(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->issuingState:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void
.end method

.method public setNationality(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->nationality:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void
.end method

.method public setOptionalData2(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData2:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void
.end method

.method public setPersonalNumber(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    invoke-static {p1, v1}, Lorg/jmrtd/lds/icao/MRZInfo;->mrzFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->optionalData1:Ljava/lang/String;

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit(Ljava/lang/String;)C

    move-result p1

    iput-char p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->personalNumberCheckDigit:C

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong personal number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrimaryIdentifier(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->trimTrailingFillerChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->primaryIdentifier:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void
.end method

.method public setSecondaryIdentifierComponents([Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->secondaryIdentifier:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void
.end method

.method public setSecondaryIdentifiers(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->readSecondaryIdentifiers(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractLDSInfo;->getEncoded()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x48

    const/4 v3, 0x0

    const-string v4, "\n"

    if-eq v1, v2, :cond_2

    const/16 v2, 0x58

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1e

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3c

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2c

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x24

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObject(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/jmrtd/lds/icao/MRZInfo$1;->$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType:[I

    iget-object v1, p0, Lorg/jmrtd/lds/icao/MRZInfo;->documentType:Lorg/jmrtd/lds/icao/MRZInfo$DocumentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported document type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeObjectTD3OrMRVA(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeObjectTD2OrMRVB(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/MRZInfo;->writeObjectTD1(Ljava/io/OutputStream;)V

    :goto_1
    return-void
.end method
