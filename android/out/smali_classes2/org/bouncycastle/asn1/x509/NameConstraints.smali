.class public Lorg/bouncycastle/asn1/x509/NameConstraints;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

.field private permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v1, v3, :cond_0

    .line 31
    .line 32
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->createArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Unknown tag encountered: "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Landroidx/browser/browseractions/b;->h(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_1
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->createArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/GeneralSubtree;[Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p2}, Lorg/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    return-void
.end method

.method private static cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v1, v0, [Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NameConstraints;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/NameConstraints;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/NameConstraints;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getExcludedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public getPermittedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
