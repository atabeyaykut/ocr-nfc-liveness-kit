.class public Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final reserved:I

.field public static final sha256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field private static final suppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final ls:I

.field private final n:I

.field private final p:I

.field private final sigLen:I

.field private final type:I

.field private final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v8, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/16 v4, 0x109

    const/4 v5, 0x7

    const/16 v6, 0x2144

    sget-object v17, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object v0, v8

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v10, 0x2

    const/16 v11, 0x20

    const/4 v12, 0x2

    const/16 v13, 0x85

    const/4 v14, 0x6

    const/16 v15, 0x10c4

    move-object v9, v0

    move-object/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v10, 0x3

    const/4 v12, 0x4

    const/16 v13, 0x43

    const/4 v14, 0x4

    const/16 v15, 0x884

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v10, 0x4

    const/16 v12, 0x8

    const/16 v13, 0x22

    const/4 v14, 0x0

    const/16 v15, 0x464

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v10, 0x5

    const/16 v11, 0x18

    const/4 v12, 0x1

    const/16 v13, 0xc8

    const/16 v14, 0x8

    const/16 v15, 0x153c

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v10, 0x6

    const/4 v12, 0x2

    const/16 v13, 0x65

    const/4 v14, 0x6

    const/16 v15, 0xb7c

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v10, 0x7

    const/4 v12, 0x4

    const/16 v13, 0x33

    const/4 v14, 0x4

    const/16 v15, 0x5dc

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v10, 0x8

    const/16 v12, 0x8

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/16 v15, 0x3fc

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v2, 0x9

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/16 v5, 0x109

    const/4 v6, 0x7

    const/16 v7, 0x2144

    sget-object v16, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object v1, v0

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v9, 0xa

    const/16 v10, 0x20

    const/4 v11, 0x2

    const/16 v12, 0x85

    const/4 v13, 0x6

    const/16 v14, 0x10c4

    move-object v8, v0

    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v9, 0xb

    const/4 v11, 0x4

    const/16 v12, 0x43

    const/4 v13, 0x4

    const/16 v14, 0x884

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v9, 0xc

    const/16 v11, 0x8

    const/16 v12, 0x22

    const/4 v13, 0x0

    const/16 v14, 0x464

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v9, 0xd

    const/16 v10, 0x18

    const/4 v11, 0x1

    const/16 v12, 0xc8

    const/16 v13, 0x8

    const/16 v14, 0x153c

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v9, 0xe

    const/4 v11, 0x2

    const/16 v12, 0x65

    const/4 v13, 0x6

    const/16 v14, 0xb7c

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v9, 0xf

    const/4 v11, 0x4

    const/16 v12, 0x33

    const/4 v13, 0x4

    const/16 v14, 0x5dc

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v9, 0x10

    const/16 v11, 0x8

    const/16 v12, 0x1a

    const/4 v13, 0x0

    const/16 v14, 0x3fc

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->suppliers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->w:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->p:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->ls:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sigLen:I

    iput-object p7, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    return p0
.end method

.method public static getParametersForType(I)Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->suppliers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-object p0
.end method


# virtual methods
.method public getDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getLs()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->ls:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->n:I

    return v0
.end method

.method public getP()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->p:I

    return v0
.end method

.method public getSigLen()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sigLen:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    return v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->w:I

    return v0
.end method
