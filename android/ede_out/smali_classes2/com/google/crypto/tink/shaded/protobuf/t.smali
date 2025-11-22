.class public final Lcom/google/crypto/tink/shaded/protobuf/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/crypto/tink/shaded/protobuf/t$a<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/crypto/tink/shaded/protobuf/t;


# instance fields
.field public final a:Lcom/google/crypto/tink/shaded/protobuf/h1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/h1<",
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

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/t;-><init>(I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/t;->d:Lcom/google/crypto/tink/shaded/protobuf/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/crypto/tink/shaded/protobuf/h1;->g:I

    .line 1
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/g1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/g1;-><init>(I)V

    .line 2
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    sget p1, Lcom/google/crypto/tink/shaded/protobuf/h1;->g:I

    .line 3
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/g1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/g1;-><init>(I)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    .line 5
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->g()V

    iput-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->b:Z

    .line 6
    :goto_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->b:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->g()V

    iput-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->b:Z

    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static c(Lcom/google/crypto/tink/shaded/protobuf/p1;ILjava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/l;->t(I)I

    move-result p1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/p1;->b:Lcom/google/crypto/tink/shaded/protobuf/p1$b;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    invoke-static {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t;->d(Lcom/google/crypto/tink/shaded/protobuf/p1;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(Lcom/google/crypto/tink/shaded/protobuf/p1;Ljava/lang/Object;)I
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
    packed-switch p0, :pswitch_data_0

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
    check-cast p1, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    shl-long v0, p0, v0

    .line 24
    .line 25
    const/16 v2, 0x3f

    .line 26
    .line 27
    shr-long/2addr p0, v2

    .line 28
    xor-long/2addr p0, v0

    .line 29
    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/l;->x(J)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    shl-int/lit8 p1, p0, 0x1

    .line 41
    .line 42
    shr-int/lit8 p0, p0, 0x1f

    .line 43
    .line 44
    xor-int/2addr p0, p1

    .line 45
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->v(I)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :pswitch_2
    instance-of p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z$a;

    .line 51
    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/z$a;

    .line 55
    .line 56
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/z$a;->f()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(I)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->v(I)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    return p0

    .line 87
    :pswitch_4
    instance-of p0, p1, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 88
    .line 89
    if-eqz p0, :cond_1

    .line 90
    .line 91
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 92
    .line 93
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/util/logging/Logger;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->size()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->v(I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    add-int/2addr p1, p0

    .line 104
    return p1

    .line 105
    :cond_1
    check-cast p1, [B

    .line 106
    .line 107
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/util/logging/Logger;

    .line 108
    .line 109
    array-length p0, p1

    .line 110
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->v(I)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    add-int/2addr p1, p0

    .line 115
    return p1

    .line 116
    :pswitch_5
    instance-of p0, p1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 117
    .line 118
    if-eqz p0, :cond_2

    .line 119
    .line 120
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/l;->m(Lcom/google/crypto/tink/shaded/protobuf/d0;)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    return p0

    .line 127
    :cond_2
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 128
    .line 129
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/util/logging/Logger;

    .line 130
    .line 131
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->c()I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->v(I)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    add-int/2addr p1, p0

    .line 140
    return p1

    .line 141
    :pswitch_6
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 142
    .line 143
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/util/logging/Logger;

    .line 144
    .line 145
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->c()I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    return p0

    .line 150
    :pswitch_7
    instance-of p0, p1, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 151
    .line 152
    if-eqz p0, :cond_3

    .line 153
    .line 154
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 155
    .line 156
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/util/logging/Logger;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->size()I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->v(I)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    add-int/2addr p1, p0

    .line 167
    return p1

    .line 168
    :cond_3
    check-cast p1, Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/l;->s(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    return p0

    .line 175
    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/util/logging/Logger;

    .line 181
    .line 182
    return v0

    .line 183
    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_a
    check-cast p1, Ljava/lang/Long;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(I)I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    return p0

    .line 206
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 209
    .line 210
    .line 211
    move-result-wide p0

    .line 212
    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/l;->x(J)I

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    return p0

    .line 217
    :pswitch_d
    check-cast p1, Ljava/lang/Long;

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 220
    .line 221
    .line 222
    move-result-wide p0

    .line 223
    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/l;->x(J)I

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    return p0

    .line 228
    :pswitch_e
    check-cast p1, Ljava/lang/Float;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 231
    .line 232
    .line 233
    :goto_0
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/util/logging/Logger;

    .line 234
    .line 235
    const/4 p0, 0x4

    .line 236
    return p0

    .line 237
    :pswitch_f
    check-cast p1, Ljava/lang/Double;

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 240
    .line 241
    .line 242
    :goto_1
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/util/logging/Logger;

    .line 243
    .line 244
    const/16 p0, 0x8

    .line 245
    .line 246
    return p0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lcom/google/crypto/tink/shaded/protobuf/t$a;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/t$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->h()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->f()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->g()V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/t;->c(Lcom/google/crypto/tink/shaded/protobuf/p1;ILjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static g(Ljava/util/Map$Entry;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/t$a;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->l()Lcom/google/crypto/tink/shaded/protobuf/q1;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/q1;->k:Lcom/google/crypto/tink/shaded/protobuf/q1;

    .line 16
    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->g()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->m()V

    .line 23
    .line 24
    .line 25
    instance-of v0, v1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/t$a;

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->f()V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x2

    .line 37
    const/4 v2, 0x3

    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->t(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    mul-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    invoke-static {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->u(II)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    add-int/2addr p0, v0

    .line 55
    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/l;->t(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->m(Lcom/google/crypto/tink/shaded/protobuf/d0;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v1, v0

    .line 64
    add-int/2addr v1, p0

    .line 65
    return v1

    .line 66
    :cond_0
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->t(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    mul-int/lit8 v0, v0, 0x2

    .line 73
    .line 74
    invoke-static {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->u(II)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    add-int/2addr p0, v0

    .line 79
    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/l;->t(I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->c()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->v(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    add-int/2addr v2, v1

    .line 92
    add-int/2addr v2, v0

    .line 93
    add-int/2addr v2, p0

    .line 94
    return v2

    .line 95
    :cond_1
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/t;->e(Lcom/google/crypto/tink/shaded/protobuf/t$a;Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    return p0
.end method

.method public static k(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/t$a<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/t$a;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->l()Lcom/google/crypto/tink/shaded/protobuf/q1;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/q1;->k:Lcom/google/crypto/tink/shaded/protobuf/q1;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->g()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/crypto/tink/shaded/protobuf/q0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/q0;

    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/r0;->b()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;

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

.method public static o(Lcom/google/crypto/tink/shaded/protobuf/p1;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/z;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/p1;->a:Lcom/google/crypto/tink/shaded/protobuf/q1;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :pswitch_0
    instance-of p0, p1, Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    instance-of p0, p1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    instance-of p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z$a;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    instance-of p0, p1, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 35
    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    instance-of p0, p1, [B

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    :cond_0
    :goto_0
    const/4 p0, 0x1

    .line 43
    goto :goto_2

    .line 44
    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 63
    :goto_2
    if-eqz p0, :cond_2

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


# virtual methods
.method public final a()Lcom/google/crypto/tink/shaded/protobuf/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/t<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/t;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/h1;->d()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v1, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->c(I)Ljava/util/Map$Entry;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/t$a;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/t;->n(Lcom/google/crypto/tink/shaded/protobuf/t$a;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/h1;->e()Ljava/lang/Iterable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/t$a;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/t;->n(Lcom/google/crypto/tink/shaded/protobuf/t$a;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->c:Z

    .line 70
    .line 71
    iput-boolean v1, v0, Lcom/google/crypto/tink/shaded/protobuf/t;->c:Z

    .line 72
    .line 73
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/t;->a()Lcom/google/crypto/tink/shaded/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/t;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/t;

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Lcom/google/crypto/tink/shaded/protobuf/t$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/d0;->a(Lcom/google/crypto/tink/shaded/protobuf/q0;)Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    return-object p1
.end method

.method public final h()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/h1;->d()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/h1;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/t$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/t;->e(Lcom/google/crypto/tink/shaded/protobuf/t$a;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/h1;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/t$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/t;->e(Lcom/google/crypto/tink/shaded/protobuf/t$a;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/h1;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/h1;->d()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/t;->k(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/h1;->e()Ljava/lang/Iterable;

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

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/t;->k(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final l()Ljava/util/Iterator;
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

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->c:Z

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/c0$b;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/c0$b;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/util/Map$Entry;)V
    .locals 3
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
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/t$a;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v1, p1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/c0;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->a(Lcom/google/crypto/tink/shaded/protobuf/q0;)Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_0
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->g()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->l()Lcom/google/crypto/tink/shaded/protobuf/q1;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/q1;->k:Lcom/google/crypto/tink/shaded/protobuf/q1;

    .line 30
    .line 31
    if-ne v1, v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/t;->f(Lcom/google/crypto/tink/shaded/protobuf/t$a;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 41
    .line 42
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->g()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 47
    .line 48
    invoke-interface {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->D(Lcom/google/crypto/tink/shaded/protobuf/q0$a;Lcom/google/crypto/tink/shaded/protobuf/q0;)Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/t;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    .line 62
    .line 63
    invoke-virtual {v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h1;->i(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final n(Lcom/google/crypto/tink/shaded/protobuf/t$a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->g()V

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/t$a;->h()V

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t;->o(Lcom/google/crypto/tink/shaded/protobuf/p1;Ljava/lang/Object;)V

    instance-of v0, p2, Lcom/google/crypto/tink/shaded/protobuf/c0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t;->a:Lcom/google/crypto/tink/shaded/protobuf/h1;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/h1;->i(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
