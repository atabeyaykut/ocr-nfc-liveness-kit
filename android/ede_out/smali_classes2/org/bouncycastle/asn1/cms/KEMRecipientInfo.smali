.class public Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final cmsVersion:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final kekLength:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

.field private final ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->cmsVersion:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kekLength:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    :goto_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence must consist of 3 elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p7, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->cmsVersion:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kekLength:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p6, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p7, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p8, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "wrap cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "kem cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getKdf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKemct()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getRecipientIdentifier()Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    return-object v0
.end method

.method public getUkm()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getWrap()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->cmsVersion:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kekLength:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 56
    .line 57
    invoke-static {v0, v1, v0}, Landroidx/browser/browseractions/b;->l(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DERSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
