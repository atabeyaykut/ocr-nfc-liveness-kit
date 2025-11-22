.class public Lorg/ejbca/cvc/CVCProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field static INFO:Ljava/lang/String; = null

.field public static PROVIDER_NAME:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L

.field static version:D = 1.0


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CVC Security Provider "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lorg/ejbca/cvc/CVCProvider;->version:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " (supports Card Verifiable Certificates for ePassports)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ejbca/cvc/CVCProvider;->INFO:Ljava/lang/String;

    const-string v0, "CVC"

    sput-object v0, Lorg/ejbca/cvc/CVCProvider;->PROVIDER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lorg/ejbca/cvc/CVCProvider;->PROVIDER_NAME:Ljava/lang/String;

    sget-wide v1, Lorg/ejbca/cvc/CVCProvider;->version:D

    sget-object v3, Lorg/ejbca/cvc/CVCProvider;->INFO:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-class v0, Lorg/ejbca/cvc/JDKCVCertificateFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CertificateFactory.CVC"

    invoke-virtual {p0, v1, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.CertificateFactory.CVC"

    const-string v1, "CVC"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
