.class public Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;
.super Lorg/jmrtd/protocol/PACEGMMappingResult;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3604b227cc5c79e7L


# instance fields
.field private sharedSecretPointX:Ljava/math/BigInteger;

.field private sharedSecretPointY:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/AlgorithmParameterSpec;[BLjava/security/PublicKey;Ljava/security/KeyPair;Ljava/security/spec/ECPoint;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/jmrtd/protocol/PACEGMMappingResult;-><init>(Ljava/security/spec/AlgorithmParameterSpec;[BLjava/security/PublicKey;Ljava/security/KeyPair;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointX:Ljava/math/BigInteger;

    invoke-virtual {p5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointY:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jmrtd/protocol/PACEGMMappingResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    check-cast p1, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;

    iget-object v1, p0, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointX:Ljava/math/BigInteger;

    if-nez v1, :cond_3

    iget-object v1, p1, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointX:Ljava/math/BigInteger;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v3, p1, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointX:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointY:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointY:Ljava/math/BigInteger;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    return v2

    :cond_5
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getSharedSecretPoint()Ljava/security/spec/ECPoint;
    .locals 3

    new-instance v0, Ljava/security/spec/ECPoint;

    iget-object v1, p0, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointX:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointY:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lorg/jmrtd/protocol/PACEGMMappingResult;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointX:Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;->sharedSecretPointY:Ljava/math/BigInteger;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method
