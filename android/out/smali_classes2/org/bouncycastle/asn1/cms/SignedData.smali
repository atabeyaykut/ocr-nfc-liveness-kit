.class public Lorg/bouncycastle/asn1/cms/SignedData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field private static final VERSION_1:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_4:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_5:Lorg/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private certificates:Lorg/bouncycastle/asn1/ASN1Set;

.field private certsBer:Z

.field private final contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private crls:Lorg/bouncycastle/asn1/ASN1Set;

.field private crlsBer:Z

.field private final digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

.field private final digsBer:Z

.field private final signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

.field private final sigsBer:Z

.field private final version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

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
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    .line 23
    .line 24
    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 48
    .line 49
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 54
    .line 55
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    if-ne v2, v4, :cond_0

    .line 64
    .line 65
    instance-of v2, v1, Lorg/bouncycastle/asn1/BERTaggedObject;

    .line 66
    .line 67
    iput-boolean v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    .line 68
    .line 69
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "unknown tag value "

    .line 81
    .line 82
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Landroidx/browser/browseractions/b;->h(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/BERTaggedObject;

    .line 94
    .line 95
    iput-boolean v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    .line 96
    .line 97
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    instance-of v0, v1, Lorg/bouncycastle/asn1/ASN1Set;

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    move-object v0, v1

    .line 109
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string v0, "SET expected, not encountered"

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_4
    if-eqz v0, :cond_5

    .line 121
    .line 122
    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    .line 123
    .line 124
    iget-object p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    .line 125
    .line 126
    instance-of p1, p1, Lorg/bouncycastle/asn1/BERSet;

    .line 127
    .line 128
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digsBer:Z

    .line 129
    .line 130
    instance-of p1, v0, Lorg/bouncycastle/asn1/BERSet;

    .line 131
    .line 132
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->sigsBer:Z

    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string v0, "signerInfos not set"

    .line 138
    .line 139
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Lorg/bouncycastle/asn1/cms/SignedData;->calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    instance-of p1, p1, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digsBer:Z

    instance-of p1, p4, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    instance-of p1, p3, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    instance-of p1, p5, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->sigsBer:Z

    return-void
.end method

.method private calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_0

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    if-ne v6, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_4
    if-eqz v2, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 p2, 0x5

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object p1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz p3, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    sget-object p1, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p1

    :cond_8
    if-eqz v4, :cond_9

    sget-object p1, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p1

    :cond_9
    if-eqz v3, :cond_a

    sget-object p1, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p1

    :cond_a
    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/cms/SignedData;->checkForVersion3(Lorg/bouncycastle/asn1/ASN1Set;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p1, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p1

    :cond_b
    sget-object p2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p1

    :cond_c
    sget-object p1, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p1
.end method

.method private checkForVersion3(Lorg/bouncycastle/asn1/ASN1Set;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cms/SignedData;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCRLs()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    new-instance v3, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digsBer:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->sigsBer:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_5
    :goto_2
    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
