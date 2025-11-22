.class public Lorg/jmrtd/lds/PACEInfo;
.super Lorg/jmrtd/lds/SecurityInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jmrtd/lds/PACEInfo$MappingType;,
        Lorg/jmrtd/lds/PACEInfo$DHCParameterSpec;
    }
.end annotation


# static fields
.field private static final ALLOWED_REQUIRED_IDENTIFIERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final PARAMS_ECP_BRAINPOOL_P192_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_BRAINPOOL_P224_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_BRAINPOOL_P256_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_BRAINPOOL_P320_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_BRAINPOOL_P384_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_BRAINPOOL_P512_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_NIST_P192_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_NIST_P224_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_NIST_P256_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_NIST_P384_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_ECP_NIST_P521_R1:Ljava/security/spec/ECParameterSpec;

.field private static final PARAMS_GFP_1024_160:Ljavax/crypto/spec/DHParameterSpec;

.field private static final PARAMS_GFP_2048_224:Ljavax/crypto/spec/DHParameterSpec;

.field private static final PARAMS_GFP_2048_256:Ljavax/crypto/spec/DHParameterSpec;

.field public static final PARAM_ID_ECP_BRAINPOOL_P192_R1:I = 0x9

.field public static final PARAM_ID_ECP_BRAINPOOL_P224_R1:I = 0xb

.field public static final PARAM_ID_ECP_BRAINPOOL_P256_R1:I = 0xd

.field public static final PARAM_ID_ECP_BRAINPOOL_P320_R1:I = 0xe

.field public static final PARAM_ID_ECP_BRAINPOOL_P384_R1:I = 0x10

.field public static final PARAM_ID_ECP_BRAINPOOL_P512_R1:I = 0x11

.field public static final PARAM_ID_ECP_NIST_P192_R1:I = 0x8

.field public static final PARAM_ID_ECP_NIST_P224_R1:I = 0xa

.field public static final PARAM_ID_ECP_NIST_P256_R1:I = 0xc

.field public static final PARAM_ID_ECP_NIST_P384_R1:I = 0xf

.field public static final PARAM_ID_ECP_NIST_P521_R1:I = 0x12

.field public static final PARAM_ID_GFP_1024_160:I = 0x0

.field public static final PARAM_ID_GFP_2048_224:I = 0x1

.field public static final PARAM_ID_GFP_2048_256:I = 0x2

.field private static final VERSION_2:I = 0x2

.field private static final serialVersionUID:J = 0x6e7ae31eea435577L


# instance fields
.field private parameterId:Ljava/math/BigInteger;

.field private protocolOID:Ljava/lang/String;

.field private version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    const-string v0, "org.jmrtd.lds"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->LOGGER:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jmrtd/Util;->RFC5114_1024_160:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitDHParameterSpec(Lorg/bouncycastle/crypto/params/DHParameters;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_GFP_1024_160:Ljavax/crypto/spec/DHParameterSpec;

    sget-object v0, Lorg/jmrtd/Util;->RFC5114_2048_224:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitDHParameterSpec(Lorg/bouncycastle/crypto/params/DHParameters;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_GFP_2048_224:Ljavax/crypto/spec/DHParameterSpec;

    sget-object v0, Lorg/jmrtd/Util;->RFC5114_2048_256:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitDHParameterSpec(Lorg/bouncycastle/crypto/params/DHParameters;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_GFP_2048_256:Ljavax/crypto/spec/DHParameterSpec;

    const-string v0, "secp192r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P192_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "secp224r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P224_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "secp256r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P256_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "secp384r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P384_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "secp521r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P521_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "brainpoolp192r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P192_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "brainpoolp224r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P224_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "brainpoolp256r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P256_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "brainpoolp320r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P320_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "brainpoolp384r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P384_R1:Ljava/security/spec/ECParameterSpec;

    const-string v0, "brainpoolp512r1"

    invoke-static {v0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->toExplicitECParameterSpec(Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P512_R1:Ljava/security/spec/ECParameterSpec;

    new-instance v0, Ljava/util/TreeSet;

    const-string v1, "0.4.0.127.0.7.2.2.4.1.1"

    const-string v2, "0.4.0.127.0.7.2.2.4.1.2"

    const-string v3, "0.4.0.127.0.7.2.2.4.1.3"

    const-string v4, "0.4.0.127.0.7.2.2.4.1.4"

    const-string v5, "0.4.0.127.0.7.2.2.4.3.1"

    const-string v6, "0.4.0.127.0.7.2.2.4.3.2"

    const-string v7, "0.4.0.127.0.7.2.2.4.3.3"

    const-string v8, "0.4.0.127.0.7.2.2.4.3.4"

    const-string v9, "0.4.0.127.0.7.2.2.4.2.1"

    const-string v10, "0.4.0.127.0.7.2.2.4.2.2"

    const-string v11, "0.4.0.127.0.7.2.2.4.2.3"

    const-string v12, "0.4.0.127.0.7.2.2.4.2.4"

    const-string v13, "0.4.0.127.0.7.2.2.4.4.1"

    const-string v14, "0.4.0.127.0.7.2.2.4.4.2"

    const-string v15, "0.4.0.127.0.7.2.2.4.4.3"

    const-string v16, "0.4.0.127.0.7.2.2.4.4.4"

    const-string v17, "0.4.0.127.0.7.2.2.4.6.2"

    const-string v18, "0.4.0.127.0.7.2.2.4.6.3"

    const-string v19, "0.4.0.127.0.7.2.2.4.6.4"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/jmrtd/lds/PACEInfo;->ALLOWED_REQUIRED_IDENTIFIERS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/jmrtd/lds/PACEInfo;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/jmrtd/lds/SecurityInfo;-><init>()V

    invoke-static {p1}, Lorg/jmrtd/lds/PACEInfo;->checkRequiredIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/jmrtd/lds/PACEInfo;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Invalid version, must be 2"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lorg/jmrtd/lds/PACEInfo;->protocolOID:Ljava/lang/String;

    iput p2, p0, Lorg/jmrtd/lds/PACEInfo;->version:I

    iput-object p3, p0, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid OID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkRequiredIdentifier(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jmrtd/lds/PACEInfo;->ALLOWED_REQUIRED_IDENTIFIERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static createPACEInfo([B)Lorg/jmrtd/lds/PACEInfo;
    .locals 5

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v4

    :goto_0
    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eqz p0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    :cond_1
    new-instance p0, Lorg/jmrtd/lds/PACEInfo;

    invoke-direct {p0, v0, v1, v4}, Lorg/jmrtd/lds/PACEInfo;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    return-object p0
.end method

.method public static toCipherAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "0.4.0.127.0.7.2.2.4.1.1"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const-string v0, "0.4.0.127.0.7.2.2.4.3.1"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    const-string v0, "0.4.0.127.0.7.2.2.4.2.1"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    const-string v0, "0.4.0.127.0.7.2.2.4.4.1"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_0
    const-string v0, "0.4.0.127.0.7.2.2.4.1.2"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const-string v0, "0.4.0.127.0.7.2.2.4.1.3"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    const-string v0, "0.4.0.127.0.7.2.2.4.1.4"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string v0, "0.4.0.127.0.7.2.2.4.3.2"

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    const-string v0, "0.4.0.127.0.7.2.2.4.3.3"

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    const-string v0, "0.4.0.127.0.7.2.2.4.3.4"

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    const-string v0, "0.4.0.127.0.7.2.2.4.2.2"

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    const-string v0, "0.4.0.127.0.7.2.2.4.2.3"

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    const-string v0, "0.4.0.127.0.7.2.2.4.2.4"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    const-string v0, "0.4.0.127.0.7.2.2.4.4.2"

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    const-string v0, "0.4.0.127.0.7.2.2.4.4.3"

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_2

    .line 122
    .line 123
    const-string v0, "0.4.0.127.0.7.2.2.4.4.4"

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_2

    .line 130
    .line 131
    const-string v0, "0.4.0.127.0.7.2.2.4.6.2"

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_2

    .line 138
    .line 139
    const-string v0, "0.4.0.127.0.7.2.2.4.6.3"

    .line 140
    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_2

    .line 146
    .line 147
    const-string v0, "0.4.0.127.0.7.2.2.4.6.4"

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 157
    .line 158
    const-string v1, "Unknown OID: \""

    .line 159
    .line 160
    const-string v2, "\""

    .line 161
    .line 162
    invoke-static {v1, p0, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_2
    :goto_0
    const-string p0, "AES"

    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_3
    :goto_1
    const-string p0, "DESede"

    .line 174
    .line 175
    return-object p0
.end method

.method public static toDigestAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "0.4.0.127.0.7.2.2.4.1.1"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const-string v0, "0.4.0.127.0.7.2.2.4.3.1"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    const-string v0, "0.4.0.127.0.7.2.2.4.2.1"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    const-string v0, "0.4.0.127.0.7.2.2.4.4.1"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    const-string v0, "0.4.0.127.0.7.2.2.4.1.2"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    const-string v0, "0.4.0.127.0.7.2.2.4.3.2"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    const-string v0, "0.4.0.127.0.7.2.2.4.2.2"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    const-string v0, "0.4.0.127.0.7.2.2.4.4.2"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    const-string v0, "0.4.0.127.0.7.2.2.4.6.2"

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    const-string v0, "0.4.0.127.0.7.2.2.4.1.3"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    const-string v0, "0.4.0.127.0.7.2.2.4.3.3"

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    const-string v0, "0.4.0.127.0.7.2.2.4.2.3"

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    const-string v0, "0.4.0.127.0.7.2.2.4.4.3"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    const-string v0, "0.4.0.127.0.7.2.2.4.6.3"

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    const-string v0, "0.4.0.127.0.7.2.2.4.1.4"

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_2

    .line 121
    .line 122
    const-string v0, "0.4.0.127.0.7.2.2.4.3.4"

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_2

    .line 129
    .line 130
    const-string v0, "0.4.0.127.0.7.2.2.4.2.4"

    .line 131
    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    .line 138
    const-string v0, "0.4.0.127.0.7.2.2.4.4.4"

    .line 139
    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_2

    .line 145
    .line 146
    const-string v0, "0.4.0.127.0.7.2.2.4.6.4"

    .line 147
    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 156
    .line 157
    const-string v1, "Unknown OID: \""

    .line 158
    .line 159
    const-string v2, "\""

    .line 160
    .line 161
    invoke-static {v1, p0, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_2
    :goto_0
    const-string p0, "SHA-256"

    .line 170
    .line 171
    return-object p0

    .line 172
    :cond_3
    :goto_1
    const-string p0, "SHA-1"

    .line 173
    .line 174
    return-object p0
.end method

.method public static toKeyAgreementAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "0.4.0.127.0.7.2.2.4.1.1"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const-string v0, "0.4.0.127.0.7.2.2.4.1.2"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    const-string v0, "0.4.0.127.0.7.2.2.4.1.3"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    const-string v0, "0.4.0.127.0.7.2.2.4.1.4"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    const-string v0, "0.4.0.127.0.7.2.2.4.3.1"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    const-string v0, "0.4.0.127.0.7.2.2.4.3.2"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    const-string v0, "0.4.0.127.0.7.2.2.4.3.3"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    const-string v0, "0.4.0.127.0.7.2.2.4.3.4"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const-string v0, "0.4.0.127.0.7.2.2.4.2.1"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    const-string v0, "0.4.0.127.0.7.2.2.4.2.2"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    const-string v0, "0.4.0.127.0.7.2.2.4.2.3"

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    const-string v0, "0.4.0.127.0.7.2.2.4.2.4"

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    const-string v0, "0.4.0.127.0.7.2.2.4.4.1"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    const-string v0, "0.4.0.127.0.7.2.2.4.4.2"

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    const-string v0, "0.4.0.127.0.7.2.2.4.4.3"

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_2

    .line 121
    .line 122
    const-string v0, "0.4.0.127.0.7.2.2.4.4.4"

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_2

    .line 129
    .line 130
    const-string v0, "0.4.0.127.0.7.2.2.4.6.2"

    .line 131
    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    .line 138
    const-string v0, "0.4.0.127.0.7.2.2.4.6.3"

    .line 139
    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_2

    .line 145
    .line 146
    const-string v0, "0.4.0.127.0.7.2.2.4.6.4"

    .line 147
    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 156
    .line 157
    const-string v1, "Unknown OID: \""

    .line 158
    .line 159
    const-string v2, "\""

    .line 160
    .line 161
    invoke-static {v1, p0, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_2
    :goto_0
    const-string p0, "ECDH"

    .line 170
    .line 171
    return-object p0

    .line 172
    :cond_3
    :goto_1
    const-string p0, "DH"

    .line 173
    .line 174
    return-object p0
.end method

.method public static toKeyLength(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "0.4.0.127.0.7.2.2.4.1.1"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    const-string v0, "0.4.0.127.0.7.2.2.4.3.1"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_5

    .line 16
    .line 17
    const-string v0, "0.4.0.127.0.7.2.2.4.2.1"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_5

    .line 24
    .line 25
    const-string v0, "0.4.0.127.0.7.2.2.4.4.1"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_5

    .line 32
    .line 33
    const-string v0, "0.4.0.127.0.7.2.2.4.1.2"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_5

    .line 40
    .line 41
    const-string v0, "0.4.0.127.0.7.2.2.4.3.2"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    const-string v0, "0.4.0.127.0.7.2.2.4.2.2"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    const-string v0, "0.4.0.127.0.7.2.2.4.4.2"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_5

    .line 64
    .line 65
    const-string v0, "0.4.0.127.0.7.2.2.4.6.2"

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_0
    const-string v0, "0.4.0.127.0.7.2.2.4.1.3"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    const-string v0, "0.4.0.127.0.7.2.2.4.2.3"

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    const-string v0, "0.4.0.127.0.7.2.2.4.3.3"

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    const-string v0, "0.4.0.127.0.7.2.2.4.4.3"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    const-string v0, "0.4.0.127.0.7.2.2.4.6.3"

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    const-string v0, "0.4.0.127.0.7.2.2.4.1.4"

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    const-string v0, "0.4.0.127.0.7.2.2.4.3.4"

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    const-string v0, "0.4.0.127.0.7.2.2.4.2.4"

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_3

    .line 138
    .line 139
    const-string v0, "0.4.0.127.0.7.2.2.4.4.4"

    .line 140
    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_3

    .line 146
    .line 147
    const-string v0, "0.4.0.127.0.7.2.2.4.6.4"

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_2

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 157
    .line 158
    const-string v1, "Unknown OID: \""

    .line 159
    .line 160
    const-string v2, "\""

    .line 161
    .line 162
    invoke-static {v1, p0, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_3
    :goto_0
    const/16 p0, 0x100

    .line 171
    .line 172
    return p0

    .line 173
    :cond_4
    :goto_1
    const/16 p0, 0xc0

    .line 174
    .line 175
    return p0

    .line 176
    :cond_5
    :goto_2
    const/16 p0, 0x80

    .line 177
    .line 178
    return p0
.end method

.method public static toMappingType(Ljava/lang/String;)Lorg/jmrtd/lds/PACEInfo$MappingType;
    .locals 3

    .line 1
    const-string v0, "0.4.0.127.0.7.2.2.4.1.1"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    const-string v0, "0.4.0.127.0.7.2.2.4.1.2"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_5

    .line 16
    .line 17
    const-string v0, "0.4.0.127.0.7.2.2.4.1.3"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_5

    .line 24
    .line 25
    const-string v0, "0.4.0.127.0.7.2.2.4.1.4"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_5

    .line 32
    .line 33
    const-string v0, "0.4.0.127.0.7.2.2.4.2.1"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_5

    .line 40
    .line 41
    const-string v0, "0.4.0.127.0.7.2.2.4.2.2"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    const-string v0, "0.4.0.127.0.7.2.2.4.2.3"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    const-string v0, "0.4.0.127.0.7.2.2.4.2.4"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_0
    const-string v0, "0.4.0.127.0.7.2.2.4.3.1"

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    const-string v0, "0.4.0.127.0.7.2.2.4.3.2"

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    const-string v0, "0.4.0.127.0.7.2.2.4.3.3"

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    const-string v0, "0.4.0.127.0.7.2.2.4.3.4"

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    const-string v0, "0.4.0.127.0.7.2.2.4.4.1"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    const-string v0, "0.4.0.127.0.7.2.2.4.4.2"

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    const-string v0, "0.4.0.127.0.7.2.2.4.4.3"

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    const-string v0, "0.4.0.127.0.7.2.2.4.4.4"

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    const-string v0, "0.4.0.127.0.7.2.2.4.6.2"

    .line 133
    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_3

    .line 139
    .line 140
    const-string v0, "0.4.0.127.0.7.2.2.4.6.3"

    .line 141
    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_3

    .line 147
    .line 148
    const-string v0, "0.4.0.127.0.7.2.2.4.6.4"

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 158
    .line 159
    const-string v1, "Unknown OID: \""

    .line 160
    .line 161
    const-string v2, "\""

    .line 162
    .line 163
    invoke-static {v1, p0, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_3
    :goto_0
    sget-object p0, Lorg/jmrtd/lds/PACEInfo$MappingType;->CAM:Lorg/jmrtd/lds/PACEInfo$MappingType;

    .line 172
    .line 173
    return-object p0

    .line 174
    :cond_4
    :goto_1
    sget-object p0, Lorg/jmrtd/lds/PACEInfo$MappingType;->IM:Lorg/jmrtd/lds/PACEInfo$MappingType;

    .line 175
    .line 176
    return-object p0

    .line 177
    :cond_5
    :goto_2
    sget-object p0, Lorg/jmrtd/lds/PACEInfo$MappingType;->GM:Lorg/jmrtd/lds/PACEInfo$MappingType;

    .line 178
    .line 179
    return-object p0
.end method

.method public static toParameterSpec(I)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 13
    .line 14
    const-string v1, "Unknown standardized domain parameters "

    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :pswitch_0
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P521_R1:Ljava/security/spec/ECParameterSpec;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_1
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P512_R1:Ljava/security/spec/ECParameterSpec;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_2
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P384_R1:Ljava/security/spec/ECParameterSpec;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_3
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P384_R1:Ljava/security/spec/ECParameterSpec;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_4
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P320_R1:Ljava/security/spec/ECParameterSpec;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_5
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P256_R1:Ljava/security/spec/ECParameterSpec;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_6
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P256_R1:Ljava/security/spec/ECParameterSpec;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_7
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P224_R1:Ljava/security/spec/ECParameterSpec;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_8
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P224_R1:Ljava/security/spec/ECParameterSpec;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_9
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_BRAINPOOL_P192_R1:Ljava/security/spec/ECParameterSpec;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_a
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_ECP_NIST_P192_R1:Ljava/security/spec/ECParameterSpec;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_0
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_GFP_2048_256:Ljavax/crypto/spec/DHParameterSpec;

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_1
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_GFP_2048_224:Ljavax/crypto/spec/DHParameterSpec;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_2
    sget-object p0, Lorg/jmrtd/lds/PACEInfo;->PARAMS_GFP_1024_160:Ljavax/crypto/spec/DHParameterSpec;

    .line 64
    .line 65
    return-object p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toParameterSpec(Ljava/math/BigInteger;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/jmrtd/lds/PACEInfo;->toParameterSpec(I)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private toProtocolOIDString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "0.4.0.127.0.7.2.2.4.1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "id-PACE-DH-GM-3DES-CBC-CBC"

    return-object p1

    :cond_0
    const-string v0, "0.4.0.127.0.7.2.2.4.1.2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "id-PACE-DH-GM-AES-CBC-CMAC-128"

    return-object p1

    :cond_1
    const-string v0, "0.4.0.127.0.7.2.2.4.1.3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "id-PACE-DH-GM-AES-CBC-CMAC-192"

    return-object p1

    :cond_2
    const-string v0, "0.4.0.127.0.7.2.2.4.1.4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "id-PACE-DH-GM-AES-CBC-CMAC-256"

    return-object p1

    :cond_3
    const-string v0, "0.4.0.127.0.7.2.2.4.3.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "id-PACE-DH-IM-3DES-CBC-CBC"

    return-object p1

    :cond_4
    const-string v0, "0.4.0.127.0.7.2.2.4.3.2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "id-PACE-DH-IM-AES-CBC-CMAC-128"

    return-object p1

    :cond_5
    const-string v0, "0.4.0.127.0.7.2.2.4.3.3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "id-PACE-DH-IM-AES-CBC-CMAC-192"

    return-object p1

    :cond_6
    const-string v0, "0.4.0.127.0.7.2.2.4.3.4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "id-PACE-DH-IM-AES-CBC-CMAC-256"

    return-object p1

    :cond_7
    const-string v0, "0.4.0.127.0.7.2.2.4.2.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "id-PACE-ECDH-GM-3DES-CBC-CBC"

    return-object p1

    :cond_8
    const-string v0, "0.4.0.127.0.7.2.2.4.2.2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "id-PACE-ECDH-GM-AES-CBC-CMAC-128"

    return-object p1

    :cond_9
    const-string v0, "0.4.0.127.0.7.2.2.4.2.3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "id-PACE-ECDH-GM-AES-CBC-CMAC-192"

    return-object p1

    :cond_a
    const-string v0, "0.4.0.127.0.7.2.2.4.2.4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "id-PACE-ECDH-GM-AES-CBC-CMAC-256"

    return-object p1

    :cond_b
    const-string v0, "0.4.0.127.0.7.2.2.4.4.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "id-PACE-ECDH-IM-3DES-CBC-CBC"

    return-object p1

    :cond_c
    const-string v0, "0.4.0.127.0.7.2.2.4.4.2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "id-PACE-ECDH-IM-AES-CBC-CMAC-128"

    return-object p1

    :cond_d
    const-string v0, "0.4.0.127.0.7.2.2.4.4.3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "id-PACE-ECDH-IM-AES-CBC-CMAC-192"

    return-object p1

    :cond_e
    const-string v0, "0.4.0.127.0.7.2.2.4.4.4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "id-PACE-ECDH-IM-AES-CBC-CMAC-256"

    return-object p1

    :cond_f
    const-string v0, "0.4.0.127.0.7.2.2.4.6.2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "id-PACE-ECDH-CAM-AES-CBC-CMAC-128"

    return-object p1

    :cond_10
    const-string v0, "0.4.0.127.0.7.2.2.4.6.3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "id-PACE-ECDH-CAM-AES-CBC-CMAC-192"

    return-object p1

    :cond_11
    const-string v0, "0.4.0.127.0.7.2.2.4.6.4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, "id-PACE-ECDH-CAM-AES-CBC-CMAC-256"

    :cond_12
    return-object p1
.end method

.method public static toStandardizedParamIdString(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "NIST P-521 (secp521r1)"

    return-object p0

    :pswitch_1
    const-string p0, "BrainpoolP512r1"

    return-object p0

    :pswitch_2
    const-string p0, "BrainpoolP384r1"

    return-object p0

    :pswitch_3
    const-string p0, "NIST P-384 (secp384r1)"

    return-object p0

    :pswitch_4
    const-string p0, "BrainpoolP320r1"

    return-object p0

    :pswitch_5
    const-string p0, "BrainpoolP256r1"

    return-object p0

    :pswitch_6
    const-string p0, "NIST P-256 (secp256r1)"

    return-object p0

    :pswitch_7
    const-string p0, "BrainpoolP224r1"

    return-object p0

    :pswitch_8
    const-string p0, "NIST P-224 (secp224r1)"

    return-object p0

    :pswitch_9
    const-string p0, "BrainpoolP192r1"

    return-object p0

    :pswitch_a
    const-string p0, "NIST P-192 (secp192r1)"

    return-object p0

    :cond_1
    const-string p0, "2048-bit MODP Group with 256-bit Prime Order Subgroup"

    return-object p0

    :cond_2
    const-string p0, "2048-bit MODP Group with 224-bit Prime Order Subgroup"

    return-object p0

    :cond_3
    const-string p0, "1024-bit MODP Group with 160-bit Prime Order Subgroup"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
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

    const-class v3, Lorg/jmrtd/lds/PACEInfo;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/jmrtd/lds/PACEInfo;

    iget-object v2, p0, Lorg/jmrtd/lds/PACEInfo;->protocolOID:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v3, p1, Lorg/jmrtd/lds/PACEInfo;->protocolOID:Ljava/lang/String;

    if-eqz v3, :cond_3

    return v0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p1, Lorg/jmrtd/lds/PACEInfo;->protocolOID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    iget v2, p0, Lorg/jmrtd/lds/PACEInfo;->version:I

    iget v3, p1, Lorg/jmrtd/lds/PACEInfo;->version:I

    if-eq v2, v3, :cond_5

    return v0

    :cond_5
    iget-object v2, p0, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    if-nez v2, :cond_6

    iget-object v3, p1, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    if-eqz v3, :cond_6

    return v0

    :cond_6
    if-eqz v2, :cond_7

    iget-object p1, p1, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v1
.end method

.method public getDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/jmrtd/lds/PACEInfo;->protocolOID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/jmrtd/lds/PACEInfo;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public getObjectIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/PACEInfo;->protocolOID:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterId()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getProtocolOIDString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jmrtd/lds/PACEInfo;->protocolOID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jmrtd/lds/PACEInfo;->toProtocolOIDString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/lds/PACEInfo;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/jmrtd/lds/PACEInfo;->protocolOID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    const v1, 0x499602d3

    add-int/2addr v0, v1

    iget v1, p0, Lorg/jmrtd/lds/PACEInfo;->version:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/16 v0, 0x7c7

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PACEInfo [protocol: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jmrtd/lds/PACEInfo;->protocolOID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/jmrtd/lds/PACEInfo;->toProtocolOIDString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jmrtd/lds/PACEInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    const-string v1, ", parameterId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jmrtd/lds/PACEInfo;->parameterId:Ljava/math/BigInteger;

    invoke-static {v1}, Lorg/jmrtd/lds/PACEInfo;->toStandardizedParamIdString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
