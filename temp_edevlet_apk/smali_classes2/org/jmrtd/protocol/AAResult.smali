.class public Lorg/jmrtd/protocol/AAResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7a22bc8948670fb1L


# instance fields
.field private challenge:[B

.field private digestAlgorithm:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field private response:[B

.field private signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/protocol/AAResult;->publicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lorg/jmrtd/protocol/AAResult;->digestAlgorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/jmrtd/protocol/AAResult;->signatureAlgorithm:Ljava/lang/String;

    iput-object p4, p0, Lorg/jmrtd/protocol/AAResult;->challenge:[B

    iput-object p5, p0, Lorg/jmrtd/protocol/AAResult;->response:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    check-cast p1, Lorg/jmrtd/protocol/AAResult;

    iget-object v2, p0, Lorg/jmrtd/protocol/AAResult;->challenge:[B

    iget-object v3, p1, Lorg/jmrtd/protocol/AAResult;->challenge:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/jmrtd/protocol/AAResult;->digestAlgorithm:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lorg/jmrtd/protocol/AAResult;->digestAlgorithm:Ljava/lang/String;

    if-eqz v2, :cond_5

    return v1

    :cond_4
    iget-object v3, p1, Lorg/jmrtd/protocol/AAResult;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lorg/jmrtd/protocol/AAResult;->publicKey:Ljava/security/PublicKey;

    if-nez v2, :cond_6

    iget-object v2, p1, Lorg/jmrtd/protocol/AAResult;->publicKey:Ljava/security/PublicKey;

    if-eqz v2, :cond_7

    return v1

    :cond_6
    iget-object v3, p1, Lorg/jmrtd/protocol/AAResult;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lorg/jmrtd/protocol/AAResult;->response:[B

    iget-object v3, p1, Lorg/jmrtd/protocol/AAResult;->response:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lorg/jmrtd/protocol/AAResult;->signatureAlgorithm:Ljava/lang/String;

    iget-object p1, p1, Lorg/jmrtd/protocol/AAResult;->signatureAlgorithm:Ljava/lang/String;

    if-nez v2, :cond_9

    if-eqz p1, :cond_a

    return v1

    :cond_9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getChallenge()[B
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/protocol/AAResult;->challenge:[B

    return-object v0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/protocol/AAResult;->digestAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/protocol/AAResult;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getResponse()[B
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/protocol/AAResult;->response:[B

    return-object v0
.end method

.method public getSignatureAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/protocol/AAResult;->signatureAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/jmrtd/protocol/AAResult;->challenge:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const v1, 0x4daff705    # 3.6902518E8f

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x7c7

    iget-object v1, p0, Lorg/jmrtd/protocol/AAResult;->digestAlgorithm:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x7c7

    iget-object v1, p0, Lorg/jmrtd/protocol/AAResult;->publicKey:Ljava/security/PublicKey;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x7c7

    iget-object v1, p0, Lorg/jmrtd/protocol/AAResult;->response:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x7c7

    iget-object v0, p0, Lorg/jmrtd/protocol/AAResult;->signatureAlgorithm:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AAResult [publicKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jmrtd/protocol/AAResult;->publicKey:Ljava/security/PublicKey;

    invoke-static {v1}, Lorg/jmrtd/Util;->getDetailedPublicKeyAlgorithm(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", digestAlgorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/protocol/AAResult;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signatureAlgorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/protocol/AAResult;->signatureAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", challenge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/protocol/AAResult;->challenge:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/protocol/AAResult;->response:[B

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
