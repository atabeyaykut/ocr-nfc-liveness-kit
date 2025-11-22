.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dilithiumK:I

.field private final dilithiumL:I

.field private final mat:[Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->dilithiumK:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->dilithiumL:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->dilithiumK:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->dilithiumK:I

    .line 5
    .line 6
    const-string v3, "]\n"

    .line 7
    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "Outer Matrix "

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " ["

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->dilithiumK:I

    .line 55
    .line 56
    add-int/lit8 v2, v2, -0x1

    .line 57
    .line 58
    if-ne v1, v2, :cond_0

    .line 59
    .line 60
    invoke-static {v0, v3}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    const-string v2, "],\n"

    .line 66
    .line 67
    invoke-static {v0, v2}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v0, v3}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method


# virtual methods
.method public expandMatrix([B)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->dilithiumK:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->dilithiumL:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    shl-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v2

    int-to-short v4, v4

    invoke-virtual {v3, p1, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->uniformBlocks([BS)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->dilithiumK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->mat:[Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->addString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
