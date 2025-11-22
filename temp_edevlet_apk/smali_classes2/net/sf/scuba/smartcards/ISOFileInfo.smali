.class public Lnet/sf/scuba/smartcards/ISOFileInfo;
.super Lnet/sf/scuba/smartcards/FileInfo;
.source "SourceFile"


# static fields
.field public static final A0:B = -0x60t

.field public static final A1:B = -0x5ft

.field public static final A2:B = -0x5et

.field public static final A5:B = -0x5bt

.field public static final AB:B = -0x55t

.field public static final AC:B = -0x54t

.field public static final CHANNEL_SECURITY:B = -0x72t

.field public static final DATA_BYTES1:B = -0x80t

.field public static final DATA_BYTES2:B = -0x7ft

.field public static final DF_NAME:B = -0x7ct

.field public static final ENV_TEMP_EF:B = -0x73t

.field public static final FCI_BYTE:B = 0x6ft

.field public static final FCI_EXT:B = -0x79t

.field public static final FCP_BYTE:B = 0x62t

.field public static final FILE_DESCRIPTOR:B = -0x7et

.field public static final FILE_IDENTIFIER:B = -0x7dt

.field public static final FMD_BYTE:B = 0x64t

.field public static final LCS_BYTE:B = -0x76t

.field public static final PROP_INFO:B = -0x7bt

.field public static final SECURITY_ATTR_COMPACT:B = -0x74t

.field public static final SECURITY_ATTR_EXP:B = -0x75t

.field public static final SECURITY_ATTR_PROP:B = -0x7at

.field public static final SHORT_EF:B = -0x78t


# instance fields
.field a0:[B

.field a1:[B

.field a2:[B

.field a5:[B

.field ab:[B

.field ac:[B

.field channelSecurity:B

.field dataCodingByte:B

.field descriptorByte:B

.field dfName:[B

.field envTempEF:S

.field fciExt:S

.field fid:S

.field fileLength:I

.field fileLengthFCI:I

.field lcsByte:B

.field mainTag:B

.field maxRecordSize:S

.field maxRecordsCount:S

.field propInfo:[B

.field secAttrCompact:[B

.field secAttrExp:[B

.field secAttrProp:[B

.field shortEF:B


# direct methods
.method public constructor <init>([B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/scuba/smartcards/FileInfo;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->mainTag:B

    iput v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    iput v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLengthFCI:I

    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->descriptorByte:B

    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dataCodingByte:B

    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S

    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dfName:[B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->propInfo:[B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrProp:[B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrExp:[B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrCompact:[B

    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fciExt:S

    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->envTempEF:S

    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->lcsByte:B

    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->channelSecurity:B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a0:[B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a1:[B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a2:[B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a5:[B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ab:[B

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ac:[B

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x62

    if-eq v1, v2, :cond_2

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v0, "Malformed FCI data"

    invoke-direct {p1, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->mainTag:B

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    new-array v3, v2, [B

    const/4 v4, 0x2

    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v2, :cond_c

    add-int/lit8 v5, p1, 0x1

    :try_start_0
    aget-byte p1, v3, p1

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v3, v5

    new-array v7, v5, [B

    invoke-static {v3, v6, v7, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v5

    const/16 v8, -0x5b

    if-eq p1, v8, :cond_b

    const/16 v8, -0x55

    if-eq p1, v8, :cond_a

    const/16 v8, -0x54

    if-eq p1, v8, :cond_9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v0, "Malformed FCI: unrecognized tag."

    invoke-direct {p1, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a2:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :pswitch_1
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a1:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :pswitch_2
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a0:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-static {v5, v1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    aget-byte p1, v7, v0

    iput-byte p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->channelSecurity:B

    goto/16 :goto_3

    :pswitch_4
    invoke-static {v5, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iput-short p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->envTempEF:S

    goto/16 :goto_3

    :pswitch_5
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrCompact:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :pswitch_6
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrExp:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-static {v5, v1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    aget-byte p1, v7, v0

    iput-byte p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->lcsByte:B

    goto/16 :goto_3

    :pswitch_8
    invoke-static {v5, v0, v1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(III)V

    if-nez v5, :cond_3

    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    goto/16 :goto_3

    :cond_3
    aget-byte p1, v7, v0

    iput-byte p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    goto/16 :goto_3

    :pswitch_9
    invoke-static {v5, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iput-short p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fciExt:S

    goto/16 :goto_3

    :pswitch_a
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrProp:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :pswitch_b
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->propInfo:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :pswitch_c
    const/16 p1, 0x10

    invoke-static {v5, v0, p1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(III)V

    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dfName:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :pswitch_d
    invoke-static {v5, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iput-short p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    goto/16 :goto_3

    :pswitch_e
    const/4 p1, 0x6

    invoke-static {v5, v1, p1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(III)V

    aget-byte p1, v7, v0

    iput-byte p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->descriptorByte:B

    if-ne v1, v5, :cond_4

    goto/16 :goto_3

    :cond_4
    aget-byte p1, v7, v1

    iput-byte p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dataCodingByte:B

    if-ne v4, v5, :cond_5

    goto/16 :goto_3

    :cond_5
    const/4 p1, 0x3

    if-ne v5, p1, :cond_6

    aget-byte v8, v7, v4

    int-to-short v8, v8

    iput-short v8, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S

    goto :goto_2

    :cond_6
    new-instance v8, Ljava/math/BigInteger;

    new-array v9, v4, [B

    aget-byte v10, v7, v4

    aput-byte v10, v9, v0

    aget-byte p1, v7, p1

    aput-byte p1, v9, v1

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v8}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iput-short p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S

    const/4 p1, 0x4

    :goto_2
    if-ne p1, v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v8, 0x5

    if-ne v5, v8, :cond_8

    aget-byte p1, v7, p1

    int-to-short p1, p1

    iput-short p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    goto :goto_3

    :cond_8
    new-instance v5, Ljava/math/BigInteger;

    new-array v8, v4, [B

    add-int/lit8 v9, p1, 0x1

    aget-byte p1, v7, p1

    aput-byte p1, v8, v0

    aget-byte p1, v7, v9

    aput-byte p1, v8, v1

    invoke-direct {v5, v8}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iput-short p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    goto :goto_3

    :pswitch_f
    invoke-static {v5, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLengthFCI:I

    goto :goto_3

    :pswitch_10
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    goto :goto_3

    :cond_9
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ac:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_a
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ab:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_b
    new-array p1, v5, [B

    iput-object p1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a5:[B

    invoke-static {v7, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move p1, v6

    goto/16 :goto_1

    :catch_0
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v0, "Malformed FCI."

    invoke-direct {p1, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x80
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x76
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x60
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static catArray([B[B)[B
    .locals 3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static checkLen(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string p1, "Malformed FCI."

    invoke-direct {p0, p1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkLen(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string p1, "Malformed FCI."

    invoke-direct {p0, p1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getArray(B[B)[B
    .locals 4

    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte p0, v0, v2

    array-length p0, p1

    int-to-byte p0, p0

    const/4 v3, 0x1

    aput-byte p0, v0, v3

    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getFID()S
    .locals 1

    iget-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    return v0
.end method

.method public getFileLength()I
    .locals 1

    iget v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    return v0
.end method

.method public getFormatted()[B
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [B

    iget-byte v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->mainTag:B

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    if-eq v2, v3, :cond_1

    int-to-short v2, v2

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v4, -0x80

    invoke-static {v4, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_1
    iget v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLengthFCI:I

    if-eq v2, v3, :cond_2

    int-to-short v2, v2

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v4, -0x7f

    invoke-static {v4, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_2
    iget-byte v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->descriptorByte:B

    const/4 v4, 0x1

    if-eq v2, v3, :cond_8

    new-array v5, v4, [B

    aput-byte v2, v5, v0

    new-array v2, v0, [B

    iget-byte v6, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dataCodingByte:B

    if-eq v6, v3, :cond_3

    new-array v2, v4, [B

    aput-byte v6, v2, v0

    :cond_3
    new-array v6, v0, [B

    iget-short v7, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S

    const/16 v8, 0x100

    if-eq v7, v3, :cond_5

    if-gt v7, v8, :cond_4

    iget-short v6, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    if-ne v6, v3, :cond_4

    int-to-byte v6, v7

    invoke-static {v6}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    invoke-static {v7}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {v6}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    :cond_5
    new-array v7, v0, [B

    iget-short v9, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    if-eq v9, v3, :cond_7

    if-gt v9, v8, :cond_6

    int-to-byte v7, v9

    invoke-static {v7}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_6
    invoke-static {v9}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-static {v7}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    :cond_7
    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v2

    invoke-static {v2, v6}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v2

    invoke-static {v2, v7}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v2

    const/16 v5, -0x7e

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_8
    iget-short v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    if-eq v2, v3, :cond_9

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v5, -0x7d

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_9
    iget-object v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dfName:[B

    if-eqz v2, :cond_a

    const/16 v5, -0x7c

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_a
    iget-object v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->propInfo:[B

    if-eqz v2, :cond_b

    const/16 v5, -0x7b

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_b
    iget-object v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrProp:[B

    if-eqz v2, :cond_c

    const/16 v5, -0x7a

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_c
    iget-short v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fciExt:S

    if-eq v2, v3, :cond_d

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v5, -0x79

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_d
    iget-byte v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    if-eq v2, v3, :cond_f

    if-nez v2, :cond_e

    new-array v2, v0, [B

    goto :goto_2

    :cond_e
    new-array v5, v4, [B

    aput-byte v2, v5, v0

    move-object v2, v5

    :goto_2
    const/16 v5, -0x78

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_f
    iget-byte v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->lcsByte:B

    if-eq v2, v3, :cond_10

    new-array v5, v4, [B

    aput-byte v2, v5, v0

    const/16 v2, -0x76

    invoke-static {v2, v5}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_10
    iget-object v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrExp:[B

    if-eqz v2, :cond_11

    const/16 v5, -0x75

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_11
    iget-object v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrCompact:[B

    if-eqz v2, :cond_12

    const/16 v5, -0x74

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_12
    iget-short v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->envTempEF:S

    if-eq v2, v3, :cond_13

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v5, -0x73

    invoke-static {v5, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_13
    iget-byte v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->channelSecurity:B

    if-eq v2, v3, :cond_14

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    const/16 v0, -0x72

    invoke-static {v0, v3}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_14
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a0:[B

    if-eqz v0, :cond_15

    const/16 v2, -0x60

    invoke-static {v2, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_15
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a1:[B

    if-eqz v0, :cond_16

    const/16 v2, -0x5f

    invoke-static {v2, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_16
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a2:[B

    if-eqz v0, :cond_17

    const/16 v2, -0x5e

    invoke-static {v2, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_17
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a5:[B

    if-eqz v0, :cond_18

    const/16 v2, -0x5b

    invoke-static {v2, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_18
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ab:[B

    if-eqz v0, :cond_19

    const/16 v2, -0x55

    invoke-static {v2, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_19
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ac:[B

    if-eqz v0, :cond_1a

    const/16 v2, -0x54

    invoke-static {v2, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    :cond_1a
    iget-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->mainTag:B

    invoke-static {v0, v1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nLength FCI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLengthFCI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nDesc byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->descriptorByte:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nData byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dataCodingByte:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nRecord size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nRecord count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nFID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDF name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dfName:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\npropInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->propInfo:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsecAttrProp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrProp:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsecAttrExp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrExp:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsecAttrComp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrCompact:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nFCI ext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fciExt:S

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nEF env temp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->envTempEF:S

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nShort EF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLCS byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->lcsByte:B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nChannel sec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->channelSecurity:B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\na0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a0:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\na1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a1:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\na2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a2:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\na5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a5:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ab:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ac:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
