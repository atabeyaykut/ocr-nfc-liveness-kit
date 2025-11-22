.class public Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jce/provider/BrokenPBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithMD5AndDES;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES2Key;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES3Key;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$OldPBEWithSHAAndDES3Key;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private ivLength:I

.field private ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field private pbeHash:I

.field private pbeIvSize:I

.field private pbeKeySize:I

.field private pbeType:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v5, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v5, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    iput v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iput v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iput v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;IIII)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v5, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v5, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    iput v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iput v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iput v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iput p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iput p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iput p4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeKeySize:I

    iput p5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    add-int/2addr p5, p1

    invoke-virtual {p2, p4, p5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p2
    :try_end_0
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineDoFinal([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p2, v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p2
    :try_end_0
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    new-array p2, p1, [B

    invoke-static {v0, v7, p2, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineGetBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method public engineGetOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v2

    if-eq v1, v3, :cond_0

    :try_start_0
    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "can\'t handle parameter "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    check-cast v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 7
    .line 8
    iget v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    .line 9
    .line 10
    iget v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    .line 11
    .line 12
    iget-object p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 13
    .line 14
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    iget v6, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeKeySize:I

    .line 23
    .line 24
    iget v7, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    .line 25
    .line 26
    move-object v2, p3

    .line 27
    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;IILjava/lang/String;II)Lorg/bouncycastle/crypto/CipherParameters;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    .line 32
    .line 33
    if-eqz p3, :cond_6

    .line 34
    .line 35
    move-object p3, p2

    .line 36
    check-cast p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 37
    .line 38
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_0
    if-nez p3, :cond_1

    .line 43
    .line 44
    new-instance p3, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p3, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 51
    .line 52
    .line 53
    :goto_0
    move-object p2, p3

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 65
    .line 66
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 67
    .line 68
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 73
    .line 74
    .line 75
    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .line 76
    .line 77
    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    new-instance p3, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 88
    .line 89
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p3, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    instance-of v0, p3, Ljavax/crypto/spec/RC2ParameterSpec;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    check-cast p3, Ljavax/crypto/spec/RC2ParameterSpec;

    .line 102
    .line 103
    new-instance v0, Lorg/bouncycastle/crypto/params/RC2Parameters;

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-eqz p2, :cond_4

    .line 121
    .line 122
    iget p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 123
    .line 124
    if-eqz p2, :cond_4

    .line 125
    .line 126
    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 127
    .line 128
    invoke-virtual {p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-direct {p2, v0, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    :goto_1
    move-object p2, v0

    .line 137
    goto :goto_3

    .line 138
    :cond_5
    instance-of v0, p3, Ljavax/crypto/spec/RC5ParameterSpec;

    .line 139
    .line 140
    if-eqz v0, :cond_f

    .line 141
    .line 142
    check-cast p3, Ljavax/crypto/spec/RC5ParameterSpec;

    .line 143
    .line 144
    new-instance v0, Lorg/bouncycastle/crypto/params/RC5Parameters;

    .line 145
    .line 146
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getRounds()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/crypto/params/RC5Parameters;-><init>([BI)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    const/16 v1, 0x20

    .line 162
    .line 163
    if-ne p2, v1, :cond_e

    .line 164
    .line 165
    invoke-virtual {p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-eqz p2, :cond_4

    .line 170
    .line 171
    iget p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 172
    .line 173
    if-eqz p2, :cond_4

    .line 174
    .line 175
    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 176
    .line 177
    invoke-virtual {p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-direct {p2, v0, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 182
    .line 183
    .line 184
    :goto_2
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 185
    .line 186
    :cond_6
    :goto_3
    iget p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 187
    .line 188
    const/4 v0, 0x3

    .line 189
    const/4 v1, 0x1

    .line 190
    if-eqz p3, :cond_a

    .line 191
    .line 192
    instance-of p3, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 193
    .line 194
    if-nez p3, :cond_a

    .line 195
    .line 196
    if-nez p4, :cond_7

    .line 197
    .line 198
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    .line 199
    .line 200
    .line 201
    move-result-object p4

    .line 202
    :cond_7
    if-eq p1, v1, :cond_9

    .line 203
    .line 204
    if-ne p1, v0, :cond_8

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_8
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 208
    .line 209
    const-string p2, "no IV set when one expected"

    .line 210
    .line 211
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p1

    .line 215
    :cond_9
    :goto_4
    iget p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 216
    .line 217
    new-array p3, p3, [B

    .line 218
    .line 219
    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 220
    .line 221
    .line 222
    new-instance p4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 223
    .line 224
    invoke-direct {p4, p2, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 225
    .line 226
    .line 227
    iput-object p4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 228
    .line 229
    move-object p2, p4

    .line 230
    :cond_a
    if-eq p1, v1, :cond_d

    .line 231
    .line 232
    const/4 p3, 0x2

    .line 233
    if-eq p1, p3, :cond_c

    .line 234
    .line 235
    if-eq p1, v0, :cond_d

    .line 236
    .line 237
    const/4 p3, 0x4

    .line 238
    if-ne p1, p3, :cond_b

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 242
    .line 243
    const-string p3, "unknown opmode: "

    .line 244
    .line 245
    invoke-static {p3, p1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p2

    .line 253
    :cond_c
    :goto_5
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 254
    .line 255
    const/4 p3, 0x0

    .line 256
    invoke-virtual {p1, p3, p2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_d
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 261
    .line 262
    invoke-virtual {p1, v1, p2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 263
    .line 264
    .line 265
    :goto_6
    return-void

    .line 266
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 267
    .line 268
    const-string p2, "can only accept RC5 word size 32 (at the moment...)"

    .line 269
    .line 270
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p1

    .line 274
    :cond_f
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 275
    .line 276
    const-string p2, "unknown parameter type."

    .line 277
    .line 278
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p1
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ECB"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 15
    .line 16
    new-instance p1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 17
    .line 18
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    const-string v1, "CBC"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 48
    .line 49
    new-instance p1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 50
    .line 51
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 52
    .line 53
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 54
    .line 55
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_1
    const-string v1, "OFB"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x3

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 77
    .line 78
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eq p1, v2, :cond_2

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 103
    .line 104
    new-instance v1, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    .line 105
    .line 106
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 107
    .line 108
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 120
    .line 121
    new-instance v0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    .line 122
    .line 123
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 124
    .line 125
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 130
    .line 131
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    mul-int/lit8 v2, v2, 0x8

    .line 136
    .line 137
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const-string v1, "CFB"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 153
    .line 154
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iput p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eq p1, v2, :cond_4

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 179
    .line 180
    new-instance v1, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    .line 181
    .line 182
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 183
    .line 184
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 192
    .line 193
    .line 194
    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 198
    .line 199
    new-instance v0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    .line 200
    .line 201
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 202
    .line 203
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 208
    .line 209
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    mul-int/lit8 v2, v2, 0x8

    .line 214
    .line 215
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 216
    .line 217
    .line 218
    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 219
    .line 220
    .line 221
    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 222
    .line 223
    :goto_2
    return-void

    .line 224
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 225
    .line 226
    const-string v1, "can\'t support mode "

    .line 227
    .line 228
    invoke-static {v1, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "NOPADDING"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string v1, "PKCS5PADDING"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    const-string v1, "PKCS7PADDING"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    const-string v1, "ISO10126PADDING"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "WITHCTS"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    new-instance p1, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;

    .line 59
    .line 60
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 61
    .line 62
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    .line 71
    .line 72
    const-string v1, "Padding "

    .line 73
    .line 74
    const-string v2, " unknown."

    .line 75
    .line 76
    invoke-static {v1, p1, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_3
    :goto_0
    new-instance p1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 85
    .line 86
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 96
    .line 97
    return-void
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    const-string v0, "Unknown key type "

    .line 2
    .line 3
    :try_start_0
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, p1, v2, v1}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineDoFinal([BII)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne p3, v1, :cond_0

    .line 11
    .line 12
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 13
    .line 14
    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p3

    .line 18
    :cond_0
    :try_start_1
    const-string v1, "BC"

    .line 19
    .line 20
    invoke-static {p2, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne p3, v1, :cond_1

    .line 26
    .line 27
    new-instance p3, Ljava/security/spec/X509EncodedKeySpec;

    .line 28
    .line 29
    invoke-direct {p3, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_1
    const/4 v1, 0x2

    .line 38
    if-ne p3, v1, :cond_2

    .line 39
    .line 40
    new-instance p3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 41
    .line 42
    invoke-direct {p3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    return-object p1

    .line 50
    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 51
    .line 52
    invoke-static {v0, p3}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 62
    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :catch_1
    move-exception p1

    .line 84
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 85
    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p2

    .line 106
    :catch_2
    move-exception p1

    .line 107
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 108
    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p2

    .line 129
    :catch_3
    move-exception p1

    .line 130
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p2

    .line 140
    :catch_4
    move-exception p1

    .line 141
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p2
.end method

.method public engineUpdate([BII[BI)I
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method public engineUpdate([BII)[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineDoFinal([BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Cannot wrap key, null encoding."

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
