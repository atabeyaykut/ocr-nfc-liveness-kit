.class public Lorg/ejbca/cvc/PublicKeyEC;
.super Lorg/ejbca/cvc/CVCPublicKey;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# static fields
.field public static final UNCOMPRESSED_POINT_TAG:B = 0x4t

.field private static allowedFields:[Lorg/ejbca/cvc/CVCTagEnum; = null

.field static final serialVersionUID:J = 0x1L


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/ejbca/cvc/CVCTagEnum;

    const/4 v1, 0x0

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->OID:Lorg/ejbca/cvc/CVCTagEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->MODULUS:Lorg/ejbca/cvc/CVCTagEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_A:Lorg/ejbca/cvc/CVCTagEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_B:Lorg/ejbca/cvc/CVCTagEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_G:Lorg/ejbca/cvc/CVCTagEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_R_ORDER:Lorg/ejbca/cvc/CVCTagEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->PUBLIC_POINT_Y:Lorg/ejbca/cvc/CVCTagEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->COFACTOR_F:Lorg/ejbca/cvc/CVCTagEnum;

    aput-object v2, v0, v1

    sput-object v0, Lorg/ejbca/cvc/PublicKeyEC;->allowedFields:[Lorg/ejbca/cvc/CVCTagEnum;

    return-void
.end method

.method public constructor <init>(Lorg/ejbca/cvc/GenericPublicKeyField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ejbca/cvc/exception/ConstructionException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/ejbca/cvc/CVCPublicKey;-><init>()V

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->OID:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1, v0}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->MODULUS:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1, v0}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_A:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1, v0}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_B:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1, v0}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_G:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1, v0}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_R_ORDER:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1, v0}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->PUBLIC_POINT_Y:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1, v0}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->COFACTOR_F:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1, v0}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejbca/cvc/OIDField;Ljava/security/interfaces/ECPublicKey;Lorg/ejbca/cvc/AuthorizationRole;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ejbca/cvc/exception/ConstructionException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/ejbca/cvc/CVCPublicKey;-><init>()V

    invoke-virtual {p0, p1}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    invoke-interface {p2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/ejbca/cvc/AuthorizationRole;->isCVCA()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    instance-of v1, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/security/spec/ECFieldFp;

    new-instance v1, Lorg/ejbca/cvc/ByteField;

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->MODULUS:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/ejbca/cvc/CVCObject;->trimByteArray([B)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/ejbca/cvc/ByteField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;[B)V

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    :cond_2
    new-instance v0, Lorg/ejbca/cvc/ByteField;

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_A:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/ejbca/cvc/CVCObject;->trimByteArray([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ejbca/cvc/ByteField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;[B)V

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    new-instance v0, Lorg/ejbca/cvc/ByteField;

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_B:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/ejbca/cvc/CVCObject;->trimByteArray([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ejbca/cvc/ByteField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;[B)V

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    new-instance v0, Lorg/ejbca/cvc/ByteField;

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_G:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/ejbca/cvc/PublicKeyEC;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ejbca/cvc/ByteField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;[B)V

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    new-instance v0, Lorg/ejbca/cvc/ByteField;

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_R_ORDER:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/ejbca/cvc/CVCObject;->trimByteArray([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ejbca/cvc/ByteField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;[B)V

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    :cond_3
    new-instance v0, Lorg/ejbca/cvc/ByteField;

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->PUBLIC_POINT_Y:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/ejbca/cvc/PublicKeyEC;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/ejbca/cvc/ByteField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;[B)V

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    if-eqz p3, :cond_4

    new-instance p2, Lorg/ejbca/cvc/IntegerField;

    sget-object p3, Lorg/ejbca/cvc/CVCTagEnum;->COFACTOR_F:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lorg/ejbca/cvc/IntegerField;-><init>(Lorg/ejbca/cvc/CVCTagEnum;I)V

    invoke-virtual {p0, p2}, Lorg/ejbca/cvc/AbstractSequence;->addSubfield(Lorg/ejbca/cvc/CVCObject;)V

    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/ejbca/cvc/OIDField;Ljava/security/interfaces/ECPublicKey;Lorg/ejbca/cvc/AuthorizationRoleEnum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ejbca/cvc/exception/ConstructionException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/ejbca/cvc/PublicKeyEC;-><init>(Lorg/ejbca/cvc/OIDField;Ljava/security/interfaces/ECPublicKey;Lorg/ejbca/cvc/AuthorizationRole;)V

    return-void
.end method

.method public static decodePoint([B)Ljava/security/spec/ECPoint;
    .locals 6

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    array-length v4, p0

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    new-array v5, v4, [B

    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    invoke-static {p0, v1, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/security/spec/ECPoint;

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p0, v0, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "First byte must be 0x4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/ejbca/cvc/CVCObject;->trimByteArray([B)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/ejbca/cvc/CVCObject;->trimByteArray([B)[B

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    shr-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_0
    array-length p1, v0

    array-length v1, p0

    if-le p1, v1, :cond_1

    array-length p1, v0

    goto :goto_0

    :cond_1
    array-length p1, p0

    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_2

    array-length v1, v0

    sub-int v1, p1, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v3, p1, :cond_3

    array-length v3, p0

    sub-int v3, p1, v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    shl-int/lit8 v4, p1, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [B

    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v5, 0x4

    aput-byte v5, v4, v2

    add-int/lit8 v5, v1, 0x1

    sub-int v1, p1, v1

    invoke-static {v0, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    add-int/2addr v0, v3

    sub-int/2addr p1, v3

    invoke-static {p0, v2, v4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "ECDSA"

    return-object v0
.end method

.method public getAllowedFields()[Lorg/ejbca/cvc/CVCTagEnum;
    .locals 1

    sget-object v0, Lorg/ejbca/cvc/PublicKeyEC;->allowedFields:[Lorg/ejbca/cvc/CVCTagEnum;

    return-object v0
.end method

.method public getEncodableFields()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ejbca/cvc/CVCObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->OID:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/ejbca/cvc/PublicKeyEC;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/ejbca/cvc/CVCObject;->getParent()Lorg/ejbca/cvc/AbstractSequence;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/ejbca/cvc/CVCObject;->getTag()Lorg/ejbca/cvc/CVCTagEnum;

    move-result-object v5

    sget-object v6, Lorg/ejbca/cvc/CVCTagEnum;->CERTIFICATE_BODY:Lorg/ejbca/cvc/CVCTagEnum;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v5, v6, :cond_1

    :try_start_1
    check-cast v3, Lorg/ejbca/cvc/CVCertificateBody;

    sget-object v5, Lorg/ejbca/cvc/CVCTagEnum;->HOLDER_AUTH_TEMPLATE:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {v3, v5}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    check-cast v3, Lorg/ejbca/cvc/CVCAuthorizationTemplate;

    invoke-virtual {v3}, Lorg/ejbca/cvc/CVCAuthorizationTemplate;->getAuthorizationField()Lorg/ejbca/cvc/AuthorizationField;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/ejbca/cvc/AuthorizationField;->getAuthRole()Lorg/ejbca/cvc/AuthorizationRole;

    move-result-object v3

    invoke-interface {v3}, Lorg/ejbca/cvc/AuthorizationRole;->isCVCA()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    :goto_0
    const/4 v2, 0x1

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    instance-of v1, v1, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_3

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->MODULUS:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_A:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_B:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_G:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_R_ORDER:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->PUBLIC_POINT_Y:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_5

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->COFACTOR_F:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "CVC"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 10

    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->MODULUS:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v0

    check-cast v0, Lorg/ejbca/cvc/ByteField;

    sget-object v1, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_A:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v1

    check-cast v1, Lorg/ejbca/cvc/ByteField;

    sget-object v2, Lorg/ejbca/cvc/CVCTagEnum;->COEFFICIENT_B:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v2}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v2

    check-cast v2, Lorg/ejbca/cvc/ByteField;

    sget-object v3, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_G:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v3}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v3

    check-cast v3, Lorg/ejbca/cvc/ByteField;

    sget-object v4, Lorg/ejbca/cvc/CVCTagEnum;->BASE_POINT_R_ORDER:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v4}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v4

    check-cast v4, Lorg/ejbca/cvc/ByteField;

    sget-object v5, Lorg/ejbca/cvc/CVCTagEnum;->COFACTOR_F:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v5}, Lorg/ejbca/cvc/AbstractSequence;->getOptionalSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v5

    check-cast v5, Lorg/ejbca/cvc/IntegerField;

    if-eqz v0, :cond_0

    new-instance v6, Ljava/security/spec/EllipticCurve;

    new-instance v7, Ljava/security/spec/ECFieldFp;

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/ejbca/cvc/ByteField;->getData()[B

    move-result-object v0

    const/4 v9, 0x1

    invoke-direct {v8, v9, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v7, v8}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/ejbca/cvc/ByteField;->getData()[B

    move-result-object v1

    invoke-direct {v0, v9, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v2}, Lorg/ejbca/cvc/ByteField;->getData()[B

    move-result-object v2

    invoke-direct {v1, v9, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v6, v7, v0, v1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Lorg/ejbca/cvc/ByteField;->getData()[B

    move-result-object v1

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/ECPointUtil;->decodePoint(Ljava/security/spec/EllipticCurve;[B)Ljava/security/spec/ECPoint;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v4}, Lorg/ejbca/cvc/ByteField;->getData()[B

    move-result-object v3

    invoke-direct {v2, v9, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5}, Lorg/ejbca/cvc/IntegerField;->getValue()I

    move-result v3

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/ejbca/cvc/CVCTagEnum;->PUBLIC_POINT_Y:Lorg/ejbca/cvc/CVCTagEnum;

    invoke-virtual {p0, v0}, Lorg/ejbca/cvc/AbstractSequence;->getSubfield(Lorg/ejbca/cvc/CVCTagEnum;)Lorg/ejbca/cvc/CVCObject;

    move-result-object v0

    check-cast v0, Lorg/ejbca/cvc/ByteField;

    invoke-virtual {v0}, Lorg/ejbca/cvc/ByteField;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/ejbca/cvc/PublicKeyEC;->decodePoint([B)Ljava/security/spec/ECPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
