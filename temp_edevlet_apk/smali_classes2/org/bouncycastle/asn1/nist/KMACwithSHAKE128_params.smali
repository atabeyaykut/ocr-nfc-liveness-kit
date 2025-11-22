.class public Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field private static final DEF_LENGTH:I = 0x100

.field private static final EMPTY_STRING:[B


# instance fields
.field private final customizationString:[B

.field private final outputLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->EMPTY_STRING:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->outputLength:I

    sget-object p1, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->EMPTY_STRING:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->customizationString:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->outputLength:I

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->customizationString:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-gt v0, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-static {p1, v3}, Landroidx/camera/core/impl/utils/f;->f(Lorg/bouncycastle/asn1/ASN1Sequence;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->outputLength:I

    .line 24
    .line 25
    invoke-static {p1, v2}, Landroidx/fragment/app/a;->i(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->customizationString:[B

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v1, 0x100

    .line 37
    .line 38
    if-ne v0, v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-static {p1, v3}, Landroidx/camera/core/impl/utils/f;->f(Lorg/bouncycastle/asn1/ASN1Sequence;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->outputLength:I

    .line 53
    .line 54
    sget-object p1, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->EMPTY_STRING:[B

    .line 55
    .line 56
    iput-object p1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->customizationString:[B

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iput v1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->outputLength:I

    .line 60
    .line 61
    invoke-static {p1, v3}, Landroidx/fragment/app/a;->i(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->customizationString:[B

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iput v1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->outputLength:I

    .line 69
    .line 70
    sget-object p1, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->EMPTY_STRING:[B

    .line 71
    .line 72
    iput-object p1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->customizationString:[B

    .line 73
    .line 74
    :goto_0
    return-void

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v0, "sequence size greater than 2"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCustomizationString()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->customizationString:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->outputLength:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget v1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->outputLength:I

    const/16 v2, 0x100

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->outputLength:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->customizationString:[B

    array-length v1, v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/nist/KMACwithSHAKE128_params;->getCustomizationString()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
