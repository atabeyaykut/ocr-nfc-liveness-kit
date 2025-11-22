.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
.super Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FGBasis"
.end annotation


# instance fields
.field public F:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

.field public G:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p6}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;)V

    iput-object p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->F:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iput-object p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->G:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    return-void
.end method


# virtual methods
.method public isNormOk()Z
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-wide v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->F:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v3

    long-to-double v3, v3

    cmpg-double v5, v3, v1

    if-gez v5, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->G:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v3

    long-to-double v3, v3

    cmpg-double v0, v3, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
