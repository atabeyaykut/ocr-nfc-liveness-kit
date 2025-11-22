.class public Lorg/bouncycastle/crypto/engines/ElephantEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$State;
    }
.end annotation


# instance fields
.field private final BLOCK_SIZE:I

.field private final CRYPTO_ABYTES:B

.field private final CRYPTO_KEYBYTES:B

.field private final CRYPTO_NPUBBYTES:B

.field private final KeccakRhoOffsets:[I

.field private final KeccakRoundConstants:[B

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private ad:[B

.field private adOff:I

.field private adlen:I

.field private final algorithmName:Ljava/lang/String;

.field private final buffer:[B

.field private current_mask:[B

.field private expanded_key:[B

.field private forEncryption:Z

.field private initialised:Z

.field private inputMessage:[B

.field private inputOff:I

.field private lfsrIV:B

.field private m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field private nBits:I

.field private final nRounds:I

.field private nSBox:I

.field private nb_its:I

.field private next_mask:[B

.field private npub:[B

.field private final outputMessage:[B

.field private final parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

.field private previous_mask:[B

.field private final previous_outputMessage:[B

.field private final sBoxLayer:[B

.field private tag:[B

.field private final tag_buffer:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_KEYBYTES:B

    const/16 v1, 0xc

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_NPUBBYTES:B

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    const/16 v1, 0x12

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    const/16 v2, 0x19

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 200 AEAD"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter settings for Elephant"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0x16

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    const/16 v1, 0xb0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    const/16 v0, 0x5a

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    const/16 v0, 0x45

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iput-byte v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 176 AEAD"

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    const/16 v1, 0xa0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    const/16 v0, 0x50

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    const/16 v0, 0x75

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iput-byte v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 160 AEAD"

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void

    nop

    :array_0
    .array-data 1
        -0x12t
        -0x13t
        -0x15t
        -0x20t
        -0x1et
        -0x1ft
        -0x1ct
        -0x11t
        -0x19t
        -0x16t
        -0x18t
        -0x1bt
        -0x17t
        -0x14t
        -0x1dt
        -0x1at
        -0x22t
        -0x23t
        -0x25t
        -0x30t
        -0x2et
        -0x2ft
        -0x2ct
        -0x21t
        -0x29t
        -0x26t
        -0x28t
        -0x2bt
        -0x27t
        -0x24t
        -0x2dt
        -0x2at
        -0x42t
        -0x43t
        -0x45t
        -0x50t
        -0x4et
        -0x4ft
        -0x4ct
        -0x41t
        -0x49t
        -0x46t
        -0x48t
        -0x4bt
        -0x47t
        -0x44t
        -0x4dt
        -0x4at
        0xet
        0xdt
        0xbt
        0x0t
        0x2t
        0x1t
        0x4t
        0xft
        0x7t
        0xat
        0x8t
        0x5t
        0x9t
        0xct
        0x3t
        0x6t
        0x2et
        0x2dt
        0x2bt
        0x20t
        0x22t
        0x21t
        0x24t
        0x2ft
        0x27t
        0x2at
        0x28t
        0x25t
        0x29t
        0x2ct
        0x23t
        0x26t
        0x1et
        0x1dt
        0x1bt
        0x10t
        0x12t
        0x11t
        0x14t
        0x1ft
        0x17t
        0x1at
        0x18t
        0x15t
        0x19t
        0x1ct
        0x13t
        0x16t
        0x4et
        0x4dt
        0x4bt
        0x40t
        0x42t
        0x41t
        0x44t
        0x4ft
        0x47t
        0x4at
        0x48t
        0x45t
        0x49t
        0x4ct
        0x43t
        0x46t
        -0x2t
        -0x3t
        -0x5t
        -0x10t
        -0xet
        -0xft
        -0xct
        -0x1t
        -0x9t
        -0x6t
        -0x8t
        -0xbt
        -0x7t
        -0x4t
        -0xdt
        -0xat
        0x7et
        0x7dt
        0x7bt
        0x70t
        0x72t
        0x71t
        0x74t
        0x7ft
        0x77t
        0x7at
        0x78t
        0x75t
        0x79t
        0x7ct
        0x73t
        0x76t
        -0x52t
        -0x53t
        -0x55t
        -0x60t
        -0x5et
        -0x5ft
        -0x5ct
        -0x51t
        -0x59t
        -0x56t
        -0x58t
        -0x5bt
        -0x57t
        -0x54t
        -0x5dt
        -0x5at
        -0x72t
        -0x73t
        -0x75t
        -0x80t
        -0x7et
        -0x7ft
        -0x7ct
        -0x71t
        -0x79t
        -0x76t
        -0x78t
        -0x7bt
        -0x77t
        -0x74t
        -0x7dt
        -0x7at
        0x5et
        0x5dt
        0x5bt
        0x50t
        0x52t
        0x51t
        0x54t
        0x5ft
        0x57t
        0x5at
        0x58t
        0x55t
        0x59t
        0x5ct
        0x53t
        0x56t
        -0x62t
        -0x63t
        -0x65t
        -0x70t
        -0x6et
        -0x6ft
        -0x6ct
        -0x61t
        -0x69t
        -0x66t
        -0x68t
        -0x6bt
        -0x67t
        -0x64t
        -0x6dt
        -0x6at
        -0x32t
        -0x33t
        -0x35t
        -0x40t
        -0x3et
        -0x3ft
        -0x3ct
        -0x31t
        -0x39t
        -0x36t
        -0x38t
        -0x3bt
        -0x37t
        -0x34t
        -0x3dt
        -0x3at
        0x3et
        0x3dt
        0x3bt
        0x30t
        0x32t
        0x31t
        0x34t
        0x3ft
        0x37t
        0x3at
        0x38t
        0x35t
        0x39t
        0x3ct
        0x33t
        0x36t
        0x6et
        0x6dt
        0x6bt
        0x60t
        0x62t
        0x61t
        0x64t
        0x6ft
        0x67t
        0x6at
        0x68t
        0x65t
        0x69t
        0x6ct
        0x63t
        0x66t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        -0x7et
        -0x76t
        0x0t
        -0x75t
        0x1t
        -0x7ft
        0x9t
        -0x76t
        -0x78t
        0x9t
        0xat
        -0x75t
        -0x75t
        -0x77t
        0x3t
        0x2t
        -0x80t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x1
        0x6
        0x4
        0x3
        0x4
        0x4
        0x6
        0x7
        0x4
        0x3
        0x2
        0x3
        0x1
        0x7
        0x1
        0x5
        0x7
        0x5
        0x0
        0x2
        0x2
        0x5
        0x0
        0x6
    .end array-data
.end method

.method private KeccakP200Round([BI)V
    .locals 9

    const/16 v0, 0x19

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v2

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v5, v2, 0x1

    rem-int/lit8 v6, v5, 0x5

    aget-byte v6, v0, v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v6

    add-int/lit8 v2, v2, 0x4

    rem-int/2addr v2, v3

    aget-byte v2, v0, v2

    xor-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    move v2, v5

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_3

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v6, p1, v5

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v0, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_6

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v8

    aget v7, v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_8

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_7

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v6, v5

    rem-int/2addr v6, v3

    invoke-direct {p0, v4, v6}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, v0, v6

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_b

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_9

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v7, v6, 0x5

    invoke-direct {p0, v7, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v7

    aget-byte v7, p1, v7

    not-int v7, v7

    add-int/lit8 v8, v4, 0x2

    rem-int/2addr v8, v3

    invoke-direct {p0, v8, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v8

    aget-byte v8, p1, v8

    and-int/2addr v7, v8

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    move v4, v6

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_a

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v6, v0, v4

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    aget-byte v0, p1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    aget-byte p2, v2, p2

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    return-void
.end method

.method private ROL8(BI)B
    .locals 1

    if-eqz p2, :cond_0

    and-int/lit16 p1, p1, 0xff

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x8

    ushr-int/2addr p1, p2

    xor-int/2addr p1, v0

    :cond_0
    int-to-byte p1, p1

    return p1
.end method

.method private checkAad()V
    .locals 4

    .line 1
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    .line 32
    .line 33
    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    .line 51
    .line 52
    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 68
    .line 69
    const-string v3, " cannot be reused for encryption"

    .line 70
    .line 71
    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method private get_c_block([B[BIII)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int p5, p5, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p5, p4, :cond_0

    invoke-static {p1, v2, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v1, p1, v2

    return-void

    :cond_0
    sub-int/2addr p4, p5

    if-gt v0, p4, :cond_1

    invoke-static {p2, p3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-lez p4, :cond_2

    invoke-static {p2, p3, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, p4, p2, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v1, p1, p4

    :goto_0
    return-void
.end method

.method private index(II)I
    .locals 0

    mul-int/lit8 p2, p2, 0x5

    add-int/2addr p2, p1

    return p2
.end method

.method private lfsr_step([B[B)V
    .locals 7

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v3, p2, v2

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v3

    aget-byte v5, p2, v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v5

    xor-int/2addr v3, v5

    aget-byte v1, p2, v1

    shl-int/2addr v1, v4

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v1, p2, v2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v1, v3

    const/16 v3, 0x13

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x7

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v5, p2, v2

    and-int/lit16 v6, v5, 0xff

    shl-int/2addr v6, v3

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x5

    or-int/2addr v5, v6

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v5

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    invoke-static {p2, v4, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private permutation([B)V
    .locals 13

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v3, v0, :cond_6

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakP200Round([BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    new-array v5, v5, [B

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v6, v7, :cond_6

    aget-byte v7, p1, v3

    xor-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, p1, v3

    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    sub-int/2addr v7, v4

    aget-byte v8, p1, v7

    and-int/lit8 v9, v0, 0x1

    shl-int/lit8 v9, v9, 0x7

    and-int/lit8 v10, v0, 0x2

    shl-int/lit8 v10, v10, 0x5

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0x4

    shl-int/2addr v10, v2

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0x8

    shl-int/2addr v10, v4

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0x10

    ushr-int/2addr v10, v4

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0x20

    ushr-int/lit8 v11, v10, 0x3

    or-int/2addr v9, v11

    and-int/lit8 v11, v0, 0x40

    ushr-int/lit8 v12, v11, 0x5

    or-int/2addr v9, v12

    and-int/lit16 v12, v0, 0x80

    ushr-int/lit8 v12, v12, 0x7

    or-int/2addr v9, v12

    int-to-byte v9, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    shl-int/2addr v0, v4

    ushr-int/lit8 v7, v11, 0x6

    ushr-int/lit8 v8, v10, 0x5

    xor-int/2addr v7, v8

    or-int/2addr v0, v7

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    const/4 v7, 0x0

    :goto_2
    iget v8, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v7, v8, :cond_2

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    aget-byte v9, p1, v7

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    aput-byte v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([BB)V

    const/4 v7, 0x0

    :goto_3
    iget v8, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v7, v8, :cond_5

    const/4 v8, 0x0

    :goto_4
    const/16 v9, 0x8

    if-ge v8, v9, :cond_4

    shl-int/lit8 v9, v7, 0x3

    add-int/2addr v9, v8

    iget v10, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    add-int/lit8 v11, v10, -0x1

    if-eq v9, v11, :cond_3

    mul-int v9, v9, v10

    shr-int/2addr v9, v1

    add-int/lit8 v10, v10, -0x1

    rem-int/2addr v9, v10

    :cond_3
    ushr-int/lit8 v10, v9, 0x3

    aget-byte v11, v5, v10

    aget-byte v12, p1, v7

    and-int/lit16 v12, v12, 0xff

    ushr-int/2addr v12, v8

    and-int/2addr v12, v4

    and-int/lit8 v9, v9, 0x7

    shl-int v9, v12, v9

    xor-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v5, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v5, v3, p1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_6
    :goto_5
    return-void
.end method

.method private processAADBytes([B)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->checkAad()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    .line 17
    .line 18
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    .line 25
    .line 26
    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 27
    .line 28
    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    .line 29
    .line 30
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    aget v1, v0, v1

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/16 v4, 0xc

    .line 40
    .line 41
    if-eq v1, v3, :cond_3

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    if-eq v1, v5, :cond_2

    .line 45
    .line 46
    packed-switch v1, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    .line 60
    .line 61
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :pswitch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 77
    .line 78
    const-string v2, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    .line 79
    .line 80
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :pswitch_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 89
    .line 90
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    .line 91
    .line 92
    if-ne v1, v4, :cond_1

    .line 93
    .line 94
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 95
    .line 96
    invoke-static {p1, v2, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 97
    .line 98
    .line 99
    aput-byte v3, p1, v2

    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 110
    .line 111
    const-string v2, " cannot be reused for encryption"

    .line 112
    .line 113
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    .line 124
    .line 125
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    .line 126
    .line 127
    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 128
    .line 129
    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    .line 133
    .line 134
    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    .line 141
    .line 142
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    .line 143
    .line 144
    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 145
    .line 146
    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    .line 150
    .line 151
    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    .line 153
    .line 154
    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 155
    .line 156
    :goto_1
    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 157
    .line 158
    :goto_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 159
    .line 160
    sub-int/2addr v1, v4

    .line 161
    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    .line 162
    .line 163
    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 164
    .line 165
    sub-int/2addr v5, v6

    .line 166
    if-gt v1, v5, :cond_4

    .line 167
    .line 168
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    .line 169
    .line 170
    invoke-static {v0, v6, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    .line 172
    .line 173
    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 174
    .line 175
    add-int/2addr p1, v1

    .line 176
    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_4
    if-lez v5, :cond_5

    .line 180
    .line 181
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    .line 182
    .line 183
    invoke-static {v7, v6, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    .line 185
    .line 186
    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 187
    .line 188
    add-int/2addr v6, v5

    .line 189
    iput v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    .line 190
    .line 191
    :cond_5
    add-int/2addr v5, v4

    .line 192
    add-int/2addr v4, v1

    .line 193
    invoke-static {p1, v5, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 194
    .line 195
    .line 196
    aput-byte v3, p1, v5

    .line 197
    .line 198
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    aget p1, v0, p1

    .line 205
    .line 206
    const/4 v0, 0x6

    .line 207
    if-eq p1, v0, :cond_7

    .line 208
    .line 209
    const/16 v0, 0x9

    .line 210
    .line 211
    if-eq p1, v0, :cond_6

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_6
    sget-object p1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_7
    sget-object p1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 218
    .line 219
    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 220
    .line 221
    :goto_4
    return-void

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processBytes([B[BIIIIII)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p5

    iget v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    const/4 v9, 0x0

    move/from16 v11, p4

    move v10, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v10, v11, :cond_5

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    invoke-direct {v6, v1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsr_step([B[B)V

    if-ge v10, v8, :cond_2

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/16 v3, 0xc

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v1, v3, v2, v9}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    add-int/lit8 v1, v8, -0x1

    if-ne v10, v1, :cond_0

    iget v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v1, v1, v10

    sub-int v1, p7, v1

    goto :goto_1

    :cond_0
    iget v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    :goto_1
    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v2, v7, v9, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    move-object/from16 v12, p2

    move/from16 v13, p3

    invoke-static {v2, v9, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v2, :cond_1

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    invoke-static {v2, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    invoke-static {v7, v9, v2, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/2addr v0, v1

    goto :goto_3

    :cond_2
    move-object/from16 v12, p2

    move/from16 v13, p3

    :goto_3
    move v14, v0

    move/from16 v15, p6

    if-lez v10, :cond_3

    if-gt v10, v15, :cond_3

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    const/4 v3, 0x0

    add-int/lit8 v5, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->get_c_block([B[BIII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v1, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v1, v9, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p8

    if-ge v10, v1, :cond_4

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v6, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v6, v0, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    :cond_4
    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iput-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v0, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    iget-object v2, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget v3, v6, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v0, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v14

    goto/16 :goto_0

    :cond_5
    return v0
.end method

.method private reset(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    return-void
.end method

.method private rotl(B)B
    .locals 1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x1

    ushr-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method private xor_block([B[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    aget-byte v1, p1, v0

    add-int v2, v0, p3

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 6
    .line 7
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    add-int v2, v0, p2

    .line 12
    .line 13
    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 14
    .line 15
    add-int/2addr v2, v3

    .line 16
    array-length v3, p1

    .line 17
    if-gt v2, v3, :cond_1

    .line 18
    .line 19
    :cond_0
    if-nez v1, :cond_2

    .line 20
    .line 21
    add-int v1, v0, p2

    .line 22
    .line 23
    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    array-length v2, p1

    .line 27
    if-gt v1, v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    .line 31
    .line 32
    const-string v1, "output buffer is too short"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    .line 45
    .line 46
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    aget v2, v2, v3

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    if-eq v2, v3, :cond_3

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    if-eq v2, v3, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    .line 62
    .line 63
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    .line 64
    .line 65
    .line 66
    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    .line 67
    .line 68
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 69
    .line 70
    mul-int v2, v2, v3

    .line 71
    .line 72
    add-int/2addr v2, v0

    .line 73
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 81
    .line 82
    :goto_2
    sub-int v10, v2, v0

    .line 83
    .line 84
    array-length v0, v1

    .line 85
    div-int v1, v10, v3

    .line 86
    .line 87
    add-int/lit8 v6, v1, 0x1

    .line 88
    .line 89
    rem-int v1, v10, v3

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    move v5, v6

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    add-int/lit8 v1, v6, -0x1

    .line 96
    .line 97
    move v5, v1

    .line 98
    :goto_3
    add-int/lit8 v0, v0, 0xc

    .line 99
    .line 100
    div-int/2addr v0, v3

    .line 101
    add-int/lit8 v8, v0, 0x1

    .line 102
    .line 103
    add-int/lit8 v0, v6, 0x1

    .line 104
    .line 105
    add-int/lit8 v1, v8, -0x1

    .line 106
    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v2, p1

    .line 115
    move v3, p2

    .line 116
    move v7, v10

    .line 117
    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIII)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v0, p2

    .line 122
    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 123
    .line 124
    new-array v1, v1, [B

    .line 125
    .line 126
    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    .line 127
    .line 128
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    .line 129
    .line 130
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    .line 131
    .line 132
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 133
    .line 134
    invoke-direct {p0, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    .line 138
    .line 139
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    .line 143
    .line 144
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    .line 145
    .line 146
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 147
    .line 148
    invoke-direct {p0, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    .line 149
    .line 150
    .line 151
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    .line 152
    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    .line 156
    .line 157
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    .line 158
    .line 159
    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 160
    .line 161
    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    .line 165
    .line 166
    array-length v2, v1

    .line 167
    invoke-static {v1, v9, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    .line 169
    .line 170
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 171
    .line 172
    add-int/2addr v10, v0

    .line 173
    goto :goto_5

    .line 174
    :cond_6
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 175
    .line 176
    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 177
    .line 178
    sub-int/2addr v0, v1

    .line 179
    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 180
    .line 181
    const/4 v0, 0x0

    .line 182
    :goto_4
    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 183
    .line 184
    if-ge v0, v1, :cond_8

    .line 185
    .line 186
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    .line 187
    .line 188
    aget-byte v1, v1, v0

    .line 189
    .line 190
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    .line 191
    .line 192
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 193
    .line 194
    add-int/2addr v3, v0

    .line 195
    aget-byte v2, v2, v3

    .line 196
    .line 197
    if-ne v1, v2, :cond_7

    .line 198
    .line 199
    add-int/lit8 v0, v0, 0x1

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 203
    .line 204
    const-string v1, "Mac does not match"

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_8
    :goto_5
    invoke-direct {p0, v9}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    .line 211
    .line 212
    .line 213
    return v10

    .line 214
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 222
    .line 223
    const-string v3, " needs call init function before doFinal"

    .line 224
    .line 225
    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 3

    .line 1
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x6

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x7

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 31
    .line 32
    sub-int/2addr p1, v0

    .line 33
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_0
    return v2

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, " needs call init function before getUpdateOutputSize"

    .line 49
    .line 50
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 59
    .line 60
    add-int/2addr p1, v0

    .line 61
    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 3

    .line 1
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x6

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x7

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 31
    .line 32
    add-int/2addr p1, v0

    .line 33
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 34
    .line 35
    sub-int/2addr p1, v0

    .line 36
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_0
    return v2

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, " needs call init function before getUpdateOutputSize"

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    .line 62
    .line 63
    add-int/2addr v0, p1

    .line 64
    iget-byte p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 65
    .line 66
    add-int/2addr v0, p1

    .line 67
    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    .line 2
    .line 3
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    .line 15
    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    const/16 v2, 0xc

    .line 20
    .line 21
    if-ne v1, v2, :cond_4

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 36
    .line 37
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    array-length v1, v0

    .line 42
    const/16 v2, 0x10

    .line 43
    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    .line 46
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 47
    .line 48
    new-array v1, v1, [B

    .line 49
    .line 50
    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->getAlgorithmName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/16 v2, 0x80

    .line 68
    .line 69
    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-direct {v0, v1, v2, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 77
    .line 78
    .line 79
    const/4 p2, 0x1

    .line 80
    iput-boolean p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    .line 81
    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    sget-object p2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    sget-object p2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 88
    .line 89
    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    .line 90
    .line 91
    iget p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    .line 92
    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    iget-byte p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    .line 98
    .line 99
    :goto_1
    add-int/2addr p2, p1

    .line 100
    new-array p1, p2, [B

    .line 101
    .line 102
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    .line 103
    .line 104
    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 116
    .line 117
    const-string v1, " key must be 128 bits long"

    .line 118
    .line 119
    invoke-static {p2, v0, v1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 135
    .line 136
    const-string v1, " init parameters must include a key"

    .line 137
    .line 138
    invoke-static {p2, v0, v1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 154
    .line 155
    const-string v1, " requires exactly 12 bytes of IV"

    .line 156
    .line 157
    invoke-static {p2, v0, v1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    .line 173
    .line 174
    const-string v1, " init parameters must include an IV"

    .line 175
    .line 176
    invoke-static {p2, v0, v1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method

.method public processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processByte(B[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    add-int v0, v11, v12

    array-length v1, v10

    if-gt v0, v1, :cond_5

    iget-object v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int v2, v1, v12

    iget-boolean v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-byte v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_0
    sub-int/2addr v2, v3

    iget v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-lt v2, v3, :cond_4

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v2, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {v9, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    :goto_1
    iget v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v1, v12

    iget-boolean v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget-byte v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_2
    sub-int v7, v1, v3

    array-length v0, v0

    iget v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int v14, v7, v1

    rem-int v3, v7, v1

    if-eqz v3, :cond_3

    move v3, v14

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v14, -0x1

    :goto_3
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v0, v0, 0xc

    div-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v0, v0, v1

    new-array v1, v0, [B

    iget-object v2, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v3, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {v2, v13, v1, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    sub-int v15, v0, v2

    sub-int/2addr v0, v2

    invoke-static {v10, v11, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move v4, v14

    move v6, v14

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIII)I

    sub-int v0, v12, v15

    iput v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int v1, v11, v15

    iget-object v2, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    invoke-static {v10, v1, v2, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    add-int/2addr v0, v14

    iput v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    iget v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v14, v14, v0

    return v14

    :cond_4
    iget-object v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    invoke-static {v10, v11, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v0, v12

    iput v0, v9, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    return v13

    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void
.end method
