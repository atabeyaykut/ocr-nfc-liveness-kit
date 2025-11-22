.class public final Lvc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrc/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrc/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connectionSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc/b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Lrc/i;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lvc/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lvc/b;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lrc/i;

    .line 17
    .line 18
    invoke-virtual {v4, p1}, Lrc/i;->b(Ljavax/net/ssl/SSLSocket;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    add-int/2addr v0, v3

    .line 25
    iput v0, p0, Lvc/b;->a:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-eqz v4, :cond_c

    .line 33
    .line 34
    iget v0, p0, Lvc/b;->a:I

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    :goto_2
    const/4 v5, 0x0

    .line 41
    if-ge v0, v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lrc/i;

    .line 48
    .line 49
    invoke-virtual {v6, p1}, Lrc/i;->b(Ljavax/net/ssl/SSLSocket;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const/4 v0, 0x0

    .line 61
    :goto_3
    iput-boolean v0, p0, Lvc/b;->b:Z

    .line 62
    .line 63
    iget-boolean v0, p0, Lvc/b;->c:Z

    .line 64
    .line 65
    iget-object v1, v4, Lrc/i;->c:[Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v6, "sslSocket.enabledCipherSuites"

    .line 74
    .line 75
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v6, Lrc/h;->t:Lrc/h$b;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-object v6, Lrc/h;->b:Lrc/h$a;

    .line 84
    .line 85
    invoke-static {v2, v1, v6}, Lsc/c;->o([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_4
    iget-object v2, v4, Lrc/i;->d:[Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    const-string v7, "sslSocket.enabledProtocols"

    .line 103
    .line 104
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v7, Lo9/a;->a:Lo9/a;

    .line 108
    .line 109
    invoke-static {v6, v2, v7}, Lsc/c;->o([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    goto :goto_5

    .line 114
    :cond_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :goto_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const-string v7, "supportedCipherSuites"

    .line 123
    .line 124
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object v7, Lrc/h;->t:Lrc/h$b;

    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    sget-object v7, Lrc/h;->b:Lrc/h$a;

    .line 133
    .line 134
    sget-object v8, Lsc/c;->a:[B

    .line 135
    .line 136
    const-string v8, "comparator"

    .line 137
    .line 138
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    array-length v8, v6

    .line 142
    const/4 v9, 0x0

    .line 143
    :goto_6
    const/4 v10, -0x1

    .line 144
    if-ge v9, v8, :cond_8

    .line 145
    .line 146
    aget-object v11, v6, v9

    .line 147
    .line 148
    const-string v12, "TLS_FALLBACK_SCSV"

    .line 149
    .line 150
    invoke-virtual {v7, v11, v12}, Lrc/h$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-nez v11, :cond_6

    .line 155
    .line 156
    const/4 v11, 0x1

    .line 157
    goto :goto_7

    .line 158
    :cond_6
    const/4 v11, 0x0

    .line 159
    :goto_7
    if-eqz v11, :cond_7

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_8
    const/4 v9, -0x1

    .line 166
    :goto_8
    const-string v5, "cipherSuitesIntersection"

    .line 167
    .line 168
    if-eqz v0, :cond_9

    .line 169
    .line 170
    if-eq v9, v10, :cond_9

    .line 171
    .line 172
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    aget-object v0, v6, v9

    .line 176
    .line 177
    const-string v6, "supportedCipherSuites[indexOfFallbackScsv]"

    .line 178
    .line 179
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    array-length v6, v1

    .line 183
    add-int/2addr v6, v3

    .line 184
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v3, "java.util.Arrays.copyOf(this, newSize)"

    .line 189
    .line 190
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    check-cast v1, [Ljava/lang/String;

    .line 194
    .line 195
    array-length v3, v1

    .line 196
    add-int/2addr v3, v10

    .line 197
    aput-object v0, v1, v3

    .line 198
    .line 199
    :cond_9
    new-instance v0, Lrc/i$a;

    .line 200
    .line 201
    invoke-direct {v0, v4}, Lrc/i$a;-><init>(Lrc/i;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    array-length v3, v1

    .line 208
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, [Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lrc/i$a;->b([Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string v1, "tlsVersionsIntersection"

    .line 218
    .line 219
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    array-length v1, v2

    .line 223
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, [Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Lrc/i$a;->e([Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lrc/i$a;->a()Lrc/i;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lrc/i;->c()Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    if-eqz v1, :cond_a

    .line 241
    .line 242
    iget-object v1, v0, Lrc/i;->d:[Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :cond_a
    invoke-virtual {v0}, Lrc/i;->a()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    if-eqz v1, :cond_b

    .line 252
    .line 253
    iget-object v0, v0, Lrc/i;->c:[Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_b
    return-object v4

    .line 259
    :cond_c
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 260
    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v3, "Unable to find acceptable protocols. isFallback="

    .line 264
    .line 265
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-boolean v3, p0, Lvc/b;->c:Z

    .line 269
    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v3, ", modes="

    .line 274
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v1, ", supported protocols="

    .line 282
    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    const-string v1, "java.util.Arrays.toString(this)"

    .line 298
    .line 299
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw v0
.end method
