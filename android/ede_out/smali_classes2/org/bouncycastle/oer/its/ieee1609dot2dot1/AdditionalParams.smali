.class public Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final compactUnified:I = 0x2

.field public static final encryptionKey:I = 0x3

.field public static final original:I = 0x0

.field public static final unified:I = 0x1


# instance fields
.field protected final additionalParams:Lorg/bouncycastle/asn1/ASN1Encodable;

.field protected final choice:I


# direct methods
.method private constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "invalid choice value "

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;->additionalParams:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 42
    .line 43
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;->choice:I

    .line 44
    .line 45
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public static compactUnified(Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static encryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static original(Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static unified(Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getAdditionalParams()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;->additionalParams:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;->choice:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/AdditionalParams;->additionalParams:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
