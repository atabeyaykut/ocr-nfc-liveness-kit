.class public Lmb/o;
.super Lmb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmb/o$a;
    }
.end annotation


# instance fields
.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lmb/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmb/o;->c:I

    iput-object p1, p0, Lmb/o;->b:[B

    return-void
.end method


# virtual methods
.method public final A(III)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmb/o;->I()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p2

    .line 6
    move p2, v0

    .line 7
    :goto_0
    add-int v1, v0, p3

    .line 8
    .line 9
    if-ge p2, v1, :cond_0

    .line 10
    .line 11
    mul-int/lit8 p1, p1, 0x1f

    .line 12
    .line 13
    iget-object v1, p0, Lmb/o;->b:[B

    .line 14
    .line 15
    aget-byte v1, v1, p2

    .line 16
    .line 17
    add-int/2addr p1, v1

    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return p1
.end method

.method public final C(III)I
    .locals 9

    const/4 v0, 0x0

    add-int/2addr p2, v0

    add-int/2addr p3, p2

    iget-object v1, p0, Lmb/o;->b:[B

    if-eqz p1, :cond_10

    if-lt p2, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-byte v2, p1

    const/4 v3, -0x1

    const/16 v4, -0x41

    const/16 v5, -0x20

    if-ge v2, v5, :cond_1

    const/16 p1, -0x3e

    if-lt v2, p1, :cond_f

    add-int/lit8 p1, p2, 0x1

    aget-byte p2, v1, p2

    if-le p2, v4, :cond_e

    goto/16 :goto_2

    :cond_1
    const/16 v6, -0x10

    const/16 v7, -0xc

    if-ge v2, v6, :cond_7

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_4

    add-int/lit8 p1, p2, 0x1

    aget-byte p2, v1, p2

    if-lt p1, p3, :cond_3

    if-gt v2, v7, :cond_f

    if-le p2, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    shl-int/lit8 p1, p2, 0x8

    :goto_0
    xor-int/2addr p1, v2

    goto/16 :goto_4

    :cond_3
    move v8, p2

    move p2, p1

    move p1, v8

    :cond_4
    if-gt p1, v4, :cond_f

    const/16 v0, -0x60

    if-ne v2, v5, :cond_5

    if-lt p1, v0, :cond_f

    :cond_5
    const/16 v5, -0x13

    if-ne v2, v5, :cond_6

    if-ge p1, v0, :cond_f

    :cond_6
    add-int/lit8 p1, p2, 0x1

    aget-byte p2, v1, p2

    if-le p2, v4, :cond_e

    goto :goto_2

    :cond_7
    shr-int/lit8 v5, p1, 0x8

    not-int v5, v5

    int-to-byte v5, v5

    if-nez v5, :cond_a

    add-int/lit8 p1, p2, 0x1

    aget-byte v5, v1, p2

    if-lt p1, p3, :cond_9

    if-gt v2, v7, :cond_f

    if-le v5, v4, :cond_8

    goto :goto_2

    :cond_8
    shl-int/lit8 p1, v5, 0x8

    goto :goto_0

    :cond_9
    move p2, p1

    goto :goto_1

    :cond_a
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v0, p1

    :goto_1
    if-nez v0, :cond_d

    add-int/lit8 p1, p2, 0x1

    aget-byte v0, v1, p2

    if-lt p1, p3, :cond_c

    if-gt v2, v7, :cond_f

    if-gt v5, v4, :cond_f

    if-le v0, v4, :cond_b

    goto :goto_2

    :cond_b
    shl-int/lit8 p1, v5, 0x8

    xor-int/2addr p1, v2

    shl-int/lit8 p2, v0, 0x10

    xor-int/2addr p1, p2

    goto :goto_4

    :cond_c
    move p2, p1

    :cond_d
    if-gt v5, v4, :cond_f

    shl-int/lit8 p1, v2, 0x1c

    add-int/lit8 v5, v5, 0x70

    add-int/2addr v5, p1

    shr-int/lit8 p1, v5, 0x1e

    if-nez p1, :cond_f

    if-gt v0, v4, :cond_f

    add-int/lit8 p1, p2, 0x1

    aget-byte p2, v1, p2

    if-le p2, v4, :cond_e

    goto :goto_2

    :cond_e
    move p2, p1

    goto :goto_3

    :cond_f
    :goto_2
    const/4 p1, -0x1

    goto :goto_4

    :cond_10
    :goto_3
    invoke-static {v1, p2, p3}, Lb8/f;->a0([BII)I

    move-result p1

    :goto_4
    return p1
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lmb/o;->c:I

    return v0
.end method

.method public final E()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lmb/o;->b:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "UTF-8"

    .line 8
    .line 9
    invoke-direct {v0, v1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final G(Ljava/io/OutputStream;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmb/o;->I()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lmb/o;->b:[B

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final H(Lmb/o;II)Z
    .locals 3

    invoke-virtual {p1}, Lmb/o;->size()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    invoke-virtual {p1}, Lmb/o;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lmb/o;->I()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lmb/o;->I()I

    move-result p3

    invoke-virtual {p1}, Lmb/o;->I()I

    move-result v1

    add-int/2addr v1, p2

    :goto_0
    if-ge p3, v0, :cond_1

    iget-object p2, p0, Lmb/o;->b:[B

    aget-byte p2, p2, p3

    iget-object v2, p1, Lmb/o;->b:[B

    aget-byte v2, v2, v1

    if-eq p2, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lmb/o;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lmb/o;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lmb/c;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lmb/o;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lmb/c;

    .line 17
    .line 18
    invoke-virtual {v3}, Lmb/c;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    invoke-virtual {p0}, Lmb/o;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    return v0

    .line 32
    :cond_3
    instance-of v0, p1, Lmb/o;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    check-cast p1, Lmb/o;

    .line 37
    .line 38
    invoke-virtual {p0}, Lmb/o;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0, p1, v2, v0}, Lmb/o;->H(Lmb/o;II)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_4
    instance-of v0, p1, Lmb/s;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    add-int/lit8 v2, v2, 0x31

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .line 76
    .line 77
    const-string v2, "Has a new type of ByteString been created? Found "

    .line 78
    .line 79
    invoke-static {v1, v2, p1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lmb/o;->c:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmb/o;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lmb/o;->A(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lmb/o;->c:I

    :cond_1
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmb/o;->y()Lmb/c$a;

    move-result-object v0

    return-object v0
.end method

.method public o(II[BI)V
    .locals 1

    iget-object v0, p0, Lmb/o;->b:[B

    invoke-static {v0, p1, p3, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lmb/o;->b:[B

    array-length v0, v0

    return v0
.end method

.method public final u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmb/o;->b:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    add-int/2addr v1, v2

    .line 6
    invoke-static {v0, v2, v1}, Lb8/f;->a0([BII)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    :cond_0
    return v2
.end method

.method public y()Lmb/c$a;
    .locals 1

    new-instance v0, Lmb/o$a;

    invoke-direct {v0, p0}, Lmb/o$a;-><init>(Lmb/o;)V

    return-object v0
.end method
