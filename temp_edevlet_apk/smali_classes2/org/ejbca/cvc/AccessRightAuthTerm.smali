.class public Lorg/ejbca/cvc/AccessRightAuthTerm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ejbca/cvc/AccessRights;
.implements Ljava/io/Serializable;


# static fields
.field public static final BIT_AGE_VERIFICATION:I = 0x0

.field public static final BIT_CAN_ALLOWED:I = 0x4

.field public static final BIT_COMMUNITY_ID_VERIFICATION:I = 0x1

.field public static final BIT_INSTALL_CERT:I = 0x6

.field public static final BIT_INSTALL_QUALIFIED_CERT:I = 0x7

.field public static final BIT_PIN_MANAGEMENT:I = 0x5

.field public static final BIT_PRIVILEGED_TERMINAL:I = 0x3

.field public static final BIT_READ_DG1:I = 0x8

.field public static final BIT_READ_DG10:I = 0x11

.field public static final BIT_READ_DG11:I = 0x12

.field public static final BIT_READ_DG12:I = 0x13

.field public static final BIT_READ_DG13:I = 0x14

.field public static final BIT_READ_DG14:I = 0x15

.field public static final BIT_READ_DG15:I = 0x16

.field public static final BIT_READ_DG16:I = 0x17

.field public static final BIT_READ_DG17:I = 0x18

.field public static final BIT_READ_DG18:I = 0x19

.field public static final BIT_READ_DG19:I = 0x1a

.field public static final BIT_READ_DG2:I = 0x9

.field public static final BIT_READ_DG20:I = 0x1b

.field public static final BIT_READ_DG21:I = 0x1c

.field public static final BIT_READ_DG3:I = 0xa

.field public static final BIT_READ_DG4:I = 0xb

.field public static final BIT_READ_DG5:I = 0xc

.field public static final BIT_READ_DG6:I = 0xd

.field public static final BIT_READ_DG7:I = 0xe

.field public static final BIT_READ_DG8:I = 0xf

.field public static final BIT_READ_DG9:I = 0x10

.field public static final BIT_RESTRICTED_IDENTIFICATION:I = 0x2

.field public static final BIT_WRITE_DG17:I = 0x25

.field public static final BIT_WRITE_DG18:I = 0x24

.field public static final BIT_WRITE_DG19:I = 0x23

.field public static final BIT_WRITE_DG20:I = 0x22

.field public static final BIT_WRITE_DG21:I = 0x21

.field private static final MAX_BIT:I = 0x25

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/ejbca/cvc/AccessRightAuthTerm;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/ejbca/cvc/AccessRightAuthTerm;->bytes:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, -0xc1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byte array length must be 5, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static flagToString(I)Ljava/lang/String;
    .locals 3

    .line 1
    if-ltz p0, :cond_3

    .line 2
    .line 3
    const/16 v0, 0x25

    .line 4
    .line 5
    if-gt p0, v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x21

    .line 8
    .line 9
    if-lt p0, v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "W-DG"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    rsub-int/lit8 p0, p0, 0x36

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    const/16 v0, 0x1c

    .line 29
    .line 30
    if-le p0, v0, :cond_1

    .line 31
    .line 32
    const-string v0, "RFU-"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    const/16 v0, 0x8

    .line 40
    .line 41
    if-lt p0, v0, :cond_2

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "R-DG"

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sub-int/2addr p0, v0

    .line 51
    add-int/lit8 p0, p0, 0x1

    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :pswitch_0
    const-string p0, "Install Qualified Certificate"

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_1
    const-string p0, "Install Certificate"

    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_2
    const-string p0, "PIN Management"

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_3
    const-string p0, "CAN Allowed"

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_4
    const-string p0, "Privileged Terminal"

    .line 83
    .line 84
    return-object p0

    .line 85
    :pswitch_5
    const-string p0, "Restricted Identification"

    .line 86
    .line 87
    return-object p0

    .line 88
    :pswitch_6
    const-string p0, "Community ID Verification"

    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_7
    const-string p0, "Age Verification"

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
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
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/ejbca/cvc/AccessRightAuthTerm;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getFlag(I)Z
    .locals 4

    if-ltz p1, :cond_1

    const/16 v0, 0x25

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/ejbca/cvc/AccessRightAuthTerm;->bytes:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    shr-int/lit8 v3, p1, 0x3

    sub-int/2addr v1, v3

    aget-byte v0, v0, v1

    and-int/lit8 p1, p1, 0x7

    shr-int p1, v0, p1

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACCESS_RIGHT_AT_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/ejbca/cvc/AccessRightAuthTerm;->bytes:[B

    invoke-static {v1}, Lorg/ejbca/cvc/util/StringConverter;->byteToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFlag(IZ)V
    .locals 4

    if-ltz p1, :cond_1

    const/16 v0, 0x25

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/ejbca/cvc/AccessRightAuthTerm;->bytes:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    shr-int/lit8 v3, p1, 0x3

    sub-int/2addr v1, v3

    and-int/lit8 p1, p1, 0x7

    shl-int p1, v2, p1

    aget-byte v2, v0, v1

    not-int v3, p1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x25

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/ejbca/cvc/AccessRightAuthTerm;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/ejbca/cvc/AccessRightAuthTerm;->flagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
