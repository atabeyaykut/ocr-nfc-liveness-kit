.class public Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {p1, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DESede"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    new-instance p1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz p2, :cond_4

    new-array p2, v1, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {p1, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_1

    :cond_1
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_4

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz p1, :cond_2

    array-length p1, p1

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV is not 8 octets"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You should not supply an IV for unwrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public unwrap([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    rem-int v1, p3, v0

    .line 14
    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 20
    .line 21
    sget-object v3, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 30
    .line 31
    .line 32
    new-array v1, p3, [B

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-eq v2, p3, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 38
    .line 39
    add-int v5, p2, v2

    .line 40
    .line 41
    invoke-virtual {v4, p1, v5, v1, v2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 42
    .line 43
    .line 44
    add-int/2addr v2, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    .line 47
    .line 48
    .line 49
    const/16 p1, 0x8

    .line 50
    .line 51
    new-array p2, p1, [B

    .line 52
    .line 53
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 54
    .line 55
    sub-int/2addr p3, p1

    .line 56
    new-array v2, p3, [B

    .line 57
    .line 58
    invoke-static {v1, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1, p1, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 65
    .line 66
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 67
    .line 68
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 69
    .line 70
    invoke-direct {p2, v1, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 74
    .line 75
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 76
    .line 77
    invoke-virtual {v1, v3, p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 78
    .line 79
    .line 80
    new-array p2, p3, [B

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    :goto_1
    if-eq v1, p3, :cond_1

    .line 84
    .line 85
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 86
    .line 87
    invoke-virtual {v4, v2, v1, p2, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 88
    .line 89
    .line 90
    add-int/2addr v1, v0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    sub-int/2addr p3, p1

    .line 93
    new-array v0, p3, [B

    .line 94
    .line 95
    new-array v1, p1, [B

    .line 96
    .line 97
    invoke-static {p2, v3, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    invoke-static {p2, p3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 111
    .line 112
    const-string p2, "Checksum inside ciphertext is corrupted"

    .line 113
    .line 114
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 119
    .line 120
    const-string p2, "Ciphertext not multiple of "

    .line 121
    .line 122
    invoke-static {p2, v0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 131
    .line 132
    const-string p2, "Null pointer as ciphertext"

    .line 133
    .line 134
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    const-string p2, "Not set for unwrapping"

    .line 141
    .line 142
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1
.end method

.method public wrap([BII)[B
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v0, :cond_3

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object p1

    array-length p2, p1

    add-int/2addr p2, p3

    new-array v2, p2, [B

    invoke-static {v0, v1, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    invoke-static {p1, v1, v2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result p1

    rem-int p3, p2, p1

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v3, 0x1

    invoke-virtual {p3, v3, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-array p3, p2, [B

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4, v2, v0, p3, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v2, v0

    add-int/2addr v2, p2

    new-array v4, v2, [B

    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v0, v0

    invoke-static {p3, v1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    sget-object v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {p2, p3, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p3, v3, p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_1
    if-eq v1, v2, :cond_1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p2, v4, v1, v4, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v1, p1

    goto :goto_1

    :cond_1
    return-object v4

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not multiple of block length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not initialized for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
