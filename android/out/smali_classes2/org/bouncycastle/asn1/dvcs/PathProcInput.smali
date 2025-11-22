.class public Lorg/bouncycastle/asn1/dvcs/PathProcInput;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

.field private explicitPolicyReqd:Z

.field private inhibitAnyPolicy:Z

.field private inhibitPolicyMapping:Z


# direct methods
.method public constructor <init>([Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/PolicyInformation;ZZZ)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    iput-boolean p2, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    iput-boolean p4, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    return-void
.end method

.method private copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static fromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    .locals 6

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p0, :cond_6

    .line 9
    .line 10
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    .line 24
    .line 25
    invoke-static {v1}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->fromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;-><init>([Lorg/bouncycastle/asn1/x509/PolicyInformation;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v3, 0x1

    .line 34
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ge v3, v4, :cond_5

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    instance-of v5, v4, Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->setInhibitPolicyMapping(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    instance-of v5, v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 61
    .line 62
    if-eqz v5, :cond_4

    .line 63
    .line 64
    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    if-ne v5, v1, :cond_2

    .line 75
    .line 76
    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->setInhibitAnyPolicy(Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "Unknown tag encountered: "

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v4, v0}, Landroidx/browser/browseractions/b;->h(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_3
    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->setExplicitPolicyReqd(Z)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    return-object v2

    .line 120
    :cond_6
    const/4 p0, 0x0

    .line 121
    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    move-result-object p0

    return-object p0
.end method

.method private setExplicitPolicyReqd(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    return-void
.end method

.method private setInhibitAnyPolicy(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    return-void
.end method

.method private setInhibitPolicyMapping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    return-void
.end method


# virtual methods
.method public getAcceptablePolicySet()[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0

    return-object v0
.end method

.method public isExplicitPolicyReqd()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    return v0
.end method

.method public isInhibitAnyPolicy()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    return v0
.end method

.method public isInhibitPolicyMapping()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    array-length v2, v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    array-length v5, v4

    if-eq v3, v5, :cond_0

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    if-eqz v1, :cond_2

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    if-eqz v1, :cond_3

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PathProcInput: {\nacceptablePolicySet: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ninhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nexplicitPolicyReqd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ninhibitAnyPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
