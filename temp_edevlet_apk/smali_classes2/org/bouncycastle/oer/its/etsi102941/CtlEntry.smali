.class public Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final aa:I = 0x2

.field public static final dc:I = 0x3

.field public static final ea:I = 0x1

.field public static final rca:I = 0x0

.field public static final tlm:I = 0x4


# instance fields
.field private final choice:I

.field private final ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

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
    iput v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_2

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
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v1, "invalid choice value "

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/DcEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/DcEntry;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/AaEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AaEntry;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EaEntry;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 81
    .line 82
    return-void
.end method

.method public static aa(Lorg/bouncycastle/oer/its/etsi102941/AaEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static dc(Lorg/bouncycastle/oer/its/etsi102941/DcEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static ea(Lorg/bouncycastle/oer/its/etsi102941/EaEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static rca(Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static tlm(Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    return v0
.end method

.method public getCtlEntry()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
