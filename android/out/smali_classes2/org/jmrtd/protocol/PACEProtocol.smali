.class public Lorg/jmrtd/protocol/PACEProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BC_PROVIDER:Ljava/security/Provider;

.field private static final C0_LENGTH_128:[B

.field private static final C0_LENGTH_256:[B

.field private static final C1_LENGTH_128:[B

.field private static final C1_LENGTH_256:[B

.field private static final IV_FOR_PACE_CAM_DECRYPTION:[B

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private maxTranceiveLengthForProtocol:I

.field private maxTranceiveLengthForSecureMessaging:I

.field private random:Ljava/util/Random;

.field private service:Lorg/jmrtd/APDULevelPACECapable;

.field private shouldCheckMAC:Z

.field private wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "org.jmrtd"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    invoke-static {}, Lorg/jmrtd/Util;->getBouncyCastleProvider()Ljava/security/Provider;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/protocol/PACEProtocol;->BC_PROVIDER:Ljava/security/Provider;

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jmrtd/protocol/PACEProtocol;->IV_FOR_PACE_CAM_DECRYPTION:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/jmrtd/protocol/PACEProtocol;->C0_LENGTH_128:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jmrtd/protocol/PACEProtocol;->C1_LENGTH_128:[B

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lorg/jmrtd/protocol/PACEProtocol;->C0_LENGTH_256:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/jmrtd/protocol/PACEProtocol;->C1_LENGTH_256:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x5at
        0x68t
        -0x77t
        0x2at
        0x7ct
        0x41t
        -0x1dt
        -0x36t
        0x73t
        -0x61t
        0x40t
        -0x50t
        0x57t
        -0x28t
        0x59t
        0x4t
    .end array-data

    :array_2
    .array-data 1
        -0x5ct
        -0x1ft
        0x36t
        -0x54t
        0x72t
        0x5ft
        0x73t
        -0x75t
        0x1t
        -0x3ft
        -0xat
        0x2t
        0x17t
        -0x3ft
        -0x78t
        -0x53t
    .end array-data

    :array_3
    .array-data 1
        -0x2ct
        0x63t
        -0x2at
        0x52t
        0x34t
        0x12t
        0x4et
        -0x9t
        -0x77t
        0x70t
        0x54t
        -0x68t
        0x6dt
        -0x36t
        0xat
        0x17t
        0x4et
        0x28t
        -0x21t
        0x75t
        -0x74t
        -0x46t
        -0x60t
        0x3ft
        0x24t
        0x6t
        0x16t
        0x41t
        0x4dt
        0x5at
        0x16t
        0x76t
    .end array-data

    :array_4
    .array-data 1
        0x54t
        -0x43t
        0x72t
        0x55t
        -0x10t
        -0x56t
        -0x8t
        0x31t
        -0x42t
        -0x3dt
        0x42t
        0x3ft
        -0x31t
        0x39t
        -0x2at
        -0x65t
        0x6ct
        -0x41t
        0x6t
        0x66t
        0x77t
        -0x30t
        -0x6t
        -0x52t
        0x5at
        -0x53t
        -0x27t
        -0x63t
        -0x8t
        -0x1bt
        0x35t
        0x17t
    .end array-data
.end method

.method public constructor <init>(Lorg/jmrtd/APDULevelPACECapable;Lorg/jmrtd/protocol/SecureMessagingWrapper;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/protocol/PACEProtocol;->service:Lorg/jmrtd/APDULevelPACECapable;

    iput-object p2, p0, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    iput p3, p0, Lorg/jmrtd/protocol/PACEProtocol;->maxTranceiveLengthForProtocol:I

    iput p4, p0, Lorg/jmrtd/protocol/PACEProtocol;->maxTranceiveLengthForSecureMessaging:I

    iput-boolean p5, p0, Lorg/jmrtd/protocol/PACEProtocol;->shouldCheckMAC:Z

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/protocol/PACEProtocol;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lorg/jmrtd/APDULevelPACECapable;Lorg/jmrtd/protocol/SecureMessagingWrapper;IZ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x100

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jmrtd/protocol/PACEProtocol;-><init>(Lorg/jmrtd/APDULevelPACECapable;Lorg/jmrtd/protocol/SecureMessagingWrapper;IIZ)V

    return-void
.end method

.method private checkConsistency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_d

    .line 2
    .line 3
    const-string v0, "ECDH"

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "DH"

    .line 10
    .line 11
    const-string v3, "\""

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p3, "Unsupported agreement algorithm, expected \"ECDH\" or \"DH\", found \""

    .line 25
    .line 26
    invoke-static {p3, p1, v3}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p2

    .line 34
    :cond_1
    :goto_0
    if-eqz p2, :cond_c

    .line 35
    .line 36
    const-string v1, "DESede"

    .line 37
    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    const-string v1, "AES"

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p3, "Unsupported cipher algorithm, expected \"DESede\" or \"AES\", found \""

    .line 56
    .line 57
    invoke-static {p3, p2, v3}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    :goto_1
    const-string p2, "SHA-1"

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-nez p2, :cond_5

    .line 72
    .line 73
    const-string p2, "SHA1"

    .line 74
    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_5

    .line 80
    .line 81
    const-string p2, "SHA-256"

    .line 82
    .line 83
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_5

    .line 88
    .line 89
    const-string p2, "SHA256"

    .line 90
    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string p2, "Unsupported cipher algorithm, expected \"SHA-1\" or \"SHA-256\", found \""

    .line 101
    .line 102
    invoke-static {p2, p3, v3}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_5
    :goto_2
    const/16 p2, 0x80

    .line 111
    .line 112
    if-eq p4, p2, :cond_7

    .line 113
    .line 114
    const/16 p2, 0xc0

    .line 115
    .line 116
    if-eq p4, p2, :cond_7

    .line 117
    .line 118
    const/16 p2, 0x100

    .line 119
    .line 120
    if-ne p4, p2, :cond_6

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string p2, "Unsupported key length, expected 128, 192, or 256, found "

    .line 126
    .line 127
    invoke-static {p2, p4}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :cond_7
    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    const-string p3, "\", found "

    .line 140
    .line 141
    if-eqz p2, :cond_9

    .line 142
    .line 143
    instance-of p2, p5, Ljava/security/spec/ECParameterSpec;

    .line 144
    .line 145
    if-eqz p2, :cond_8

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string p4, "Expected ECParameterSpec for agreement algorithm \""

    .line 151
    .line 152
    invoke-static {p4, p1, p3}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p2

    .line 175
    :cond_9
    :goto_4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_b

    .line 180
    .line 181
    instance-of p2, p5, Ljavax/crypto/spec/DHParameterSpec;

    .line 182
    .line 183
    if-eqz p2, :cond_a

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    const-string p4, "Expected DHParameterSpec for agreement algorithm \""

    .line 189
    .line 190
    invoke-static {p4, p1, p3}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p2

    .line 213
    :cond_b
    :goto_5
    return-void

    .line 214
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    const-string p2, "Unknown cipher algorithm"

    .line 217
    .line 218
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1

    .line 222
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 223
    .line 224
    const-string p2, "Unknown agreement algorithm"

    .line 225
    .line 226
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p1
.end method

.method public static computeKeySeedForPACE(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "SHA-1"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jmrtd/Util;->computeKeySeed(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method private static computeKeySeedForPACE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "SHA-1"

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/jmrtd/Util;->computeKeySeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static computeKeySeedForPACE(Lorg/jmrtd/AccessKeySpec;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    instance-of v0, p0, Lorg/jmrtd/BACKeySpec;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    check-cast p0, Lorg/jmrtd/BACKeySpec;

    .line 8
    .line 9
    invoke-interface {p0}, Lorg/jmrtd/BACKeySpec;->getDocumentNumber()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0}, Lorg/jmrtd/BACKeySpec;->getDateOfBirth()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p0}, Lorg/jmrtd/BACKeySpec;->getDateOfExpiry()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x6

    .line 28
    if-ne v2, v3, :cond_2

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {v0}, Lorg/jmrtd/protocol/PACEProtocol;->fixDocumentNumber(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, v1, p0}, Lorg/jmrtd/protocol/PACEProtocol;->computeKeySeedForPACE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string v1, "Wrong document number. Found "

    .line 52
    .line 53
    invoke-static {v1, v0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v1, "Wrong date format used for date of expiry. Expected yyMMdd, found "

    .line 64
    .line 65
    invoke-static {v1, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v0, "Wrong date format used for date of birth. Expected yyMMdd, found "

    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_3
    instance-of v0, p0, Lorg/jmrtd/PACEKeySpec;

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    check-cast p0, Lorg/jmrtd/PACEKeySpec;

    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/jmrtd/PACEKeySpec;->getKey()[B

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_4
    sget-object v0, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    .line 97
    .line 98
    const-string v1, "JMRTD doesn\'t recognize this type of access key, best effort key derivation!"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p0}, Lorg/jmrtd/AccessKeySpec;->getKey()[B

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string v0, "Access key cannot be null"

    .line 111
    .line 112
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public static decodePublicKeyFromSmartCard([BLjava/security/spec/AlgorithmParameterSpec;)Ljava/security/PublicKey;
    .locals 3

    const-string v0, "Expected ECParameterSpec or DHParameterSpec, found "

    if-eqz p1, :cond_2

    :try_start_0
    instance-of v1, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/jmrtd/Util;->os2ECPoint([B)Ljava/security/spec/ECPoint;

    move-result-object p0

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    const-string v0, "EC"

    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v1, p0, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-static {v0, v1}, Lorg/jmrtd/Util;->getPublicKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_1

    invoke-static {p0}, Lorg/jmrtd/Util;->os2i([B)Ljava/math/BigInteger;

    move-result-object p0

    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    const-string v0, "DH"

    new-instance v1, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lorg/jmrtd/Util;->getPublicKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Exception"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deriveStaticPACEKey(Lorg/jmrtd/AccessKeySpec;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lorg/jmrtd/lds/PACEInfo;->toCipherAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/jmrtd/lds/PACEInfo;->toKeyLength(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0}, Lorg/jmrtd/protocol/PACEProtocol;->computeKeySeedForPACE(Lorg/jmrtd/AccessKeySpec;)[B

    move-result-object v0

    instance-of p1, p0, Lorg/jmrtd/PACEKeySpec;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/jmrtd/PACEKeySpec;

    invoke-virtual {p0}, Lorg/jmrtd/PACEKeySpec;->getKeyReference()B

    move-result p0

    move v5, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lorg/jmrtd/Util;->deriveKey([BLjava/lang/String;I[BIB)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method private doPACE(Lorg/jmrtd/AccessKeySpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/math/BigInteger;)Lorg/jmrtd/protocol/PACEResult;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const-string v8, "Unsupported cipher algorithm "

    invoke-static/range {p3 .. p3}, Lorg/jmrtd/lds/PACEInfo;->toMappingType(Ljava/lang/String;)Lorg/jmrtd/lds/PACEInfo$MappingType;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lorg/jmrtd/lds/PACEInfo;->toKeyAgreementAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Lorg/jmrtd/lds/PACEInfo;->toCipherAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Lorg/jmrtd/lds/PACEInfo;->toDigestAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p3 .. p3}, Lorg/jmrtd/lds/PACEInfo;->toKeyLength(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move v5, v10

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/jmrtd/protocol/PACEProtocol;->checkConsistency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/CBC/NoPadding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    instance-of v2, v0, Lorg/jmrtd/PACESecretKeySpec;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/jmrtd/PACESecretKeySpec;

    invoke-virtual {v2}, Lorg/jmrtd/PACESecretKeySpec;->getKeyReference()B

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v12, 0x0

    if-nez p5, :cond_1

    move-object v3, v12

    goto :goto_1

    :cond_1
    invoke-static/range {p5 .. p5}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v3

    :goto_1
    iget-object v4, v7, Lorg/jmrtd/protocol/PACEProtocol;->service:Lorg/jmrtd/APDULevelPACECapable;

    iget-object v5, v7, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    move-object/from16 v13, p3

    invoke-interface {v4, v5, v13, v2, v3}, Lorg/jmrtd/APDULevelPACECapable;->sendMSESetATMutualAuth(Lnet/sf/scuba/smartcards/APDUWrapper;Ljava/lang/String;I[B)V
    :try_end_1
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    invoke-virtual {v7, v0, v6}, Lorg/jmrtd/protocol/PACEProtocol;->doPACEStep1(Ljavax/crypto/SecretKey;Ljavax/crypto/Cipher;)[B

    move-result-object v5

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v14

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lorg/jmrtd/protocol/PACEProtocol;->doPACEStep2(Lorg/jmrtd/lds/PACEInfo$MappingType;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;[BLjavax/crypto/Cipher;)Lorg/jmrtd/protocol/PACEMappingResult;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/jmrtd/protocol/PACEMappingResult;->getEphemeralParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Lorg/jmrtd/protocol/PACEProtocol;->doPACEStep3GenerateKeyPair(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Lorg/jmrtd/protocol/PACEProtocol;->doPACEStep3ExchangePublicKeys(Ljava/security/PublicKey;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {v7, v14, v0, v6}, Lorg/jmrtd/protocol/PACEProtocol;->doPACEStep3KeyAgreement(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v0

    :try_start_2
    invoke-static {v0, v15, v10, v9}, Lorg/jmrtd/Util;->deriveKey([BLjava/lang/String;II)Ljavax/crypto/SecretKey;

    move-result-object v9

    const/4 v5, 0x2

    invoke-static {v0, v15, v10, v5}, Lorg/jmrtd/Util;->deriveKey([BLjava/lang/String;II)Ljavax/crypto/SecretKey;

    move-result-object v22
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v11

    move-object/from16 v4, v19

    const/4 v0, 0x2

    move-object v5, v6

    move-object/from16 v27, v6

    move-object/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lorg/jmrtd/protocol/PACEProtocol;->doPACEStep4(Ljava/lang/String;Lorg/jmrtd/lds/PACEInfo$MappingType;Ljava/security/KeyPair;Ljava/security/PublicKey;Ljavax/crypto/SecretKey;)[B

    move-result-object v1

    :try_start_3
    iget-object v2, v7, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    :goto_2
    move-wide/from16 v25, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lorg/jmrtd/protocol/SecureMessagingWrapper;->getSendSequenceCounter()J

    move-result-wide v2

    goto :goto_2

    :goto_3
    const-string v2, "DESede"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/jmrtd/protocol/DESedeSecureMessagingWrapper;

    iget v3, v7, Lorg/jmrtd/protocol/PACEProtocol;->maxTranceiveLengthForSecureMessaging:I

    iget-boolean v4, v7, Lorg/jmrtd/protocol/PACEProtocol;->shouldCheckMAC:Z

    const-wide/16 v25, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-direct/range {v20 .. v26}, Lorg/jmrtd/protocol/DESedeSecureMessagingWrapper;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;IZJ)V

    :goto_4
    iput-object v2, v7, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    goto :goto_5

    :cond_3
    const-string v2, "AES"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/jmrtd/protocol/AESSecureMessagingWrapper;

    iget v3, v7, Lorg/jmrtd/protocol/PACEProtocol;->maxTranceiveLengthForSecureMessaging:I

    iget-boolean v4, v7, Lorg/jmrtd/protocol/PACEProtocol;->shouldCheckMAC:Z

    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-direct/range {v20 .. v26}, Lorg/jmrtd/protocol/AESSecureMessagingWrapper;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;IZJ)V

    goto :goto_4

    :cond_4
    sget-object v2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v8, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    sget-object v2, Lorg/jmrtd/lds/PACEInfo$MappingType;->CAM:Lorg/jmrtd/lds/PACEInfo$MappingType;

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_5

    sget-object v2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    const-string v3, "Encrypted Chip Authentication data is null"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    :try_start_4
    const-string v2, "AES/CBC/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lorg/jmrtd/protocol/PACEProtocol;->IV_FOR_PACE_CAM_DECRYPTION:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v0, v9, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->unpad([B)[B

    move-result-object v0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v22, v0

    goto :goto_6

    :catch_0
    move-exception v0

    sget-object v2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Could not decrypt Chip Authentication data"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v22, v12

    :goto_6
    new-instance v0, Lorg/jmrtd/protocol/PACECAMResult;

    iget-object v2, v7, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    move-object v12, v0

    move-object/from16 v13, p1

    move/from16 v17, v10

    move-object/from16 v20, v27

    move-object/from16 v21, v1

    move-object/from16 v23, v2

    invoke-direct/range {v12 .. v23}, Lorg/jmrtd/protocol/PACECAMResult;-><init>(Lorg/jmrtd/AccessKeySpec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/jmrtd/protocol/PACEMappingResult;Ljava/security/KeyPair;Ljava/security/PublicKey;[B[BLorg/jmrtd/protocol/SecureMessagingWrapper;)V

    return-object v0

    :cond_6
    new-instance v0, Lorg/jmrtd/protocol/PACEResult;

    iget-object v1, v7, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    move-object v9, v0

    move v2, v10

    move-object/from16 v10, p1

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move v15, v2

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v27

    move-object/from16 v19, v1

    invoke-direct/range {v9 .. v19}, Lorg/jmrtd/protocol/PACEResult;-><init>(Lorg/jmrtd/AccessKeySpec;Lorg/jmrtd/lds/PACEInfo$MappingType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/jmrtd/protocol/PACEMappingResult;Ljava/security/KeyPair;Ljava/security/PublicKey;Lorg/jmrtd/protocol/SecureMessagingWrapper;)V

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jmrtd/CardServiceProtocolException;

    const-string v2, "Security exception in secure messaging establishment"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v0}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/jmrtd/CardServiceProtocolException;

    const-string v2, "Security exception during secure messaging key derivation"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v0}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v2, Lorg/jmrtd/CardServiceProtocolException;

    const-string v3, "PCD side error in static PACE key derivation step"

    invoke-direct {v2, v3, v1, v0}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    new-instance v2, Lorg/jmrtd/CardServiceProtocolException;

    const-string v3, "PICC side error in static PACE key derivation step"

    invoke-direct {v2, v3, v1, v0}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v0

    new-instance v2, Lorg/jmrtd/CardServiceProtocolException;

    const-string v3, "PCD side error in static cipher construction during key derivation step"

    invoke-direct {v2, v3, v1, v0}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method

.method public static encodePublicKeyDataObject(Ljava/lang/String;Ljava/security/PublicKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/jmrtd/protocol/PACEProtocol;->encodePublicKeyDataObject(Ljava/lang/String;Ljava/security/PublicKey;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodePublicKeyDataObject(Ljava/lang/String;Ljava/security/PublicKey;Z)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Error closing stream"

    const-string v3, "Unsupported public key: "

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Lnet/sf/scuba/tlv/TLVOutputStream;

    invoke-direct {v5, v4}, Lnet/sf/scuba/tlv/TLVOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x7f49

    :try_start_0
    invoke-virtual {v5, v6}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    instance-of v6, v1, Ljavax/crypto/interfaces/DHPublicKey;

    const/16 v7, 0x83

    const/16 v8, 0x82

    const/16 v9, 0x81

    const/16 v10, 0x84

    if-eqz v6, :cond_1

    check-cast v1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v11

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v12, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v12, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->write([B)V

    if-nez p2, :cond_0

    invoke-virtual {v5, v9}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-static {v6}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    invoke-virtual {v5, v8}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    int-to-long v8, v11

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    invoke-virtual {v5, v7}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-static {v3}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    :cond_0
    invoke-virtual {v5, v10}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-static {v1}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    goto/16 :goto_0

    :cond_1
    instance-of v6, v1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v6, :cond_4

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v3}, Lorg/jmrtd/Util;->getPrime(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v13

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v15

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    new-instance v10, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v10, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->write([B)V

    if-nez p2, :cond_2

    invoke-virtual {v5, v9}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-static {v6}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    invoke-virtual {v5, v8}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-static {v12}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    invoke-virtual {v5, v7}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-static {v11}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    invoke-virtual {v13}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v13}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v6

    const/16 v7, 0x84

    invoke-virtual {v5, v7}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-static {v0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->write([B)V

    invoke-static {v6}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->write([B)V

    invoke-virtual {v5}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValueEnd()V

    const/16 v0, 0x85

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-static {v14}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    :cond_2
    const/16 v0, 0x86

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    invoke-static {v1, v0}, Lorg/jmrtd/Util;->ecPoint2OS(Ljava/security/spec/ECPoint;I)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    if-nez p2, :cond_3

    const/16 v0, 0x87

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    int-to-long v0, v15

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    :cond_3
    :goto_0
    invoke-virtual {v5}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValueEnd()V

    invoke-virtual {v5}, Lnet/sf/scuba/tlv/TLVOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Lnet/sf/scuba/tlv/TLVOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_4
    :try_start_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v1, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error in encoding public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v5}, Lnet/sf/scuba/tlv/TLVOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    sget-object v0, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v4, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    throw v1
.end method

.method public static encodePublicKeyForSmartCard(Ljava/security/PublicKey;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p0, :cond_2

    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result p0

    invoke-static {v1, p0}, Lorg/jmrtd/Util;->ecPoint2OS(Ljava/security/spec/ECPoint;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error writing to memory"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported public key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot encode null public key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static fixDocumentNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3c

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v2, 0x9

    if-ge p0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateAuthenticationToken(Ljava/lang/String;Ljavax/crypto/Mac;Ljava/security/PublicKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p0, p2}, Lorg/jmrtd/protocol/PACEProtocol;->encodePublicKeyDataObject(Ljava/lang/String;Ljava/security/PublicKey;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/16 p1, 0x8

    new-array p2, p1, [B

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static generateAuthenticationToken(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/PublicKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p0}, Lorg/jmrtd/lds/PACEInfo;->toCipherAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jmrtd/protocol/PACEProtocol;->inferMACAlgorithmFromCipherAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jmrtd/Util;->getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/jmrtd/protocol/PACEProtocol;->generateAuthenticationToken(Ljava/lang/String;Ljavax/crypto/Mac;Ljava/security/PublicKey;)[B

    move-result-object p0

    return-object p0
.end method

.method public static icartPointEncode(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lorg/jmrtd/Util;->getPrime(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v3, 0x3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v6, 0x4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v9

    const-wide/16 v10, 0x2

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v0, v12, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v14, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v2, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v8, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v10, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v11, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v4

    :goto_0
    const/4 v2, 0x1

    if-ne v5, v2, :cond_1

    invoke-static {v0, v1}, Lorg/jmrtd/Util;->normalize(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0, v1}, Lorg/jmrtd/Util;->toBouncyCastleECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    int-to-long v1, v5

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    invoke-static {v0}, Lorg/jmrtd/Util;->fromBouncyCastleECPoint(Lorg/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cannot encode point because p != 3 (mod 4)"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static inferMACAlgorithmFromCipherAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const-string v0, "DESede"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "ISO9797ALG3WITHISO7816-4PADDING"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string v0, "AES"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string p0, "AESCMAC"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 26
    .line 27
    const-string v1, "Cannot infer MAC algorithm from cipher algorithm \""

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
    invoke-direct {v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v0, "Cannot infer MAC algorithm from cipher algorithm null"

    .line 42
    .line 43
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method private static keysAreEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Exception during public key equals"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static mapNonceGMWithDH([BLjava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)Ljavax/crypto/spec/DHParameterSpec;
    .locals 2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0}, Lorg/jmrtd/Util;->os2i([B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p2

    invoke-direct {p1, v0, p0, p2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-object p1
.end method

.method public static mapNonceGMWithECDH([BLjava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;
    .locals 6

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v5

    invoke-static {p0}, Lorg/jmrtd/Util;->os2i([B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lorg/jmrtd/Util;->multiply(Ljava/math/BigInteger;Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/jmrtd/Util;->add(Ljava/security/spec/ECPoint;Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/jmrtd/Util;->toBouncyCastleECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    const-string p2, "ephemeralGenerator is not a valid point"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/security/spec/ECParameterSpec;

    new-instance p2, Ljava/security/spec/EllipticCurve;

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-direct {v0, v1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p2, v0, v2, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, p2, p0, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p1
.end method

.method public static mapNonceIMWithDH([B[BLjava/lang/String;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    instance-of v2, p3, Lorg/jmrtd/lds/PACEInfo$DHCParameterSpec;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Lorg/jmrtd/lds/PACEInfo$DHCParameterSpec;

    invoke-virtual {v2}, Lorg/jmrtd/lds/PACEInfo$DHCParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {p0, p1, v0, p2}, Lorg/jmrtd/protocol/PACEProtocol;->pseudoRandomFunction([B[BLjava/math/BigInteger;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/jmrtd/Util;->os2i([B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p2

    invoke-direct {p1, v0, p0, p2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid generator: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mapNonceIMWithECDH([B[BLjava/lang/String;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p3}, Lorg/jmrtd/Util;->getPrime(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v2

    invoke-virtual {p3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {p0, p1, v0, p2}, Lorg/jmrtd/protocol/PACEProtocol;->pseudoRandomFunction([B[BLjava/math/BigInteger;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/jmrtd/Util;->os2i([B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/jmrtd/protocol/PACEProtocol;->icartPointEncode(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object p0

    new-instance p1, Ljava/security/spec/ECParameterSpec;

    new-instance p2, Ljava/security/spec/EllipticCurve;

    new-instance p3, Ljava/security/spec/ECFieldFp;

    invoke-direct {p3, v0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p2, p3, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, p2, p0, v1, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p1
.end method

.method public static pseudoRandomFunction([B[BLjava/math/BigInteger;Ljava/lang/String;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-string v0, "Could not close stream"

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    mul-int/lit8 v1, v1, 0x8

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    mul-int/lit8 v2, v2, 0x8

    .line 12
    .line 13
    const/16 v3, 0x80

    .line 14
    .line 15
    if-eq v1, v3, :cond_2

    .line 16
    .line 17
    const/16 v3, 0xc0

    .line 18
    .line 19
    if-eq v1, v3, :cond_1

    .line 20
    .line 21
    const/16 v3, 0x100

    .line 22
    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p1, "Unknown length "

    .line 29
    .line 30
    const-string p2, ", was expecting 128, 192, or 256"

    .line 31
    .line 32
    invoke-static {p1, v1, p2}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    :goto_0
    sget-object v3, Lorg/jmrtd/protocol/PACEProtocol;->C0_LENGTH_256:[B

    .line 41
    .line 42
    sget-object v4, Lorg/jmrtd/protocol/PACEProtocol;->C1_LENGTH_256:[B

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sget-object v3, Lorg/jmrtd/protocol/PACEProtocol;->C0_LENGTH_128:[B

    .line 46
    .line 47
    sget-object v4, Lorg/jmrtd/protocol/PACEProtocol;->C1_LENGTH_128:[B

    .line 48
    .line 49
    :goto_1
    invoke-static {p3}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v6, "/CBC/NoPadding"

    .line 54
    .line 55
    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    const-string v6, ""

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    .line 79
    .line 80
    new-array v6, v6, [B

    .line 81
    .line 82
    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 83
    .line 84
    .line 85
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 86
    .line 87
    invoke-direct {v6, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    invoke-virtual {v5, p1, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    :goto_2
    mul-int v10, v9, v1

    .line 106
    .line 107
    :try_start_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    add-int/lit8 v11, v11, 0x40

    .line 112
    .line 113
    if-ge v10, v11, :cond_4

    .line 114
    .line 115
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    .line 116
    .line 117
    div-int/lit8 v11, v2, 0x8

    .line 118
    .line 119
    invoke-direct {v10, p0, v8, v11, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, p1, v10, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v5, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v9, v9, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lorg/jmrtd/Util;->os2i([B)Ljava/math/BigInteger;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    .line 152
    .line 153
    .line 154
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catch_0
    move-exception p1

    .line 160
    sget-object p2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    .line 161
    .line 162
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 163
    .line 164
    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    return-object p0

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    goto :goto_5

    .line 170
    :catch_1
    move-exception p0

    .line 171
    :try_start_2
    sget-object p1, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    .line 172
    .line 173
    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 174
    .line 175
    const-string v1, "Could not write to stream"

    .line 176
    .line 177
    invoke-virtual {p1, p3, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {p0}, Lorg/jmrtd/Util;->os2i([B)Ljava/math/BigInteger;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-static {p0}, Lorg/jmrtd/Util;->i2os(Ljava/math/BigInteger;)[B

    .line 193
    .line 194
    .line 195
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :catch_2
    move-exception p1

    .line 201
    sget-object p2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    .line 202
    .line 203
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 204
    .line 205
    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    :goto_4
    return-object p0

    .line 209
    :goto_5
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :catch_3
    move-exception p1

    .line 214
    sget-object p2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    .line 215
    .line 216
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 217
    .line 218
    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    :goto_6
    throw p0

    .line 222
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 223
    .line 224
    const-string p1, "Null nonce"

    .line 225
    .line 226
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p0
.end method

.method public static updateParameterSpec(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/PublicKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "EC"

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, "ECDH"

    .line 16
    .line 17
    const-string v5, ", private: "

    .line 18
    .line 19
    const-string v6, "Unsupported key type public: "

    .line 20
    .line 21
    if-nez v3, :cond_3

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v2, "DH"

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 49
    .line 50
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 51
    .line 52
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v1, Ljavax/crypto/spec/DHPublicKeySpec;

    .line 57
    .line 58
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v1, p0, v2, p1}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 75
    .line 76
    invoke-static {v6, v0, v5, v1}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_2
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 85
    .line 86
    invoke-static {v6, v0, v5, v1}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_3
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 108
    .line 109
    invoke-static {v6, v0, v5, v1}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_5
    :goto_1
    sget-object v0, Lorg/jmrtd/protocol/PACEProtocol;->BC_PROVIDER:Ljava/security/Provider;

    .line 118
    .line 119
    invoke-static {v2, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    .line 124
    .line 125
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .line 126
    .line 127
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 132
    .line 133
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {v1, p0, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 138
    .line 139
    .line 140
    :goto_2
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0
.end method


# virtual methods
.method public doPACE(Lorg/jmrtd/AccessKeySpec;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/math/BigInteger;)Lorg/jmrtd/protocol/PACEResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Lorg/jmrtd/protocol/PACEProtocol;->deriveStaticPACEKey(Lorg/jmrtd/AccessKeySpec;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jmrtd/protocol/PACEProtocol;->doPACE(Lorg/jmrtd/AccessKeySpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/math/BigInteger;)Lorg/jmrtd/protocol/PACEResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "PCD side error in key derivation step"

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method public doPACEStep1(Ljavax/crypto/SecretKey;Ljavax/crypto/Cipher;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jmrtd/CardServiceProtocolException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [B

    iget-object v3, p0, Lorg/jmrtd/protocol/PACEProtocol;->service:Lorg/jmrtd/APDULevelPACECapable;

    iget-object v4, p0, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    const/16 v5, 0x100

    invoke-interface {v3, v4, v2, v5, v1}, Lorg/jmrtd/APDULevelPACECapable;->sendGeneralAuthenticate(Lnet/sf/scuba/smartcards/APDUWrapper;[BIZ)[B

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2, v1}, Lnet/sf/scuba/tlv/TLVUtil;->unwrapDO(I[B)[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    invoke-virtual {p2, v3, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string v1, "PICC side exception in tranceiving nonce step"

    invoke-direct {p2, v1, v0, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string v1, "PCD side exception in tranceiving nonce step"

    invoke-direct {p2, v1, v0, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method public doPACEStep2(Lorg/jmrtd/lds/PACEInfo$MappingType;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;[BLjavax/crypto/Cipher;)Lorg/jmrtd/protocol/PACEMappingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jmrtd/CardServiceProtocolException;
        }
    .end annotation

    sget-object v0, Lorg/jmrtd/protocol/PACEProtocol$1;->$SwitchMap$org$jmrtd$lds$PACEInfo$MappingType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/jmrtd/protocol/PACEProtocol;->doPACEStep2IM(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;[BLjavax/crypto/Cipher;)Lorg/jmrtd/protocol/PACEIMMappingResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported mapping type "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lorg/jmrtd/protocol/PACEProtocol;->doPACEStep2GM(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;[B)Lorg/jmrtd/protocol/PACEGMMappingResult;

    move-result-object p1

    return-object p1
.end method

.method public doPACEStep2GM(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;[B)Lorg/jmrtd/protocol/PACEGMMappingResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jmrtd/CardServiceProtocolException;
        }
    .end annotation

    const-string v0, "Unsupported parameters for mapping nonce, expected \"ECDH\" / ECParameterSpec or \"DH\" / DHParameterSpec, found \""

    const/4 v1, 0x2

    :try_start_0
    sget-object v2, Lorg/jmrtd/protocol/PACEProtocol;->BC_PROVIDER:Ljava/security/Provider;

    invoke-static {p1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v2}, Lorg/jmrtd/protocol/PACEProtocol;->encodePublicKeyForSmartCard(Ljava/security/PublicKey;)[B

    move-result-object v2

    const/16 v4, 0x81

    invoke-static {v4, v2}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object v2

    iget-object v4, p0, Lorg/jmrtd/protocol/PACEProtocol;->service:Lorg/jmrtd/APDULevelPACECapable;

    iget-object v5, p0, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    iget v6, p0, Lorg/jmrtd/protocol/PACEProtocol;->maxTranceiveLengthForProtocol:I

    const/4 v8, 0x0

    invoke-interface {v4, v5, v2, v6, v8}, Lorg/jmrtd/APDULevelPACECapable;->sendGeneralAuthenticate(Lnet/sf/scuba/smartcards/APDUWrapper;[BIZ)[B

    move-result-object v2

    const/16 v4, 0x82

    invoke-static {v4, v2}, Lnet/sf/scuba/tlv/TLVUtil;->unwrapDO(I[B)[B

    move-result-object v2

    invoke-static {v2, p2}, Lorg/jmrtd/protocol/PACEProtocol;->decodePublicKeyFromSmartCard([BLjava/security/spec/AlgorithmParameterSpec;)Ljava/security/PublicKey;

    move-result-object v6

    const-string v2, "ECDH"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lorg/jmrtd/protocol/PACEGMWithECDHAgreement;

    invoke-direct {p1}, Lorg/jmrtd/protocol/PACEGMWithECDHAgreement;-><init>()V

    invoke-virtual {p1, v3}, Lorg/jmrtd/protocol/PACEGMWithECDHAgreement;->init(Ljava/security/PrivateKey;)V

    invoke-virtual {p1, v6}, Lorg/jmrtd/protocol/PACEGMWithECDHAgreement;->doPhase(Ljava/security/PublicKey;)Ljava/security/spec/ECPoint;

    move-result-object v8

    move-object p1, p2

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    invoke-static {p3, v8, p1}, Lorg/jmrtd/protocol/PACEProtocol;->mapNonceGMWithECDH([BLjava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v9

    new-instance p1, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v9}, Lorg/jmrtd/protocol/PACEGMWithECDHMappingResult;-><init>(Ljava/security/spec/AlgorithmParameterSpec;[BLjava/security/PublicKey;Ljava/security/KeyPair;Ljava/security/spec/ECPoint;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p1

    :cond_0
    const-string v2, "DH"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v6, v0}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v8

    invoke-static {v8}, Lorg/jmrtd/Util;->os2i([B)Ljava/math/BigInteger;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-static {p3, p1, v0}, Lorg/jmrtd/protocol/PACEProtocol;->mapNonceGMWithDH([BLjava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v9

    new-instance p1, Lorg/jmrtd/protocol/PACEGMWithDHMappingResult;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v9}, Lorg/jmrtd/protocol/PACEGMWithDHMappingResult;-><init>(Ljava/security/spec/AlgorithmParameterSpec;[BLjava/security/PublicKey;Ljava/security/KeyPair;[BLjava/security/spec/AlgorithmParameterSpec;)V

    return-object p1

    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" /"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "PCD side error in mapping nonce step"

    invoke-direct {p2, p3, v1, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "PICC side exception in mapping nonce step"

    invoke-direct {p2, p3, v1, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method public doPACEStep2IM(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;[BLjavax/crypto/Cipher;)Lorg/jmrtd/protocol/PACEIMMappingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jmrtd/CardServiceProtocolException;
        }
    .end annotation

    const-string v0, "Unsupported parameters for mapping nonce, expected \"ECDH\" / ECParameterSpec or \"DH\" / DHParameterSpec, found \""

    const/4 v1, 0x2

    :try_start_0
    array-length v2, p3

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/jmrtd/protocol/PACEProtocol;->random:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    const/16 v3, 0x81

    invoke-static {v3, v2}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object v3

    iget-object v4, p0, Lorg/jmrtd/protocol/PACEProtocol;->service:Lorg/jmrtd/APDULevelPACECapable;

    iget-object v5, p0, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    iget v6, p0, Lorg/jmrtd/protocol/PACEProtocol;->maxTranceiveLengthForProtocol:I

    const/4 v7, 0x0

    invoke-interface {v4, v5, v3, v6, v7}, Lorg/jmrtd/APDULevelPACECapable;->sendGeneralAuthenticate(Lnet/sf/scuba/smartcards/APDUWrapper;[BIZ)[B

    const-string v3, "ECDH"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    move-object p4, p2

    check-cast p4, Ljava/security/spec/ECParameterSpec;

    invoke-static {p3, v2, p1, p4}, Lorg/jmrtd/protocol/PACEProtocol;->mapNonceIMWithECDH([B[BLjava/lang/String;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    new-instance p4, Lorg/jmrtd/protocol/PACEIMMappingResult;

    invoke-direct {p4, p2, p3, v2, p1}, Lorg/jmrtd/protocol/PACEIMMappingResult;-><init>(Ljava/security/spec/AlgorithmParameterSpec;[B[BLjava/security/spec/AlgorithmParameterSpec;)V

    return-object p4

    :cond_0
    const-string v3, "DH"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    move-object p4, p2

    check-cast p4, Ljavax/crypto/spec/DHParameterSpec;

    invoke-static {p3, v2, p1, p4}, Lorg/jmrtd/protocol/PACEProtocol;->mapNonceIMWithDH([B[BLjava/lang/String;Ljavax/crypto/spec/DHParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    new-instance p4, Lorg/jmrtd/protocol/PACEIMMappingResult;

    invoke-direct {p4, p2, p3, v2, p1}, Lorg/jmrtd/protocol/PACEIMMappingResult;-><init>(Ljava/security/spec/AlgorithmParameterSpec;[B[BLjava/security/spec/AlgorithmParameterSpec;)V

    return-object p4

    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" /"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "PICC side exception in mapping nonce step"

    invoke-direct {p2, p3, v1, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "PCD side error in mapping nonce step"

    invoke-direct {p2, p3, v1, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method public doPACEStep3ExchangePublicKeys(Ljava/security/PublicKey;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/PublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jmrtd/CardServiceProtocolException;
        }
    .end annotation

    const/4 v0, 0x3

    :try_start_0
    invoke-static {p1}, Lorg/jmrtd/protocol/PACEProtocol;->encodePublicKeyForSmartCard(Ljava/security/PublicKey;)[B

    move-result-object v1

    const/16 v2, 0x83

    invoke-static {v2, v1}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/jmrtd/protocol/PACEProtocol;->service:Lorg/jmrtd/APDULevelPACECapable;

    iget-object v3, p0, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    iget v4, p0, Lorg/jmrtd/protocol/PACEProtocol;->maxTranceiveLengthForProtocol:I

    const/4 v5, 0x0

    invoke-interface {v2, v3, v1, v4, v5}, Lorg/jmrtd/APDULevelPACECapable;->sendGeneralAuthenticate(Lnet/sf/scuba/smartcards/APDUWrapper;[BIZ)[B

    move-result-object v1

    const/16 v2, 0x84

    invoke-static {v2, v1}, Lnet/sf/scuba/tlv/TLVUtil;->unwrapDO(I[B)[B

    move-result-object v1

    invoke-static {v1, p2}, Lorg/jmrtd/protocol/PACEProtocol;->decodePublicKeyFromSmartCard([BLjava/security/spec/AlgorithmParameterSpec;)Ljava/security/PublicKey;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/jmrtd/protocol/PACEProtocol;->keysAreEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Lorg/jmrtd/CardServiceProtocolException;

    const-string p2, "PCD\'s public key and PICC\'s public key are the same in key agreement step!"

    invoke-direct {p1, p2, v0}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_0
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string v1, "PCD side exception in key agreement step"

    invoke-direct {p2, v1, v0, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string v1, "PICC side exception in key agreement step"

    invoke-direct {p2, v1, v0, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method public doPACEStep3GenerateKeyPair(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jmrtd/CardServiceProtocolException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/jmrtd/protocol/PACEProtocol;->BC_PROVIDER:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string v0, "PCD side error during generation of PCD key pair"

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method public doPACEStep3KeyAgreement(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jmrtd/CardServiceProtocolException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/jmrtd/protocol/PACEProtocol;->BC_PROVIDER:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    invoke-static {p3, p2}, Lorg/jmrtd/protocol/PACEProtocol;->updateParameterSpec(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/PublicKey;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "PCD side error during key agreement"

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method public doPACEStep4(Ljava/lang/String;Lorg/jmrtd/lds/PACEInfo$MappingType;Ljava/security/KeyPair;Ljava/security/PublicKey;Ljavax/crypto/SecretKey;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const-string v0, "Exception closing stream"

    const-string v1, "Was expecting tag 0x8A, found: "

    const-string v2, "PICC authentication token mismatch, expectedPICCToken = "

    const-string v3, "Was expecting tag 0x86, found: "

    :try_start_0
    invoke-static {p1, p5, p4}, Lorg/jmrtd/protocol/PACEProtocol;->generateAuthenticationToken(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/PublicKey;)[B

    move-result-object p4

    const/16 v4, 0x85

    invoke-static {v4, p4}, Lnet/sf/scuba/tlv/TLVUtil;->wrapDO(I[B)[B

    move-result-object p4

    iget-object v4, p0, Lorg/jmrtd/protocol/PACEProtocol;->service:Lorg/jmrtd/APDULevelPACECapable;

    iget-object v5, p0, Lorg/jmrtd/protocol/PACEProtocol;->wrapper:Lorg/jmrtd/protocol/SecureMessagingWrapper;

    const/16 v6, 0x100

    const/4 v7, 0x1

    invoke-interface {v4, v5, p4, v6, v7}, Lorg/jmrtd/APDULevelPACECapable;->sendGeneralAuthenticate(Lnet/sf/scuba/smartcards/APDUWrapper;[BIZ)[B

    move-result-object p4

    new-instance v4, Lnet/sf/scuba/tlv/TLVInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result p4

    const/16 v5, 0x86

    if-eq p4, v5, :cond_0

    sget-object v5, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    move-result-object p4

    invoke-virtual {p3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p3

    invoke-static {p1, p5, p3}, Lorg/jmrtd/protocol/PACEProtocol;->generateAuthenticationToken(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/PublicKey;)[B

    move-result-object p1

    invoke-static {p1, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p1, Lorg/jmrtd/lds/PACEInfo$MappingType;->CAM:Lorg/jmrtd/lds/PACEInfo$MappingType;

    if-ne p2, p1, :cond_2

    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result p1

    const/16 p2, 0x8a

    if-eq p1, p2, :cond_1

    sget-object p2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_3
    sget-object p3, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, p4, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :goto_0
    return-object p1

    :cond_2
    :try_start_4
    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_5
    sget-object p2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    :goto_1
    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    :cond_3
    :try_start_6
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", piccToken = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :try_start_7
    sget-object p2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "Could not parse step 4 response"

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    :catch_3
    move-exception p1

    :try_start_9
    sget-object p2, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    :goto_2
    const/4 p1, 0x0

    return-object p1

    :goto_3
    :try_start_a
    invoke-virtual {v4}, Lnet/sf/scuba/tlv/TLVInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_4

    :catch_4
    move-exception p2

    :try_start_b
    sget-object p3, Lorg/jmrtd/protocol/PACEProtocol;->LOGGER:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, p4, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    move-exception p1

    new-instance p2, Lorg/jmrtd/CardServiceProtocolException;

    const-string p3, "PCD side exception in authentication token generation step"

    const/4 p4, 0x4

    invoke-direct {p2, p3, p4, p1}, Lorg/jmrtd/CardServiceProtocolException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method
