.class public final Lyc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Led/h;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:Lyc/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lyc/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lyc/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyc/e;->e:Lyc/e;

    .line 7
    .line 8
    sget-object v0, Led/h;->d:Led/h;

    .line 9
    .line 10
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 11
    .line 12
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lyc/e;->a:Led/h;

    .line 17
    .line 18
    const-string v1, "DATA"

    .line 19
    .line 20
    const-string v2, "HEADERS"

    .line 21
    .line 22
    const-string v3, "PRIORITY"

    .line 23
    .line 24
    const-string v4, "RST_STREAM"

    .line 25
    .line 26
    const-string v5, "SETTINGS"

    .line 27
    .line 28
    const-string v6, "PUSH_PROMISE"

    .line 29
    .line 30
    const-string v7, "PING"

    .line 31
    .line 32
    const-string v8, "GOAWAY"

    .line 33
    .line 34
    const-string v9, "WINDOW_UPDATE"

    .line 35
    .line 36
    const-string v10, "CONTINUATION"

    .line 37
    .line 38
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lyc/e;->b:[Ljava/lang/String;

    .line 43
    .line 44
    const/16 v0, 0x40

    .line 45
    .line 46
    new-array v0, v0, [Ljava/lang/String;

    .line 47
    .line 48
    sput-object v0, Lyc/e;->c:[Ljava/lang/String;

    .line 49
    .line 50
    const/16 v0, 0x100

    .line 51
    .line 52
    new-array v1, v0, [Ljava/lang/String;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    :goto_0
    const/16 v4, 0x20

    .line 57
    .line 58
    const/4 v5, 0x1

    .line 59
    if-ge v3, v0, :cond_0

    .line 60
    .line 61
    new-array v5, v5, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const-string v7, "Integer.toBinaryString(it)"

    .line 68
    .line 69
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    aput-object v6, v5, v2

    .line 73
    .line 74
    const-string v6, "%8s"

    .line 75
    .line 76
    invoke-static {v6, v5}, Lsc/c;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const/16 v6, 0x30

    .line 81
    .line 82
    invoke-static {v5, v4, v6}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    aput-object v4, v1, v3

    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    sput-object v1, Lyc/e;->d:[Ljava/lang/String;

    .line 92
    .line 93
    sget-object v0, Lyc/e;->c:[Ljava/lang/String;

    .line 94
    .line 95
    const-string v1, ""

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    const-string v1, "END_STREAM"

    .line 100
    .line 101
    aput-object v1, v0, v5

    .line 102
    .line 103
    new-array v3, v5, [I

    .line 104
    .line 105
    aput v5, v3, v2

    .line 106
    .line 107
    const/16 v5, 0x8

    .line 108
    .line 109
    const-string v6, "PADDED"

    .line 110
    .line 111
    aput-object v6, v0, v5

    .line 112
    .line 113
    const-string v6, "|PADDED"

    .line 114
    .line 115
    invoke-static {v6, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/16 v7, 0x9

    .line 120
    .line 121
    aput-object v1, v0, v7

    .line 122
    .line 123
    const/4 v1, 0x4

    .line 124
    const-string v7, "END_HEADERS"

    .line 125
    .line 126
    aput-object v7, v0, v1

    .line 127
    .line 128
    const-string v1, "PRIORITY"

    .line 129
    .line 130
    aput-object v1, v0, v4

    .line 131
    .line 132
    const/16 v1, 0x24

    .line 133
    .line 134
    const-string v4, "END_HEADERS|PRIORITY"

    .line 135
    .line 136
    aput-object v4, v0, v1

    .line 137
    .line 138
    const/4 v0, 0x3

    .line 139
    new-array v1, v0, [I

    .line 140
    .line 141
    fill-array-data v1, :array_0

    .line 142
    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    :goto_1
    if-ge v4, v0, :cond_1

    .line 146
    .line 147
    aget v7, v1, v4

    .line 148
    .line 149
    aget v8, v3, v2

    .line 150
    .line 151
    sget-object v9, Lyc/e;->c:[Ljava/lang/String;

    .line 152
    .line 153
    or-int v10, v8, v7

    .line 154
    .line 155
    new-instance v11, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    aget-object v12, v9, v8

    .line 161
    .line 162
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v12, "|"

    .line 166
    .line 167
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    aget-object v13, v9, v7

    .line 171
    .line 172
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    aput-object v11, v9, v10

    .line 180
    .line 181
    or-int/2addr v10, v5

    .line 182
    new-instance v11, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    aget-object v8, v9, v8

    .line 188
    .line 189
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    aget-object v7, v9, v7

    .line 196
    .line 197
    invoke-static {v11, v7, v6}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    aput-object v7, v9, v10

    .line 202
    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_1
    sget-object v0, Lyc/e;->c:[Ljava/lang/String;

    .line 207
    .line 208
    array-length v0, v0

    .line 209
    :goto_2
    if-ge v2, v0, :cond_3

    .line 210
    .line 211
    sget-object v1, Lyc/e;->c:[Ljava/lang/String;

    .line 212
    .line 213
    aget-object v3, v1, v2

    .line 214
    .line 215
    if-nez v3, :cond_2

    .line 216
    .line 217
    sget-object v3, Lyc/e;->d:[Ljava/lang/String;

    .line 218
    .line 219
    aget-object v3, v3, v2

    .line 220
    .line 221
    aput-object v3, v1, v2

    .line 222
    .line 223
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_3
    return-void

    .line 227
    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIIIZ)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lyc/e;->b:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ge p2, v1, :cond_0

    .line 7
    .line 8
    aget-object v0, v0, p2

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    const-string v1, "0x%02x"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lsc/c;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    const/4 v1, 0x4

    .line 26
    const/4 v4, 0x5

    .line 27
    const/4 v5, 0x3

    .line 28
    const/4 v6, 0x2

    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    const-string p2, ""

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    sget-object v7, Lyc/e;->d:[Ljava/lang/String;

    .line 35
    .line 36
    if-eq p2, v6, :cond_7

    .line 37
    .line 38
    if-eq p2, v5, :cond_7

    .line 39
    .line 40
    if-eq p2, v1, :cond_5

    .line 41
    .line 42
    const/4 v8, 0x6

    .line 43
    if-eq p2, v8, :cond_5

    .line 44
    .line 45
    const/4 v8, 0x7

    .line 46
    if-eq p2, v8, :cond_7

    .line 47
    .line 48
    const/16 v8, 0x8

    .line 49
    .line 50
    if-eq p2, v8, :cond_7

    .line 51
    .line 52
    sget-object v8, Lyc/e;->c:[Ljava/lang/String;

    .line 53
    .line 54
    array-length v9, v8

    .line 55
    if-ge p3, v9, :cond_2

    .line 56
    .line 57
    aget-object v7, v8, p3

    .line 58
    .line 59
    invoke-static {v7}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    aget-object v7, v7, p3

    .line 64
    .line 65
    :goto_1
    if-ne p2, v4, :cond_3

    .line 66
    .line 67
    and-int/lit8 v8, p3, 0x4

    .line 68
    .line 69
    if-eqz v8, :cond_3

    .line 70
    .line 71
    const-string p2, "HEADERS"

    .line 72
    .line 73
    const-string p3, "PUSH_PROMISE"

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    if-nez p2, :cond_4

    .line 77
    .line 78
    and-int/lit8 p2, p3, 0x20

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    const-string p2, "PRIORITY"

    .line 83
    .line 84
    const-string p3, "COMPRESSED"

    .line 85
    .line 86
    :goto_2
    invoke-static {v7, p2, p3}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move-object p2, v7

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    if-ne p3, v3, :cond_6

    .line 94
    .line 95
    const-string p2, "ACK"

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    aget-object p2, v7, p3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    aget-object p2, v7, p3

    .line 102
    .line 103
    :goto_3
    if-eqz p4, :cond_8

    .line 104
    .line 105
    const-string p3, "<<"

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_8
    const-string p3, ">>"

    .line 109
    .line 110
    :goto_4
    new-array p4, v4, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object p3, p4, v2

    .line 113
    .line 114
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    aput-object p0, p4, v3

    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    aput-object p0, p4, v6

    .line 125
    .line 126
    aput-object v0, p4, v5

    .line 127
    .line 128
    aput-object p2, p4, v1

    .line 129
    .line 130
    const-string p0, "%s 0x%08x %5d %-13s %s"

    .line 131
    .line 132
    invoke-static {p0, p4}, Lsc/c;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method
