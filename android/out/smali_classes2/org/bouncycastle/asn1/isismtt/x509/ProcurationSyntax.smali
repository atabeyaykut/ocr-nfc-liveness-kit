.class public Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

.field private country:Ljava/lang/String;

.field private thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    iput-object p3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object p3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

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
    const/4 v1, 0x1

    .line 9
    if-lt v0, v1, :cond_5

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x3

    .line 16
    if-gt v0, v2, :cond_5

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/16 v3, 0x80

    .line 33
    .line 34
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eq v3, v1, :cond_3

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    if-eq v3, v4, :cond_2

    .line 46
    .line 47
    if-ne v3, v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    instance-of v3, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "Bad tag number: "

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Landroidx/browser/browseractions/b;->h(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_2
    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    return-void

    .line 107
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v2, "Bad sequence size: "

    .line 112
    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v1}, Landroidx/camera/core/impl/a;->g(Lorg/bouncycastle/asn1/ASN1Sequence;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;

    .line 13
    .line 14
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "illegal object in getInstance: "

    .line 23
    .line 24
    invoke-static {p0, v1}, Lab/b;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public getCertRef()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPerson()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getTypeOfSubstitution()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/DERPrintableString;

    iget-object v5, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v2, :cond_1

    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v2, :cond_2

    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v4, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v2, v3, v1, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
