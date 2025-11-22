.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private logn:I

.field private nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

.field private noncelen:I

.field private params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

.field private pk_size:I

.field private random:Ljava/security/SecureRandom;

.field private sk_size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign_keypair([BI[BI)[[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    const/4 v4, 0x1

    aget-object v6, v0, v4

    const/4 v4, 0x2

    aget-object v7, v0, v4

    const/4 v4, 0x3

    aget-object v8, v0, v4

    aget-object v9, v0, v3

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    aget-object v0, v0, v3

    invoke-direct {v4, v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v4, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 11
    .line 12
    check-cast p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->noncelen:I

    .line 33
    .line 34
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    .line 35
    .line 36
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    .line 37
    .line 38
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 39
    .line 40
    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    .line 44
    .line 45
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    shl-int p1, v0, p1

    .line 49
    .line 50
    const/16 v1, 0x400

    .line 51
    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    if-ne p1, v1, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    const/16 v1, 0x100

    .line 59
    .line 60
    if-eq p1, v1, :cond_4

    .line 61
    .line 62
    const/16 v1, 0x200

    .line 63
    .line 64
    if-ne p1, v1, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/16 v1, 0x40

    .line 68
    .line 69
    if-eq p1, v1, :cond_3

    .line 70
    .line 71
    const/16 v1, 0x80

    .line 72
    .line 73
    if-ne p1, v1, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/16 v1, 0x8

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_0
    const/4 v1, 0x7

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_1
    const/4 v1, 0x6

    .line 82
    :goto_2
    const/16 v3, 0xe

    .line 83
    .line 84
    invoke-static {p1, v3, v2, v0}, Landroidx/camera/camera2/internal/c;->a(IIII)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x2

    .line 91
    .line 92
    mul-int v1, v1, p1

    .line 93
    .line 94
    div-int/2addr v1, v2

    .line 95
    add-int/2addr v1, v0

    .line 96
    add-int/2addr v1, p1

    .line 97
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    .line 98
    .line 99
    return-void
.end method
