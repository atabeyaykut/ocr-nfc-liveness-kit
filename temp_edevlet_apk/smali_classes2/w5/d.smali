.class public final Lw5/d;
.super Lw5/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw5/d$a;,
        Lw5/d$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:[B


# direct methods
.method public constructor <init>(IILjava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lw5/r;-><init>()V

    array-length v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    array-length v0, p4

    if-lt v0, p1, :cond_1

    invoke-static {p1}, Lw5/a0;->a(I)V

    invoke-virtual {p0}, Lw5/d;->e()I

    move-result v0

    const/4 v2, 0x0

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    if-le p2, v0, :cond_0

    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p4

    iput-object p4, p0, Lw5/d;->f:[B

    iput-object p3, p0, Lw5/d;->e:Ljava/lang/String;

    iput p1, p0, Lw5/d;->a:I

    iput p2, p0, Lw5/d;->b:I

    iput v2, p0, Lw5/d;->d:I

    sub-int/2addr p2, v1

    iput p2, p0, Lw5/d;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "ciphertextSegmentSize too small"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ikm too short, must be >= "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static i([BJZ)Ljavax/crypto/spec/GCMParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    cmp-long p0, v1, p1

    .line 18
    .line 19
    if-gtz p0, :cond_0

    .line 20
    .line 21
    const-wide v1, 0x100000000L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long p0, p1, v1

    .line 27
    .line 28
    if-gez p0, :cond_0

    .line 29
    .line 30
    long-to-int p0, p1

    .line 31
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    int-to-byte p0, p3

    .line 35
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    new-instance p0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 39
    .line 40
    const/16 p1, 0x80

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 51
    .line 52
    const-string p1, "Index out of range"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method


# virtual methods
.method public final c()I
    .locals 2

    invoke-virtual {p0}, Lw5/d;->e()I

    move-result v0

    iget v1, p0, Lw5/d;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lw5/d;->b:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lw5/d;->a:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lw5/d;->c:I

    return v0
.end method

.method public final g()Lw5/w;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lw5/d$a;

    invoke-direct {v0, p0}, Lw5/d$a;-><init>(Lw5/d;)V

    return-object v0
.end method

.method public final h([B)Lw5/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lw5/d$b;

    invoke-direct {v0, p0, p1}, Lw5/d$b;-><init>(Lw5/d;[B)V

    return-object v0
.end method
