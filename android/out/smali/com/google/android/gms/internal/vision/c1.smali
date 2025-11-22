.class public final Lcom/google/android/gms/internal/vision/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/vision/e1<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/android/gms/internal/vision/c1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/g3<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/c1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/c1;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/c1;->d:Lcom/google/android/gms/internal/vision/c1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/vision/g3;->g:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/f3;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/f3;-><init>(I)V

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    sget p1, Lcom/google/android/gms/internal/vision/g3;->g:I

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/vision/f3;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/vision/f3;-><init>(I)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/c1;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/g3;->c()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/vision/c1;->b:Z

    .line 6
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/c1;->b:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/g3;->c()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/vision/c1;->b:Z

    :goto_1
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/vision/c4;Ljava/lang/Object;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/b1;->b:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :pswitch_0
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/l1;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    check-cast p1, Lcom/google/android/gms/internal/vision/l1;

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/l1;->a()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->J(I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->J(I)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide p0

    .line 53
    shl-long v0, p0, v0

    .line 54
    .line 55
    const/16 v2, 0x3f

    .line 56
    .line 57
    shr-long/2addr p0, v2

    .line 58
    xor-long/2addr p0, v0

    .line 59
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/t0;->H(J)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    shl-int/lit8 p1, p0, 0x1

    .line 71
    .line 72
    shr-int/lit8 p0, p0, 0x1f

    .line 73
    .line 74
    xor-int/2addr p0, p1

    .line 75
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0

    .line 91
    :pswitch_4
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/p0;

    .line 92
    .line 93
    if-eqz p0, :cond_1

    .line 94
    .line 95
    check-cast p1, Lcom/google/android/gms/internal/vision/p0;

    .line 96
    .line 97
    sget-object p0, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/p0;->x()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    add-int/2addr p1, p0

    .line 108
    return p1

    .line 109
    :cond_1
    check-cast p1, [B

    .line 110
    .line 111
    sget-object p0, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 112
    .line 113
    array-length p0, p1

    .line 114
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    add-int/2addr p1, p0

    .line 119
    return p1

    .line 120
    :pswitch_5
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/p0;

    .line 121
    .line 122
    if-eqz p0, :cond_2

    .line 123
    .line 124
    check-cast p1, Lcom/google/android/gms/internal/vision/p0;

    .line 125
    .line 126
    sget-object p0, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/p0;->x()I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    add-int/2addr p1, p0

    .line 137
    return p1

    .line 138
    :cond_2
    check-cast p1, Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/t0;->s(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    return p0

    .line 145
    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/u1;

    .line 146
    .line 147
    if-eqz p0, :cond_5

    .line 148
    .line 149
    check-cast p1, Lcom/google/android/gms/internal/vision/u1;

    .line 150
    .line 151
    sget-object p0, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 152
    .line 153
    iget-object p0, p1, Lcom/google/android/gms/internal/vision/y1;->b:Lcom/google/android/gms/internal/vision/p0;

    .line 154
    .line 155
    if-eqz p0, :cond_3

    .line 156
    .line 157
    iget-object p0, p1, Lcom/google/android/gms/internal/vision/y1;->b:Lcom/google/android/gms/internal/vision/p0;

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/p0;->x()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    goto :goto_0

    .line 164
    :cond_3
    iget-object p0, p1, Lcom/google/android/gms/internal/vision/y1;->a:Lcom/google/android/gms/internal/vision/n2;

    .line 165
    .line 166
    if-eqz p0, :cond_4

    .line 167
    .line 168
    iget-object p0, p1, Lcom/google/android/gms/internal/vision/y1;->a:Lcom/google/android/gms/internal/vision/n2;

    .line 169
    .line 170
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/n2;->r()I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    goto :goto_0

    .line 175
    :cond_4
    const/4 p0, 0x0

    .line 176
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    add-int/2addr p1, p0

    .line 181
    return p1

    .line 182
    :cond_5
    check-cast p1, Lcom/google/android/gms/internal/vision/n2;

    .line 183
    .line 184
    sget-object p0, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 185
    .line 186
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/n2;->r()I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    add-int/2addr p1, p0

    .line 195
    return p1

    .line 196
    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/vision/n2;

    .line 197
    .line 198
    sget-object p0, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 199
    .line 200
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/n2;->r()I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    return p0

    .line 205
    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    .line 209
    .line 210
    sget-object p0, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 211
    .line 212
    return v0

    .line 213
    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :pswitch_a
    check-cast p1, Ljava/lang/Long;

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->J(I)I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    return p0

    .line 236
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 239
    .line 240
    .line 241
    move-result-wide p0

    .line 242
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/t0;->H(J)I

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    return p0

    .line 247
    :pswitch_d
    check-cast p1, Ljava/lang/Long;

    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 250
    .line 251
    .line 252
    move-result-wide p0

    .line 253
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/t0;->H(J)I

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    return p0

    .line 258
    :pswitch_e
    check-cast p1, Ljava/lang/Float;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 261
    .line 262
    .line 263
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 264
    .line 265
    const/4 p0, 0x4

    .line 266
    return p0

    .line 267
    :pswitch_f
    check-cast p1, Ljava/lang/Double;

    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 270
    .line 271
    .line 272
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 273
    .line 274
    const/16 p0, 0x8

    .line 275
    .line 276
    return p0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lcom/google/android/gms/internal/vision/v2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/vision/v2;

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/v2;->a()Lcom/google/android/gms/internal/vision/v2;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static e(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/vision/e1<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/e1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/e1;->c()Lcom/google/android/gms/internal/vision/f4;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/vision/f4;->k:Lcom/google/android/gms/internal/vision/f4;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/e1;->d()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/vision/n2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/vision/n2;

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/p2;->f()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/vision/u1;

    if-eqz p0, :cond_1

    return v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v3
.end method

.method public static g(Lcom/google/android/gms/internal/vision/e1;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/e1<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/e1;->b()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/e1;->a()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/e1;->d()V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->F(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/vision/c4;->k:Lcom/google/android/gms/internal/vision/e4;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Lcom/google/android/gms/internal/vision/n2;

    .line 21
    .line 22
    instance-of v1, v0, Lcom/google/android/gms/internal/vision/h0;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/gms/internal/vision/h0;

    .line 27
    .line 28
    :cond_0
    shl-int/lit8 p0, p0, 0x1

    .line 29
    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/c1;->a(Lcom/google/android/gms/internal/vision/c4;Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    add-int/2addr p1, p0

    .line 36
    return p1
.end method

.method public static h(Ljava/util/Map$Entry;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/vision/e1;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/e1;->c()Lcom/google/android/gms/internal/vision/f4;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/google/android/gms/internal/vision/f4;->k:Lcom/google/android/gms/internal/vision/f4;

    .line 16
    .line 17
    if-ne v2, v3, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/e1;->d()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/e1;->e()V

    .line 23
    .line 24
    .line 25
    instance-of v0, v1, Lcom/google/android/gms/internal/vision/u1;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/google/android/gms/internal/vision/e1;

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/e1;->a()V

    .line 34
    .line 35
    .line 36
    const/16 p0, 0x18

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x2

    .line 40
    const/16 v4, 0x8

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    check-cast v1, Lcom/google/android/gms/internal/vision/u1;

    .line 45
    .line 46
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    shl-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vision/t0;->N(II)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v0

    .line 57
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    iget-object v0, v1, Lcom/google/android/gms/internal/vision/y1;->b:Lcom/google/android/gms/internal/vision/p0;

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-object v0, v1, Lcom/google/android/gms/internal/vision/y1;->b:Lcom/google/android/gms/internal/vision/p0;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/p0;->x()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/vision/y1;->a:Lcom/google/android/gms/internal/vision/n2;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v0, v1, Lcom/google/android/gms/internal/vision/y1;->a:Lcom/google/android/gms/internal/vision/n2;

    .line 77
    .line 78
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/n2;->r()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/2addr v0, v2

    .line 87
    add-int/2addr v0, p0

    .line 88
    add-int/2addr v0, v3

    .line 89
    return v0

    .line 90
    :cond_2
    check-cast v1, Lcom/google/android/gms/internal/vision/n2;

    .line 91
    .line 92
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    shl-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vision/t0;->N(II)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    add-int/2addr v2, v0

    .line 103
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/n2;->r()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-int/2addr v1, v0

    .line 116
    add-int/2addr v1, p0

    .line 117
    add-int/2addr v1, v2

    .line 118
    return v1

    .line 119
    :cond_3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/c1;->g(Lcom/google/android/gms/internal/vision/e1;Ljava/lang/Object;)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    return p0
.end method

.method public static j(Lcom/google/android/gms/internal/vision/e1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/e1;->b()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lcom/google/android/gms/internal/vision/b1;->a:[I

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/vision/e1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/g3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/u1;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/vision/u1;

    .line 13
    .line 14
    sget p1, Lcom/google/android/gms/internal/vision/u1;->c:I

    .line 15
    .line 16
    new-instance p1, Ljava/lang/NoSuchMethodError;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/vision/c1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/c1;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/g3;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/g3;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/e1;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/vision/c1;->d(Lcom/google/android/gms/internal/vision/e1;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/g3;->g()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/e1;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/vision/c1;->d(Lcom/google/android/gms/internal/vision/e1;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/c1;->c:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/vision/c1;->c:Z

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/vision/e1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/e1;->d()V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/c1;->j(Lcom/google/android/gms/internal/vision/e1;Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/c1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/vision/c1;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/g3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/vision/e1;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v1, p1, Lcom/google/android/gms/internal/vision/u1;

    .line 12
    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/e1;->d()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/e1;->c()Lcom/google/android/gms/internal/vision/f4;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lcom/google/android/gms/internal/vision/f4;->k:Lcom/google/android/gms/internal/vision/f4;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    .line 25
    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/c1;->b(Lcom/google/android/gms/internal/vision/e1;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/v2;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    check-cast v1, Lcom/google/android/gms/internal/vision/v2;

    .line 40
    .line 41
    check-cast p1, Lcom/google/android/gms/internal/vision/v2;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/e1;->a()Lcom/google/android/gms/internal/vision/v2;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    check-cast v1, Lcom/google/android/gms/internal/vision/n2;

    .line 49
    .line 50
    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/n2;->g()Lcom/google/android/gms/internal/vision/i1$b;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast p1, Lcom/google/android/gms/internal/vision/n2;

    .line 55
    .line 56
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/vision/e1;->U(Lcom/google/android/gms/internal/vision/q2;Lcom/google/android/gms/internal/vision/n2;)Lcom/google/android/gms/internal/vision/i1$b;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i1$b;->k()Lcom/google/android/gms/internal/vision/i1;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :goto_0
    invoke-virtual {v3, v0, p1}, Lcom/google/android/gms/internal/vision/g3;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/c1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v3, v0, p1}, Lcom/google/android/gms/internal/vision/g3;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/vision/u1;

    .line 77
    .line 78
    sget p1, Lcom/google/android/gms/internal/vision/u1;->c:I

    .line 79
    .line 80
    new-instance p1, Ljava/lang/NoSuchMethodError;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/g3;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/c1;->c:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/vision/v1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/g3;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/v1;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/g3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/g3;->e()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/g3;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/c1;->e(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/g3;->g()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/c1;->e(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
