.class public Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field private static final OID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

.field private cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

.field private digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.11.0.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->OID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x3

    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x5

    .line 25
    if-gt v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "wrong sequence size in constructor: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v1}, Landroidx/camera/core/impl/a;->g(Lorg/bouncycastle/asn1/ASN1Sequence;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_6

    .line 60
    .line 61
    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 72
    .line 73
    const/4 v1, 0x2

    .line 74
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    sub-int/2addr v3, v2

    .line 79
    if-eq v1, v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    instance-of v4, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 90
    .line 91
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    if-ne v4, v2, :cond_2

    .line 98
    .line 99
    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iput-object v3, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "unknown tag in getInstance: "

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v0}, Landroidx/browser/browseractions/b;->h(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_3
    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/tsp/CryptoInfos;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iput-object v3, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    .line 128
    .line 129
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v1, "unknown object in getInstance: "

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    sub-int/2addr v0, v2

    .line 157
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    .line 166
    .line 167
    return-void

    .line 168
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    const-string v0, "incompatible version"

    .line 171
    .line 172
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/CryptoInfos;Lorg/bouncycastle/asn1/tsp/EncryptionInfo;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    new-instance p1, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    new-instance p2, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    invoke-direct {p2, p3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v0, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, p3}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_1

    :cond_2
    iget-object p3, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    :goto_1
    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    iget-object p3, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    iget-object p1, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/tsp/CryptoInfos;Lorg/bouncycastle/asn1/tsp/EncryptionInfo;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    iput-object p4, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addArchiveTimeStamp(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Z)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .locals 2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    new-instance v0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    invoke-virtual {v1, p2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->append(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    return-object v0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->getArchiveTimeStampChains()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    move-result-object p2

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;->getArchiveTimestamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;->append(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    move-result-object p1

    aput-object p1, p2, v0

    new-instance p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    new-instance v0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;-><init>([Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;)V

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mismatch of digest algorithm in addArchiveTimeStamp"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getArchiveTimeStampSequence()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    return-object v0
.end method

.method public getDigestAlgorithms()[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EvidenceRecord: Oid("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->OID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
