.class public final Ljf/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljf/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljf/e;

    const/16 v1, 0x1e

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljf/e;-><init>(J)V

    iput-object v0, p0, Ljf/d;->a:Ljf/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkf/b;
        }
    .end annotation

    .line 1
    const/16 v0, 0x31

    .line 2
    .line 3
    const/16 v1, 0x49

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v0, 0x30

    .line 10
    .line 11
    const/16 v1, 0x4f

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v0, 0x38

    .line 18
    .line 19
    const/16 v1, 0x42

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/16 v0, 0x39

    .line 26
    .line 27
    const/16 v1, 0x51

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 44
    .line 45
    div-long/2addr v0, v2

    .line 46
    iget-object p2, p0, Ljf/d;->a:Ljf/e;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    cmp-long v4, v0, v2

    .line 54
    .line 55
    if-ltz v4, :cond_4

    .line 56
    .line 57
    sub-long/2addr v0, v2

    .line 58
    iget-wide v4, p2, Ljf/e;->a:J

    .line 59
    .line 60
    cmp-long p2, v0, v2

    .line 61
    .line 62
    if-ltz p2, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-wide/16 v2, 0x1

    .line 66
    .line 67
    sub-long v2, v4, v2

    .line 68
    .line 69
    sub-long/2addr v0, v2

    .line 70
    :goto_0
    div-long/2addr v0, v4

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    :try_start_0
    invoke-static {p1}, Ljf/b;->a(Ljava/lang/String;)[B

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "HMACSHA1"

    .line 84
    .line 85
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 90
    .line 91
    const-string v3, ""

    .line 92
    .line 93
    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Ljf/a;

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljf/a;-><init>(Ljavax/crypto/Mac;)V
    :try_end_0
    .catch Lkf/a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception p1

    .line 106
    goto :goto_1

    .line 107
    :catch_1
    move-exception p1

    .line 108
    goto :goto_1

    .line 109
    :catch_2
    move-exception p1

    .line 110
    :goto_1
    :try_start_1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 113
    .line 114
    .line 115
    const/4 p1, 0x0

    .line 116
    :goto_2
    const/16 p2, 0x8

    .line 117
    .line 118
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    iget-object p1, p1, Ljf/a;->a:Ljavax/crypto/Mac;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    array-length p2, p1

    .line 137
    add-int/lit8 p2, p2, -0x1

    .line 138
    .line 139
    aget-byte p2, p1, p2

    .line 140
    .line 141
    and-int/lit8 p2, p2, 0xf

    .line 142
    .line 143
    new-instance v0, Ljava/io/DataInputStream;

    .line 144
    .line 145
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 146
    .line 147
    array-length v2, p1

    .line 148
    sub-int/2addr v2, p2

    .line 149
    invoke-direct {v1, p1, p2, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 153
    .line 154
    .line 155
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 156
    .line 157
    .line 158
    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3

    .line 159
    const p2, 0x7fffffff

    .line 160
    .line 161
    .line 162
    and-int/2addr p1, p2

    .line 163
    :try_start_3
    sget-object p2, Lcom/google/android/gms/internal/clearcut/d0;->a:[I

    .line 164
    .line 165
    const/4 v0, 0x6

    .line 166
    aget p2, p2, v0

    .line 167
    .line 168
    rem-int/2addr p1, p2

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    :goto_3
    if-ge p2, v0, :cond_2

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v2, "0"

    .line 182
    .line 183
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    add-int/lit8 p2, p2, 0x1

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :catch_3
    move-exception p1

    .line 197
    goto :goto_4

    .line 198
    :cond_2
    return-object p1

    .line 199
    :catch_4
    move-exception p1

    .line 200
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 201
    .line 202
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    throw p2
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 206
    :goto_4
    new-instance p2, Lkf/b;

    .line 207
    .line 208
    invoke-direct {p2, p1}, Lkf/b;-><init>(Ljava/security/GeneralSecurityException;)V

    .line 209
    .line 210
    .line 211
    throw p2

    .line 212
    :cond_3
    new-instance p1, Lkf/b;

    .line 213
    .line 214
    invoke-direct {p1}, Lkf/b;-><init>()V

    .line 215
    .line 216
    .line 217
    throw p1

    .line 218
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 219
    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v2, "Negative time: "

    .line 223
    .line 224
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p1
.end method
