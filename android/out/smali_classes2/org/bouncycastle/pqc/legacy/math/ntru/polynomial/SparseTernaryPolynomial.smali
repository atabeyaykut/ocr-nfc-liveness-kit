.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;


# static fields
.field private static final BITS_PER_INDEX:I = 0xb


# instance fields
.field private N:I

.field private negOnes:[I

.field private ones:[I


# direct methods
.method public constructor <init>(I[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 0

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    .line 19
    .line 20
    if-ge v0, v3, :cond_3

    .line 21
    .line 22
    aget v3, p1, v0

    .line 23
    .line 24
    const/4 v4, -0x1

    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    if-ne v3, v4, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 33
    .line 34
    add-int/lit8 v4, v1, 0x1

    .line 35
    .line 36
    aput v0, v3, v1

    .line 37
    .line 38
    move v1, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v0, "Illegal value: "

    .line 43
    .line 44
    const-string v1, ", must be one of {-1, 0, 1}"

    .line 45
    .line 46
    invoke-static {v0, v3, v1}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 55
    .line 56
    add-int/lit8 v4, v2, 0x1

    .line 57
    .line 58
    aput v0, v3, v2

    .line 59
    .line 60
    move v2, v4

    .line 61
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 65
    .line 66
    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 71
    .line 72
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 73
    .line 74
    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 79
    .line 80
    return-void
.end method

.method public static fromBinary(Ljava/io/InputStream;III)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7ff

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    mul-int v1, p2, v0

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v1

    const/16 v2, 0x800

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object p2

    mul-int v0, v0, p3

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-static {p0, p3, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object p0

    new-instance p3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p3, p1, p2, p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(I[I[I)V

    return-object p3
.end method

.method public static generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIILjava/security/SecureRandom;)[I

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

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
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v2, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getNegOnes()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-object v0
.end method

.method public getOnes()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .locals 7

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ne v0, v1, :cond_7

    new-array v0, v1, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ge v2, v3, :cond_0

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v4, v3

    if-eq v2, v4, :cond_3

    aget v3, v3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_2

    aget-object v3, v0, v4

    aget-object v6, p1, v5

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v3, v3, -0x1

    move v5, v3

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-eq v1, v3, :cond_6

    aget v2, v2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_5

    aget-object v2, v0, v3

    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_4

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of coefficients must be the same"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 7

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ne v0, v1, :cond_6

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v4, v3

    if-eq v2, v4, :cond_2

    aget v3, v3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_1

    aget v3, v0, v4

    aget v6, p1, v5

    add-int/2addr v3, v6

    aput v3, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v3, v3, -0x1

    move v5, v3

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-eq v1, v3, :cond_5

    aget v2, v2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_4

    aget v2, v0, v3

    aget v5, p1, v4

    sub-int/2addr v2, v5

    aput v2, v0, v3

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_3

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of coefficients must be the same"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    return v0
.end method

.method public toBinary()[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    array-length v0, v0

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v4, v3

    if-eq v2, v4, :cond_0

    aget v3, v3, v2

    const/4 v4, 0x1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aget v2, v2, v1

    const/4 v3, -0x1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v1
.end method
