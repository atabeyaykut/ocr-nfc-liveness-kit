.class public Lorg/jmrtd/lds/ActiveAuthenticationInfo;
.super Lorg/jmrtd/lds/SecurityInfo;
.source "SourceFile"


# static fields
.field public static final ECDSA_PLAIN_RIPEMD160_OID:Ljava/lang/String; = "0.4.0.127.0.7.1.1.4.1.6"

.field public static final ECDSA_PLAIN_SHA1_OID:Ljava/lang/String; = "0.4.0.127.0.7.1.1.4.1.1"

.field public static final ECDSA_PLAIN_SHA224_OID:Ljava/lang/String; = "0.4.0.127.0.7.1.1.4.1.2"

.field public static final ECDSA_PLAIN_SHA256_OID:Ljava/lang/String; = "0.4.0.127.0.7.1.1.4.1.3"

.field public static final ECDSA_PLAIN_SHA384_OID:Ljava/lang/String; = "0.4.0.127.0.7.1.1.4.1.4"

.field public static final ECDSA_PLAIN_SHA512_OID:Ljava/lang/String; = "0.4.0.127.0.7.1.1.4.1.5"

.field public static final ECDSA_PLAIN_SIGNATURES:Ljava/lang/String; = "0.4.0.127.0.7.1.1.4.1"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final VERSION_1:I = 0x1

.field private static final serialVersionUID:J = 0x5ecc0b775934c9bcL


# instance fields
.field private oid:Ljava/lang/String;

.field private signatureAlgorithmOID:Ljava/lang/String;

.field private version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd.lds"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "2.23.136.1.1.5"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/jmrtd/lds/ActiveAuthenticationInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jmrtd/lds/SecurityInfo;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->version:I

    iput-object p3, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->checkFields()V

    return-void
.end method

.method private checkFields()V
    .locals 4

    const-string v0, "Wrong signature algorithm OID: "

    const-string v1, "Wrong version: "

    const-string v2, "Wrong identifier: "

    :try_start_0
    iget-object v3, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->oid:Ljava/lang/String;

    invoke-static {v3}, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->checkRequiredIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->version:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->version:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    const-string v1, "0.4.0.127.0.7.1.1.4.1.1"

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0.4.0.127.0.7.1.1.4.1.2"

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0.4.0.127.0.7.1.1.4.1.3"

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0.4.0.127.0.7.1.1.4.1.4"

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0.4.0.127.0.7.1.1.4.1.5"

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0.4.0.127.0.7.1.1.4.1.6"

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->oid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed ActiveAuthenticationInfo"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static checkRequiredIdentifier(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "2.23.136.1.1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static lookupMnemonicByOID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    const-string v0, "0.4.0.127.0.7.1.1.4.1.1"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "SHA1withECDSA"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "0.4.0.127.0.7.1.1.4.1.2"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p0, "SHA224withECDSA"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "0.4.0.127.0.7.1.1.4.1.3"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string p0, "SHA256withECDSA"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string v0, "0.4.0.127.0.7.1.1.4.1.4"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const-string p0, "SHA384withECDSA"

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    const-string v0, "0.4.0.127.0.7.1.1.4.1.5"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const-string p0, "SHA512withECDSA"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_4
    const-string v0, "0.4.0.127.0.7.1.1.4.1.6"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    const-string p0, "RIPEMD160withECDSA"

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_5
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 68
    .line 69
    const-string v1, "Unknown OID "

    .line 70
    .line 71
    invoke-static {v1, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method private toProtocolOIDString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "2.23.136.1.1.5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "id-AA"

    :cond_0
    return-object p1
.end method

.method public static toSignatureAlgorithmOIDString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "0.4.0.127.0.7.1.1.4.1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ecdsa-plain-SHA1"

    return-object p0

    :cond_0
    const-string v0, "0.4.0.127.0.7.1.1.4.1.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ecdsa-plain-SHA224"

    return-object p0

    :cond_1
    const-string v0, "0.4.0.127.0.7.1.1.4.1.3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "ecdsa-plain-SHA256"

    return-object p0

    :cond_2
    const-string v0, "0.4.0.127.0.7.1.1.4.1.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "ecdsa-plain-SHA384"

    return-object p0

    :cond_3
    const-string v0, "0.4.0.127.0.7.1.1.4.1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "ecdsa-plain-SHA512"

    return-object p0

    :cond_4
    const-string v0, "0.4.0.127.0.7.1.1.4.1.6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "ecdsa-plain-RIPEMD160"

    :cond_5
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/jmrtd/lds/ActiveAuthenticationInfo;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/jmrtd/lds/ActiveAuthenticationInfo;

    invoke-virtual {p0}, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->getDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->getDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    return p1
.end method

.method public getDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->oid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public getObjectIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolOIDString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->oid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->toProtocolOIDString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithmOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->oid:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    add-int/lit16 v0, v0, 0x3039

    iget v1, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->version:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->signatureAlgorithmOID:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    mul-int/lit8 v0, v0, 0xb

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActiveAuthenticationInfo ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->oid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->toProtocolOIDString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "signatureAlgorithmOID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->getSignatureAlgorithmOID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jmrtd/lds/ActiveAuthenticationInfo;->toSignatureAlgorithmOIDString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
