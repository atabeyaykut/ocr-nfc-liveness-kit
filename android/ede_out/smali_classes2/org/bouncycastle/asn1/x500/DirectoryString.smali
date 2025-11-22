.class public Lorg/bouncycastle/asn1/x500/DirectoryString;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;
.implements Lorg/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:Lorg/bouncycastle/asn1/ASN1String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1BMPString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1PrintableString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1T61String;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1UniversalString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 2

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    instance-of v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1T61String;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 13
    .line 14
    check-cast p0, Lorg/bouncycastle/asn1/ASN1T61String;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1T61String;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 25
    .line 26
    check-cast p0, Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1PrintableString;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 37
    .line 38
    check-cast p0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1UniversalString;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 49
    .line 50
    check-cast p0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 61
    .line 62
    check-cast p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1BMPString;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string v1, "illegal object in getInstance: "

    .line 71
    .line 72
    invoke-static {p0, v1}, Lab/b;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_6
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 81
    .line 82
    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
