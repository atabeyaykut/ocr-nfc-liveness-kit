.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    iget v9, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    iget v10, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    iget v11, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    iget v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    iget v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    iget v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dg:I

    iget-boolean v15, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    iget-boolean v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    const/4 v2, 0x0

    move-object/from16 v16, v2

    :goto_0
    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v3, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-eqz v15, :cond_1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v8, v10, v10, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move v2, v8

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v13

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    iget-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v5, v4, v17

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v17

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v8, v10, v3, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v13, -0x1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move v2, v8

    move v3, v11

    move v4, v12

    move v5, v13

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertF3()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v16

    if-nez v16, :cond_3

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {v3, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v15, :cond_5

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aput v18, v4, v17

    goto :goto_4

    :cond_5
    move-object/from16 v1, v16

    :cond_6
    :goto_4
    add-int/lit8 v4, v14, -0x1

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static {v8, v14, v4, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v3, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult3(I)V

    invoke-virtual {v5, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clear()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clear()V

    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v4

    invoke-direct {v3, v5, v2, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    return-void
.end method
