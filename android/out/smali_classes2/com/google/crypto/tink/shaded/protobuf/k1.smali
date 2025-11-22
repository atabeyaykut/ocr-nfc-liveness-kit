.class public final Lcom/google/crypto/tink/shaded/protobuf/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/crypto/tink/shaded/protobuf/k1;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/k1;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/k1;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/k1;->f:Lcom/google/crypto/tink/shaded/protobuf/k1;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/k1;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->d:I

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->b:[I

    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 10
    .line 11
    if-ge v0, v2, :cond_6

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->b:[I

    .line 14
    .line 15
    aget v2, v2, v0

    .line 16
    .line 17
    ushr-int/lit8 v3, v2, 0x3

    .line 18
    .line 19
    and-int/lit8 v2, v2, 0x7

    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v2, v4, :cond_4

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v2, v4, :cond_3

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    if-eq v2, v5, :cond_2

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    if-ne v2, v4, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 36
    .line 37
    aget-object v2, v2, v0

    .line 38
    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->f(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    sget v1, Lcom/google/crypto/tink/shaded/protobuf/a0;->a:I

    .line 52
    .line 53
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/a0$a;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/google/crypto/tink/shaded/protobuf/a0$a;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->t(I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    mul-int/lit8 v2, v2, 0x2

    .line 67
    .line 68
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 69
    .line 70
    aget-object v3, v3, v0

    .line 71
    .line 72
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/k1;->a()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    add-int/2addr v3, v2

    .line 79
    add-int/2addr v3, v1

    .line 80
    move v1, v3

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 83
    .line 84
    aget-object v2, v2, v0

    .line 85
    .line 86
    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 87
    .line 88
    invoke-static {v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(ILcom/google/crypto/tink/shaded/protobuf/i;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 94
    .line 95
    aget-object v2, v2, v0

    .line 96
    .line 97
    check-cast v2, Ljava/lang/Long;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->g(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 108
    .line 109
    aget-object v2, v2, v0

    .line 110
    .line 111
    check-cast v2, Ljava/lang/Long;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    invoke-static {v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/l;->w(IJ)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    :goto_1
    add-int/2addr v2, v1

    .line 122
    move v1, v2

    .line 123
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->d:I

    .line 127
    .line 128
    return v1
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->b:[I

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    shr-int/lit8 v2, v0, 0x1

    .line 19
    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->b:[I

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->b:[I

    .line 36
    .line 37
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 38
    .line 39
    aput p1, v0, v1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p2, p1, v1

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final c(Lcom/google/crypto/tink/shaded/protobuf/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_6

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->b:[I

    .line 15
    .line 16
    aget v1, v1, v0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v2, v2, v0

    .line 21
    .line 22
    ushr-int/lit8 v3, v1, 0x3

    .line 23
    .line 24
    and-int/lit8 v1, v1, 0x7

    .line 25
    .line 26
    if-eqz v1, :cond_5

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eq v1, v4, :cond_4

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-eq v1, v4, :cond_3

    .line 33
    .line 34
    const/4 v4, 0x3

    .line 35
    if-eq v1, v4, :cond_2

    .line 36
    .line 37
    const/4 v4, 0x5

    .line 38
    if-ne v1, v4, :cond_1

    .line 39
    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p1, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/m;->e(II)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    sget v0, Lcom/google/crypto/tink/shaded/protobuf/a0;->a:I

    .line 53
    .line 54
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/a0$a;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/a0$a;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/m;->a:Lcom/google/crypto/tink/shaded/protobuf/l;

    .line 64
    .line 65
    invoke-virtual {v1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->L(II)V

    .line 66
    .line 67
    .line 68
    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 69
    .line 70
    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/k1;->c(Lcom/google/crypto/tink/shaded/protobuf/m;)V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x4

    .line 74
    invoke-virtual {v1, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/l;->L(II)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 79
    .line 80
    invoke-virtual {p1, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/m;->b(ILcom/google/crypto/tink/shaded/protobuf/i;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    check-cast v2, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/m;->f(IJ)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    check-cast v2, Ljava/lang/Long;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/m;->j(IJ)V

    .line 101
    .line 102
    .line 103
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 17
    .line 18
    iget v3, p1, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_8

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->b:[I

    .line 23
    .line 24
    iget-object v4, p1, Lcom/google/crypto/tink/shaded/protobuf/k1;->b:[I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    if-ge v5, v2, :cond_4

    .line 28
    .line 29
    aget v6, v3, v5

    .line 30
    .line 31
    aget v7, v4, v5

    .line 32
    .line 33
    if-eq v6, v7, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    const/4 v2, 0x1

    .line 41
    :goto_1
    if-eqz v2, :cond_8

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 46
    .line 47
    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    :goto_2
    if-ge v4, v3, :cond_6

    .line 51
    .line 52
    aget-object v5, v2, v4

    .line 53
    .line 54
    aget-object v6, p1, v4

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_5

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    goto :goto_3

    .line 64
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_6
    const/4 p1, 0x1

    .line 68
    :goto_3
    if-nez p1, :cond_7

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_7
    return v0

    .line 72
    :cond_8
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x20f

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    mul-int/lit8 v1, v1, 0x1f

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->b:[I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/16 v4, 0x11

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/16 v6, 0x11

    .line 15
    .line 16
    :goto_0
    if-ge v5, v0, :cond_0

    .line 17
    .line 18
    mul-int/lit8 v6, v6, 0x1f

    .line 19
    .line 20
    aget v7, v2, v5

    .line 21
    .line 22
    add-int/2addr v6, v7

    .line 23
    add-int/lit8 v5, v5, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    add-int/2addr v1, v6

    .line 27
    mul-int/lit8 v1, v1, 0x1f

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->c:[Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k1;->a:I

    .line 32
    .line 33
    :goto_1
    if-ge v3, v2, :cond_1

    .line 34
    .line 35
    mul-int/lit8 v4, v4, 0x1f

    .line 36
    .line 37
    aget-object v5, v0, v3

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    add-int/2addr v4, v5

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    add-int/2addr v1, v4

    .line 48
    return v1
.end method
