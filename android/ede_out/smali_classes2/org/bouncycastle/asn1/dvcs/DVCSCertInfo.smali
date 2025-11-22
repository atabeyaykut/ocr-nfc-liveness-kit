.class public Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_VERSION:I = 0x1

.field private static final TAG_CERTS:I = 0x3

.field private static final TAG_DV_STATUS:I = 0x0

.field private static final TAG_POLICY:I = 0x1

.field private static final TAG_REQ_SIGNATURE:I = 0x2


# instance fields
.field private certs:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

.field private dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

.field private policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

.field private reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

.field private responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private version:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->version:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x2

    .line 13
    :try_start_0
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iput v4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->version:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 24
    .line 25
    .line 26
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    :catch_0
    const/4 v4, 0x2

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    const/4 v4, 0x1

    .line 30
    :goto_0
    invoke-static {v2}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    .line 35
    .line 36
    add-int/lit8 v2, v4, 0x1

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iput-object v4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 47
    .line 48
    add-int/lit8 v4, v2, 0x1

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 59
    .line 60
    add-int/lit8 v2, v4, 0x1

    .line 61
    .line 62
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v4}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iput-object v4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    .line 71
    .line 72
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-ge v2, v4, :cond_5

    .line 77
    .line 78
    add-int/lit8 v4, v2, 0x1

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    instance-of v5, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 85
    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_3

    .line 97
    .line 98
    if-eq v5, v0, :cond_2

    .line 99
    .line 100
    if-eq v5, v3, :cond_1

    .line 101
    .line 102
    const/4 v6, 0x3

    .line 103
    if-ne v5, v6, :cond_0

    .line 104
    .line 105
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string v0, "Unknown tag encountered: "

    .line 115
    .line 116
    invoke-static {v0, v5}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_1
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    :try_start_2
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_2
    nop

    .line 157
    :goto_2
    move v2, v4

    .line 158
    goto :goto_1

    .line 159
    :cond_5
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;Lorg/bouncycastle/asn1/x509/DigestInfo;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/dvcs/DVCSTime;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    iput-object p3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    move-result-object p0

    return-object p0
.end method

.method private setDvReqInfo(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    return-void
.end method

.method private setMessageImprint(Lorg/bouncycastle/asn1/x509/DigestInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-void
.end method

.method private setVersion(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->version:I

    return-void
.end method


# virtual methods
.method public getCerts()[Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->arrayFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDvReqInfo()Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    return-object v0
.end method

.method public getDvStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getMessageImprint()Lorg/bouncycastle/asn1/x509/DigestInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-object v0
.end method

.method public getPolicy()Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    return-object v0
.end method

.method public getReqSignature()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getResponseTime()Lorg/bouncycastle/asn1/dvcs/DVCSTime;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->version:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->version:I

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v4, v3, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    if-eqz v1, :cond_2

    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v4, v3, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_4

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "DVCSCertInfo {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->version:I

    const/4 v2, 0x1

    const-string v3, "\n"

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dvReqInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "messageImprint: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serialNumber: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dvStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "policy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reqSignature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "certs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extensions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
