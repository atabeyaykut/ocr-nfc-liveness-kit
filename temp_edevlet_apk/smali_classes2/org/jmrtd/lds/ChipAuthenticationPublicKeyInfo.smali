.class public Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;
.super Lorg/jmrtd/lds/SecurityInfo;
.source "SourceFile"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x4eed51c964757b8bL


# instance fields
.field private keyId:Ljava/math/BigInteger;

.field private oid:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/jmrtd/lds/SecurityInfo;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    invoke-static {p2}, Lorg/jmrtd/Util;->reconstructPublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    iput-object p3, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->keyId:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->checkFields()V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;-><init>(Ljava/security/PublicKey;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/math/BigInteger;)V
    .locals 1

    invoke-static {p1}, Lorg/jmrtd/Util;->inferProtocolIdentifier(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/math/BigInteger;)V

    return-void
.end method

.method public static checkRequiredIdentifier(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jmrtd/lds/SecurityInfo;->ID_PK_DH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/jmrtd/lds/SecurityInfo;->ID_PK_ECDH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static toKeyAgreementAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    sget-object v0, Lorg/jmrtd/lds/SecurityInfo;->ID_PK_DH:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "DH"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v0, Lorg/jmrtd/lds/SecurityInfo;->ID_PK_ECDH:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string p0, "ECDH"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 26
    .line 27
    const-string v1, "Unknown OID: \""

    .line 28
    .line 29
    const-string v2, "\""

    .line 30
    .line 31
    invoke-static {v1, p0, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 40
    .line 41
    const-string v0, "Unknown OID: null"

    .line 42
    .line 43
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method private static toProtocolOIDString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jmrtd/lds/SecurityInfo;->ID_PK_DH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "id-PK-DH"

    return-object p0

    :cond_0
    sget-object v0, Lorg/jmrtd/lds/SecurityInfo;->ID_PK_ECDH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "id-PK-ECDH"

    :cond_1
    return-object p0
.end method


# virtual methods
.method public checkFields()V
    .locals 3

    const-string v0, "Wrong identifier: "

    :try_start_0
    iget-object v1, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    invoke-static {v1}, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->checkRequiredIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed ChipAuthenticationInfo"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;

    iget-object v2, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    iget-object v3, p1, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->keyId:Ljava/math/BigInteger;

    if-nez v2, :cond_3

    iget-object v3, p1, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->keyId:Ljava/math/BigInteger;

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    iget-object v3, p1, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->keyId:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    iget-object p1, p1, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public getDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    invoke-static {v1}, Lorg/jmrtd/Util;->toSubjectPublicKeyInfo(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not convert public key to subject-public-key-info structure"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->keyId:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->keyId:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public getKeyId()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->keyId:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getObjectIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolOIDString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    invoke-static {v0}, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->toProtocolOIDString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->keyId:Ljava/math/BigInteger;

    const/16 v2, 0x6f

    if-nez v1, :cond_0

    const/16 v1, 0x6f

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x539

    add-int/lit8 v0, v0, 0x7b

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ChipAuthenticationPublicKeyInfo [protocol: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->oid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->toProtocolOIDString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", chipAuthenticationPublicKey: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->getSubjectPublicKey()Ljava/security/PublicKey;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lorg/jmrtd/Util;->getDetailedPublicKeyAlgorithm(Ljava/security/PublicKey;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", keyId: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/jmrtd/lds/ChipAuthenticationPublicKeyInfo;->keyId:Ljava/math/BigInteger;

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const-string v1, "-"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_0
    const-string v2, "]"

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
