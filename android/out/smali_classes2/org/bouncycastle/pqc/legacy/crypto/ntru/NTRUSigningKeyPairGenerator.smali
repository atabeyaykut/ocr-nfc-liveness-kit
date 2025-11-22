.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;,
        Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
    }
.end annotation


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateBasis()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
    .locals 25

    move-object/from16 v6, p0

    iget-object v0, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    mul-int/lit8 v7, v5, 0x2

    const/4 v15, 0x1

    add-int/lit8 v12, v7, 0x1

    iget-boolean v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    :goto_0
    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v7, v7, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v7, :cond_0

    add-int/lit8 v7, v1, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-static {v5, v7, v1, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v7

    move v15, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v4, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v16

    move v7, v5

    move v8, v2

    move v9, v3

    move v11, v4

    move v15, v12

    move-object/from16 v12, v16

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v7

    :goto_1
    move-object v12, v7

    invoke-interface {v12}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    if-eqz v0, :cond_1

    invoke-virtual {v11, v15}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    move-result-object v7

    iget-object v7, v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_1
    invoke-virtual {v11, v13}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;

    move-result-object v9

    :goto_2
    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v7, v7, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v7, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-static {v5, v7, v1, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v7

    move/from16 v18, v1

    move/from16 v16, v2

    move-object v1, v9

    move-object/from16 v24, v10

    move-object v2, v11

    move/from16 v19, v14

    move-object v14, v12

    goto :goto_3

    :cond_2
    add-int/lit8 v16, v4, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v17

    move v7, v5

    move v8, v2

    move/from16 v18, v1

    move-object v1, v9

    move v9, v3

    move-object/from16 v24, v10

    move/from16 v10, v16

    move/from16 v16, v2

    move-object v2, v11

    move v11, v4

    move/from16 v19, v14

    move-object v14, v12

    move-object/from16 v12, v17

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v8

    if-eqz v0, :cond_3

    invoke-virtual {v8, v15}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    move-result-object v9

    iget-object v9, v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    sget-object v10, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_3
    invoke-virtual {v8, v13}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;

    move-result-object v9

    iget-object v10, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    iget-object v11, v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->calculate(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;

    move-result-object v10

    iget-object v11, v10, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->gcd:Ljava/math/BigInteger;

    sget-object v12, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    iget-object v3, v10, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->x:Ljava/math/BigInteger;

    int-to-long v11, v13

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    iget-object v3, v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    iget-object v4, v10, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->y:Ljava/math/BigInteger;

    neg-int v10, v13

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    const/4 v10, 0x0

    if-nez v4, :cond_5

    new-array v1, v5, [I

    new-array v4, v5, [I

    iget-object v9, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v9, v9, v10

    aput v9, v1, v10

    iget-object v9, v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v9, v9, v10

    aput v9, v4, v10

    const/4 v15, 0x1

    :goto_4
    if-ge v15, v5, :cond_4

    iget-object v9, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v10, v5, v15

    aget v9, v9, v10

    aput v9, v1, v15

    iget-object v9, v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v9, v9, v10

    aput v9, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_4
    new-instance v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v9, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    invoke-interface {v14, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    invoke-interface {v7, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;

    move-result-object v4

    invoke-virtual {v9, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v9

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    iget-object v1, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigInteger;)V

    goto :goto_6

    :cond_5
    const/4 v4, 0x1

    :goto_5
    if-ge v4, v5, :cond_6

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v4, v4, 0xa

    goto :goto_5

    :cond_6
    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    new-instance v11, Ljava/math/BigDecimal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-direct {v11, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->getMaxCoeffLength()I

    move-result v1

    const/4 v12, 0x1

    add-int/2addr v1, v12

    add-int/2addr v1, v10

    invoke-virtual {v4, v11, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigDecimal;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v1

    iget-object v4, v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    new-instance v11, Ljava/math/BigDecimal;

    iget-object v9, v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-direct {v11, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->getMaxCoeffLength()I

    move-result v9

    add-int/2addr v9, v12

    add-int/2addr v9, v10

    invoke-virtual {v4, v11, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigDecimal;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v4

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v1

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->halve()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->round()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    :goto_6
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-interface {v14, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-interface {v7, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    new-instance v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v9, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    new-instance v10, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->minimizeFG(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    move-object/from16 v8, v24

    if-nez v19, :cond_7

    invoke-interface {v7, v8, v13}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    move-object/from16 v19, v9

    goto :goto_7

    :cond_7
    invoke-virtual {v9, v8, v13}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    move-object/from16 v19, v7

    :goto_7
    invoke-virtual {v0, v13}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;

    iget-object v2, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v17, v1

    move-object/from16 v18, v14

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v23}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;)V

    return-object v1

    :cond_8
    move-object v9, v1

    move-object v11, v2

    move-object v12, v14

    move/from16 v2, v16

    move/from16 v1, v18

    move/from16 v14, v19

    move-object/from16 v10, v24

    goto/16 :goto_2

    :cond_9
    move v12, v15

    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method private minimizeFG(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    mul-int/lit8 v8, v4, 0x2

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v9, v9, v6

    mul-int v9, v9, v9

    iget-object v10, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v10, v10, v6

    mul-int v10, v10, v10

    add-int/2addr v10, v9

    mul-int v10, v10, v8

    add-int/2addr v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v7, -0x4

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v4, :cond_4

    if-ge v10, v4, :cond_4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v11, v4, :cond_1

    iget-object v13, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v13, v13, v11

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v14, v14, v11

    mul-int v13, v13, v14

    iget-object v14, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v14, v14, v11

    iget-object v15, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v15, v15, v11

    mul-int v14, v14, v15

    mul-int/lit8 v15, v4, 0x4

    add-int/2addr v13, v14

    mul-int v13, v13, v15

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sumCoeffs()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sumCoeffs()I

    move-result v13

    add-int/2addr v13, v11

    mul-int/lit8 v13, v13, 0x4

    sub-int/2addr v12, v13

    if-le v12, v7, :cond_2

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v3, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    goto :goto_4

    :cond_2
    neg-int v11, v7

    if-ge v12, v11, :cond_3

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v3, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->rotate1()V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->rotate1()V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public generateBoundedBasis()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    .locals 2

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->generateBasis()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->isNormOk()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_0

    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;

    invoke-direct {v4, p0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$1;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    if-ne v2, v5, :cond_1

    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    iget-object v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {v1, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;-><init>(Ljava/util/List;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public generateKeyPairSingleThread()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->generateBoundedBasis()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;-><init>(Ljava/util/List;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    return-void
.end method
