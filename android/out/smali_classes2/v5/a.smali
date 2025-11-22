.class public final Lv5/a;
.super Ln5/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f<",
        "Lu5/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ln5/f$b;

    new-instance v1, Lv5/a$a;

    invoke-direct {v1}, Lv5/a$a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lu5/f;

    invoke-direct {p0, v1, v0}, Ln5/f;-><init>(Ljava/lang/Class;[Ln5/f$b;)V

    return-void
.end method

.method public static g(Lu5/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu5/h;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lw5/a0;->a(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lu5/h;->w()Lu5/a0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lu5/a0;->b:Lu5/a0;

    .line 13
    .line 14
    if-eq v0, v1, :cond_9

    .line 15
    .line 16
    invoke-virtual {p0}, Lu5/h;->x()Lu5/d0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lu5/d0;->u()Lu5/a0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eq v0, v1, :cond_8

    .line 25
    .line 26
    invoke-virtual {p0}, Lu5/h;->x()Lu5/d0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lu5/d0;->v()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v2, 0xa

    .line 35
    .line 36
    if-lt v1, v2, :cond_7

    .line 37
    .line 38
    invoke-virtual {v0}, Lu5/d0;->u()Lu5/a0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    const-string v3, "tag size too big"

    .line 48
    .line 49
    if-eq v1, v2, :cond_4

    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    if-eq v1, v2, :cond_2

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    if-ne v1, v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lu5/d0;->v()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0x40

    .line 62
    .line 63
    if-gt v0, v1, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 67
    .line 68
    invoke-direct {p0, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 73
    .line 74
    const-string v0, "unknown hash type"

    .line 75
    .line 76
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_2
    invoke-virtual {v0}, Lu5/d0;->v()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/16 v1, 0x20

    .line 85
    .line 86
    if-gt v0, v1, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 90
    .line 91
    invoke-direct {p0, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_4
    invoke-virtual {v0}, Lu5/d0;->v()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/16 v1, 0x14

    .line 100
    .line 101
    if-gt v0, v1, :cond_6

    .line 102
    .line 103
    :goto_0
    invoke-virtual {p0}, Lu5/h;->t()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {p0}, Lu5/h;->v()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {p0}, Lu5/h;->x()Lu5/d0;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lu5/d0;->v()I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    add-int/2addr p0, v1

    .line 120
    add-int/lit8 p0, p0, 0x2

    .line 121
    .line 122
    add-int/lit8 p0, p0, 0x7

    .line 123
    .line 124
    if-lt v0, p0, :cond_5

    .line 125
    .line 126
    return-void

    .line 127
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 128
    .line 129
    const-string v0, "ciphertext_segment_size must be at least (derived_key_size + tag_size + NONCE_PREFIX_IN_BYTES + 2)"

    .line 130
    .line 131
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 136
    .line 137
    invoke-direct {p0, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 142
    .line 143
    const-string v0, "tag size too small"

    .line 144
    .line 145
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 150
    .line 151
    const-string v0, "unknown HMAC hash type"

    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 158
    .line 159
    const-string v0, "unknown HKDF hash type"

    .line 160
    .line 161
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacStreamingKey"

    return-object v0
.end method

.method public final c()Ln5/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln5/f$a<",
            "Lu5/g;",
            "Lu5/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lv5/a$b;

    invoke-direct {v0, p0}, Lv5/a$b;-><init>(Lv5/a;)V

    return-object v0
.end method

.method public final d()Lu5/e0$b;
    .locals 1

    sget-object v0, Lu5/e0$b;->c:Lu5/e0$b;

    return-object v0
.end method

.method public final e(Lcom/google/crypto/tink/shaded/protobuf/i;)Lcom/google/crypto/tink/shaded/protobuf/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->a()Lcom/google/crypto/tink/shaded/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lu5/f;->A(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/f;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/google/crypto/tink/shaded/protobuf/q0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu5/f;->y()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lw5/a0;->c(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lu5/f;->w()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lu5/f;->w()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Lu5/f;->x()Lu5/h;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lu5/h;->v()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-lt v0, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Lu5/f;->x()Lu5/h;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lv5/a;->g(Lu5/h;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 49
    .line 50
    const-string v0, "key_value must have at least as many bits as derived keys"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 57
    .line 58
    const-string v0, "key_value must have at least 16 bytes"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method
