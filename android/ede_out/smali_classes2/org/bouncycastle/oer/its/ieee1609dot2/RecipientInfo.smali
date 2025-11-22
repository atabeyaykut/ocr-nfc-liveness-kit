.class public Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final certRecipInfo:I = 0x2

.field public static final pskRecipInfo:I = 0x0

.field public static final rekRecipInfo:I = 0x4

.field public static final signedDataRecipInfo:I = 0x3

.field public static final symmRecipInfo:I = 0x1


# instance fields
.field private final choice:I

.field private final recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

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
    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "invalid choice value "

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 64
    .line 65
    return-void
.end method

.method public static certRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static pskRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static rekRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static signedDataRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static symmRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

    return v0
.end method

.method public getRecipientInfo()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
