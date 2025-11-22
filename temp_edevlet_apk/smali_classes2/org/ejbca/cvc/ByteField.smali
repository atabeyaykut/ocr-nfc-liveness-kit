.class public Lorg/ejbca/cvc/ByteField;
.super Lorg/ejbca/cvc/AbstractDataField;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:[B

.field private showBitLength:Z


# direct methods
.method public constructor <init>(Lorg/ejbca/cvc/CVCTagEnum;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/ejbca/cvc/AbstractDataField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/ejbca/cvc/ByteField;->showBitLength:Z

    return-void
.end method

.method public constructor <init>(Lorg/ejbca/cvc/CVCTagEnum;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ejbca/cvc/ByteField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;[BZ)V

    return-void
.end method

.method public constructor <init>(Lorg/ejbca/cvc/CVCTagEnum;[BZ)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/ejbca/cvc/AbstractDataField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;)V

    iput-object p2, p0, Lorg/ejbca/cvc/ByteField;->data:[B

    iput-boolean p3, p0, Lorg/ejbca/cvc/ByteField;->showBitLength:Z

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/ejbca/cvc/ByteField;->data:[B

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/ejbca/cvc/ByteField;->data:[B

    return-object v0
.end method

.method public isShowBitLength()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ejbca/cvc/ByteField;->showBitLength:Z

    return v0
.end method

.method public setShowBitLength(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ejbca/cvc/ByteField;->showBitLength:Z

    return-void
.end method

.method public valueAsText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/ejbca/cvc/ByteField;->showBitLength:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/ejbca/cvc/ByteField;->data:[B

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/math/BigInteger;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object v2, p0, Lorg/ejbca/cvc/ByteField;->data:[B

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    const-string v1, "["

    .line 24
    .line 25
    const-string v2, "]  "

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string v0, ""

    .line 33
    .line 34
    :goto_1
    invoke-static {v0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/ejbca/cvc/ByteField;->data:[B

    .line 39
    .line 40
    invoke-static {v1}, Lorg/ejbca/cvc/util/StringConverter;->byteToHex([B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
