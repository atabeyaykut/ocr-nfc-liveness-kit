.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KyberEta2:I = 0x2

.field private static final KyberIndCpaMsgBytes:I = 0x20

.field public static final KyberN:I = 0x100

.field public static final KyberPolyBytes:I = 0x180

.field public static final KyberQ:I = 0xd01

.field public static final KyberQinv:I = 0xf301

.field private static final KyberSharedSecretBytes:I = 0x20

.field public static final KyberSymBytes:I = 0x20


# instance fields
.field private final CryptoBytes:I

.field private final CryptoCipherTextBytes:I

.field private final CryptoPublicKeyBytes:I

.field private final CryptoSecretKeyBytes:I

.field private final KyberCipherTextBytes:I

.field private final KyberEta1:I

.field private final KyberIndCpaBytes:I

.field private final KyberIndCpaPublicKeyBytes:I

.field private final KyberIndCpaSecretKeyBytes:I

.field private final KyberK:I

.field private final KyberPolyCompressedBytes:I

.field private final KyberPolyVecBytes:I

.field private final KyberPolyVecCompressedBytes:I

.field private final KyberPublicKeyBytes:I

.field private final KyberSecretKeyBytes:I

.field private indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

.field private random:Ljava/security/SecureRandom;

.field private final sessionKeyLength:I

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# direct methods
.method public constructor <init>(IZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberK:I

    .line 5
    .line 6
    const/16 v0, 0x80

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x2

    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    if-eq p1, v2, :cond_2

    .line 13
    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    .line 20
    .line 21
    const/16 v0, 0xa0

    .line 22
    .line 23
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    .line 24
    .line 25
    mul-int/lit16 v0, p1, 0x160

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v0, "K: "

    .line 31
    .line 32
    const-string v1, " is not supported for Crystals Kyber"

    .line 33
    .line 34
    invoke-static {v0, p1, v1}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p2

    .line 42
    :cond_1
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    .line 46
    .line 47
    :goto_0
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    .line 48
    .line 49
    mul-int/lit16 v0, p1, 0x140

    .line 50
    .line 51
    :goto_1
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    .line 52
    .line 53
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    .line 54
    .line 55
    mul-int/lit16 p1, p1, 0x180

    .line 56
    .line 57
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    .line 58
    .line 59
    add-int/lit8 v0, p1, 0x20

    .line 60
    .line 61
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    .line 62
    .line 63
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    .line 64
    .line 65
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    .line 66
    .line 67
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    .line 68
    .line 69
    add-int/2addr v1, v2

    .line 70
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    .line 71
    .line 72
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    .line 73
    .line 74
    add-int/2addr p1, v0

    .line 75
    add-int/lit8 p1, p1, 0x40

    .line 76
    .line 77
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    .line 78
    .line 79
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    .line 80
    .line 81
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoBytes:I

    .line 82
    .line 83
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoSecretKeyBytes:I

    .line 84
    .line 85
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoPublicKeyBytes:I

    .line 86
    .line 87
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoCipherTextBytes:I

    .line 88
    .line 89
    if-eqz p2, :cond_3

    .line 90
    .line 91
    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;

    .line 92
    .line 93
    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;-><init>()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;

    .line 98
    .line 99
    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;-><init>()V

    .line 100
    .line 101
    .line 102
    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    .line 103
    .line 104
    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    .line 105
    .line 106
    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    .line 110
    .line 111
    return-void
.end method

.method private cmov([B[BIZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-static {p2, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static getKyberEta2()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getKyberIndCpaMsgBytes()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method


# virtual methods
.method public generateKemKeyPair()[[B
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->generateKeyPair()[[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    new-array v2, v1, [B

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x20

    new-array v4, v1, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    aget-object v7, v0, v5

    invoke-virtual {v6, v4, v7, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    new-array v1, v1, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    new-array v7, v6, [B

    aget-object v0, v0, v5

    invoke-static {v0, v5, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x5

    new-array v0, v0, [[B

    add-int/lit8 v8, v6, -0x20

    invoke-static {v7, v5, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    aput-object v9, v0, v5

    invoke-static {v7, v8, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object v4, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getCryptoBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoBytes:I

    return v0
.end method

.method public getCryptoCipherTextBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoCipherTextBytes:I

    return v0
.end method

.method public getCryptoPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoPublicKeyBytes:I

    return v0
.end method

.method public getCryptoSecretKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoSecretKeyBytes:I

    return v0
.end method

.method public getKyberCipherTextBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    return v0
.end method

.method public getKyberEta1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    return v0
.end method

.method public getKyberIndCpaBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    return v0
.end method

.method public getKyberIndCpaPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    return v0
.end method

.method public getKyberIndCpaSecretKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    return v0
.end method

.method public getKyberK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberK:I

    return v0
.end method

.method public getKyberPolyCompressedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    return v0
.end method

.method public getKyberPolyVecBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    return v0
.end method

.method public getKyberPolyVecCompressedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    return v0
.end method

.method public getKyberPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    return v0
.end method

.method public getKyberSecretKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    return v0
.end method

.method public getRandomBytes([B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public getSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public kemDecrypt([B[B)[B
    .locals 7

    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    array-length v4, p2

    invoke-static {p2, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v4, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->decrypt([B[B)[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-static {v4, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    sub-int/2addr v4, v0

    invoke-static {p2, v4, v1, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_g([B[B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v2, v6, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {v4, v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->encrypt([B[B[B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v1, v2, p1, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    add-int/lit8 v1, p1, -0x20

    invoke-static {p2, v1, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, v2, p1, v6, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->cmov([B[BIZ)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    invoke-static {v2, v5, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public kemEncrypt([B)[[B
    .locals 6

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/16 v3, 0x20

    new-array v4, v3, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v4, v1, p1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_g([B[B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-static {v1, v5, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {v4, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->encrypt([B[B[B)[B

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    new-array v1, v0, [B

    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    new-array v0, v0, [[B

    aput-object v1, v0, v5

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input validation: Modulus check failed for ml-kem encapsulation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input validation Error: Type check failed for ml-kem encapsulation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
