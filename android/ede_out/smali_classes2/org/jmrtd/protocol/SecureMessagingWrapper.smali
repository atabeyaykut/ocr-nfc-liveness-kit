.class public abstract Lorg/jmrtd/protocol/SecureMessagingWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lnet/sf/scuba/smartcards/APDUWrapper;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x415c05a489c7021eL


# instance fields
.field private transient cipher:Ljavax/crypto/Cipher;

.field private ksEnc:Ljavax/crypto/SecretKey;

.field private ksMac:Ljavax/crypto/SecretKey;

.field private transient mac:Ljavax/crypto/Mac;

.field private maxTranceiveLength:I

.field private shouldCheckMAC:Z

.field private ssc:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd.protocol"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/lang/String;IZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->maxTranceiveLength:I

    iput-boolean p6, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->shouldCheckMAC:Z

    iput-object p1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksEnc:Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksMac:Ljavax/crypto/SecretKey;

    iput-wide p7, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    invoke-static {p3}, Lorg/jmrtd/Util;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->cipher:Ljavax/crypto/Cipher;

    invoke-static {p4}, Lorg/jmrtd/Util;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->mac:Ljavax/crypto/Mac;

    return-void
.end method

.method private encodeLe(I)[B
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/16 v2, 0x100

    if-gt p1, v2, :cond_0

    new-array v0, v0, [B

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-object v0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [B

    const v3, 0xff00

    and-int/2addr v3, p1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    return-object v2
.end method

.method public static getInstance(Lorg/jmrtd/protocol/SecureMessagingWrapper;)Lorg/jmrtd/protocol/SecureMessagingWrapper;
    .locals 4

    :try_start_0
    instance-of v0, p0, Lorg/jmrtd/protocol/DESedeSecureMessagingWrapper;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/jmrtd/protocol/DESedeSecureMessagingWrapper;

    new-instance v1, Lorg/jmrtd/protocol/DESedeSecureMessagingWrapper;

    invoke-direct {v1, v0}, Lorg/jmrtd/protocol/DESedeSecureMessagingWrapper;-><init>(Lorg/jmrtd/protocol/DESedeSecureMessagingWrapper;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lorg/jmrtd/protocol/AESSecureMessagingWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/jmrtd/protocol/AESSecureMessagingWrapper;

    new-instance v1, Lorg/jmrtd/protocol/AESSecureMessagingWrapper;

    invoke-direct {v1, v0}, Lorg/jmrtd/protocol/AESSecureMessagingWrapper;-><init>(Lorg/jmrtd/protocol/AESSecureMessagingWrapper;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not copy wrapper"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    sget-object v0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Not copying wrapper"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p0
.end method

.method private readDO87(Ljava/io/DataInputStream;Z)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/16 v3, 0x80

    .line 9
    .line 10
    if-eq v1, v3, :cond_1

    .line 11
    .line 12
    if-nez p2, :cond_5

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "DO\'87 expected 0x01 marker, found "

    .line 26
    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    and-int/lit16 v0, v1, 0xff

    .line 31
    .line 32
    invoke-static {v0, p2}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-ge v3, v0, :cond_2

    .line 45
    .line 46
    shl-int/lit8 v1, v1, 0x8

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    or-int/2addr v1, v4

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-nez p2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-ne v0, v2, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p2, "DO\'87 expected 0x01 marker"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_4
    :goto_1
    move v0, v1

    .line 74
    :cond_5
    :goto_2
    if-nez p2, :cond_6

    .line 75
    .line 76
    add-int/lit8 v0, v0, -0x1

    .line 77
    .line 78
    :cond_6
    new-array p2, v0, [B

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->cipher:Ljavax/crypto/Cipher;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lorg/jmrtd/Util;->unpad([B)[B

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1
.end method

.method private readDO8E(Ljava/io/DataInputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "DO\'8E wrong length for MAC: "

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    new-array v0, v0, [B

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private readDO99(Ljava/io/DataInputStream;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DO\'99 wrong length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private unwrapResponseAPDU(Lnet/sf/scuba/smartcards/ResponseAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getBytes()[B

    move-result-object p1

    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksEnc:Ljavax/crypto/SecretKey;

    invoke-virtual {p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getIV()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-nez v4, :cond_4

    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    const/16 v7, -0x7b

    const/4 v8, 0x1

    if-eq v6, v7, :cond_3

    const/16 v7, -0x79

    if-eq v6, v7, :cond_2

    const/16 v7, -0x72

    if-eq v6, v7, :cond_1

    const/16 v7, -0x67

    if-eq v6, v7, :cond_0

    sget-object v7, Lorg/jmrtd/protocol/SecureMessagingWrapper;->LOGGER:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->readDO99(Ljava/io/DataInputStream;)S

    move-result v5

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->readDO8E(Ljava/io/DataInputStream;)[B

    move-result-object v3

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->readDO87(Ljava/io/DataInputStream;Z)[B

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2, v8}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->readDO87(Ljava/io/DataInputStream;Z)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw p1

    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->shouldCheckMAC()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1, v3}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->checkMac([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid MAC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v2, v1

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const v0, 0xff00

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v0, v5, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v0, Lnet/sf/scuba/smartcards/ResponseAPDU;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;-><init>([B)V

    return-object v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid response APDU"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private wrapCommandAPDU(Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/CommandAPDU;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/scuba/smartcards/CommandAPDU;->getCLA()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/scuba/smartcards/CommandAPDU;->getINS()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lnet/sf/scuba/smartcards/CommandAPDU;->getP1()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lnet/sf/scuba/smartcards/CommandAPDU;->getP2()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lnet/sf/scuba/smartcards/CommandAPDU;->getNc()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lnet/sf/scuba/smartcards/CommandAPDU;->getNe()I

    move-result v6

    const/4 v7, 0x4

    new-array v7, v7, [B

    or-int/lit8 v0, v0, 0xc

    int-to-byte v0, v0

    const/4 v8, 0x0

    aput-byte v0, v7, v8

    int-to-byte v0, v2

    const/4 v2, 0x1

    aput-byte v0, v7, v2

    int-to-byte v0, v3

    const/4 v3, 0x2

    aput-byte v0, v7, v3

    int-to-byte v0, v4

    const/4 v4, 0x3

    aput-byte v0, v7, v4

    invoke-virtual/range {p0 .. p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getPadLength()I

    move-result v0

    invoke-static {v7, v0}, Lorg/jmrtd/Util;->pad([BI)[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/scuba/smartcards/CommandAPDU;->getINS()I

    move-result v9

    int-to-byte v9, v9

    const/16 v10, -0x4f

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    new-array v10, v8, [B

    new-array v11, v8, [B

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v13, "Error closing stream"

    if-lez v6, :cond_1

    :try_start_0
    invoke-direct {v1, v6}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->encodeLe(I)[B

    move-result-object v11

    const/16 v14, 0x97

    invoke-static {v14, v11}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object v11

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_6

    :cond_1
    :goto_1
    if-lez v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Lnet/sf/scuba/smartcards/CommandAPDU;->getData()[B

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getPadLength()I

    move-result v10

    invoke-static {v5, v10}, Lorg/jmrtd/Util;->pad([BI)[B

    move-result-object v5

    iget-object v10, v1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->cipher:Ljavax/crypto/Cipher;

    iget-object v14, v1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksEnc:Ljavax/crypto/SecretKey;

    invoke-virtual/range {p0 .. p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getIV()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v15

    invoke-virtual {v10, v2, v14, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v10, v1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v10, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-eqz v9, :cond_2

    const/16 v10, -0x7b

    goto :goto_2

    :cond_2
    const/16 v10, -0x79

    :goto_2
    invoke-virtual {v12, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v10, v5

    if-eqz v9, :cond_3

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    const/4 v14, 0x1

    :goto_3
    add-int/2addr v10, v14

    invoke-static {v10}, Lnet/sf/scuba/tlv/TLVUtil;->getLengthAsBytes(I)[B

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/io/OutputStream;->write([B)V

    if-nez v9, :cond_4

    invoke-virtual {v12, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_4
    array-length v9, v5

    invoke-virtual {v12, v5, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    :cond_5
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual/range {p0 .. p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getEncodedSendSequenceCounter()[B

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12, v10}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getPadLength()I

    move-result v5

    invoke-static {v0, v5}, Lorg/jmrtd/Util;->pad([BI)[B

    move-result-object v0

    iget-object v5, v1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->mac:Ljavax/crypto/Mac;

    iget-object v9, v1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksMac:Ljavax/crypto/SecretKey;

    invoke-virtual {v5, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    iget-object v5, v1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v5, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    array-length v5, v0

    const/16 v9, 0x8

    if-eq v5, v9, :cond_6

    const/16 v5, 0x8

    :cond_6
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 v9, -0x72

    invoke-virtual {v12, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v12, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v12, v0, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {v12, v10}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v0

    sget-object v0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->LOGGER:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v9, v13, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v5, 0xff

    const/16 v9, 0x100

    if-gt v6, v9, :cond_7

    array-length v10, v0

    if-gt v10, v5, :cond_7

    new-instance v5, Lnet/sf/scuba/smartcards/CommandAPDU;

    aget-byte v15, v7, v8

    aget-byte v16, v7, v2

    aget-byte v17, v7, v3

    aget-byte v18, v7, v4

    const/16 v20, 0x100

    move-object v14, v5

    move-object/from16 v19, v0

    invoke-direct/range {v14 .. v20}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BI)V

    return-object v5

    :cond_7
    if-gt v6, v9, :cond_9

    array-length v6, v0

    if-le v6, v5, :cond_8

    goto :goto_5

    :cond_8
    new-instance v5, Lnet/sf/scuba/smartcards/CommandAPDU;

    aget-byte v15, v7, v8

    aget-byte v16, v7, v2

    aget-byte v17, v7, v3

    aget-byte v18, v7, v4

    invoke-virtual/range {p0 .. p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getMaxTranceiveLength()I

    move-result v20

    move-object v14, v5

    move-object/from16 v19, v0

    invoke-direct/range {v14 .. v20}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BI)V

    return-object v5

    :cond_9
    :goto_5
    new-instance v5, Lnet/sf/scuba/smartcards/CommandAPDU;

    aget-byte v15, v7, v8

    aget-byte v16, v7, v2

    aget-byte v17, v7, v3

    aget-byte v18, v7, v4

    const/high16 v20, 0x10000

    move-object v14, v5

    move-object/from16 v19, v0

    invoke-direct/range {v14 .. v20}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BI)V

    return-object v5

    :goto_6
    :try_start_2
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v3, v0

    sget-object v0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v4, v13, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    throw v2
.end method


# virtual methods
.method public checkMac([B[B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getEncodedSendSequenceCounter()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    const/16 v4, 0x8

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getPadLength()I

    move-result v5

    invoke-static {p1, v0, v3, v5}, Lorg/jmrtd/Util;->pad([BIII)[B

    move-result-object p1

    array-length v3, p1

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->mac:Ljavax/crypto/Mac;

    iget-object v2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksMac:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    iget-object p1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    array-length v1, p1

    if-le v1, v4, :cond_0

    array-length v1, p2

    if-ne v1, v4, :cond_0

    new-array v1, v4, [B

    invoke-static {p1, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    :cond_0
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lorg/jmrtd/protocol/SecureMessagingWrapper;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Exception checking MAC"

    invoke-virtual {p2, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/jmrtd/protocol/SecureMessagingWrapper;

    iget-object v2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksEnc:Ljavax/crypto/SecretKey;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksEnc:Ljavax/crypto/SecretKey;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksEnc:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksMac:Ljavax/crypto/SecretKey;

    if-nez v2, :cond_5

    iget-object v2, p1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksMac:Ljavax/crypto/SecretKey;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksMac:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->maxTranceiveLength:I

    iget v3, p1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->maxTranceiveLength:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-boolean v2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->shouldCheckMAC:Z

    iget-boolean v3, p1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->shouldCheckMAC:Z

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    iget-wide v4, p1, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract getEncodedSendSequenceCounter()[B
.end method

.method public getEncryptionKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksEnc:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public abstract getIV()Ljavax/crypto/spec/IvParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public getMACKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksMac:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getMaxTranceiveLength()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->maxTranceiveLength:I

    return v0
.end method

.method public abstract getPadLength()I
.end method

.method public getSendSequenceCounter()J
    .locals 2

    iget-wide v0, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksEnc:Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksMac:Ljavax/crypto/SecretKey;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->maxTranceiveLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->shouldCheckMAC:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public shouldCheckMAC()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->shouldCheckMAC:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecureMessagingWrapper [ssc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ksEnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksEnc:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ksMac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ksMac:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxTranceiveLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->maxTranceiveLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldCheckMAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->shouldCheckMAC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Lnet/sf/scuba/smartcards/ResponseAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;
    .locals 6

    const-string v0, "Unexpected exception"

    const-string v1, "Card indicates SM error, SW = "

    iget-wide v2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v2, v2

    if-lez v2, :cond_0

    invoke-direct {p0, p1}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->unwrapResponseAPDU(Lnet/sf/scuba/smartcards/ResponseAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getSW()I

    move-result p1

    const v1, 0xffff

    and-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public wrap(Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/CommandAPDU;
    .locals 5

    const-string v0, "Unexpected exception"

    iget-wide v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jmrtd/protocol/SecureMessagingWrapper;->ssc:J

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->wrapCommandAPDU(Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/CommandAPDU;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
