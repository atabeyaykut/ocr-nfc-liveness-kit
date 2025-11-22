.class public final Lw6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/e;


# static fields
.field public static final f:Ljava/nio/charset/Charset;

.field public static final g:Lt6/c;

.field public static final h:Lt6/c;

.field public static final i:Lw6/e;


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lt6/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lt6/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lt6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lw6/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lw6/f;->f:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    new-instance v0, Lw6/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lw6/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const-class v2, Lw6/d;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lt6/c;

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, "key"

    .line 32
    .line 33
    invoke-direct {v0, v3, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lw6/f;->g:Lt6/c;

    .line 37
    .line 38
    new-instance v0, Lw6/a;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-direct {v0, v1}, Lw6/a;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    new-instance v0, Lt6/c;

    .line 53
    .line 54
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "value"

    .line 59
    .line 60
    invoke-direct {v0, v2, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lw6/f;->h:Lt6/c;

    .line 64
    .line 65
    new-instance v0, Lw6/e;

    .line 66
    .line 67
    invoke-direct {v0}, Lw6/e;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lw6/f;->i:Lw6/e;

    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lt6/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw6/i;

    invoke-direct {v0, p0}, Lw6/i;-><init>(Lw6/f;)V

    iput-object v0, p0, Lw6/f;->e:Lw6/i;

    iput-object p1, p0, Lw6/f;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lw6/f;->b:Ljava/util/Map;

    iput-object p3, p0, Lw6/f;->c:Ljava/util/Map;

    iput-object p4, p0, Lw6/f;->d:Lt6/d;

    return-void
.end method

.method public static h(Lt6/c;)I
    .locals 1

    const-class v0, Lw6/d;

    invoke-virtual {p0, v0}, Lt6/c;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lw6/d;

    if-eqz p0, :cond_0

    check-cast p0, Lw6/a;

    iget p0, p0, Lw6/a;->a:I

    return p0

    :cond_0
    new-instance p0, Lt6/b;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lt6/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lt6/c;Ljava/lang/Object;)Lt6/e;
    .locals 1
    .param p1    # Lt6/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lw6/f;->e(Lt6/c;Ljava/lang/Object;Z)Lw6/f;

    return-object p0
.end method

.method public final b(Lt6/c;Z)Lt6/e;
    .locals 1
    .param p1    # Lt6/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lw6/f;->f(Lt6/c;IZ)V

    return-object p0
.end method

.method public final c(Lt6/c;I)Lt6/e;
    .locals 1
    .param p1    # Lt6/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lw6/f;->f(Lt6/c;IZ)V

    return-object p0
.end method

.method public final d(Lt6/c;J)Lt6/e;
    .locals 3
    .param p1    # Lt6/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-class v0, Lw6/d;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lt6/c;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lw6/d;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    check-cast p1, Lw6/a;

    .line 19
    .line 20
    iget p1, p1, Lw6/a;->a:I

    .line 21
    .line 22
    shl-int/lit8 p1, p1, 0x3

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lw6/f;->i(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2, p3}, Lw6/f;->j(J)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object p0

    .line 31
    :cond_1
    new-instance p1, Lt6/b;

    .line 32
    .line 33
    const-string p2, "Field has no @Protobuf config"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lt6/b;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final e(Lt6/c;Ljava/lang/Object;Z)Lw6/f;
    .locals 4
    .param p1    # Lt6/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p2, Ljava/lang/CharSequence;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Lw6/f;->h(Lt6/c;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    shl-int/lit8 p1, p1, 0x3

    .line 24
    .line 25
    or-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lw6/f;->i(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object p2, Lw6/f;->f:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    array-length p2, p1

    .line 41
    invoke-virtual {p0, p2}, Lw6/f;->i(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lw6/f;->a:Ljava/io/OutputStream;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    check-cast p2, Ljava/util/Collection;

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_3

    .line 66
    .line 67
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p0, p1, p3, v1}, Lw6/f;->e(Lt6/c;Ljava/lang/Object;Z)Lw6/f;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return-object p0

    .line 76
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    check-cast p2, Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-eqz p3, :cond_5

    .line 95
    .line 96
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Ljava/util/Map$Entry;

    .line 101
    .line 102
    sget-object v0, Lw6/f;->i:Lw6/e;

    .line 103
    .line 104
    invoke-virtual {p0, v0, p1, p3, v1}, Lw6/f;->g(Lt6/d;Lt6/c;Ljava/lang/Object;Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    return-object p0

    .line 109
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    check-cast p2, Ljava/lang/Double;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    if-eqz p3, :cond_7

    .line 121
    .line 122
    const-wide/16 p2, 0x0

    .line 123
    .line 124
    cmpl-double v3, v0, p2

    .line 125
    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    invoke-static {p1}, Lw6/f;->h(Lt6/c;)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    shl-int/lit8 p1, p1, 0x3

    .line 134
    .line 135
    or-int/2addr p1, v2

    .line 136
    invoke-virtual {p0, p1}, Lw6/f;->i(I)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lw6/f;->a:Ljava/io/OutputStream;

    .line 140
    .line 141
    const/16 p2, 0x8

    .line 142
    .line 143
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 148
    .line 149
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 162
    .line 163
    .line 164
    :goto_2
    return-object p0

    .line 165
    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    .line 166
    .line 167
    if-eqz v0, :cond_a

    .line 168
    .line 169
    check-cast p2, Ljava/lang/Float;

    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-eqz p3, :cond_9

    .line 176
    .line 177
    const/4 p3, 0x0

    .line 178
    cmpl-float p3, p2, p3

    .line 179
    .line 180
    if-nez p3, :cond_9

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_9
    invoke-static {p1}, Lw6/f;->h(Lt6/c;)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    shl-int/lit8 p1, p1, 0x3

    .line 188
    .line 189
    or-int/lit8 p1, p1, 0x5

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lw6/f;->i(I)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lw6/f;->a:Ljava/io/OutputStream;

    .line 195
    .line 196
    const/4 p3, 0x4

    .line 197
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 202
    .line 203
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 216
    .line 217
    .line 218
    :goto_3
    return-object p0

    .line 219
    :cond_a
    instance-of v0, p2, Ljava/lang/Number;

    .line 220
    .line 221
    if-eqz v0, :cond_d

    .line 222
    .line 223
    check-cast p2, Ljava/lang/Number;

    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 226
    .line 227
    .line 228
    move-result-wide v0

    .line 229
    if-eqz p3, :cond_b

    .line 230
    .line 231
    const-wide/16 p2, 0x0

    .line 232
    .line 233
    cmp-long v2, v0, p2

    .line 234
    .line 235
    if-nez v2, :cond_b

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_b
    const-class p2, Lw6/d;

    .line 239
    .line 240
    invoke-virtual {p1, p2}, Lt6/c;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Lw6/d;

    .line 245
    .line 246
    if-eqz p1, :cond_c

    .line 247
    .line 248
    check-cast p1, Lw6/a;

    .line 249
    .line 250
    iget p1, p1, Lw6/a;->a:I

    .line 251
    .line 252
    shl-int/lit8 p1, p1, 0x3

    .line 253
    .line 254
    invoke-virtual {p0, p1}, Lw6/f;->i(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v0, v1}, Lw6/f;->j(J)V

    .line 258
    .line 259
    .line 260
    :goto_4
    return-object p0

    .line 261
    :cond_c
    new-instance p1, Lt6/b;

    .line 262
    .line 263
    const-string p2, "Field has no @Protobuf config"

    .line 264
    .line 265
    invoke-direct {p1, p2}, Lt6/b;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :cond_d
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 270
    .line 271
    if-eqz v0, :cond_e

    .line 272
    .line 273
    check-cast p2, Ljava/lang/Boolean;

    .line 274
    .line 275
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 276
    .line 277
    .line 278
    move-result p2

    .line 279
    invoke-virtual {p0, p1, p2, p3}, Lw6/f;->f(Lt6/c;IZ)V

    .line 280
    .line 281
    .line 282
    return-object p0

    .line 283
    :cond_e
    instance-of v0, p2, [B

    .line 284
    .line 285
    if-eqz v0, :cond_10

    .line 286
    .line 287
    check-cast p2, [B

    .line 288
    .line 289
    if-eqz p3, :cond_f

    .line 290
    .line 291
    array-length p3, p2

    .line 292
    if-nez p3, :cond_f

    .line 293
    .line 294
    return-object p0

    .line 295
    :cond_f
    invoke-static {p1}, Lw6/f;->h(Lt6/c;)I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    shl-int/lit8 p1, p1, 0x3

    .line 300
    .line 301
    or-int/lit8 p1, p1, 0x2

    .line 302
    .line 303
    invoke-virtual {p0, p1}, Lw6/f;->i(I)V

    .line 304
    .line 305
    .line 306
    array-length p1, p2

    .line 307
    invoke-virtual {p0, p1}, Lw6/f;->i(I)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p0, Lw6/f;->a:Ljava/io/OutputStream;

    .line 311
    .line 312
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 313
    .line 314
    .line 315
    return-object p0

    .line 316
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iget-object v3, p0, Lw6/f;->b:Ljava/util/Map;

    .line 321
    .line 322
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Lt6/d;

    .line 327
    .line 328
    if-eqz v0, :cond_11

    .line 329
    .line 330
    invoke-virtual {p0, v0, p1, p2, p3}, Lw6/f;->g(Lt6/d;Lt6/c;Ljava/lang/Object;Z)V

    .line 331
    .line 332
    .line 333
    return-object p0

    .line 334
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    iget-object v3, p0, Lw6/f;->c:Ljava/util/Map;

    .line 339
    .line 340
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Lt6/f;

    .line 345
    .line 346
    if-eqz v0, :cond_12

    .line 347
    .line 348
    iget-object v2, p0, Lw6/f;->e:Lw6/i;

    .line 349
    .line 350
    iput-boolean v1, v2, Lw6/i;->a:Z

    .line 351
    .line 352
    iput-object p1, v2, Lw6/i;->c:Lt6/c;

    .line 353
    .line 354
    iput-boolean p3, v2, Lw6/i;->b:Z

    .line 355
    .line 356
    invoke-interface {v0, p2, v2}, Lt6/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    return-object p0

    .line 360
    :cond_12
    instance-of v0, p2, Lw6/c;

    .line 361
    .line 362
    if-eqz v0, :cond_13

    .line 363
    .line 364
    check-cast p2, Lw6/c;

    .line 365
    .line 366
    invoke-interface {p2}, Lw6/c;->f()I

    .line 367
    .line 368
    .line 369
    move-result p2

    .line 370
    invoke-virtual {p0, p1, p2, v2}, Lw6/f;->f(Lt6/c;IZ)V

    .line 371
    .line 372
    .line 373
    return-object p0

    .line 374
    :cond_13
    instance-of v0, p2, Ljava/lang/Enum;

    .line 375
    .line 376
    if-eqz v0, :cond_14

    .line 377
    .line 378
    check-cast p2, Ljava/lang/Enum;

    .line 379
    .line 380
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 381
    .line 382
    .line 383
    move-result p2

    .line 384
    invoke-virtual {p0, p1, p2, v2}, Lw6/f;->f(Lt6/c;IZ)V

    .line 385
    .line 386
    .line 387
    return-object p0

    .line 388
    :cond_14
    iget-object v0, p0, Lw6/f;->d:Lt6/d;

    .line 389
    .line 390
    invoke-virtual {p0, v0, p1, p2, p3}, Lw6/f;->g(Lt6/d;Lt6/c;Ljava/lang/Object;Z)V

    .line 391
    .line 392
    .line 393
    return-object p0
.end method

.method public final f(Lt6/c;IZ)V
    .locals 0
    .param p1    # Lt6/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-class p3, Lw6/d;

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Lt6/c;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lw6/d;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast p1, Lw6/a;

    .line 17
    .line 18
    iget p1, p1, Lw6/a;->a:I

    .line 19
    .line 20
    shl-int/lit8 p1, p1, 0x3

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lw6/f;->i(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lw6/f;->i(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p1, Lt6/b;

    .line 30
    .line 31
    const-string p2, "Field has no @Protobuf config"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Lt6/b;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final g(Lt6/d;Lt6/c;Ljava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lw6/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lw6/b;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lw6/f;->a:Ljava/io/OutputStream;

    .line 7
    .line 8
    iput-object v0, p0, Lw6/f;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    :try_start_1
    invoke-interface {p1, p3, p0}, Lt6/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_2
    iput-object v1, p0, Lw6/f;->a:Ljava/io/OutputStream;

    .line 14
    .line 15
    iget-wide v1, v0, Lw6/b;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 18
    .line 19
    .line 20
    if-eqz p4, :cond_0

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    cmp-long p4, v1, v3

    .line 25
    .line 26
    if-nez p4, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {p2}, Lw6/f;->h(Lt6/c;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    shl-int/lit8 p2, p2, 0x3

    .line 34
    .line 35
    or-int/lit8 p2, p2, 0x2

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lw6/f;->i(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1, v2}, Lw6/f;->j(J)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p3, p0}, Lt6/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_3
    iput-object v1, p0, Lw6/f;->a:Ljava/io/OutputStream;

    .line 49
    .line 50
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_2
    move-exception p2

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    throw p1
.end method

.method public final i(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lw6/f;->a:Ljava/io/OutputStream;

    if-eqz v4, :cond_0

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final j(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lw6/f;->a:Ljava/io/OutputStream;

    if-eqz v4, :cond_0

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
