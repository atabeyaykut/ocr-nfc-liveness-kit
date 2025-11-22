.class public Lorg/bouncycastle/jcajce/provider/asymmetric/GM$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/GM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 4

    .line 1
    const-string v0, "Signature.SHA256WITHSM2"

    .line 2
    .line 3
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMSignatureSpi$sha256WithSM2"

    .line 4
    .line 5
    const-string v2, "Alg.Alias.Signature."

    .line 6
    .line 7
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    const-string v3, "SHA256WITHSM2"

    .line 14
    .line 15
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "Signature.SM3WITHSM2"

    .line 19
    .line 20
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMSignatureSpi$sm3WithSM2"

    .line 21
    .line 22
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    .line 28
    const-string v2, "SM3WITHSM2"

    .line 29
    .line 30
    invoke-static {v0, v1, p1, v2}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "KeyPairGenerator.SM2"

    .line 34
    .line 35
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMKeyPairGeneratorSpi$SM2"

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "Cipher.SM2"

    .line 41
    .line 42
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2"

    .line 43
    .line 44
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "Alg.Alias.Cipher.SM2WITHSM3"

    .line 48
    .line 49
    const-string v1, "SM2"

    .line 50
    .line 51
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Alg.Alias.Cipher."

    .line 57
    .line 58
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v3, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    .line 63
    invoke-static {v0, v3, p1, v1}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "Cipher.SM2WITHBLAKE2B"

    .line 67
    .line 68
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withBlake2b"

    .line 69
    .line 70
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_blake2b512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    .line 76
    const-string v3, "SM2WITHBLAKE2B"

    .line 77
    .line 78
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "Cipher.SM2WITHBLAKE2S"

    .line 82
    .line 83
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withBlake2s"

    .line 84
    .line 85
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_blake2s256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 90
    .line 91
    const-string v3, "SM2WITHBLAKE2S"

    .line 92
    .line 93
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "Cipher.SM2WITHWHIRLPOOL"

    .line 97
    .line 98
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withWhirlpool"

    .line 99
    .line 100
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_whirlpool:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    .line 106
    const-string v3, "SM2WITHWHIRLPOOL"

    .line 107
    .line 108
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "Cipher.SM2WITHMD5"

    .line 112
    .line 113
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withMD5"

    .line 114
    .line 115
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    .line 121
    const-string v3, "SM2WITHMD5"

    .line 122
    .line 123
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v0, "Cipher.SM2WITHRIPEMD160"

    .line 127
    .line 128
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withRMD"

    .line 129
    .line 130
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_rmd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 135
    .line 136
    const-string v3, "SM2WITHRIPEMD160"

    .line 137
    .line 138
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v0, "Cipher.SM2WITHSHA1"

    .line 142
    .line 143
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha1"

    .line 144
    .line 145
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 150
    .line 151
    const-string v3, "SM2WITHSHA1"

    .line 152
    .line 153
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "Cipher.SM2WITHSHA224"

    .line 157
    .line 158
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha224"

    .line 159
    .line 160
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 165
    .line 166
    const-string v3, "SM2WITHSHA224"

    .line 167
    .line 168
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v0, "Cipher.SM2WITHSHA256"

    .line 172
    .line 173
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha256"

    .line 174
    .line 175
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 180
    .line 181
    const-string v3, "SM2WITHSHA256"

    .line 182
    .line 183
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v0, "Cipher.SM2WITHSHA384"

    .line 187
    .line 188
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha384"

    .line 189
    .line 190
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 195
    .line 196
    const-string v3, "SM2WITHSHA384"

    .line 197
    .line 198
    invoke-static {v0, v1, p1, v3}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v0, "Cipher.SM2WITHSHA512"

    .line 202
    .line 203
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha512"

    .line 204
    .line 205
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/a;->d(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 210
    .line 211
    const-string v2, "SM2WITHSHA512"

    .line 212
    .line 213
    invoke-static {v0, v1, p1, v2}, Landroidx/browser/browseractions/a;->g(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-void
.end method
