.class public Lorg/bouncycastle/crypto/engines/SparkleEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;,
        Lorg/bouncycastle/crypto/engines/SparkleEngine$State;
    }
.end annotation


# static fields
.field private static final RCON:[I


# instance fields
.field private final CAP_MASK:I

.field private final KEY_BYTES:I

.field private final KEY_WORDS:I

.field private final RATE_BYTES:I

.field private final RATE_WORDS:I

.field private final SCHWAEMM_KEY_LEN:I

.field private final SCHWAEMM_NONCE_LEN:I

.field private final SPARKLE_STEPS_BIG:I

.field private final SPARKLE_STEPS_SLIM:I

.field private final STATE_WORDS:I

.field private final TAG_BYTES:I

.field private final TAG_WORDS:I

.field private final _A0:I

.field private final _A1:I

.field private final _M2:I

.field private final _M3:I

.field private algorithmName:Ljava/lang/String;

.field private encrypted:Z

.field private initialAssociatedText:[B

.field private final k:[I

.field private final m_buf:[B

.field private m_bufPos:I

.field private final m_bufferSizeDecrypt:I

.field private m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field private final npub:[I

.field private final state:[I

.field private tag:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    return-void

    :array_0
    .array-data 4
        -0x481eae9e
        -0x408ea780
        0x38b4da56
        0x324e7738
        -0x44ee7a15
        0x4f7c7b57
        -0x30405e38
        -0x3d4cd6c3
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x100

    const/16 v4, 0x80

    if-eq p1, v1, :cond_3

    const/16 v5, 0xb

    const/16 v6, 0x180

    const/4 v7, 0x2

    if-eq p1, v7, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    const/16 p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    const/16 p1, 0xc

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string p1, "SCHWAEMM256-256"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    const/16 p1, 0x200

    const/16 v4, 0x100

    const/16 v6, 0x200

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid definition of SCHWAEMM instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v3, 0xc0

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string p1, "SCHWAEMM192-192"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    const/16 v4, 0xc0

    goto :goto_0

    :cond_2
    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string p1, "SCHWAEMM256-128"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    const/16 v3, 0x80

    goto :goto_0

    :cond_3
    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    const/16 p1, 0xa

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string p1, "SCHWAEMM128-128"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    const/16 v3, 0x80

    const/16 v6, 0x100

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    ushr-int/lit8 v0, p1, 0x5

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    ushr-int/2addr p1, v2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_BYTES:I

    ushr-int/lit8 p1, v3, 0x5

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_WORDS:I

    ushr-int/lit8 p1, v3, 0x3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    ushr-int/lit8 v3, v6, 0x5

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    ushr-int/lit8 v6, v5, 0x5

    iput v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    ushr-int/2addr v5, v2

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    ushr-int/lit8 v7, v4, 0x6

    ushr-int/lit8 v4, v4, 0x5

    if-le v6, v4, :cond_4

    sub-int/2addr v4, v1

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    :goto_1
    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    shl-int/2addr v1, v7

    shl-int/lit8 v4, v1, 0x18

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A0:I

    xor-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x18

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A1:I

    xor-int/lit8 v4, v1, 0x2

    shl-int/lit8 v4, v4, 0x18

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M2:I

    xor-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x18

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M3:I

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    new-array v0, v6, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    add-int/2addr v5, p1

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    new-array p1, v5, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    return-void
.end method

.method private static ELL(I)I
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private checkAAD()V
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    :cond_4
    :goto_1
    return-void
.end method

.method private checkData()Z
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/SparkleEngine$State;)V

    return v1

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    return v1

    :pswitch_4
    return v2

    :pswitch_5
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/SparkleEngine$State;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private finishAAD(Lorg/bouncycastle/crypto/engines/SparkleEngine$State;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processFinalAAD()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    return-void
.end method

.method private processBufferAAD([BI)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v2, v0

    aget v2, v2, v1

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p2

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int/2addr v4, v2

    iget v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v8, v7, v0

    aget v8, v6, v8

    xor-int/2addr v4, v8

    aput v4, v6, v0

    xor-int/2addr v2, v3

    xor-int/2addr v2, v5

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v3, v1

    add-int/2addr v7, v3

    aget v3, v6, v7

    xor-int/2addr v2, v3

    aput v2, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    return-void
.end method

.method private processBufferDecrypt([BI[BI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    array-length v4, v2

    iget v5, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v6, v5, 0x2

    if-ge v4, v6, :cond_0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v7, v6, v4

    aget v6, v6, v5

    mul-int/lit8 v8, v4, 0x4

    add-int v9, p2, v8

    invoke-static {v1, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v9

    mul-int/lit8 v10, v5, 0x4

    add-int v11, p2, v10

    invoke-static {v1, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v13, v7, v6

    xor-int/2addr v13, v9

    iget v14, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v15, v14, v4

    aget v15, v12, v15

    xor-int/2addr v13, v15

    aput v13, v12, v4

    xor-int v13, v7, v11

    iget v15, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v15, v5

    add-int/2addr v14, v15

    aget v14, v12, v14

    xor-int/2addr v13, v14

    aput v13, v12, v5

    xor-int v5, v9, v7

    add-int v7, v3, v8

    invoke-static {v5, v2, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    xor-int v5, v11, v6

    add-int v6, v3, v10

    invoke-static {v5, v2, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    return-void

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processBufferEncrypt([BI[BI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    array-length v4, v2

    iget v5, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v6, v5, 0x2

    if-ge v4, v6, :cond_0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v7, v6, v4

    aget v6, v6, v5

    mul-int/lit8 v8, v4, 0x4

    add-int v9, p2, v8

    invoke-static {v1, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v9

    mul-int/lit8 v10, v5, 0x4

    add-int v11, p2, v10

    invoke-static {v1, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v13, v6, v9

    iget v14, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v15, v14, v4

    aget v15, v12, v15

    xor-int/2addr v13, v15

    aput v13, v12, v4

    xor-int v13, v7, v6

    xor-int/2addr v13, v11

    iget v15, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v15, v5

    add-int/2addr v14, v15

    aget v14, v12, v14

    xor-int/2addr v13, v14

    aput v13, v12, v5

    xor-int v5, v9, v7

    add-int v7, v3, v8

    invoke-static {v5, v2, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    xor-int v5, v11, v6

    add-int v6, v3, v10

    invoke-static {v5, v2, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    return-void

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processFinalAAD()V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v1, v3

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A0:I

    xor-int/2addr v4, v5

    aput v4, v1, v3

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    const/16 v3, -0x80

    aput-byte v3, v1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    aput-byte v2, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A1:I

    xor-int/2addr v3, v4

    aput v3, v0, v1

    :cond_1
    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v0, 0x2

    if-ge v2, v1, :cond_2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v1, v2

    aget v1, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    mul-int/lit8 v5, v2, 0x4

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    mul-int/lit8 v6, v0, 0x4

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int/2addr v4, v1

    iget v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v8, v7, v2

    aget v8, v6, v8

    xor-int/2addr v4, v8

    aput v4, v6, v2

    xor-int/2addr v1, v3

    xor-int/2addr v1, v5

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v3, v0

    add-int/2addr v7, v3

    aget v3, v6, v7

    xor-int/2addr v1, v3

    aput v1, v6, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    return-void
.end method

.method private reset(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needs to be initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    return-void

    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    :pswitch_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    invoke-static {v0, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processAADBytes([BII)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static sparkle_opt([II)V
    .locals 2

    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16([II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12([II)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt8([II)V

    :goto_0
    return-void
.end method

.method public static sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12([II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by SparkleDigest"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sparkle_opt12([II)V
    .locals 31

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v17, p0, v16

    const/16 v18, 0x9

    aget v19, p0, v18

    const/16 v20, 0xa

    aget v21, p0, v20

    const/16 v22, 0xb

    aget v23, p0, v22

    move/from16 v10, p1

    move/from16 v14, v19

    move/from16 v12, v23

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_0

    sget-object v24, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v25, v8, 0x7

    aget v25, v24, v25

    xor-int v3, v3, v25

    xor-int/2addr v7, v8

    aget v25, v24, v0

    const/16 v0, 0x1f

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v26

    add-int v1, v26, v1

    const/16 v6, 0x18

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v27

    xor-int v3, v3, v27

    xor-int v1, v1, v25

    const/16 v4, 0x11

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v28

    add-int v1, v28, v1

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v28

    xor-int v3, v3, v28

    xor-int v1, v1, v25

    add-int/2addr v1, v3

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v28

    xor-int v3, v3, v28

    xor-int v1, v1, v25

    invoke-static {v3, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v28

    add-int v1, v28, v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    xor-int v3, v3, v29

    xor-int v1, v1, v25

    aget v25, v24, v2

    invoke-static {v7, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    add-int v5, v29, v5

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    xor-int v7, v7, v29

    xor-int v5, v5, v25

    const/16 v2, 0x11

    invoke-static {v7, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v28

    add-int v5, v28, v5

    invoke-static {v5, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v30

    xor-int v2, v7, v30

    xor-int v5, v5, v25

    add-int/2addr v5, v2

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    xor-int/2addr v2, v7

    xor-int v5, v5, v25

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v5

    xor-int/2addr v2, v5

    xor-int v5, v7, v25

    const/4 v7, 0x2

    aget v25, v24, v7

    invoke-static {v11, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    add-int/2addr v7, v9

    invoke-static {v7, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    xor-int/2addr v9, v11

    xor-int v7, v7, v25

    const/16 v11, 0x11

    invoke-static {v9, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v28

    add-int v7, v28, v7

    invoke-static {v7, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v30

    xor-int v9, v9, v30

    xor-int v7, v7, v25

    add-int/2addr v7, v9

    invoke-static {v7, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    xor-int/2addr v9, v11

    xor-int v7, v7, v25

    invoke-static {v9, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v11, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    xor-int/2addr v7, v9

    xor-int v9, v11, v25

    const/4 v11, 0x3

    aget v25, v24, v11

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    add-int/2addr v11, v13

    invoke-static {v11, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v13

    xor-int/2addr v13, v15

    xor-int v11, v11, v25

    const/16 v15, 0x11

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v28

    add-int v11, v28, v11

    invoke-static {v11, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v30

    xor-int v13, v13, v30

    xor-int v11, v11, v25

    add-int/2addr v11, v13

    invoke-static {v11, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v13, v15

    xor-int v11, v11, v25

    invoke-static {v13, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v15, v11

    invoke-static {v15, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    xor-int/2addr v11, v13

    xor-int v13, v15, v25

    const/4 v15, 0x4

    aget v25, v24, v15

    invoke-static {v14, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int v15, v15, v17

    invoke-static {v15, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v14, v14, v17

    xor-int v15, v15, v25

    const/16 v4, 0x11

    invoke-static {v14, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v15, v17, v15

    invoke-static {v15, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v4, v14, v17

    xor-int v14, v15, v25

    add-int/2addr v14, v4

    invoke-static {v14, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v4, v15

    xor-int v14, v14, v25

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v15, v14

    const/16 v14, 0x10

    invoke-static {v15, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v4, v4, v17

    xor-int v14, v15, v25

    const/4 v15, 0x5

    aget v17, v24, v15

    invoke-static {v12, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int v15, v15, v21

    invoke-static {v15, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v12, v12, v21

    xor-int v15, v15, v17

    const/16 v6, 0x11

    invoke-static {v12, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v15, v21, v15

    invoke-static {v15, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    xor-int/2addr v6, v12

    xor-int v12, v15, v17

    add-int/2addr v12, v6

    invoke-static {v12, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    xor-int/2addr v0, v6

    xor-int v6, v12, v17

    const/16 v12, 0x18

    invoke-static {v0, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v12

    add-int/2addr v12, v6

    const/16 v6, 0x10

    invoke-static {v12, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    xor-int/2addr v0, v6

    xor-int v6, v12, v17

    xor-int v12, v1, v5

    xor-int/2addr v12, v9

    invoke-static {v12}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v12

    xor-int v15, v3, v2

    xor-int/2addr v15, v7

    invoke-static {v15}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v15

    xor-int/2addr v13, v1

    xor-int/2addr v11, v3

    xor-int/2addr v14, v5

    xor-int/2addr v4, v2

    xor-int/2addr v6, v9

    xor-int/2addr v0, v7

    xor-int/2addr v14, v15

    xor-int/2addr v4, v12

    xor-int/2addr v6, v15

    xor-int/2addr v0, v12

    xor-int/2addr v13, v15

    xor-int/2addr v11, v12

    add-int/lit8 v8, v8, 0x1

    move v15, v3

    move v3, v4

    move/from16 v17, v5

    move v5, v6

    move v12, v7

    move/from16 v21, v9

    move v9, v13

    const/4 v4, 0x2

    const/4 v6, 0x3

    move v7, v0

    move v13, v1

    move v1, v14

    const/4 v0, 0x0

    move v14, v2

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_0
    aput v1, p0, v0

    const/4 v0, 0x1

    aput v3, p0, v0

    const/4 v0, 0x2

    aput v5, p0, v0

    const/4 v0, 0x3

    aput v7, p0, v0

    const/4 v0, 0x4

    aput v9, p0, v0

    const/4 v0, 0x5

    aput v11, p0, v0

    const/4 v0, 0x6

    aput v13, p0, v0

    const/4 v0, 0x7

    aput v15, p0, v0

    aput v17, p0, v16

    aput v14, p0, v18

    aput v21, p0, v20

    aput v12, p0, v22

    return-void
.end method

.method public static sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16([II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by SparkleDigest"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sparkle_opt16([II)V
    .locals 41

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v17, p0, v16

    const/16 v18, 0x9

    aget v19, p0, v18

    const/16 v20, 0xa

    aget v21, p0, v20

    const/16 v22, 0xb

    aget v23, p0, v22

    const/16 v24, 0xc

    aget v25, p0, v24

    const/16 v26, 0xd

    aget v27, p0, v26

    const/16 v28, 0xe

    aget v29, p0, v28

    const/16 v30, 0xf

    aget v31, p0, v30

    move/from16 v10, p1

    move/from16 v14, v19

    move/from16 v12, v23

    move/from16 v32, v27

    move/from16 v33, v31

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_0

    sget-object v34, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v35, v8, 0x7

    aget v35, v34, v35

    xor-int v3, v3, v35

    xor-int/2addr v7, v8

    aget v35, v34, v0

    const/16 v0, 0x1f

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v36

    add-int v1, v36, v1

    const/16 v6, 0x18

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v37

    xor-int v3, v3, v37

    xor-int v1, v1, v35

    const/16 v4, 0x11

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v1, v38, v1

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    xor-int v3, v3, v38

    xor-int v1, v1, v35

    add-int/2addr v1, v3

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    xor-int v3, v3, v38

    xor-int v1, v1, v35

    invoke-static {v3, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v1, v38, v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    xor-int v3, v3, v39

    xor-int v1, v1, v35

    aget v35, v34, v2

    invoke-static {v7, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    add-int v5, v39, v5

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    xor-int v7, v7, v39

    xor-int v5, v5, v35

    const/16 v2, 0x11

    invoke-static {v7, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v5, v38, v5

    invoke-static {v5, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v2, v7, v40

    xor-int v5, v5, v35

    add-int/2addr v5, v2

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    xor-int/2addr v2, v7

    xor-int v5, v5, v35

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v5

    xor-int/2addr v2, v5

    xor-int v5, v7, v35

    const/4 v7, 0x2

    aget v35, v34, v7

    invoke-static {v11, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    add-int/2addr v7, v9

    invoke-static {v7, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    xor-int/2addr v9, v11

    xor-int v7, v7, v35

    const/16 v11, 0x11

    invoke-static {v9, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v7, v38, v7

    invoke-static {v7, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v9, v9, v40

    xor-int v7, v7, v35

    add-int/2addr v7, v9

    invoke-static {v7, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    xor-int/2addr v9, v11

    xor-int v7, v7, v35

    invoke-static {v9, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v11, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    xor-int/2addr v7, v9

    xor-int v9, v11, v35

    const/4 v11, 0x3

    aget v35, v34, v11

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    add-int/2addr v11, v13

    invoke-static {v11, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v13

    xor-int/2addr v13, v15

    xor-int v11, v11, v35

    const/16 v15, 0x11

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v11, v38, v11

    invoke-static {v11, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v13, v13, v40

    xor-int v11, v11, v35

    add-int/2addr v11, v13

    invoke-static {v11, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v13, v15

    xor-int v11, v11, v35

    invoke-static {v13, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v15, v11

    invoke-static {v15, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    xor-int/2addr v11, v13

    xor-int v13, v15, v35

    const/4 v15, 0x4

    aget v35, v34, v15

    invoke-static {v14, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int v15, v15, v17

    invoke-static {v15, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v14, v14, v17

    xor-int v15, v15, v35

    const/16 v4, 0x11

    invoke-static {v14, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v15, v17, v15

    invoke-static {v15, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v4, v14, v17

    xor-int v14, v15, v35

    add-int/2addr v14, v4

    invoke-static {v14, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v4, v15

    xor-int v14, v14, v35

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v15, v14

    const/16 v14, 0x10

    invoke-static {v15, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v4, v4, v17

    xor-int v14, v15, v35

    const/4 v15, 0x5

    aget v17, v34, v15

    invoke-static {v12, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int v15, v15, v21

    invoke-static {v15, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v12, v12, v21

    xor-int v15, v15, v17

    const/16 v6, 0x11

    invoke-static {v12, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v15, v21, v15

    invoke-static {v15, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v6, v12, v21

    xor-int v12, v15, v17

    add-int/2addr v12, v6

    invoke-static {v12, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v6, v15

    xor-int v12, v12, v17

    const/16 v15, 0x18

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v12, v21, v12

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v6, v6, v21

    xor-int v12, v12, v17

    const/4 v15, 0x6

    aget v17, v34, v15

    move/from16 v15, v32

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v0, v21, v25

    const/16 v10, 0x18

    invoke-static {v0, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v10, v15, v21

    xor-int v0, v0, v17

    const/16 v15, 0x11

    invoke-static {v10, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v0, v21, v0

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v10, v10, v21

    xor-int v0, v0, v17

    add-int/2addr v0, v10

    const/16 v15, 0x1f

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v10, v10, v21

    xor-int v0, v0, v17

    const/16 v15, 0x18

    invoke-static {v10, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v0, v21, v0

    const/16 v15, 0x10

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v10, v10, v21

    xor-int v0, v0, v17

    const/4 v15, 0x7

    aget v17, v34, v15

    move/from16 v32, v8

    move/from16 v15, v33

    const/16 v8, 0x1f

    invoke-static {v15, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v8, v21, v29

    move/from16 v21, v10

    const/16 v10, 0x18

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    xor-int v10, v15, v29

    xor-int v8, v8, v17

    const/16 v15, 0x11

    invoke-static {v10, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    add-int v8, v29, v8

    invoke-static {v8, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v10, v15

    xor-int v8, v8, v17

    add-int/2addr v8, v10

    const/16 v15, 0x1f

    invoke-static {v8, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v10, v15

    xor-int v8, v8, v17

    const/16 v15, 0x18

    invoke-static {v10, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v15, v8

    const/16 v8, 0x10

    invoke-static {v15, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v8

    xor-int/2addr v8, v10

    xor-int v10, v15, v17

    xor-int v15, v1, v5

    xor-int/2addr v15, v9

    xor-int/2addr v15, v13

    invoke-static {v15}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v15

    xor-int v17, v3, v2

    xor-int v17, v17, v7

    xor-int v17, v17, v11

    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v17

    xor-int/2addr v14, v1

    xor-int/2addr v4, v3

    xor-int/2addr v12, v5

    xor-int/2addr v6, v2

    xor-int/2addr v0, v9

    xor-int v21, v7, v21

    xor-int/2addr v10, v13

    xor-int/2addr v8, v11

    xor-int v12, v12, v17

    xor-int/2addr v6, v15

    xor-int v0, v0, v17

    xor-int v21, v21, v15

    xor-int v10, v10, v17

    xor-int/2addr v8, v15

    xor-int v14, v14, v17

    xor-int/2addr v15, v4

    add-int/lit8 v4, v32, 0x1

    move/from16 v17, v1

    move/from16 v32, v7

    move/from16 v25, v9

    move v9, v10

    move/from16 v33, v11

    move v1, v12

    move/from16 v29, v13

    move v13, v14

    move/from16 v7, v21

    move/from16 v10, p1

    move v12, v2

    move v14, v3

    move/from16 v21, v5

    move v3, v6

    move v11, v8

    const/4 v2, 0x1

    const/4 v6, 0x3

    move v5, v0

    move v8, v4

    const/4 v0, 0x0

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_0
    move/from16 v0, v32

    move/from16 v2, v33

    const/4 v4, 0x0

    aput v1, p0, v4

    const/4 v1, 0x1

    aput v3, p0, v1

    const/4 v1, 0x2

    aput v5, p0, v1

    const/4 v1, 0x3

    aput v7, p0, v1

    const/4 v1, 0x4

    aput v9, p0, v1

    const/4 v1, 0x5

    aput v11, p0, v1

    const/4 v1, 0x6

    aput v13, p0, v1

    const/4 v1, 0x7

    aput v15, p0, v1

    aput v17, p0, v16

    aput v14, p0, v18

    aput v21, p0, v20

    aput v12, p0, v22

    aput v25, p0, v24

    aput v0, p0, v26

    aput v29, p0, v28

    aput v2, p0, v30

    return-void
.end method

.method public static sparkle_opt8([II)V
    .locals 22

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    move/from16 v14, p1

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_0

    sget-object v16, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v17, v12, 0x7

    aget v17, v16, v17

    xor-int v3, v3, v17

    xor-int/2addr v7, v12

    aget v17, v16, v0

    const/16 v10, 0x1f

    invoke-static {v3, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v18

    add-int v1, v18, v1

    const/16 v8, 0x18

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v19

    xor-int v3, v3, v19

    xor-int v1, v1, v17

    const/16 v0, 0x11

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v1, v20, v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v3, v3, v20

    xor-int v1, v1, v17

    add-int/2addr v1, v3

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v3, v3, v20

    xor-int v1, v1, v17

    invoke-static {v3, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v1, v20, v1

    const/16 v6, 0x10

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v3, v3, v21

    xor-int v1, v1, v17

    aget v17, v16, v2

    invoke-static {v7, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v5, v21, v5

    invoke-static {v5, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v7, v7, v21

    xor-int v5, v5, v17

    invoke-static {v7, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v5, v21, v5

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v7, v7, v21

    xor-int v5, v5, v17

    add-int/2addr v5, v7

    invoke-static {v5, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v7, v7, v21

    xor-int v5, v5, v17

    invoke-static {v7, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v5, v21, v5

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v7, v7, v21

    xor-int v5, v5, v17

    aget v17, v16, v4

    invoke-static {v11, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v9, v21, v9

    invoke-static {v9, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v11, v11, v21

    xor-int v9, v9, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v9, v21, v9

    invoke-static {v9, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v11, v11, v21

    xor-int v9, v9, v17

    add-int/2addr v9, v11

    invoke-static {v9, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v11, v11, v21

    xor-int v9, v9, v17

    invoke-static {v11, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v9, v21, v9

    invoke-static {v9, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v11, v11, v21

    xor-int v9, v9, v17

    const/16 v17, 0x3

    aget v16, v16, v17

    invoke-static {v15, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v13, v17, v13

    invoke-static {v13, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v15, v15, v17

    xor-int v13, v13, v16

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v13, v17, v13

    invoke-static {v13, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    xor-int/2addr v0, v15

    xor-int v13, v13, v16

    add-int/2addr v13, v0

    invoke-static {v13, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v0, v10

    xor-int v10, v13, v16

    invoke-static {v0, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v8

    add-int/2addr v8, v10

    invoke-static {v8, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    xor-int/2addr v0, v6

    xor-int v6, v8, v16

    xor-int v8, v1, v5

    invoke-static {v8}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v8

    xor-int v10, v3, v7

    invoke-static {v10}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v10

    xor-int/2addr v9, v1

    xor-int/2addr v11, v3

    xor-int/2addr v6, v5

    xor-int/2addr v0, v7

    xor-int/2addr v6, v10

    xor-int/2addr v0, v8

    xor-int/2addr v9, v10

    xor-int/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    move v11, v3

    move v13, v5

    move v15, v7

    move v7, v8

    move v5, v9

    const/4 v8, 0x4

    const/4 v10, 0x5

    move v3, v0

    move v9, v1

    move v1, v6

    const/4 v0, 0x0

    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_0
    aput v1, p0, v0

    aput v3, p0, v2

    aput v5, p0, v4

    const/4 v0, 0x3

    aput v7, p0, v0

    const/4 v0, 0x4

    aput v9, p0, v0

    const/4 v0, 0x5

    aput v11, p0, v0

    const/4 v0, 0x6

    aput v13, p0, v0

    const/4 v0, 0x7

    aput v15, p0, v0

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkData()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 6
    .line 7
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-lt v1, v2, :cond_e

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 17
    .line 18
    :goto_0
    array-length v2, p1

    .line 19
    sub-int/2addr v2, v1

    .line 20
    if-gt p2, v2, :cond_d

    .line 21
    .line 22
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 28
    .line 29
    if-lez v2, :cond_9

    .line 30
    .line 31
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    .line 32
    .line 33
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    .line 34
    .line 35
    add-int/lit8 v4, v4, -0x1

    .line 36
    .line 37
    aget v5, v2, v4

    .line 38
    .line 39
    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 40
    .line 41
    iget v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    .line 42
    .line 43
    if-ge v6, v7, :cond_2

    .line 44
    .line 45
    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M2:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M3:I

    .line 49
    .line 50
    :goto_1
    xor-int/2addr v5, v6

    .line 51
    aput v5, v2, v4

    .line 52
    .line 53
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    .line 54
    .line 55
    new-array v2, v2, [I

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    :goto_2
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 59
    .line 60
    if-ge v4, v5, :cond_3

    .line 61
    .line 62
    ushr-int/lit8 v5, v4, 0x2

    .line 63
    .line 64
    aget v6, v2, v5

    .line 65
    .line 66
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    .line 67
    .line 68
    aget-byte v7, v7, v4

    .line 69
    .line 70
    and-int/lit16 v7, v7, 0xff

    .line 71
    .line 72
    and-int/lit8 v8, v4, 0x3

    .line 73
    .line 74
    shl-int/lit8 v8, v8, 0x3

    .line 75
    .line 76
    shl-int/2addr v7, v8

    .line 77
    or-int/2addr v6, v7

    .line 78
    aput v6, v2, v5

    .line 79
    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    .line 84
    .line 85
    if-ge v5, v4, :cond_5

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    and-int/lit8 v4, v5, 0x3

    .line 90
    .line 91
    shl-int/lit8 v4, v4, 0x3

    .line 92
    .line 93
    ushr-int/lit8 v6, v5, 0x2

    .line 94
    .line 95
    aget v7, v2, v6

    .line 96
    .line 97
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    .line 98
    .line 99
    ushr-int/lit8 v9, v5, 0x2

    .line 100
    .line 101
    aget v9, v8, v9

    .line 102
    .line 103
    ushr-int/2addr v9, v4

    .line 104
    shl-int v4, v9, v4

    .line 105
    .line 106
    or-int/2addr v4, v7

    .line 107
    aput v4, v2, v6

    .line 108
    .line 109
    ushr-int/lit8 v4, v5, 0x2

    .line 110
    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    .line 114
    .line 115
    sub-int/2addr v5, v4

    .line 116
    invoke-static {v8, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 120
    .line 121
    ushr-int/lit8 v5, v4, 0x2

    .line 122
    .line 123
    aget v6, v2, v5

    .line 124
    .line 125
    and-int/lit8 v4, v4, 0x3

    .line 126
    .line 127
    shl-int/lit8 v4, v4, 0x3

    .line 128
    .line 129
    const/16 v7, 0x80

    .line 130
    .line 131
    shl-int v4, v7, v4

    .line 132
    .line 133
    xor-int/2addr v4, v6

    .line 134
    aput v4, v2, v5

    .line 135
    .line 136
    :cond_5
    const/4 v4, 0x0

    .line 137
    :goto_3
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    .line 138
    .line 139
    div-int/lit8 v6, v5, 0x2

    .line 140
    .line 141
    if-ge v4, v6, :cond_7

    .line 142
    .line 143
    div-int/lit8 v6, v5, 0x2

    .line 144
    .line 145
    add-int/2addr v6, v4

    .line 146
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    .line 147
    .line 148
    aget v8, v7, v4

    .line 149
    .line 150
    aget v9, v7, v6

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    aget v10, v2, v4

    .line 155
    .line 156
    xor-int/2addr v10, v9

    .line 157
    add-int v11, v5, v4

    .line 158
    .line 159
    aget v11, v7, v11

    .line 160
    .line 161
    xor-int/2addr v10, v11

    .line 162
    aput v10, v7, v4

    .line 163
    .line 164
    xor-int v10, v8, v9

    .line 165
    .line 166
    aget v11, v2, v6

    .line 167
    .line 168
    xor-int/2addr v10, v11

    .line 169
    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    .line 170
    .line 171
    and-int/2addr v11, v6

    .line 172
    add-int/2addr v5, v11

    .line 173
    aget v5, v7, v5

    .line 174
    .line 175
    xor-int/2addr v5, v10

    .line 176
    aput v5, v7, v6

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_6
    xor-int v10, v8, v9

    .line 180
    .line 181
    aget v11, v2, v4

    .line 182
    .line 183
    xor-int/2addr v10, v11

    .line 184
    add-int v11, v5, v4

    .line 185
    .line 186
    aget v11, v7, v11

    .line 187
    .line 188
    xor-int/2addr v10, v11

    .line 189
    aput v10, v7, v4

    .line 190
    .line 191
    aget v10, v2, v6

    .line 192
    .line 193
    xor-int/2addr v10, v8

    .line 194
    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    .line 195
    .line 196
    and-int/2addr v11, v6

    .line 197
    add-int/2addr v5, v11

    .line 198
    aget v5, v7, v5

    .line 199
    .line 200
    xor-int/2addr v5, v10

    .line 201
    aput v5, v7, v6

    .line 202
    .line 203
    :goto_4
    aget v5, v2, v4

    .line 204
    .line 205
    xor-int/2addr v5, v8

    .line 206
    aput v5, v2, v4

    .line 207
    .line 208
    aget v5, v2, v6

    .line 209
    .line 210
    xor-int/2addr v5, v9

    .line 211
    aput v5, v2, v6

    .line 212
    .line 213
    add-int/lit8 v4, v4, 0x1

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_7
    const/4 v4, 0x0

    .line 217
    :goto_5
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 218
    .line 219
    if-ge v4, v5, :cond_8

    .line 220
    .line 221
    add-int/lit8 v5, p2, 0x1

    .line 222
    .line 223
    ushr-int/lit8 v6, v4, 0x2

    .line 224
    .line 225
    aget v6, v2, v6

    .line 226
    .line 227
    and-int/lit8 v7, v4, 0x3

    .line 228
    .line 229
    shl-int/lit8 v7, v7, 0x3

    .line 230
    .line 231
    ushr-int/2addr v6, v7

    .line 232
    int-to-byte v6, v6

    .line 233
    aput-byte v6, p1, p2

    .line 234
    .line 235
    add-int/lit8 v4, v4, 0x1

    .line 236
    .line 237
    move p2, v5

    .line 238
    goto :goto_5

    .line 239
    :cond_8
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    .line 240
    .line 241
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    .line 242
    .line 243
    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    .line 244
    .line 245
    .line 246
    :cond_9
    const/4 v2, 0x0

    .line 247
    :goto_6
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    .line 248
    .line 249
    if-ge v2, v4, :cond_a

    .line 250
    .line 251
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    .line 252
    .line 253
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    .line 254
    .line 255
    add-int/2addr v5, v2

    .line 256
    aget v6, v4, v5

    .line 257
    .line 258
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    .line 259
    .line 260
    aget v7, v7, v2

    .line 261
    .line 262
    xor-int/2addr v6, v7

    .line 263
    aput v6, v4, v5

    .line 264
    .line 265
    add-int/lit8 v2, v2, 0x1

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_a
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    .line 269
    .line 270
    new-array v2, v2, [B

    .line 271
    .line 272
    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    .line 273
    .line 274
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    .line 275
    .line 276
    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    .line 277
    .line 278
    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_WORDS:I

    .line 279
    .line 280
    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 281
    .line 282
    .line 283
    if-eqz v0, :cond_b

    .line 284
    .line 285
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    .line 286
    .line 287
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    .line 288
    .line 289
    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_b
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    .line 294
    .line 295
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    .line 296
    .line 297
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    .line 298
    .line 299
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    .line 300
    .line 301
    invoke-static {p1, p2, v3, v2, v4}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[BI[BI)Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-eqz p1, :cond_c

    .line 306
    .line 307
    :goto_7
    xor-int/lit8 p1, v0, 0x1

    .line 308
    .line 309
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->reset(Z)V

    .line 310
    .line 311
    .line 312
    return v1

    .line 313
    :cond_c
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 314
    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    .line 321
    .line 322
    const-string v1, " mac does not match"

    .line 323
    .line 324
    invoke-static {p2, v0, v1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw p1

    .line 332
    :cond_d
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    .line 333
    .line 334
    const-string p2, "output buffer too short"

    .line 335
    .line 336
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p1

    .line 340
    :cond_e
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 341
    .line 342
    const-string p2, "data too short"

    .line 343
    .line 344
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getIVBytesSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_BYTES:I

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v1, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr p1, v0

    return p1

    :pswitch_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr p1, v0

    return p1

    :pswitch_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr p1, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :pswitch_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getUpdateOutputSize(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sget-object v1, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr p1, v1

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr p1, v1

    :pswitch_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr p1, v1

    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    .line 27
    .line 28
    mul-int/lit8 v3, v3, 0x8

    .line 29
    .line 30
    if-ne v0, v3, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "Invalid value for MAC size: "

    .line 36
    .line 37
    invoke-static {p2, v0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 46
    .line 47
    if-eqz v0, :cond_7

    .line 48
    .line 49
    move-object v0, p2

    .line 50
    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    instance-of v2, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v1, v3

    .line 65
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    .line 70
    .line 71
    :goto_1
    if-eqz v1, :cond_6

    .line 72
    .line 73
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    .line 74
    .line 75
    mul-int/lit8 v0, v0, 0x4

    .line 76
    .line 77
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    const-string v4, " requires exactly "

    .line 82
    .line 83
    if-ne v0, v3, :cond_5

    .line 84
    .line 85
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    .line 86
    .line 87
    mul-int/lit8 v0, v0, 0x4

    .line 88
    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    array-length v3, v2

    .line 92
    if-ne v0, v3, :cond_4

    .line 93
    .line 94
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    .line 105
    .line 106
    invoke-static {v2, v3, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 110
    .line 111
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/16 v2, 0x80

    .line 116
    .line 117
    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-direct {v0, v1, v2, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 125
    .line 126
    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    sget-object p1, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    sget-object p1, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 133
    .line 134
    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    .line 135
    .line 136
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->reset()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v0, " bytes of IV"

    .line 159
    .line 160
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, " bytes of key"

    .line 190
    .line 191
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 203
    .line 204
    const-string p2, "Sparkle init parameters must include a key"

    .line 205
    .line 206
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 211
    .line 212
    const-string p2, "invalid parameters passed to Sparkle"

    .line 213
    .line 214
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p1
.end method

.method public processAADByte(B)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkAAD()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferAAD([BI)V

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkAAD()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v2, v0

    if-gt p3, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    return-void

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferAAD([BI)V

    :cond_2
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-le p3, v0, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferAAD([BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    return-void

    :cond_4
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

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_7

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-lez v0, :cond_1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v2, v0

    if-gt p3, v2, :cond_0

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    return v1

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v0, v1, p4, p5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferEncrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-le p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferEncrypt([BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    if-gt p3, v0, :cond_3

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-le v2, v3, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v2, v1, p4, p5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferDecrypt([BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {v4, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v0, v2

    if-gt p3, v0, :cond_5

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget p5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    return v2

    :cond_4
    const/4 v2, 0x0

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int/2addr v0, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    add-int v3, p5, v2

    invoke-direct {p0, v0, v1, p4, v3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferDecrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v2, v0

    move v0, v2

    :goto_2
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    if-le p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferDecrypt([BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_6
    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    return v0

    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->reset(Z)V

    return-void
.end method
