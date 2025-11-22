.class public final Lmb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmb/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lmb/g$a<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lmb/g;


# instance fields
.field public final a:Lmb/t;

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmb/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmb/g;-><init>(I)V

    sput-object v0, Lmb/g;->d:Lmb/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmb/g;->c:Z

    sget v0, Lmb/u;->f:I

    .line 1
    new-instance v0, Lmb/t;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lmb/t;-><init>(I)V

    .line 2
    iput-object v0, p0, Lmb/g;->a:Lmb/t;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmb/g;->c:Z

    sget v0, Lmb/u;->f:I

    .line 3
    new-instance v0, Lmb/t;

    invoke-direct {v0, p1}, Lmb/t;-><init>(I)V

    .line 4
    iput-object v0, p0, Lmb/g;->a:Lmb/t;

    invoke-virtual {p0}, Lmb/g;->h()V

    return-void
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static d(Lmb/w;Ljava/lang/Object;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x4

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    shl-long v0, p0, v0

    .line 27
    .line 28
    const/16 v2, 0x3f

    .line 29
    .line 30
    shr-long/2addr p0, v2

    .line 31
    xor-long/2addr p0, v0

    .line 32
    invoke-static {p0, p1}, Lmb/e;->g(J)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    shl-int/lit8 p1, p0, 0x1

    .line 44
    .line 45
    shr-int/lit8 p0, p0, 0x1f

    .line 46
    .line 47
    xor-int/2addr p0, p1

    .line 48
    invoke-static {p0}, Lmb/e;->f(I)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    return v2

    .line 59
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :pswitch_4
    instance-of p0, p1, Lmb/i$a;

    .line 66
    .line 67
    if-eqz p0, :cond_0

    .line 68
    .line 69
    check-cast p1, Lmb/i$a;

    .line 70
    .line 71
    invoke-interface {p1}, Lmb/i$a;->f()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-static {p0}, Lmb/e;->c(I)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {p0}, Lmb/e;->c(I)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0

    .line 91
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-static {p0}, Lmb/e;->f(I)I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    return p0

    .line 102
    :pswitch_6
    instance-of p0, p1, Lmb/c;

    .line 103
    .line 104
    if-eqz p0, :cond_1

    .line 105
    .line 106
    check-cast p1, Lmb/c;

    .line 107
    .line 108
    invoke-virtual {p1}, Lmb/c;->size()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    invoke-static {p0}, Lmb/e;->f(I)I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-virtual {p1}, Lmb/c;->size()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    add-int/2addr p1, p0

    .line 121
    return p1

    .line 122
    :cond_1
    check-cast p1, [B

    .line 123
    .line 124
    array-length p0, p1

    .line 125
    invoke-static {p0}, Lmb/e;->f(I)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    array-length p1, p1

    .line 130
    add-int/2addr p0, p1

    .line 131
    return p0

    .line 132
    :pswitch_7
    instance-of p0, p1, Lmb/k;

    .line 133
    .line 134
    if-eqz p0, :cond_3

    .line 135
    .line 136
    check-cast p1, Lmb/k;

    .line 137
    .line 138
    iget-boolean p0, p1, Lmb/l;->a:Z

    .line 139
    .line 140
    if-eqz p0, :cond_2

    .line 141
    .line 142
    iget-object p0, p1, Lmb/l;->b:Lmb/p;

    .line 143
    .line 144
    invoke-interface {p0}, Lmb/p;->c()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    invoke-static {p0}, Lmb/e;->f(I)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    add-int/2addr p1, p0

    .line 153
    return p1

    .line 154
    :cond_2
    const/4 p0, 0x0

    .line 155
    throw p0

    .line 156
    :cond_3
    check-cast p1, Lmb/p;

    .line 157
    .line 158
    invoke-static {p1}, Lmb/e;->e(Lmb/p;)I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    return p0

    .line 163
    :pswitch_8
    check-cast p1, Lmb/p;

    .line 164
    .line 165
    invoke-interface {p1}, Lmb/p;->c()I

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    return p0

    .line 170
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 171
    .line 172
    :try_start_0
    const-string p0, "UTF-8"

    .line 173
    .line 174
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    array-length p1, p0

    .line 179
    invoke-static {p1}, Lmb/e;->f(I)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    array-length p0, p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    add-int/2addr p1, p0

    .line 185
    return p1

    .line 186
    :catch_0
    move-exception p0

    .line 187
    new-instance p1, Ljava/lang/RuntimeException;

    .line 188
    .line 189
    const-string v0, "UTF-8 not supported."

    .line 190
    .line 191
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 198
    .line 199
    .line 200
    return v0

    .line 201
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    return v1

    .line 207
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 210
    .line 211
    .line 212
    return v2

    .line 213
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    invoke-static {p0}, Lmb/e;->c(I)I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    return p0

    .line 224
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 227
    .line 228
    .line 229
    move-result-wide p0

    .line 230
    invoke-static {p0, p1}, Lmb/e;->g(J)I

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    return p0

    .line 235
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 238
    .line 239
    .line 240
    move-result-wide p0

    .line 241
    invoke-static {p0, p1}, Lmb/e;->g(J)I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    return p0

    .line 246
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 249
    .line 250
    .line 251
    return v1

    .line 252
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 255
    .line 256
    .line 257
    return v2

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lmb/g$a;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb/g$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lmb/g$a;->h()Lmb/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lmb/g$a;->f()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p0}, Lmb/g$a;->g()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    invoke-interface {p0}, Lmb/g$a;->m()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v0, p1}, Lmb/g;->d(Lmb/w;Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/2addr v2, p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v1}, Lmb/e;->h(I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    add-int/2addr p0, v2

    .line 49
    invoke-static {v2}, Lmb/e;->f(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    add-int/2addr p1, p0

    .line 54
    return p1

    .line 55
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1}, Lmb/e;->h(I)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    sget-object v4, Lmb/w;->e:Lmb/w$b;

    .line 74
    .line 75
    if-ne v0, v4, :cond_2

    .line 76
    .line 77
    mul-int/lit8 v3, v3, 0x2

    .line 78
    .line 79
    :cond_2
    invoke-static {v0, p1}, Lmb/g;->d(Lmb/w;Ljava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    add-int/2addr p1, v3

    .line 84
    add-int/2addr v2, p1

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    return v2

    .line 87
    :cond_4
    invoke-static {v1}, Lmb/e;->h(I)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    sget-object v1, Lmb/w;->e:Lmb/w$b;

    .line 92
    .line 93
    if-ne v0, v1, :cond_5

    .line 94
    .line 95
    mul-int/lit8 p0, p0, 0x2

    .line 96
    .line 97
    :cond_5
    invoke-static {v0, p1}, Lmb/g;->d(Lmb/w;Ljava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    add-int/2addr p1, p0

    .line 102
    return p1
.end method

.method public static g(Ljava/util/Map$Entry;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/g$a;

    invoke-interface {v0}, Lmb/g$a;->l()Lmb/x;

    move-result-object v1

    sget-object v2, Lmb/x;->k:Lmb/x;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Lmb/g$a;->g()Z

    move-result v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/p;

    invoke-interface {v0}, Lmb/q;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    instance-of v0, p0, Lmb/p;

    if-eqz v0, :cond_2

    check-cast p0, Lmb/p;

    invoke-interface {p0}, Lmb/q;->b()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_2
    instance-of p0, p0, Lmb/k;

    if-eqz p0, :cond_3

    return v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static j(Lmb/d;Lmb/w;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0

    .line 17
    :pswitch_0
    invoke-virtual {p0}, Lmb/d;->l()J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    ushr-long v0, p0, v0

    .line 22
    .line 23
    const-wide/16 v2, 0x1

    .line 24
    .line 25
    and-long/2addr p0, v2

    .line 26
    neg-long p0, p0

    .line 27
    xor-long/2addr p0, v0

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_1
    invoke-virtual {p0}, Lmb/d;->k()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    ushr-int/lit8 p1, p0, 0x1

    .line 38
    .line 39
    and-int/2addr p0, v0

    .line 40
    neg-int p0, p0

    .line 41
    xor-int/2addr p0, p1

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_2
    invoke-virtual {p0}, Lmb/d;->j()J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0}, Lmb/d;->i()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p1, "readPrimitiveField() cannot handle enums."

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :pswitch_5
    invoke-virtual {p0}, Lmb/d;->k()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :pswitch_6
    invoke-virtual {p0}, Lmb/d;->e()Lmb/o;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :pswitch_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string p1, "readPrimitiveField() cannot handle nested groups."

    .line 98
    .line 99
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :pswitch_9
    invoke-virtual {p0}, Lmb/d;->k()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iget v0, p0, Lmb/d;->b:I

    .line 108
    .line 109
    iget v1, p0, Lmb/d;->d:I

    .line 110
    .line 111
    sub-int/2addr v0, v1

    .line 112
    const-string v2, "UTF-8"

    .line 113
    .line 114
    if-gt p1, v0, :cond_0

    .line 115
    .line 116
    if-lez p1, :cond_0

    .line 117
    .line 118
    new-instance v0, Ljava/lang/String;

    .line 119
    .line 120
    iget-object v3, p0, Lmb/d;->a:[B

    .line 121
    .line 122
    invoke-direct {v0, v3, v1, p1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget v1, p0, Lmb/d;->d:I

    .line 126
    .line 127
    add-int/2addr v1, p1

    .line 128
    iput v1, p0, Lmb/d;->d:I

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    if-nez p1, :cond_1

    .line 132
    .line 133
    const-string v0, ""

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lmb/d;->h(I)[B

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    return-object v0

    .line 146
    :pswitch_a
    invoke-virtual {p0}, Lmb/d;->l()J

    .line 147
    .line 148
    .line 149
    move-result-wide p0

    .line 150
    const-wide/16 v1, 0x0

    .line 151
    .line 152
    cmp-long v3, p0, v1

    .line 153
    .line 154
    if-eqz v3, :cond_2

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    const/4 v0, 0x0

    .line 158
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :pswitch_b
    invoke-virtual {p0}, Lmb/d;->i()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_c
    invoke-virtual {p0}, Lmb/d;->j()J

    .line 173
    .line 174
    .line 175
    move-result-wide p0

    .line 176
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0

    .line 181
    :pswitch_d
    invoke-virtual {p0}, Lmb/d;->k()I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_e
    invoke-virtual {p0}, Lmb/d;->l()J

    .line 191
    .line 192
    .line 193
    move-result-wide p0

    .line 194
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    return-object p0

    .line 199
    :pswitch_f
    invoke-virtual {p0}, Lmb/d;->l()J

    .line 200
    .line 201
    .line 202
    move-result-wide p0

    .line 203
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    :pswitch_10
    invoke-virtual {p0}, Lmb/d;->i()I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    return-object p0

    .line 221
    :pswitch_11
    invoke-virtual {p0}, Lmb/d;->j()J

    .line 222
    .line 223
    .line 224
    move-result-wide p0

    .line 225
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 226
    .line 227
    .line 228
    move-result-wide p0

    .line 229
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    return-object p0

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Lmb/w;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lmb/w;->a:Lmb/x;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :pswitch_0
    instance-of p0, p1, Lmb/p;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    instance-of p0, p1, Lmb/k;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    instance-of p0, p1, Lmb/i$a;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    instance-of p0, p1, Lmb/c;

    .line 35
    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    instance-of p0, p1, [B

    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :cond_1
    :goto_0
    move v1, v0

    .line 45
    goto :goto_1

    .line 46
    :pswitch_3
    instance-of v1, p1, Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :pswitch_4
    instance-of v1, p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_5
    instance-of v1, p1, Ljava/lang/Double;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_6
    instance-of v1, p1, Ljava/lang/Float;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_7
    instance-of v1, p1, Ljava/lang/Long;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_8
    instance-of v1, p1, Ljava/lang/Integer;

    .line 62
    .line 63
    :goto_1
    if-eqz v1, :cond_2

    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p1, "Wrong object type used with protocol message reflection."

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Lmb/e;Lmb/w;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lmb/w;->e:Lmb/w$b;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    check-cast p3, Lmb/p;

    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, p2, p1}, Lmb/e;->x(II)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p0}, Lmb/p;->d(Lmb/e;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-virtual {p0, p2, p1}, Lmb/e;->x(II)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p1, Lmb/w;->b:I

    .line 20
    .line 21
    invoke-virtual {p0, p2, v0}, Lmb/e;->x(II)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1, p3}, Lmb/g;->n(Lmb/e;Lmb/w;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public static n(Lmb/e;Lmb/w;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    const/4 v0, 0x1

    .line 17
    shl-long v0, p1, v0

    .line 18
    .line 19
    const/16 v2, 0x3f

    .line 20
    .line 21
    shr-long/2addr p1, v2

    .line 22
    xor-long/2addr p1, v0

    .line 23
    invoke-virtual {p0, p1, p2}, Lmb/e;->w(J)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    shl-int/lit8 p2, p1, 0x1

    .line 35
    .line 36
    shr-int/lit8 p1, p1, 0x1f

    .line 37
    .line 38
    xor-int/2addr p1, p2

    .line 39
    invoke-virtual {p0, p1}, Lmb/e;->v(I)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    invoke-virtual {p0, p1, p2}, Lmb/e;->u(J)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Lmb/e;->t(I)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :pswitch_4
    instance-of p1, p2, Lmb/i$a;

    .line 67
    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    check-cast p2, Lmb/i$a;

    .line 71
    .line 72
    invoke-interface {p2}, Lmb/i$a;->f()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Lmb/e;->n(I)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p0, p1}, Lmb/e;->v(I)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :pswitch_6
    instance-of p1, p2, Lmb/c;

    .line 100
    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    check-cast p2, Lmb/c;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lmb/c;->size()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-virtual {p0, p1}, Lmb/e;->v(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p2}, Lmb/e;->r(Lmb/c;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_1
    check-cast p2, [B

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    array-length p1, p2

    .line 126
    invoke-virtual {p0, p1}, Lmb/e;->v(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p2}, Lmb/e;->s([B)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :pswitch_7
    check-cast p2, Lmb/p;

    .line 135
    .line 136
    invoke-virtual {p0, p2}, Lmb/e;->p(Lmb/p;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :pswitch_8
    check-cast p2, Lmb/p;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-interface {p2, p0}, Lmb/p;->d(Lmb/e;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_1

    .line 150
    .line 151
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    const-string p1, "UTF-8"

    .line 157
    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    array-length p2, p1

    .line 163
    invoke-virtual {p0, p2}, Lmb/e;->v(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lmb/e;->s([B)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    invoke-virtual {p0, p1}, Lmb/e;->q(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    invoke-virtual {p0, p1}, Lmb/e;->t(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 193
    .line 194
    .line 195
    move-result-wide p1

    .line 196
    invoke-virtual {p0, p1, p2}, Lmb/e;->u(J)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .line 201
    .line 202
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Lmb/e;->n(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .line 211
    .line 212
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 213
    .line 214
    .line 215
    move-result-wide p1

    .line 216
    invoke-virtual {p0, p1, p2}, Lmb/e;->w(J)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 223
    .line 224
    .line 225
    move-result-wide p1

    .line 226
    invoke-virtual {p0, p1, p2}, Lmb/e;->w(J)V

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-virtual {p0, p1}, Lmb/e;->t(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 250
    .line 251
    .line 252
    move-result-wide p1

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 257
    .line 258
    .line 259
    move-result-wide p1

    .line 260
    invoke-virtual {p0, p1, p2}, Lmb/e;->u(J)V

    .line 261
    .line 262
    .line 263
    :goto_1
    return-void

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lmb/h$d;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lmb/h$d;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lmb/h$d;->b:Lmb/w;

    .line 6
    .line 7
    invoke-static {v0, p2}, Lmb/g;->l(Lmb/w;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lmb/g;->f(Lmb/g$a;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lmb/g;->a:Lmb/t;

    .line 22
    .line 23
    invoke-virtual {v1, p1, v0}, Lmb/u;->e(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 28
    .line 29
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "addRepeatedField() can only be called on repeated fields."

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final b()Lmb/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmb/g<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lmb/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lmb/g;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lmb/g;->a:Lmb/t;

    .line 8
    .line 9
    iget-object v3, v2, Lmb/u;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_0

    .line 16
    .line 17
    iget-object v2, v2, Lmb/u;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lmb/g$a;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v3, v2}, Lmb/g;->k(Lmb/g$a;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v2}, Lmb/u;->c()Ljava/lang/Iterable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/util/Map$Entry;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lmb/g$a;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v3, v2}, Lmb/g;->k(Lmb/g$a;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-boolean v1, p0, Lmb/g;->c:Z

    .line 76
    .line 77
    iput-boolean v1, v0, Lmb/g;->c:Z

    .line 78
    .line 79
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lmb/g;->b()Lmb/g;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lmb/g$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lmb/g;->a:Lmb/t;

    invoke-virtual {v0, p1}, Lmb/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lmb/k;

    if-eqz v0, :cond_0

    check-cast p1, Lmb/k;

    invoke-virtual {p1}, Lmb/k;->a()Lmb/p;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmb/g;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lmb/g;->a:Lmb/t;

    .line 7
    .line 8
    iget-boolean v1, v0, Lmb/u;->d:Z

    .line 9
    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, v0, Lmb/u;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    iget-object v2, v0, Lmb/u;->b:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lmb/g$a;

    .line 34
    .line 35
    invoke-interface {v3}, Lmb/g$a;->g()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/util/List;

    .line 46
    .line 47
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0}, Lmb/u;->c()Ljava/lang/Iterable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lmb/g$a;

    .line 82
    .line 83
    invoke-interface {v3}, Lmb/g$a;->g()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/util/List;

    .line 94
    .line 95
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    iget-boolean v1, v0, Lmb/u;->d:Z

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    if-nez v1, :cond_6

    .line 107
    .line 108
    iget-object v1, v0, Lmb/u;->c:Ljava/util/Map;

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    iget-object v1, v0, Lmb/u;->c:Ljava/util/Map;

    .line 122
    .line 123
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :goto_2
    iput-object v1, v0, Lmb/u;->c:Ljava/util/Map;

    .line 128
    .line 129
    iput-boolean v2, v0, Lmb/u;->d:Z

    .line 130
    .line 131
    :cond_6
    iput-boolean v2, p0, Lmb/g;->b:Z

    .line 132
    .line 133
    return-void
.end method

.method public final i(Ljava/util/Map$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/g$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lmb/k;

    if-eqz v1, :cond_0

    check-cast p1, Lmb/k;

    invoke-virtual {p1}, Lmb/k;->a()Lmb/p;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Lmb/g$a;->g()Z

    move-result v1

    iget-object v2, p0, Lmb/g;->a:Lmb/t;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lmb/g;->f(Lmb/g$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    invoke-static {v3}, Lmb/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0, v1}, Lmb/u;->e(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lmb/g$a;->l()Lmb/x;

    move-result-object v1

    sget-object v3, Lmb/x;->k:Lmb/x;

    if-ne v1, v3, :cond_5

    invoke-virtual {p0, v0}, Lmb/g;->f(Lmb/g$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    check-cast v1, Lmb/p;

    invoke-interface {v1}, Lmb/p;->f()Lmb/p$a;

    move-result-object v1

    check-cast p1, Lmb/p;

    invoke-interface {v0, v1, p1}, Lmb/g$a;->I(Lmb/p$a;Lmb/p;)Lmb/h$a;

    move-result-object p1

    invoke-interface {p1}, Lmb/p$a;->build()Lmb/p;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {p1}, Lmb/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-virtual {v2, v0, p1}, Lmb/u;->e(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public final k(Lmb/g$a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lmb/g$a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lmb/g$a;->h()Lmb/w;

    move-result-object v2

    invoke-static {v2, v1}, Lmb/g;->l(Lmb/w;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p1}, Lmb/g$a;->h()Lmb/w;

    move-result-object v0

    invoke-static {v0, p2}, Lmb/g;->l(Lmb/w;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lmb/k;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmb/g;->c:Z

    :cond_3
    iget-object v0, p0, Lmb/g;->a:Lmb/t;

    invoke-virtual {v0, p1, p2}, Lmb/u;->e(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
