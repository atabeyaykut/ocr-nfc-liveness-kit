.class public Lorg/ejbca/cvc/AlgorithmUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static algorithmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ejbca/cvc/OIDField;",
            ">;"
        }
    .end annotation
.end field

.field private static conversionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->conversionMap:Ljava/util/HashMap;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    const-string v1, "SHA1WITHRSA"

    sget-object v2, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_RSA_v1_5_SHA_1:Lorg/ejbca/cvc/OIDField;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    const-string v1, "SHA256WITHRSA"

    sget-object v2, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_RSA_v1_5_SHA_256:Lorg/ejbca/cvc/OIDField;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    const-string v1, "SHA512WITHRSA"

    sget-object v2, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_RSA_v1_5_SHA_512:Lorg/ejbca/cvc/OIDField;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    const-string v1, "SHA1WITHRSAANDMGF1"

    sget-object v2, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_RSA_PSS_SHA_1:Lorg/ejbca/cvc/OIDField;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    const-string v1, "SHA256WITHRSAANDMGF1"

    sget-object v2, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_RSA_PSS_SHA_256:Lorg/ejbca/cvc/OIDField;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    const-string v1, "SHA512WITHRSAANDMGF1"

    sget-object v2, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_RSA_PSS_SHA_512:Lorg/ejbca/cvc/OIDField;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    sget-object v1, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/ejbca/cvc/OIDField;

    const-string v2, "SHA1WITHECDSA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    sget-object v1, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/ejbca/cvc/OIDField;

    const-string v3, "SHA224WITHECDSA"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    sget-object v1, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/ejbca/cvc/OIDField;

    const-string v4, "SHA256WITHECDSA"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    sget-object v1, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/ejbca/cvc/OIDField;

    const-string v5, "SHA384WITHECDSA"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    sget-object v1, Lorg/ejbca/cvc/CVCObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/ejbca/cvc/OIDField;

    const-string v6, "SHA512WITHECDSA"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->conversionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->conversionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->conversionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->conversionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->conversionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAlgorithmNameToCVC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->conversionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAlgorithmName(Lorg/ejbca/cvc/OIDField;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejbca/cvc/OIDField;

    invoke-virtual {v2}, Lorg/ejbca/cvc/OIDField;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/ejbca/cvc/OIDField;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown OIDField: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ejbca/cvc/OIDField;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getOIDField(Ljava/lang/String;)Lorg/ejbca/cvc/OIDField;
    .locals 2

    .line 1
    sget-object v0, Lorg/ejbca/cvc/AlgorithmUtil;->algorithmMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/ejbca/cvc/AlgorithmUtil;->convertAlgorithmNameToCVC(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/ejbca/cvc/OIDField;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Unsupported algorithmName: "

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method
