.class public Lorg/jmrtd/protocol/EACTAProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BC_PROVIDER:Ljava/security/Provider;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final TAG_CVCERTIFICATE_SIGNATURE:I = 0x5f37


# instance fields
.field private service:Lorg/jmrtd/APDULevelEACTACapable;

.field private wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd.protocol"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/protocol/EACTAProtocol;->LOGGER:Ljava/util/logging/Logger;

    invoke-static {}, Lorg/jmrtd/Util;->getBouncyCastleProvider()Ljava/security/Provider;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/protocol/EACTAProtocol;->BC_PROVIDER:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>(Lorg/jmrtd/APDULevelEACTACapable;Lorg/jmrtd/protocol/SecureMessagingWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/protocol/EACTAProtocol;->service:Lorg/jmrtd/APDULevelEACTACapable;

    iput-object p2, p0, Lorg/jmrtd/protocol/EACTAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    return-void
.end method

.method public static deriveIdentifier(Ljava/lang/String;)[B
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0}, Lorg/jmrtd/lds/icao/MRZInfo;->checkDigit(Ljava/lang/String;)C

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deriveIdentifier(Ljava/security/PublicKey;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "DH"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_4

    .line 16
    .line 17
    instance-of v1, p0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const-string v1, "ECDH"

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    instance-of v1, p0, Ljava/security/interfaces/ECPublicKey;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 36
    .line 37
    const-string v1, "Unsupported agreement algorithm "

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/jce/interfaces/ECPublicKey;

    .line 48
    .line 49
    invoke-interface {p0}, Lorg/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p0}, Lorg/bouncycastle/jce/interfaces/ECKey;->getParameters()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    int-to-double v1, p0

    .line 78
    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 79
    .line 80
    div-double/2addr v1, v3

    .line 81
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    double-to-int p0, v1

    .line 86
    invoke-static {v0, p0}, Lorg/jmrtd/Util;->alignKeyDataToSize([BI)[B

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_4
    :goto_1
    const-string v0, "SHA-1"

    .line 92
    .line 93
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 98
    .line 99
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method


# virtual methods
.method public declared-synchronized doEACTA(Lorg/jmrtd/cert/CVCPrincipal;Ljava/util/List;Ljava/security/PrivateKey;Ljava/lang/String;Lorg/jmrtd/protocol/EACCAResult;Ljava/lang/String;)Lorg/jmrtd/protocol/EACTAResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jmrtd/cert/CVCPrincipal;",
            "Ljava/util/List<",
            "Lorg/jmrtd/cert/CardVerifiableCertificate;",
            ">;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Lorg/jmrtd/protocol/EACCAResult;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jmrtd/protocol/EACTAResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p6}, Lorg/jmrtd/protocol/EACTAProtocol;->deriveIdentifier(Ljava/lang/String;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jmrtd/protocol/EACTAProtocol;->doTA(Lorg/jmrtd/cert/CVCPrincipal;Ljava/util/List;Ljava/security/PrivateKey;Ljava/lang/String;Lorg/jmrtd/protocol/EACCAResult;[B)Lorg/jmrtd/protocol/EACTAResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized doTA(Lorg/jmrtd/cert/CVCPrincipal;Ljava/util/List;Ljava/security/PrivateKey;Ljava/lang/String;Lorg/jmrtd/protocol/EACCAResult;Lorg/jmrtd/protocol/PACEResult;)Lorg/jmrtd/protocol/EACTAResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jmrtd/cert/CVCPrincipal;",
            "Ljava/util/List<",
            "Lorg/jmrtd/cert/CardVerifiableCertificate;",
            ">;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Lorg/jmrtd/protocol/EACCAResult;",
            "Lorg/jmrtd/protocol/PACEResult;",
            ")",
            "Lorg/jmrtd/protocol/EACTAResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p6}, Lorg/jmrtd/protocol/PACEResult;->getPICCPublicKey()Ljava/security/PublicKey;

    move-result-object p6

    invoke-static {p6}, Lorg/jmrtd/protocol/EACTAProtocol;->deriveIdentifier(Ljava/security/PublicKey;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jmrtd/protocol/EACTAProtocol;->doTA(Lorg/jmrtd/cert/CVCPrincipal;Ljava/util/List;Ljava/security/PrivateKey;Ljava/lang/String;Lorg/jmrtd/protocol/EACCAResult;[B)Lorg/jmrtd/protocol/EACTAResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string p3, "No such algorithm"

    invoke-direct {p2, p3, p1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized doTA(Lorg/jmrtd/cert/CVCPrincipal;Ljava/util/List;Ljava/security/PrivateKey;Ljava/lang/String;Lorg/jmrtd/protocol/EACCAResult;[B)Lorg/jmrtd/protocol/EACTAResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jmrtd/cert/CVCPrincipal;",
            "Ljava/util/List<",
            "Lorg/jmrtd/cert/CardVerifiableCertificate;",
            ">;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Lorg/jmrtd/protocol/EACCAResult;",
            "[B)",
            "Lorg/jmrtd/protocol/EACTAResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const-string p4, "Last certificate in chain ("

    const-string v0, "First certificate holds wrong authority, found \""

    const-string v1, "First certificate not signed by expected CA, found "

    const-string v2, "Need at least 1 certificate to perform TA, found: "

    monitor-enter p0

    if-eqz p2, :cond_e

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    if-eqz p5, :cond_d

    invoke-virtual {p5}, Lorg/jmrtd/protocol/EACCAResult;->getKeyHash()[B

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jmrtd/cert/CardVerifiableCertificate;

    invoke-virtual {v4}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getAuthorizationTemplate()Lorg/jmrtd/cert/CVCAuthorizationTemplate;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jmrtd/cert/CVCAuthorizationTemplate;->getRole()Lorg/jmrtd/cert/CVCAuthorizationTemplate$Role;

    move-result-object v5

    sget-object v6, Lorg/jmrtd/cert/CVCAuthorizationTemplate$Role;->CVCA:Lorg/jmrtd/cert/CVCAuthorizationTemplate$Role;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getHolderReference()Lorg/jmrtd/cert/CVCPrincipal;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Lorg/jmrtd/cert/CVCPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/sf/scuba/smartcards/CardServiceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/jmrtd/cert/CVCPrincipal;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\", expected \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jmrtd/cert/CVCPrincipal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    move-object p1, v5

    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v4}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getAuthorityReference()Lorg/jmrtd/cert/CVCPrincipal;

    move-result-object v0

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Lorg/jmrtd/cert/CVCPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lnet/sf/scuba/smartcards/CardServiceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jmrtd/cert/CVCPrincipal;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", expected "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jmrtd/cert/CVCPrincipal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    move-object p1, v0

    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jmrtd/cert/CardVerifiableCertificate;

    invoke-virtual {v0}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getAuthorizationTemplate()Lorg/jmrtd/cert/CVCAuthorizationTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jmrtd/cert/CVCAuthorizationTemplate;->getRole()Lorg/jmrtd/cert/CVCAuthorizationTemplate$Role;

    move-result-object v3

    sget-object v4, Lorg/jmrtd/cert/CVCAuthorizationTemplate$Role;->IS:Lorg/jmrtd/cert/CVCAuthorizationTemplate$Role;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x83

    if-eqz v3, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jmrtd/cert/CardVerifiableCertificate;
    :try_end_0
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getAuthorityReference()Lorg/jmrtd/cert/CVCPrincipal;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jmrtd/cert/CVCPrincipal;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object v4

    iget-object v5, p0, Lorg/jmrtd/protocol/EACTAProtocol;->service:Lorg/jmrtd/APDULevelEACTACapable;

    iget-object v6, p0, Lorg/jmrtd/protocol/EACTAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    invoke-interface {v5, v6, v4}, Lorg/jmrtd/APDULevelEACTACapable;->sendMSESetDST(Lnet/sf/scuba/smartcards/APDUWrapper;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getCertBodyData()[B

    move-result-object v4

    invoke-virtual {v3}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getSignature()[B

    move-result-object v3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lnet/sf/scuba/tlv/TLVOutputStream;

    invoke-direct {v6, v5}, Lnet/sf/scuba/tlv/TLVOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x5f37

    invoke-virtual {v6, v7}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-virtual {v6, v3}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    invoke-virtual {v6}, Lnet/sf/scuba/tlv/TLVOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v5, p0, Lorg/jmrtd/protocol/EACTAProtocol;->service:Lorg/jmrtd/APDULevelEACTACapable;

    iget-object v6, p0, Lorg/jmrtd/protocol/EACTAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    invoke-interface {v5, v6, v4, v3}, Lorg/jmrtd/APDULevelEACTACapable;->sendPSOExtendedLengthMode(Lnet/sf/scuba/smartcards/APDUWrapper;[B[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "Exception"

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "Exception in MSE:SetDST"

    invoke-direct {p2, p3, v1, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-eqz p3, :cond_a

    :try_start_4
    invoke-virtual {v0}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getHolderReference()Lorg/jmrtd/cert/CVCPrincipal;

    move-result-object p4

    invoke-virtual {p4}, Lorg/jmrtd/cert/CVCPrincipal;->getName()Ljava/lang/String;

    move-result-object p4

    const-string v1, "ISO-8859-1"

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    invoke-static {v4, p4}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object p4

    iget-object v1, p0, Lorg/jmrtd/protocol/EACTAProtocol;->service:Lorg/jmrtd/APDULevelEACTACapable;

    iget-object v3, p0, Lorg/jmrtd/protocol/EACTAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    invoke-interface {v1, v3, p4}, Lorg/jmrtd/APDULevelEACTACapable;->sendMSESetATExtAuth(Lnet/sf/scuba/smartcards/APDUWrapper;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p4, p0, Lorg/jmrtd/protocol/EACTAProtocol;->service:Lorg/jmrtd/APDULevelEACTACapable;

    iget-object v1, p0, Lorg/jmrtd/protocol/EACTAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    invoke-interface {p4, v1}, Lorg/jmrtd/APDULevelEACTACapable;->sendGetChallenge(Lnet/sf/scuba/smartcards/APDUWrapper;)[B

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p4, p6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-virtual {v0}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_9

    sget-object v0, Lorg/jmrtd/protocol/EACTAProtocol;->BC_PROVIDER:Ljava/security/Provider;

    invoke-static {p6, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0, p4}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p4

    invoke-virtual {p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p6

    const-string v0, "ECDSA"

    invoke-virtual {p6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_8

    move-object p6, p3

    check-cast p6, Lorg/bouncycastle/jce/interfaces/ECPrivateKey;

    invoke-interface {p6}, Lorg/bouncycastle/jce/interfaces/ECKey;->getParameters()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object p6

    invoke-virtual {p6}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p6

    invoke-virtual {p6}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p6

    int-to-double v0, p6

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p6, v0

    invoke-static {p4, p6}, Lorg/jmrtd/Util;->getRawECDSASignature([BI)[B

    move-result-object p4

    :cond_8
    iget-object p6, p0, Lorg/jmrtd/protocol/EACTAProtocol;->service:Lorg/jmrtd/APDULevelEACTACapable;

    iget-object v0, p0, Lorg/jmrtd/protocol/EACTAProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    invoke-interface {p6, v0, p4}, Lorg/jmrtd/APDULevelEACTACapable;->sendMutualAuthenticate(Lnet/sf/scuba/smartcards/APDUWrapper;[B)V

    new-instance p4, Lorg/jmrtd/protocol/EACTAResult;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/jmrtd/protocol/EACTAResult;-><init>(Lorg/jmrtd/protocol/EACCAResult;Lorg/jmrtd/cert/CVCPrincipal;Ljava/util/List;Ljava/security/PrivateKey;Ljava/lang/String;[B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p4

    :cond_9
    :try_start_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not determine signature algorithm for terminal certificate "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getHolderReference()Lorg/jmrtd/cert/CVCPrincipal;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jmrtd/cert/CVCPrincipal;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_2
    move-exception p1

    :try_start_8
    sget-object p2, Lorg/jmrtd/protocol/EACTAProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "Exception"

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "Exception in External Authenticate"

    const/4 p4, 0x5

    invoke-direct {p2, p3, p4, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "Exception in Get Challenge"

    const/4 p4, 0x4

    invoke-direct {p2, p3, p4, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "Exception in MSE Set AT"

    const/4 p4, 0x3

    invoke-direct {p2, p3, p4, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :cond_a
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string p2, "No terminal key"

    invoke-direct {p1, p2}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jmrtd/cert/CardVerifiableCertificate;->getHolderReference()Lorg/jmrtd/cert/CVCPrincipal;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jmrtd/cert/CVCPrincipal;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") does not have role IS, but has role "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Could nnot get EAC-CA key hash"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Could not get EAC-CA key hash"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_5
    move-exception p1

    :try_start_9
    new-instance p2, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string p3, "Unexpected exception"

    invoke-direct {p2, p3, p1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_6
    move-exception p1

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method
