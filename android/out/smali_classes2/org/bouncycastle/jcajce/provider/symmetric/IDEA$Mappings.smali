.class public Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$Mappings;->PREFIX:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "$AlgParamGen"

    .line 9
    .line 10
    const-string v3, "AlgorithmParameterGenerator.IDEA"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v3, "AlgorithmParameterGenerator.1.3.6.1.4.1.188.7.1.1.2"

    .line 17
    .line 18
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "$AlgParams"

    .line 23
    .line 24
    const-string v3, "AlgorithmParameters.IDEA"

    .line 25
    .line 26
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "AlgorithmParameters.1.3.6.1.4.1.188.7.1.1.2"

    .line 31
    .line 32
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA"

    .line 36
    .line 37
    const-string v2, "PKCS12PBE"

    .line 38
    .line 39
    const-string v3, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA-CBC"

    .line 40
    .line 41
    invoke-static {p1, v0, v2, v3, v2}, Landroidx/fragment/app/a;->e(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "$ECB"

    .line 46
    .line 47
    const-string v3, "Cipher.IDEA"

    .line 48
    .line 49
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->as_sys_sec_alg_ideaCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, "$CBC"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "Cipher"

    .line 72
    .line 73
    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v3, "$PBEWithSHAAndIDEA"

    .line 82
    .line 83
    const-string v4, "Cipher.PBEWITHSHAANDIDEA-CBC"

    .line 84
    .line 85
    invoke-static {v2, v1, v3, p1, v4}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "$KeyGen"

    .line 90
    .line 91
    const-string v4, "KeyGenerator.IDEA"

    .line 92
    .line 93
    invoke-static {v2, v1, v3, p1, v4}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2, v1, v3}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "KeyGenerator"

    .line 102
    .line 103
    invoke-static {p1, v3, v0, v2, v1}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v2, "$PBEWithSHAAndIDEAKeyGen"

    .line 108
    .line 109
    const-string v3, "SecretKeyFactory.PBEWITHSHAANDIDEA-CBC"

    .line 110
    .line 111
    invoke-static {v0, v2, p1, v3, v1}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v2, "$Mac"

    .line 116
    .line 117
    const-string v3, "Mac.IDEAMAC"

    .line 118
    .line 119
    invoke-static {v0, v2, p1, v3}, Lab/b;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v0, "Alg.Alias.Mac.IDEA"

    .line 123
    .line 124
    const-string v2, "IDEAMAC"

    .line 125
    .line 126
    const-string v3, "$CFB8Mac"

    .line 127
    .line 128
    invoke-static {p1, v0, v2, v1, v3}, Landroid/support/v4/media/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v1, "Mac.IDEAMAC/CFB8"

    .line 133
    .line 134
    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "Alg.Alias.Mac.IDEA/CFB8"

    .line 138
    .line 139
    const-string v1, "IDEAMAC/CFB8"

    .line 140
    .line 141
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method
