.class public final Lje/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lje/a;->a:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lje/a;->b:[B

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lje/a;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lje/a;->b:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 8

    .line 1
    invoke-static {p0}, Lje/a;->c(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_5

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 12
    .line 13
    aget-byte v2, p0, v1

    .line 14
    .line 15
    const/16 v3, 0x3d

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    array-length v1, p0

    .line 22
    div-int/lit8 v1, v1, 0x4

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    new-array v1, v0, [B

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_1
    array-length v4, p0

    .line 30
    if-ge v3, v4, :cond_1

    .line 31
    .line 32
    sget-object v4, Lje/a;->b:[B

    .line 33
    .line 34
    aget-byte v5, p0, v3

    .line 35
    .line 36
    aget-byte v4, v4, v5

    .line 37
    .line 38
    aput-byte v4, p0, v3

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v3, 0x0

    .line 44
    :goto_2
    add-int/lit8 v4, v0, -0x2

    .line 45
    .line 46
    if-ge v2, v4, :cond_2

    .line 47
    .line 48
    aget-byte v4, p0, v3

    .line 49
    .line 50
    shl-int/lit8 v4, v4, 0x2

    .line 51
    .line 52
    and-int/lit16 v4, v4, 0xff

    .line 53
    .line 54
    add-int/lit8 v5, v3, 0x1

    .line 55
    .line 56
    aget-byte v6, p0, v5

    .line 57
    .line 58
    ushr-int/lit8 v6, v6, 0x4

    .line 59
    .line 60
    and-int/lit8 v6, v6, 0x3

    .line 61
    .line 62
    or-int/2addr v4, v6

    .line 63
    int-to-byte v4, v4

    .line 64
    aput-byte v4, v1, v2

    .line 65
    .line 66
    add-int/lit8 v4, v2, 0x1

    .line 67
    .line 68
    aget-byte v5, p0, v5

    .line 69
    .line 70
    shl-int/lit8 v5, v5, 0x4

    .line 71
    .line 72
    and-int/lit16 v5, v5, 0xff

    .line 73
    .line 74
    add-int/lit8 v6, v3, 0x2

    .line 75
    .line 76
    aget-byte v7, p0, v6

    .line 77
    .line 78
    ushr-int/lit8 v7, v7, 0x2

    .line 79
    .line 80
    and-int/lit8 v7, v7, 0xf

    .line 81
    .line 82
    or-int/2addr v5, v7

    .line 83
    int-to-byte v5, v5

    .line 84
    aput-byte v5, v1, v4

    .line 85
    .line 86
    add-int/lit8 v4, v2, 0x2

    .line 87
    .line 88
    aget-byte v5, p0, v6

    .line 89
    .line 90
    shl-int/lit8 v5, v5, 0x6

    .line 91
    .line 92
    and-int/lit16 v5, v5, 0xff

    .line 93
    .line 94
    add-int/lit8 v6, v3, 0x3

    .line 95
    .line 96
    aget-byte v6, p0, v6

    .line 97
    .line 98
    and-int/lit8 v6, v6, 0x3f

    .line 99
    .line 100
    or-int/2addr v5, v6

    .line 101
    int-to-byte v5, v5

    .line 102
    aput-byte v5, v1, v4

    .line 103
    .line 104
    add-int/lit8 v3, v3, 0x4

    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x3

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    if-ge v2, v0, :cond_3

    .line 110
    .line 111
    aget-byte v4, p0, v3

    .line 112
    .line 113
    shl-int/lit8 v4, v4, 0x2

    .line 114
    .line 115
    and-int/lit16 v4, v4, 0xff

    .line 116
    .line 117
    add-int/lit8 v5, v3, 0x1

    .line 118
    .line 119
    aget-byte v5, p0, v5

    .line 120
    .line 121
    ushr-int/lit8 v5, v5, 0x4

    .line 122
    .line 123
    and-int/lit8 v5, v5, 0x3

    .line 124
    .line 125
    or-int/2addr v4, v5

    .line 126
    int-to-byte v4, v4

    .line 127
    aput-byte v4, v1, v2

    .line 128
    .line 129
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 130
    .line 131
    if-ge v2, v0, :cond_4

    .line 132
    .line 133
    add-int/lit8 v0, v3, 0x1

    .line 134
    .line 135
    aget-byte v0, p0, v0

    .line 136
    .line 137
    shl-int/lit8 v0, v0, 0x4

    .line 138
    .line 139
    and-int/lit16 v0, v0, 0xff

    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x2

    .line 142
    .line 143
    aget-byte p0, p0, v3

    .line 144
    .line 145
    ushr-int/lit8 p0, p0, 0x2

    .line 146
    .line 147
    and-int/lit8 p0, p0, 0xf

    .line 148
    .line 149
    or-int/2addr p0, v0

    .line 150
    int-to-byte p0, p0

    .line 151
    aput-byte p0, v1, v2

    .line 152
    .line 153
    :cond_4
    return-object v1

    .line 154
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    const-string v0, "Can not decode NULL or empty string."

    .line 157
    .line 158
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {p0}, Lje/a;->c(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    add-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    div-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x4

    .line 16
    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    array-length v4, p0

    .line 22
    add-int/lit8 v4, v4, -0x2

    .line 23
    .line 24
    sget-object v5, Lje/a;->a:[B

    .line 25
    .line 26
    if-ge v2, v4, :cond_0

    .line 27
    .line 28
    add-int/lit8 v4, v3, 0x1

    .line 29
    .line 30
    aget-byte v6, p0, v2

    .line 31
    .line 32
    ushr-int/lit8 v6, v6, 0x2

    .line 33
    .line 34
    and-int/lit8 v6, v6, 0x3f

    .line 35
    .line 36
    aget-byte v6, v5, v6

    .line 37
    .line 38
    aput-byte v6, v1, v3

    .line 39
    .line 40
    add-int/lit8 v3, v4, 0x1

    .line 41
    .line 42
    add-int/lit8 v6, v2, 0x1

    .line 43
    .line 44
    aget-byte v7, p0, v6

    .line 45
    .line 46
    ushr-int/lit8 v7, v7, 0x4

    .line 47
    .line 48
    and-int/lit8 v7, v7, 0xf

    .line 49
    .line 50
    aget-byte v8, p0, v2

    .line 51
    .line 52
    shl-int/lit8 v8, v8, 0x4

    .line 53
    .line 54
    and-int/lit8 v8, v8, 0x3f

    .line 55
    .line 56
    or-int/2addr v7, v8

    .line 57
    aget-byte v7, v5, v7

    .line 58
    .line 59
    aput-byte v7, v1, v4

    .line 60
    .line 61
    add-int/lit8 v4, v3, 0x1

    .line 62
    .line 63
    add-int/lit8 v7, v2, 0x2

    .line 64
    .line 65
    aget-byte v8, p0, v7

    .line 66
    .line 67
    ushr-int/lit8 v8, v8, 0x6

    .line 68
    .line 69
    and-int/lit8 v8, v8, 0x3

    .line 70
    .line 71
    aget-byte v6, p0, v6

    .line 72
    .line 73
    shl-int/lit8 v6, v6, 0x2

    .line 74
    .line 75
    and-int/lit8 v6, v6, 0x3f

    .line 76
    .line 77
    or-int/2addr v6, v8

    .line 78
    aget-byte v6, v5, v6

    .line 79
    .line 80
    aput-byte v6, v1, v3

    .line 81
    .line 82
    add-int/lit8 v3, v4, 0x1

    .line 83
    .line 84
    aget-byte v6, p0, v7

    .line 85
    .line 86
    and-int/lit8 v6, v6, 0x3f

    .line 87
    .line 88
    aget-byte v5, v5, v6

    .line 89
    .line 90
    aput-byte v5, v1, v4

    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    array-length v4, p0

    .line 96
    if-ge v2, v4, :cond_2

    .line 97
    .line 98
    add-int/lit8 v4, v3, 0x1

    .line 99
    .line 100
    aget-byte v6, p0, v2

    .line 101
    .line 102
    ushr-int/lit8 v6, v6, 0x2

    .line 103
    .line 104
    and-int/lit8 v6, v6, 0x3f

    .line 105
    .line 106
    aget-byte v6, v5, v6

    .line 107
    .line 108
    aput-byte v6, v1, v3

    .line 109
    .line 110
    array-length v3, p0

    .line 111
    add-int/lit8 v3, v3, -0x1

    .line 112
    .line 113
    if-ge v2, v3, :cond_1

    .line 114
    .line 115
    add-int/lit8 v3, v4, 0x1

    .line 116
    .line 117
    add-int/lit8 v6, v2, 0x1

    .line 118
    .line 119
    aget-byte v7, p0, v6

    .line 120
    .line 121
    ushr-int/lit8 v7, v7, 0x4

    .line 122
    .line 123
    and-int/lit8 v7, v7, 0xf

    .line 124
    .line 125
    aget-byte v2, p0, v2

    .line 126
    .line 127
    shl-int/lit8 v2, v2, 0x4

    .line 128
    .line 129
    and-int/lit8 v2, v2, 0x3f

    .line 130
    .line 131
    or-int/2addr v2, v7

    .line 132
    aget-byte v2, v5, v2

    .line 133
    .line 134
    aput-byte v2, v1, v4

    .line 135
    .line 136
    add-int/lit8 v2, v3, 0x1

    .line 137
    .line 138
    aget-byte p0, p0, v6

    .line 139
    .line 140
    shl-int/lit8 p0, p0, 0x2

    .line 141
    .line 142
    and-int/lit8 p0, p0, 0x3f

    .line 143
    .line 144
    aget-byte p0, v5, p0

    .line 145
    .line 146
    aput-byte p0, v1, v3

    .line 147
    .line 148
    move v3, v2

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .line 151
    .line 152
    aget-byte p0, p0, v2

    .line 153
    .line 154
    shl-int/lit8 p0, p0, 0x4

    .line 155
    .line 156
    and-int/lit8 p0, p0, 0x3f

    .line 157
    .line 158
    aget-byte p0, v5, p0

    .line 159
    .line 160
    aput-byte p0, v1, v4

    .line 161
    .line 162
    :cond_2
    :goto_1
    if-ge v3, v0, :cond_3

    .line 163
    .line 164
    const/16 p0, 0x3d

    .line 165
    .line 166
    aput-byte p0, v1, v3

    .line 167
    .line 168
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    new-instance p0, Ljava/lang/String;

    .line 172
    .line 173
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 174
    .line 175
    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 176
    .line 177
    .line 178
    return-object p0

    .line 179
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    const-string v0, "Can not encode NULL or empty byte array."

    .line 182
    .line 183
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    new-array v1, p0, [B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
