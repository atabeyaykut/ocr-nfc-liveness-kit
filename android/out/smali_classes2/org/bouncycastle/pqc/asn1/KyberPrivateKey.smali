.class public Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private hpk:[B

.field private nonce:[B

.field private publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

.field private s:[B

.field private version:I


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;-><init>(I[B[B[BLorg/bouncycastle/pqc/asn1/KyberPublicKey;)V

    return-void
.end method

.method public constructor <init>(I[B[B[BLorg/bouncycastle/pqc/asn1/KyberPublicKey;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    iput-object p5, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Landroidx/camera/core/impl/utils/f;->f(Lorg/bouncycastle/asn1/ASN1Sequence;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p1, v1}, Landroidx/fragment/app/a;->i(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x5

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 40
    :goto_0
    rsub-int/lit8 v1, v0, 0x3

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    .line 59
    .line 60
    rsub-int/lit8 v0, v0, 0x4

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string v0, "unrecognized version"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getHpk()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/asn1/KyberPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    return-object v0
.end method

.method public getS()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 7
    .line 8
    iget v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->version:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->s:[B

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v2, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getT()[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v3, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    .line 38
    .line 39
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getRho()[B

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;-><init>([B[B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    .line 50
    .line 51
    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->hpk:[B

    .line 52
    .line 53
    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    .line 60
    .line 61
    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/KyberPrivateKey;->nonce:[B

    .line 62
    .line 63
    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1, v0}, Landroidx/camera/core/impl/a;->j(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/DEROctetString;Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DERSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method
