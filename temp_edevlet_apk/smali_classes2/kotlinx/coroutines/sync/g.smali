.class public final Lkotlinx/coroutines/sync/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/sync/f;


# static fields
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field volatile synthetic _availablePermits:I

.field public final a:I

.field public final b:Lkotlinx/coroutines/sync/g$a;

.field private volatile synthetic deqIdx:J

.field private volatile synthetic enqIdx:J

.field private volatile synthetic head:Ljava/lang/Object;

.field private volatile synthetic tail:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "head"

    const-class v1, Lkotlinx/coroutines/sync/g;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/g;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "deqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/g;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "tail"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/g;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/g;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/g;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/sync/g;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkotlinx/coroutines/sync/g;->deqIdx:J

    iput-wide v0, p0, Lkotlinx/coroutines/sync/g;->enqIdx:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    if-ltz p2, :cond_1

    if-gt p2, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    new-instance v2, Lkotlinx/coroutines/sync/i;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v0, v1, v3, v4}, Lkotlinx/coroutines/sync/i;-><init>(JLkotlinx/coroutines/sync/i;I)V

    iput-object v2, p0, Lkotlinx/coroutines/sync/g;->head:Ljava/lang/Object;

    iput-object v2, p0, Lkotlinx/coroutines/sync/g;->tail:Ljava/lang/Object;

    sub-int/2addr p1, p2

    iput p1, p0, Lkotlinx/coroutines/sync/g;->_availablePermits:I

    new-instance p1, Lkotlinx/coroutines/sync/g$a;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/sync/g$a;-><init>(Lkotlinx/coroutines/sync/g;)V

    iput-object p1, p0, Lkotlinx/coroutines/sync/g;->b:Lkotlinx/coroutines/sync/g$a;

    return-void

    :cond_2
    const-string p2, "The number of acquired permits should be in 0.."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p2, "Semaphore should have at least 1 permit, but had "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a(Lg/b$c;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/sync/g;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-static/range {p1 .. p1}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/d0;->u(Lp9/d;)Lnc/j;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/sync/g;->tail:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lkotlinx/coroutines/sync/i;

    .line 25
    .line 26
    sget-object v3, Lkotlinx/coroutines/sync/g;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    sget v5, Lkotlinx/coroutines/sync/h;->f:I

    .line 33
    .line 34
    int-to-long v5, v5

    .line 35
    div-long v5, v3, v5

    .line 36
    .line 37
    :cond_2
    move-object v7, v2

    .line 38
    :cond_3
    :goto_0
    iget-wide v8, v7, Lkotlinx/coroutines/internal/s;->c:J

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    sget-object v11, Lc5/e0;->c:Lkotlinx/coroutines/internal/u;

    .line 42
    .line 43
    cmp-long v14, v8, v5

    .line 44
    .line 45
    if-ltz v14, :cond_4

    .line 46
    .line 47
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/s;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_5

    .line 52
    .line 53
    :cond_4
    invoke-static {v7}, Lkotlinx/coroutines/internal/e;->a(Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    if-ne v8, v11, :cond_18

    .line 58
    .line 59
    move-object v7, v11

    .line 60
    :cond_5
    if-ne v7, v11, :cond_6

    .line 61
    .line 62
    const/4 v8, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_6
    const/4 v8, 0x0

    .line 65
    :goto_1
    if-nez v8, :cond_e

    .line 66
    .line 67
    invoke-static {v7}, La0/b;->l(Ljava/lang/Object;)Lkotlinx/coroutines/internal/s;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    :cond_7
    :goto_2
    iget-object v9, v0, Lkotlinx/coroutines/sync/g;->tail:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v9, Lkotlinx/coroutines/internal/s;

    .line 74
    .line 75
    iget-wide v14, v9, Lkotlinx/coroutines/internal/s;->c:J

    .line 76
    .line 77
    iget-wide v12, v8, Lkotlinx/coroutines/internal/s;->c:J

    .line 78
    .line 79
    cmp-long v16, v14, v12

    .line 80
    .line 81
    if-ltz v16, :cond_8

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_8
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/s;->g()Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-nez v12, :cond_9

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    goto :goto_5

    .line 92
    :cond_9
    sget-object v12, Lkotlinx/coroutines/sync/g;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 93
    .line 94
    :cond_a
    invoke-virtual {v12, v0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    if-eqz v13, :cond_b

    .line 99
    .line 100
    const/4 v12, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_b
    invoke-virtual {v12, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    if-eq v13, v9, :cond_a

    .line 107
    .line 108
    const/4 v12, 0x0

    .line 109
    :goto_3
    if-eqz v12, :cond_d

    .line 110
    .line 111
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/s;->e()Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_c

    .line 116
    .line 117
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/e;->d()V

    .line 118
    .line 119
    .line 120
    :cond_c
    :goto_4
    const/4 v8, 0x1

    .line 121
    :goto_5
    if-eqz v8, :cond_2

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_d
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/s;->e()Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-eqz v9, :cond_7

    .line 129
    .line 130
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/e;->d()V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_e
    :goto_6
    invoke-static {v7}, La0/b;->l(Ljava/lang/Object;)Lkotlinx/coroutines/internal/s;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    move-object v9, v2

    .line 139
    check-cast v9, Lkotlinx/coroutines/sync/i;

    .line 140
    .line 141
    sget v2, Lkotlinx/coroutines/sync/h;->f:I

    .line 142
    .line 143
    int-to-long v5, v2

    .line 144
    rem-long/2addr v3, v5

    .line 145
    long-to-int v12, v3

    .line 146
    iget-object v13, v9, Lkotlinx/coroutines/sync/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 147
    .line 148
    :cond_f
    invoke-virtual {v13, v12, v10, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_10

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    goto :goto_7

    .line 156
    :cond_10
    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-eqz v2, :cond_f

    .line 161
    .line 162
    const/4 v2, 0x0

    .line 163
    :goto_7
    if-eqz v2, :cond_11

    .line 164
    .line 165
    new-instance v2, Lkotlinx/coroutines/sync/a;

    .line 166
    .line 167
    invoke-direct {v2, v9, v12}, Lkotlinx/coroutines/sync/a;-><init>(Lkotlinx/coroutines/sync/i;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lnc/j;->D(Lx9/l;)V

    .line 171
    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_11
    sget-object v2, Lkotlinx/coroutines/sync/h;->b:Lkotlinx/coroutines/internal/u;

    .line 175
    .line 176
    sget-object v3, Lkotlinx/coroutines/sync/h;->c:Lkotlinx/coroutines/internal/u;

    .line 177
    .line 178
    iget-object v4, v9, Lkotlinx/coroutines/sync/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 179
    .line 180
    :cond_12
    invoke-virtual {v4, v12, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_13

    .line 185
    .line 186
    const/4 v2, 0x1

    .line 187
    goto :goto_8

    .line 188
    :cond_13
    invoke-virtual {v4, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    if-eq v5, v2, :cond_12

    .line 193
    .line 194
    const/4 v2, 0x0

    .line 195
    :goto_8
    if-eqz v2, :cond_14

    .line 196
    .line 197
    sget-object v2, Ll9/m;->a:Ll9/m;

    .line 198
    .line 199
    iget-object v3, v0, Lkotlinx/coroutines/sync/g;->b:Lkotlinx/coroutines/sync/g$a;

    .line 200
    .line 201
    iget v4, v1, Lnc/i0;->c:I

    .line 202
    .line 203
    invoke-virtual {v1, v2, v4, v3}, Lnc/j;->u(Ljava/lang/Object;ILx9/l;)V

    .line 204
    .line 205
    .line 206
    :goto_9
    const/4 v12, 0x1

    .line 207
    goto :goto_a

    .line 208
    :cond_14
    const/4 v12, 0x0

    .line 209
    :goto_a
    if-eqz v12, :cond_15

    .line 210
    .line 211
    goto :goto_b

    .line 212
    :cond_15
    sget-object v2, Lkotlinx/coroutines/sync/g;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 213
    .line 214
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-lez v2, :cond_1

    .line 219
    .line 220
    sget-object v2, Ll9/m;->a:Ll9/m;

    .line 221
    .line 222
    iget-object v3, v0, Lkotlinx/coroutines/sync/g;->b:Lkotlinx/coroutines/sync/g$a;

    .line 223
    .line 224
    iget v4, v1, Lnc/i0;->c:I

    .line 225
    .line 226
    invoke-virtual {v1, v2, v4, v3}, Lnc/j;->u(Ljava/lang/Object;ILx9/l;)V

    .line 227
    .line 228
    .line 229
    :goto_b
    invoke-virtual {v1}, Lnc/j;->m()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    sget-object v2, Lq9/a;->a:Lq9/a;

    .line 234
    .line 235
    if-ne v1, v2, :cond_16

    .line 236
    .line 237
    goto :goto_c

    .line 238
    :cond_16
    sget-object v1, Ll9/m;->a:Ll9/m;

    .line 239
    .line 240
    :goto_c
    if-ne v1, v2, :cond_17

    .line 241
    .line 242
    return-object v1

    .line 243
    :cond_17
    sget-object v1, Ll9/m;->a:Ll9/m;

    .line 244
    .line 245
    return-object v1

    .line 246
    :cond_18
    check-cast v8, Lkotlinx/coroutines/internal/e;

    .line 247
    .line 248
    check-cast v8, Lkotlinx/coroutines/internal/s;

    .line 249
    .line 250
    if-eqz v8, :cond_19

    .line 251
    .line 252
    move-object v7, v8

    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_19
    iget-wide v8, v7, Lkotlinx/coroutines/internal/s;->c:J

    .line 256
    .line 257
    const-wide/16 v12, 0x1

    .line 258
    .line 259
    add-long/2addr v8, v12

    .line 260
    move-object v12, v7

    .line 261
    check-cast v12, Lkotlinx/coroutines/sync/i;

    .line 262
    .line 263
    new-instance v13, Lkotlinx/coroutines/sync/i;

    .line 264
    .line 265
    const/4 v11, 0x0

    .line 266
    invoke-direct {v13, v8, v9, v12, v11}, Lkotlinx/coroutines/sync/i;-><init>(JLkotlinx/coroutines/sync/i;I)V

    .line 267
    .line 268
    .line 269
    :cond_1a
    sget-object v8, Lkotlinx/coroutines/internal/e;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 270
    .line 271
    invoke-virtual {v8, v7, v10, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-eqz v9, :cond_1b

    .line 276
    .line 277
    const/4 v12, 0x1

    .line 278
    goto :goto_d

    .line 279
    :cond_1b
    invoke-virtual {v8, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    if-eqz v8, :cond_1a

    .line 284
    .line 285
    const/4 v12, 0x0

    .line 286
    :goto_d
    if-eqz v12, :cond_3

    .line 287
    .line 288
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/s;->b()Z

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    if-eqz v8, :cond_1c

    .line 293
    .line 294
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/e;->d()V

    .line 295
    .line 296
    .line 297
    :cond_1c
    move-object v7, v13

    .line 298
    goto/16 :goto_0
.end method

.method public final release()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    iget v1, v0, Lkotlinx/coroutines/sync/g;->_availablePermits:I

    .line 4
    .line 5
    iget v2, v0, Lkotlinx/coroutines/sync/g;->a:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v5, 0x0

    .line 14
    :goto_0
    if-eqz v5, :cond_1d

    .line 15
    .line 16
    add-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    sget-object v5, Lkotlinx/coroutines/sync/g;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 19
    .line 20
    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    if-ltz v1, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget-object v1, v0, Lkotlinx/coroutines/sync/g;->head:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lkotlinx/coroutines/sync/i;

    .line 32
    .line 33
    sget-object v2, Lkotlinx/coroutines/sync/g;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    sget v2, Lkotlinx/coroutines/sync/h;->f:I

    .line 40
    .line 41
    int-to-long v7, v2

    .line 42
    div-long v7, v5, v7

    .line 43
    .line 44
    :cond_3
    move-object v2, v1

    .line 45
    :cond_4
    :goto_1
    iget-wide v9, v2, Lkotlinx/coroutines/internal/s;->c:J

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    sget-object v12, Lc5/e0;->c:Lkotlinx/coroutines/internal/u;

    .line 49
    .line 50
    cmp-long v13, v9, v7

    .line 51
    .line 52
    if-ltz v13, :cond_5

    .line 53
    .line 54
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_6

    .line 59
    .line 60
    :cond_5
    invoke-static {v2}, Lkotlinx/coroutines/internal/e;->a(Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    if-ne v9, v12, :cond_18

    .line 65
    .line 66
    move-object v2, v12

    .line 67
    :cond_6
    if-ne v2, v12, :cond_7

    .line 68
    .line 69
    const/4 v9, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_7
    const/4 v9, 0x0

    .line 72
    :goto_2
    if-nez v9, :cond_f

    .line 73
    .line 74
    invoke-static {v2}, La0/b;->l(Ljava/lang/Object;)Lkotlinx/coroutines/internal/s;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    :cond_8
    :goto_3
    iget-object v10, v0, Lkotlinx/coroutines/sync/g;->head:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v10, Lkotlinx/coroutines/internal/s;

    .line 81
    .line 82
    iget-wide v12, v10, Lkotlinx/coroutines/internal/s;->c:J

    .line 83
    .line 84
    iget-wide v14, v9, Lkotlinx/coroutines/internal/s;->c:J

    .line 85
    .line 86
    cmp-long v16, v12, v14

    .line 87
    .line 88
    if-ltz v16, :cond_9

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_9
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/s;->g()Z

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    if-nez v12, :cond_a

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    goto :goto_6

    .line 99
    :cond_a
    sget-object v12, Lkotlinx/coroutines/sync/g;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 100
    .line 101
    :cond_b
    invoke-virtual {v12, v0, v10, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-eqz v13, :cond_c

    .line 106
    .line 107
    const/4 v12, 0x1

    .line 108
    goto :goto_4

    .line 109
    :cond_c
    invoke-virtual {v12, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    if-eq v13, v10, :cond_b

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    :goto_4
    if-eqz v12, :cond_e

    .line 117
    .line 118
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/s;->e()Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_d

    .line 123
    .line 124
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/e;->d()V

    .line 125
    .line 126
    .line 127
    :cond_d
    :goto_5
    const/4 v9, 0x1

    .line 128
    :goto_6
    if-eqz v9, :cond_3

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_e
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/s;->e()Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_8

    .line 136
    .line 137
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/e;->d()V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_f
    :goto_7
    invoke-static {v2}, La0/b;->l(Ljava/lang/Object;)Lkotlinx/coroutines/internal/s;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lkotlinx/coroutines/sync/i;

    .line 146
    .line 147
    sget-object v2, Lkotlinx/coroutines/internal/e;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 148
    .line 149
    invoke-virtual {v2, v1, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-wide v9, v1, Lkotlinx/coroutines/internal/s;->c:J

    .line 153
    .line 154
    cmp-long v2, v9, v7

    .line 155
    .line 156
    if-lez v2, :cond_10

    .line 157
    .line 158
    goto :goto_a

    .line 159
    :cond_10
    sget v2, Lkotlinx/coroutines/sync/h;->f:I

    .line 160
    .line 161
    int-to-long v7, v2

    .line 162
    rem-long/2addr v5, v7

    .line 163
    long-to-int v2, v5

    .line 164
    sget-object v5, Lkotlinx/coroutines/sync/h;->b:Lkotlinx/coroutines/internal/u;

    .line 165
    .line 166
    iget-object v6, v1, Lkotlinx/coroutines/sync/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 167
    .line 168
    invoke-virtual {v6, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    if-nez v5, :cond_15

    .line 173
    .line 174
    sget v5, Lkotlinx/coroutines/sync/h;->a:I

    .line 175
    .line 176
    const/4 v6, 0x0

    .line 177
    :cond_11
    if-ge v6, v5, :cond_12

    .line 178
    .line 179
    add-int/lit8 v6, v6, 0x1

    .line 180
    .line 181
    iget-object v7, v1, Lkotlinx/coroutines/sync/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 182
    .line 183
    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    sget-object v8, Lkotlinx/coroutines/sync/h;->c:Lkotlinx/coroutines/internal/u;

    .line 188
    .line 189
    if-ne v7, v8, :cond_11

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_12
    sget-object v6, Lkotlinx/coroutines/sync/h;->b:Lkotlinx/coroutines/internal/u;

    .line 193
    .line 194
    sget-object v7, Lkotlinx/coroutines/sync/h;->d:Lkotlinx/coroutines/internal/u;

    .line 195
    .line 196
    iget-object v1, v1, Lkotlinx/coroutines/sync/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 197
    .line 198
    :cond_13
    invoke-virtual {v1, v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_14

    .line 203
    .line 204
    const/4 v3, 0x1

    .line 205
    goto :goto_8

    .line 206
    :cond_14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    if-eq v5, v6, :cond_13

    .line 211
    .line 212
    :goto_8
    xor-int/2addr v3, v4

    .line 213
    goto :goto_a

    .line 214
    :cond_15
    sget-object v1, Lkotlinx/coroutines/sync/h;->e:Lkotlinx/coroutines/internal/u;

    .line 215
    .line 216
    if-ne v5, v1, :cond_16

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_16
    check-cast v5, Lnc/i;

    .line 220
    .line 221
    sget-object v1, Ll9/m;->a:Ll9/m;

    .line 222
    .line 223
    iget-object v2, v0, Lkotlinx/coroutines/sync/g;->b:Lkotlinx/coroutines/sync/g$a;

    .line 224
    .line 225
    invoke-interface {v5, v1, v11, v2}, Lnc/i;->w(Ljava/lang/Object;Lkotlinx/coroutines/internal/j$a;Lx9/l;)Lkotlinx/coroutines/internal/u;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-nez v1, :cond_17

    .line 230
    .line 231
    goto :goto_a

    .line 232
    :cond_17
    invoke-interface {v5}, Lnc/i;->g()V

    .line 233
    .line 234
    .line 235
    :goto_9
    const/4 v3, 0x1

    .line 236
    :goto_a
    if-eqz v3, :cond_0

    .line 237
    .line 238
    return-void

    .line 239
    :cond_18
    check-cast v9, Lkotlinx/coroutines/internal/e;

    .line 240
    .line 241
    check-cast v9, Lkotlinx/coroutines/internal/s;

    .line 242
    .line 243
    if-eqz v9, :cond_19

    .line 244
    .line 245
    move-object v2, v9

    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_19
    iget-wide v9, v2, Lkotlinx/coroutines/internal/s;->c:J

    .line 249
    .line 250
    const-wide/16 v12, 0x1

    .line 251
    .line 252
    add-long/2addr v9, v12

    .line 253
    move-object v12, v2

    .line 254
    check-cast v12, Lkotlinx/coroutines/sync/i;

    .line 255
    .line 256
    new-instance v13, Lkotlinx/coroutines/sync/i;

    .line 257
    .line 258
    invoke-direct {v13, v9, v10, v12, v3}, Lkotlinx/coroutines/sync/i;-><init>(JLkotlinx/coroutines/sync/i;I)V

    .line 259
    .line 260
    .line 261
    :cond_1a
    sget-object v9, Lkotlinx/coroutines/internal/e;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 262
    .line 263
    invoke-virtual {v9, v2, v11, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    if-eqz v10, :cond_1b

    .line 268
    .line 269
    const/4 v9, 0x1

    .line 270
    goto :goto_b

    .line 271
    :cond_1b
    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    if-eqz v9, :cond_1a

    .line 276
    .line 277
    const/4 v9, 0x0

    .line 278
    :goto_b
    if-eqz v9, :cond_4

    .line 279
    .line 280
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->b()Z

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    if-eqz v9, :cond_1c

    .line 285
    .line 286
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/e;->d()V

    .line 287
    .line 288
    .line 289
    :cond_1c
    move-object v2, v13

    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :cond_1d
    const-string v1, "The number of released permits cannot be greater than "

    .line 293
    .line 294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v2
.end method
