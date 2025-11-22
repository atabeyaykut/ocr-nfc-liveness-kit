.class Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi$Base;,
        Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi$MCE348864;,
        Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi$MCE460896;,
        Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi$MCE6688128;,
        Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi$MCE6960119;,
        Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi$MCE8192128;
    }
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private cmceParameters:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private kemGen:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;

.field private kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

.field private unwrapKey:Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPrivateKey;

.field private wrapKey:Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->algorithmName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->cmceParameters:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->algorithmName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoFinal([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    const/16 p1, 0x800

    return p1
.end method

.method public engineGetOutputSize(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->algorithmName:Ljava/lang/String;

    const-string v1, "BCPQC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_0

    :try_start_0
    const-class v0, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
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

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

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
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Exceptions;->illegalArgumentException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    .line 4
    .line 5
    const-string v0, "AES-KWP"

    .line 6
    .line 7
    invoke-direct {p3, v0}, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p3, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    .line 12
    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    check-cast p3, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    .line 16
    .line 17
    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    .line 18
    .line 19
    const/4 p3, 0x3

    .line 20
    const-string v0, "Only a "

    .line 21
    .line 22
    if-ne p1, p3, :cond_2

    .line 23
    .line 24
    instance-of p1, p2, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    move-object p1, p2

    .line 29
    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;

    .line 30
    .line 31
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->wrapKey:Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;

    .line 32
    .line 33
    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;

    .line 34
    .line 35
    invoke-static {p4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-direct {p1, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->kemGen:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->algorithmName:Ljava/lang/String;

    .line 53
    .line 54
    const-string p4, " public key can be used for wrapping"

    .line 55
    .line 56
    invoke-static {p2, p3, p4}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    const/4 p3, 0x4

    .line 65
    if-ne p1, p3, :cond_6

    .line 66
    .line 67
    instance-of p1, p2, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPrivateKey;

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    move-object p1, p2

    .line 72
    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPrivateKey;

    .line 73
    .line 74
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->unwrapKey:Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPrivateKey;

    .line 75
    .line 76
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->cmceParameters:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 100
    .line 101
    const-string p3, "cipher locked to "

    .line 102
    .line 103
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p2

    .line 111
    :cond_4
    :goto_2
    return-void

    .line 112
    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 113
    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->algorithmName:Ljava/lang/String;

    .line 120
    .line 121
    const-string p4, " private key can be used for unwrapping"

    .line 122
    .line 123
    invoke-static {p2, p3, p4}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_6
    new-instance p1, Ljava/security/InvalidParameterException;

    .line 132
    .line 133
    const-string p2, "Cipher only valid for wrapping/unwrapping"

    .line 134
    .line 135
    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_7
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 140
    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->algorithmName:Ljava/lang/String;

    .line 147
    .line 148
    const-string p4, " can only accept KTSParameterSpec"

    .line 149
    .line 150
    invoke-static {p2, p3, p4}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 2
    .line 3
    const-string v1, "Cannot support mode "

    .line 4
    .line 5
    invoke-static {v1, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
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
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    .line 2
    .line 3
    const-string v1, "Padding "

    .line 4
    .line 5
    const-string v2, " unknown"

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "unable to extract KTS secret: "

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    :try_start_0
    new-instance p3, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->unwrapKey:Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPrivateKey;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    move-result-object v1

    invoke-direct {p3, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->getEncapsulationLength()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->extractSecret([B)[B

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    invoke-interface {v3, v2, v4}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->getEncapsulationLength()I

    move-result p3

    array-length v1, p1

    invoke-static {p1, p3, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    array-length v1, p1

    invoke-interface {v3, p1, v2, v1}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "only SECRET_KEY supported"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII)[B
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->kemGen:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->wrapKey:Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/BCCMCEPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v2

    invoke-interface {v0}, Ljavax/security/auth/Destroyable;->destroy()V

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v0}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to destroy interim values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to generate KTS secret: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Cannot wrap key, null encoding."

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
