.class public Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private coeffQuadratic:[[B

.field private coeffScalar:[B

.field private coeffSingular:[[B

.field private docLength:Lorg/bouncycastle/asn1/ASN1Integer;

.field private oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    invoke-static {p3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    invoke-static {p4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    .line 34
    :goto_0
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    new-array v2, v2, [[B

    .line 59
    .line 60
    iput-object v2, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ge v2, v3, :cond_1

    .line 68
    .line 69
    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    .line 70
    .line 71
    invoke-static {v1, v2}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    aput-object v4, v3, v2

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 v1, 0x3

    .line 81
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 86
    .line 87
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    new-array v2, v2, [[B

    .line 92
    .line 93
    iput-object v2, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    :goto_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ge v2, v3, :cond_2

    .line 101
    .line 102
    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    .line 103
    .line 104
    invoke-static {v1, v2}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    aput-object v4, v3, v2

    .line 109
    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const/4 v1, 0x4

    .line 114
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 119
    .line 120
    invoke-static {p1, v0}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    .line 125
    .line 126
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCoeffQuadratic()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getCoeffScalar()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v0

    return-object v0
.end method

.method public getCoeffSingular()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getDocLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 22
    .line 23
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    .line 29
    .line 30
    array-length v4, v4

    .line 31
    if-ge v3, v4, :cond_1

    .line 32
    .line 33
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    .line 34
    .line 35
    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    .line 36
    .line 37
    aget-object v5, v5, v3

    .line 38
    .line 39
    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-static {v1, v0}, Landroidx/browser/browseractions/a;->d(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    .line 53
    .line 54
    array-length v3, v3

    .line 55
    if-ge v2, v3, :cond_2

    .line 56
    .line 57
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    .line 58
    .line 59
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    .line 60
    .line 61
    aget-object v4, v4, v2

    .line 62
    .line 63
    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-static {v1, v0}, Landroidx/browser/browseractions/a;->d(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    .line 77
    .line 78
    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    .line 79
    .line 80
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    .line 87
    .line 88
    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 97
    .line 98
    .line 99
    return-object v1
.end method
