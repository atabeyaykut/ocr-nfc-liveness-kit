.class public Lorg/bouncycastle/asn1/eac/CVCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field private static bodyValid:I = 0x1

.field private static signValid:I = 0x2


# instance fields
.field private certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

.field private signature:[B

.field private valid:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificate;->initFrom(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CertificateBody;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget p2, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr p1, p2

    sget p2, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CVCertificate;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    .line 11
    .line 12
    const/16 v1, 0x40

    .line 13
    .line 14
    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/eac/CVCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "unable to parse data: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v1}, Landroid/support/v4/media/a;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method private initFrom(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Input Stream for creating an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private setPrivateData(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    .line 3
    .line 4
    const/16 v1, 0x21

    .line 5
    .line 6
    const/16 v2, 0x40

    .line 7
    .line 8
    invoke-virtual {p1, v2, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    instance-of v4, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-static {v3, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/16 v5, 0x37

    .line 51
    .line 52
    if-eq v4, v5, :cond_1

    .line 53
    .line 54
    const/16 v5, 0x4e

    .line 55
    .line 56
    if-ne v4, v5, :cond_0

    .line 57
    .line 58
    invoke-static {v3}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CertificateBody;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    .line 63
    .line 64
    iget v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    .line 65
    .line 66
    sget v4, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "Invalid tag, not an Iso7816CertificateStructure :"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v0}, Landroidx/browser/browseractions/b;->h(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_1
    const/4 v4, 0x4

    .line 87
    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iput-object v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    .line 100
    .line 101
    iget v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    .line 102
    .line 103
    sget v4, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    .line 104
    .line 105
    :goto_1
    or-int/2addr v3, v4

    .line 106
    iput v3, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 110
    .line 111
    const-string v0, "Invalid Object, not an Iso7816CertificateStructure"

    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_3
    iget v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    .line 118
    .line 119
    sget v1, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    .line 120
    .line 121
    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    .line 122
    .line 123
    or-int/2addr v1, v2

    .line 124
    if-ne v0, v1, :cond_4

    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "invalid CARDHOLDER_CERTIFICATE :"

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v1}, Landroidx/browser/browseractions/b;->h(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, "not a CARDHOLDER_CERTIFICATE :"

    .line 149
    .line 150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v1}, Landroidx/browser/browseractions/b;->h(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0
.end method


# virtual methods
.method public getAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificationAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/bouncycastle/asn1/eac/CertificateBody;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    return-object v0
.end method

.method public getCertificateType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateType()I

    move-result v0

    return v0
.end method

.method public getEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorization()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorizationRights()Lorg/bouncycastle/asn1/eac/Flags;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/eac/Flags;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/Flags;-><init>(I)V

    return-object v0
.end method

.method public getHolderAuthorizationRole()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public getHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    move-result-object v0

    return-object v0
.end method

.method public getRole()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    return v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v1, 0x37

    iget-object v2, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(I[B)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/16 v0, 0x21

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/eac/EACTagged;->create(ILorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method
