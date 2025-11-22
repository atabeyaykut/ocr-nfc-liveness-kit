.class public final Lw5/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt5/a;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public b:[B

.field public c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {v0}, Lw5/a0;->a(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 9
    .line 10
    const-string v1, "AES"

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lw5/s;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    sget-object p1, Lw5/n;->e:Lw5/n;

    .line 18
    .line 19
    const-string v1, "AES/ECB/NoPadding"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lw5/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljavax/crypto/Cipher;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x10

    .line 32
    .line 33
    new-array v0, v0, [B

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lc5/w;->m([B)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lw5/s;->b:[B

    .line 44
    .line 45
    invoke-static {p1}, Lc5/w;->m([B)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lw5/s;->c:[B

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a(I[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-gt p1, v0, :cond_4

    .line 4
    .line 5
    sget-object v1, Lw5/n;->e:Lw5/n;

    .line 6
    .line 7
    const-string v2, "AES/ECB/NoPadding"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lw5/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljavax/crypto/Cipher;

    .line 14
    .line 15
    iget-object v2, p0, Lw5/s;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 19
    .line 20
    .line 21
    array-length v2, p2

    .line 22
    int-to-double v4, v2

    .line 23
    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    .line 24
    .line 25
    div-double/2addr v4, v6

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    double-to-int v2, v4

    .line 31
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    mul-int/lit8 v4, v2, 0x10

    .line 36
    .line 37
    array-length v5, p2

    .line 38
    const/4 v6, 0x0

    .line 39
    if-ne v4, v5, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v3, 0x0

    .line 43
    :goto_0
    if-eqz v3, :cond_1

    .line 44
    .line 45
    add-int/lit8 v3, v2, -0x1

    .line 46
    .line 47
    mul-int/lit8 v3, v3, 0x10

    .line 48
    .line 49
    iget-object v4, p0, Lw5/s;->b:[B

    .line 50
    .line 51
    invoke-static {v3, p2, v6, v4, v0}, Lw5/h;->d(I[BI[BI)[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v3, v2, -0x1

    .line 57
    .line 58
    mul-int/lit8 v3, v3, 0x10

    .line 59
    .line 60
    array-length v4, p2

    .line 61
    invoke-static {p2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    array-length v4, v3

    .line 66
    if-ge v4, v0, :cond_3

    .line 67
    .line 68
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    array-length v3, v3

    .line 73
    const/16 v5, -0x80

    .line 74
    .line 75
    aput-byte v5, v4, v3

    .line 76
    .line 77
    iget-object v3, p0, Lw5/s;->c:[B

    .line 78
    .line 79
    invoke-static {v4, v3}, Lw5/h;->e([B[B)[B

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_1
    new-array v4, v0, [B

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    :goto_2
    add-int/lit8 v7, v2, -0x1

    .line 87
    .line 88
    if-ge v5, v7, :cond_2

    .line 89
    .line 90
    mul-int/lit8 v7, v5, 0x10

    .line 91
    .line 92
    invoke-static {v6, v4, v7, p2, v0}, Lw5/h;->d(I[BI[BI)[B

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    invoke-static {v3, v4}, Lw5/h;->e([B[B)[B

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    const-string p2, "x must be smaller than a block."

    .line 119
    .line 120
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 125
    .line 126
    const-string p2, "outputLength too large, max is 16 bytes"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method
