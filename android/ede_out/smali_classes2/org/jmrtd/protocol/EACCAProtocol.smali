.class public Lorg/jmrtd/protocol/EACCAProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BC_PROVIDER:Ljava/security/Provider;

.field private static final COMMAND_CHAINING_CHUNK_SIZE:I = 0xdf

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private maxTranceiveLength:I

.field private service:Lorg/jmrtd/APDULevelEACCACapable;

.field private shouldCheckMAC:Z

.field private wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/protocol/EACCAProtocol;->LOGGER:Ljava/util/logging/Logger;

    invoke-static {}, Lorg/jmrtd/Util;->getBouncyCastleProvider()Ljava/security/Provider;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/protocol/EACCAProtocol;->BC_PROVIDER:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>(Lorg/jmrtd/APDULevelEACCACapable;Lorg/jmrtd/protocol/SecureMessagingWrapper;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/protocol/EACCAProtocol;->service:Lorg/jmrtd/APDULevelEACCACapable;

    iput-object p2, p0, Lorg/jmrtd/protocol/EACCAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    iput p3, p0, Lorg/jmrtd/protocol/EACCAProtocol;->maxTranceiveLength:I

    iput-boolean p4, p0, Lorg/jmrtd/protocol/EACCAProtocol;->shouldCheckMAC:Z

    return-void
.end method

.method public static computeSharedSecret(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/PrivateKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sget-object v0, Lorg/jmrtd/protocol/EACCAProtocol;->BC_PROVIDER:Ljava/security/Provider;

    invoke-static {p0, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p0

    return-object p0
.end method

.method private static getKeyData(Ljava/lang/String;Ljava/security/PublicKey;)[B
    .locals 1

    .line 1
    const-string v0, "DH"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .line 10
    .line 11
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string v0, "ECDH"

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lorg/bouncycastle/jce/interfaces/ECPublicKey;

    .line 29
    .line 30
    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v0, "Unsupported agreement algorithm "

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public static getKeyHash(Ljava/lang/String;Ljava/security/PublicKey;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    const-string v0, "DH"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v0, "ECDH"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "Unsupported agreement algorithm "

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_2
    :goto_0
    check-cast p1, Lorg/bouncycastle/jce/interfaces/ECPublicKey;

    .line 40
    .line 41
    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ECKey;->getParameters()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    int-to-double v0, p1

    .line 70
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 71
    .line 72
    div-double/2addr v0, v2

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    double-to-int p1, v0

    .line 78
    invoke-static {p0, p1}, Lorg/jmrtd/Util;->alignKeyDataToSize([BI)[B

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_3
    :goto_1
    const-string v0, "SHA-1"

    .line 84
    .line 85
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p0, p1}, Lorg/jmrtd/protocol/EACCAProtocol;->getKeyData(Ljava/lang/String;Ljava/security/PublicKey;)[B

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method

.method private static inferChipAuthenticationOIDfromPublicKeyOID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/jmrtd/lds/SecurityInfo;->ID_PK_ECDH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/jmrtd/protocol/EACCAProtocol;->LOGGER:Ljava/util/logging/Logger;

    const-string v0, "Could not determine ChipAuthentication algorithm, defaulting to id-CA-ECDH-3DES-CBC-CBC"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    sget-object p0, Lorg/jmrtd/lds/SecurityInfo;->ID_CA_ECDH_3DES_CBC_CBC:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lorg/jmrtd/lds/SecurityInfo;->ID_PK_DH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/jmrtd/protocol/EACCAProtocol;->LOGGER:Ljava/util/logging/Logger;

    const-string v0, "Could not determine ChipAuthentication algorithm, defaulting to id-CA-DH-3DES-CBC-CBC"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    sget-object p0, Lorg/jmrtd/lds/SecurityInfo;->ID_CA_DH_3DES_CBC_CBC:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object v0, Lorg/jmrtd/protocol/EACCAProtocol;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ChipAuthenticationInfo and unsupported ChipAuthenticationPublicKeyInfo public key OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static restartSecureMessaging(Ljava/lang/String;[BIZ)Lorg/jmrtd/protocol/SecureMessagingWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p0}, Lorg/jmrtd/lds/ChipAuthenticationInfo;->toCipherAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/jmrtd/lds/ChipAuthenticationInfo;->toKeyLength(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Lorg/jmrtd/Util;->deriveKey([BLjava/lang/String;II)Ljavax/crypto/SecretKey;

    move-result-object v3

    const/4 v1, 0x2

    invoke-static {p1, v0, p0, v1}, Lorg/jmrtd/Util;->deriveKey([BLjava/lang/String;II)Ljavax/crypto/SecretKey;

    move-result-object v4

    const-string p0, "DESede"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lorg/jmrtd/protocol/DESedeSecureMessagingWrapper;

    const-wide/16 v7, 0x0

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lorg/jmrtd/protocol/DESedeSecureMessagingWrapper;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;IZJ)V

    return-object p0

    :cond_0
    const-string p0, "AES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/jmrtd/protocol/AESSecureMessagingWrapper;

    const-wide/16 v7, 0x0

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lorg/jmrtd/protocol/AESSecureMessagingWrapper;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;IZJ)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported cipher algorithm "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sendGeneralAuthenticate(Lorg/jmrtd/APDULevelEACCACapable;Lorg/jmrtd/protocol/SecureMessagingWrapper;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Lorg/jmrtd/APDULevelEACCACapable;->sendGeneralAuthenticate(Lnet/sf/scuba/smartcards/APDUWrapper;[BZ)[B
    :try_end_0
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lorg/jmrtd/protocol/EACCAProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Failed to send GENERAL AUTHENTICATE, falling back to command chaining"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xdf

    invoke-static {v1, p2}, Lorg/jmrtd/Util;->partition(I[B)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    add-int/2addr v3, v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-interface {p0, p1, v4, v5}, Lorg/jmrtd/APDULevelEACCACapable;->sendGeneralAuthenticate(Lnet/sf/scuba/smartcards/APDUWrapper;[BZ)[B

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method public static sendPublicKey(Lorg/jmrtd/APDULevelEACCACapable;Lorg/jmrtd/protocol/SecureMessagingWrapper;Ljava/lang/String;Ljava/math/BigInteger;Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    invoke-static {p2}, Lorg/jmrtd/lds/ChipAuthenticationInfo;->toKeyAgreementAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/jmrtd/lds/ChipAuthenticationInfo;->toCipherAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p4}, Lorg/jmrtd/protocol/EACCAProtocol;->getKeyData(Ljava/lang/String;Ljava/security/PublicKey;)[B

    move-result-object p4

    const-string v0, "DESede"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object p2

    const/16 p3, 0x84

    invoke-static {p3, p2}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x91

    :try_start_0
    invoke-static {p3, p4}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object p3

    invoke-interface {p0, p1, p3, p2}, Lorg/jmrtd/APDULevelEACCACapable;->sendMSEKAT(Lnet/sf/scuba/smartcards/APDUWrapper;[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/jmrtd/CardServiceProtocolException;

    const-string p2, "Exception during MSE KAT"

    invoke-direct {p1, p2, v2, p0}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    :cond_1
    const-string v0, "AES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {p0, p1, p2, p3}, Lorg/jmrtd/APDULevelEACCACapable;->sendMSESetATIntAuth(Lnet/sf/scuba/smartcards/APDUWrapper;Ljava/lang/String;Ljava/math/BigInteger;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 p2, 0x80

    :try_start_2
    invoke-static {p2, p4}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/jmrtd/protocol/EACCAProtocol;->sendGeneralAuthenticate(Lorg/jmrtd/APDULevelEACCACapable;Lorg/jmrtd/protocol/SecureMessagingWrapper;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lorg/jmrtd/CardServiceProtocolException;

    const-string p2, "Exception during General Authenticate"

    const/4 p3, 0x2

    invoke-direct {p1, p2, p3, p0}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lorg/jmrtd/CardServiceProtocolException;

    const-string p2, "Exception during MSE Set AT Int Auth"

    invoke-direct {p1, p2, v2, p0}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set up secure channel with cipher "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public doCA(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Lorg/jmrtd/protocol/EACCAResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_5

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-static {p3}, Lorg/jmrtd/protocol/EACCAProtocol;->inferChipAuthenticationOIDfromPublicKeyOID(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    const/4 p3, 0x0

    .line 10
    :try_start_0
    invoke-static {p2}, Lorg/jmrtd/lds/ChipAuthenticationInfo;->toKeyAgreementAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Lorg/jmrtd/protocol/EACCAProtocol;->LOGGER:Ljava/util/logging/Logger;

    .line 17
    .line 18
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "Unknown object identifier "

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    move-object v0, p3

    .line 38
    :goto_0
    const-string v1, "ECDH"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v3, "DH"

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p2, "Unsupported agreement algorithm, expected ECDH or DH, found "

    .line 58
    .line 59
    invoke-static {p2, v0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    move-object p3, p4

    .line 74
    check-cast p3, Ljavax/crypto/interfaces/DHPublicKey;

    .line 75
    .line 76
    invoke-interface {p3}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    move-object p3, p4

    .line 88
    check-cast p3, Ljava/security/interfaces/ECPublicKey;

    .line 89
    .line 90
    invoke-interface {p3}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    :cond_4
    :goto_2
    sget-object v1, Lorg/jmrtd/protocol/EACCAProtocol;->BC_PROVIDER:Ljava/security/Provider;

    .line 95
    .line 96
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, p3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {p3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    iget-object p3, p0, Lorg/jmrtd/protocol/EACCAProtocol;->service:Lorg/jmrtd/APDULevelEACCACapable;

    .line 116
    .line 117
    iget-object v1, p0, Lorg/jmrtd/protocol/EACCAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    .line 118
    .line 119
    invoke-static {p3, v1, p2, p1, v5}, Lorg/jmrtd/protocol/EACCAProtocol;->sendPublicKey(Lorg/jmrtd/APDULevelEACCACapable;Lorg/jmrtd/protocol/SecureMessagingWrapper;Ljava/lang/String;Ljava/math/BigInteger;Ljava/security/PublicKey;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v5}, Lorg/jmrtd/protocol/EACCAProtocol;->getKeyHash(Ljava/lang/String;Ljava/security/PublicKey;)[B

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v0, p4, v6}, Lorg/jmrtd/protocol/EACCAProtocol;->computeSharedSecret(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/PrivateKey;)[B

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    iget v0, p0, Lorg/jmrtd/protocol/EACCAProtocol;->maxTranceiveLength:I

    .line 131
    .line 132
    iget-boolean v1, p0, Lorg/jmrtd/protocol/EACCAProtocol;->shouldCheckMAC:Z

    .line 133
    .line 134
    invoke-static {p2, p3, v0, v1}, Lorg/jmrtd/protocol/EACCAProtocol;->restartSecureMessaging(Ljava/lang/String;[BIZ)Lorg/jmrtd/protocol/SecureMessagingWrapper;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iput-object v7, p0, Lorg/jmrtd/protocol/EACCAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    .line 139
    .line 140
    new-instance p2, Lorg/jmrtd/protocol/EACCAResult;

    .line 141
    .line 142
    move-object v1, p2

    .line 143
    move-object v2, p1

    .line 144
    move-object v3, p4

    .line 145
    invoke-direct/range {v1 .. v7}, Lorg/jmrtd/protocol/EACCAResult;-><init>(Ljava/math/BigInteger;Ljava/security/PublicKey;[BLjava/security/PublicKey;Ljava/security/PrivateKey;Lorg/jmrtd/protocol/SecureMessagingWrapper;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .line 147
    .line 148
    return-object p2

    .line 149
    :catch_1
    move-exception p1

    .line 150
    new-instance p2, Lnet/sf/scuba/smartcards/CardServiceException;

    .line 151
    .line 152
    const-string p3, "Security exception during Chip Authentication"

    .line 153
    .line 154
    invoke-direct {p2, p3, p1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw p2

    .line 158
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string p2, "PICC public key is null"

    .line 161
    .line 162
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1
.end method

.method public getWrapper()Lorg/jmrtd/protocol/SecureMessagingWrapper;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/protocol/EACCAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    return-object v0
.end method
