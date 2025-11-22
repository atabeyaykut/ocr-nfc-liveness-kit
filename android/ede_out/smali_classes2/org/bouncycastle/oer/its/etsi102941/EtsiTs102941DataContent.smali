.class public Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final authorizationRequest:I = 0x2

.field public static final authorizationResponse:I = 0x3

.field public static final authorizationValidationRequest:I = 0x7

.field public static final authorizationValidationResponse:I = 0x8

.field public static final caCertificateRequest:I = 0x9

.field public static final certificateRevocationList:I = 0x4

.field public static final certificateTrustListRca:I = 0x6

.field public static final certificateTrustListTlm:I = 0x5

.field public static final doubleSignedlinkCertificateRca:I = 0xc

.field public static final enrolmentRequest:I = 0x0

.field public static final enrolmentResponse:I = 0x1

.field public static final linkCertificateTlm:I = 0xa

.field public static final singleSignedLinkCertificateRca:I = 0xb


# instance fields
.field private final choice:I

.field private final etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "choice not implemented "

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CaCertificateRequest;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationResponse;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AuthorizationValidationRequest;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :pswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedRcaCtl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedRcaCtl;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :pswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedTlmCtl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedTlmCtl;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_0

    .line 70
    :pswitch_6
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtResponse;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :pswitch_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerAtRequest;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_0

    .line 88
    :pswitch_8
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcResponse;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_0

    .line 97
    :pswitch_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequestSignedForPop;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/InnerEcRequestSignedForPop;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    return v0
.end method

.method public getEtsiTs102941DataContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/EtsiTs102941DataContent;->etsiTs102941DataContent:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
