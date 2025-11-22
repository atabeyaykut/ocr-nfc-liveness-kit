.class public final Lkotlinx/coroutines/flow/e0;
.super Lqc/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/v;
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lqc/a<",
        "Lkotlinx/coroutines/flow/f0;",
        ">;",
        "Lkotlinx/coroutines/flow/v<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field private volatile synthetic _state:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lqc/a;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/e0;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lp9/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lkotlinx/coroutines/flow/e0$a;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lkotlinx/coroutines/flow/e0$a;

    .line 13
    .line 14
    iget v4, v3, Lkotlinx/coroutines/flow/e0$a;->h:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lkotlinx/coroutines/flow/e0$a;->h:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lkotlinx/coroutines/flow/e0$a;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2}, Lkotlinx/coroutines/flow/e0$a;-><init>(Lkotlinx/coroutines/flow/e0;Lp9/d;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lkotlinx/coroutines/flow/e0$a;->f:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lq9/a;->a:Lq9/a;

    .line 34
    .line 35
    iget v5, v3, Lkotlinx/coroutines/flow/e0$a;->h:I

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x3

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x1

    .line 41
    if-eqz v5, :cond_4

    .line 42
    .line 43
    if-eq v5, v9, :cond_3

    .line 44
    .line 45
    if-eq v5, v6, :cond_2

    .line 46
    .line 47
    if-ne v5, v7, :cond_1

    .line 48
    .line 49
    iget-object v0, v3, Lkotlinx/coroutines/flow/e0$a;->e:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v5, v3, Lkotlinx/coroutines/flow/e0$a;->d:Lnc/b1;

    .line 52
    .line 53
    iget-object v10, v3, Lkotlinx/coroutines/flow/e0$a;->c:Lkotlinx/coroutines/flow/f0;

    .line 54
    .line 55
    iget-object v11, v3, Lkotlinx/coroutines/flow/e0$a;->b:Lkotlinx/coroutines/flow/g;

    .line 56
    .line 57
    iget-object v12, v3, Lkotlinx/coroutines/flow/e0$a;->a:Lkotlinx/coroutines/flow/e0;

    .line 58
    .line 59
    :try_start_0
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    move-object v2, v4

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_2
    iget-object v0, v3, Lkotlinx/coroutines/flow/e0$a;->e:Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v5, v3, Lkotlinx/coroutines/flow/e0$a;->d:Lnc/b1;

    .line 75
    .line 76
    iget-object v10, v3, Lkotlinx/coroutines/flow/e0$a;->c:Lkotlinx/coroutines/flow/f0;

    .line 77
    .line 78
    iget-object v11, v3, Lkotlinx/coroutines/flow/e0$a;->b:Lkotlinx/coroutines/flow/g;

    .line 79
    .line 80
    iget-object v12, v3, Lkotlinx/coroutines/flow/e0$a;->a:Lkotlinx/coroutines/flow/e0;

    .line 81
    .line 82
    :try_start_1
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    move-object v2, v4

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_3
    iget-object v10, v3, Lkotlinx/coroutines/flow/e0$a;->c:Lkotlinx/coroutines/flow/f0;

    .line 89
    .line 90
    iget-object v0, v3, Lkotlinx/coroutines/flow/e0$a;->b:Lkotlinx/coroutines/flow/g;

    .line 91
    .line 92
    iget-object v12, v3, Lkotlinx/coroutines/flow/e0$a;->a:Lkotlinx/coroutines/flow/e0;

    .line 93
    .line 94
    :try_start_2
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto/16 :goto_a

    .line 100
    .line 101
    :cond_4
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lqc/a;->b()Lqc/b;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lkotlinx/coroutines/flow/f0;

    .line 109
    .line 110
    :try_start_3
    instance-of v5, v0, Lkotlinx/coroutines/flow/h0;

    .line 111
    .line 112
    if-eqz v5, :cond_5

    .line 113
    .line 114
    move-object v5, v0

    .line 115
    check-cast v5, Lkotlinx/coroutines/flow/h0;

    .line 116
    .line 117
    iput-object v1, v3, Lkotlinx/coroutines/flow/e0$a;->a:Lkotlinx/coroutines/flow/e0;

    .line 118
    .line 119
    iput-object v0, v3, Lkotlinx/coroutines/flow/e0$a;->b:Lkotlinx/coroutines/flow/g;

    .line 120
    .line 121
    iput-object v2, v3, Lkotlinx/coroutines/flow/e0$a;->c:Lkotlinx/coroutines/flow/f0;

    .line 122
    .line 123
    iput v9, v3, Lkotlinx/coroutines/flow/e0$a;->h:I

    .line 124
    .line 125
    invoke-virtual {v5, v3}, Lkotlinx/coroutines/flow/h0;->a(Lp9/d;)Ll9/m;

    .line 126
    .line 127
    .line 128
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    if-ne v5, v4, :cond_5

    .line 130
    .line 131
    return-object v4

    .line 132
    :cond_5
    move-object v12, v1

    .line 133
    move-object v10, v2

    .line 134
    :goto_1
    :try_start_4
    invoke-interface {v3}, Lp9/d;->getContext()Lp9/f;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    sget-object v5, Lnc/b1$b;->a:Lnc/b1$b;

    .line 139
    .line 140
    invoke-interface {v2, v5}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    move-object v5, v2

    .line 145
    check-cast v5, Lnc/b1;

    .line 146
    .line 147
    move-object v11, v0

    .line 148
    move-object v2, v4

    .line 149
    move-object v0, v8

    .line 150
    :cond_6
    :goto_2
    iget-object v13, v12, Lkotlinx/coroutines/flow/e0;->_state:Ljava/lang/Object;

    .line 151
    .line 152
    if-nez v5, :cond_7

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    invoke-interface {v5}, Lnc/b1;->b()Z

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-eqz v14, :cond_11

    .line 160
    .line 161
    :goto_3
    if-eqz v0, :cond_8

    .line 162
    .line 163
    invoke-static {v0, v13}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    if-nez v14, :cond_b

    .line 168
    .line 169
    :cond_8
    sget-object v0, La2/b;->k:Lkotlinx/coroutines/internal/u;

    .line 170
    .line 171
    if-ne v13, v0, :cond_9

    .line 172
    .line 173
    move-object v0, v8

    .line 174
    goto :goto_4

    .line 175
    :cond_9
    move-object v0, v13

    .line 176
    :goto_4
    iput-object v12, v3, Lkotlinx/coroutines/flow/e0$a;->a:Lkotlinx/coroutines/flow/e0;

    .line 177
    .line 178
    iput-object v11, v3, Lkotlinx/coroutines/flow/e0$a;->b:Lkotlinx/coroutines/flow/g;

    .line 179
    .line 180
    iput-object v10, v3, Lkotlinx/coroutines/flow/e0$a;->c:Lkotlinx/coroutines/flow/f0;

    .line 181
    .line 182
    iput-object v5, v3, Lkotlinx/coroutines/flow/e0$a;->d:Lnc/b1;

    .line 183
    .line 184
    iput-object v13, v3, Lkotlinx/coroutines/flow/e0$a;->e:Ljava/lang/Object;

    .line 185
    .line 186
    iput v6, v3, Lkotlinx/coroutines/flow/e0$a;->h:I

    .line 187
    .line 188
    invoke-interface {v11, v0, v3}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-ne v0, v4, :cond_a

    .line 193
    .line 194
    return-object v4

    .line 195
    :cond_a
    move-object v0, v13

    .line 196
    :cond_b
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object v13, Lx5/a;->j:Lkotlinx/coroutines/internal/u;

    .line 200
    .line 201
    sget-object v14, Lkotlinx/coroutines/flow/f0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 202
    .line 203
    invoke-virtual {v14, v10, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    invoke-static {v14}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    sget-object v15, Lx5/a;->k:Lkotlinx/coroutines/internal/u;

    .line 211
    .line 212
    const/16 v16, 0x0

    .line 213
    .line 214
    if-ne v14, v15, :cond_c

    .line 215
    .line 216
    const/4 v14, 0x1

    .line 217
    goto :goto_6

    .line 218
    :cond_c
    const/4 v14, 0x0

    .line 219
    :goto_6
    if-nez v14, :cond_6

    .line 220
    .line 221
    iput-object v12, v3, Lkotlinx/coroutines/flow/e0$a;->a:Lkotlinx/coroutines/flow/e0;

    .line 222
    .line 223
    iput-object v11, v3, Lkotlinx/coroutines/flow/e0$a;->b:Lkotlinx/coroutines/flow/g;

    .line 224
    .line 225
    iput-object v10, v3, Lkotlinx/coroutines/flow/e0$a;->c:Lkotlinx/coroutines/flow/f0;

    .line 226
    .line 227
    iput-object v5, v3, Lkotlinx/coroutines/flow/e0$a;->d:Lnc/b1;

    .line 228
    .line 229
    iput-object v0, v3, Lkotlinx/coroutines/flow/e0$a;->e:Ljava/lang/Object;

    .line 230
    .line 231
    iput v7, v3, Lkotlinx/coroutines/flow/e0$a;->h:I

    .line 232
    .line 233
    new-instance v14, Lnc/j;

    .line 234
    .line 235
    invoke-static {v3}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    invoke-direct {v14, v9, v15}, Lnc/j;-><init>(ILp9/d;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v14}, Lnc/j;->n()V

    .line 243
    .line 244
    .line 245
    :cond_d
    sget-object v15, Lkotlinx/coroutines/flow/f0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 246
    .line 247
    invoke-virtual {v15, v10, v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v17

    .line 251
    if-eqz v17, :cond_e

    .line 252
    .line 253
    const/16 v16, 0x1

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_e
    invoke-virtual {v15, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v15

    .line 260
    if-eq v15, v13, :cond_d

    .line 261
    .line 262
    :goto_7
    if-eqz v16, :cond_f

    .line 263
    .line 264
    goto :goto_8

    .line 265
    :cond_f
    sget-object v13, Ll9/m;->a:Ll9/m;

    .line 266
    .line 267
    invoke-virtual {v14, v13}, Lnc/j;->resumeWith(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :goto_8
    invoke-virtual {v14}, Lnc/j;->m()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    if-ne v13, v2, :cond_10

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_10
    sget-object v13, Ll9/m;->a:Ll9/m;

    .line 278
    .line 279
    :goto_9
    if-ne v13, v4, :cond_6

    .line 280
    .line 281
    return-object v4

    .line 282
    :cond_11
    invoke-interface {v5}, Lnc/b1;->n()Ljava/util/concurrent/CancellationException;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    :goto_a
    move-object v2, v10

    .line 288
    goto :goto_b

    .line 289
    :catchall_1
    move-exception v0

    .line 290
    move-object v12, v1

    .line 291
    :goto_b
    invoke-virtual {v12, v2}, Lqc/a;->e(Lqc/b;)V

    .line 292
    .line 293
    .line 294
    throw v0
.end method

.method public final c()Lqc/b;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/f0;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/f0;-><init>()V

    return-object v0
.end method

.method public final d()[Lqc/b;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/coroutines/flow/f0;

    return-object v0
.end method

.method public final emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/e0;->setValue(Ljava/lang/Object;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, La2/b;->k:Lkotlinx/coroutines/internal/u;

    .line 4
    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/e0;->_state:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    monitor-exit p0

    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_1
    :try_start_1
    iput-object p1, p0, Lkotlinx/coroutines/flow/e0;->_state:Ljava/lang/Object;

    .line 18
    .line 19
    iget p1, p0, Lkotlinx/coroutines/flow/e0;->d:I

    .line 20
    .line 21
    and-int/lit8 v0, p1, 0x1

    .line 22
    .line 23
    if-nez v0, :cond_d

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    add-int/2addr p1, v0

    .line 27
    iput p1, p0, Lkotlinx/coroutines/flow/e0;->d:I

    .line 28
    .line 29
    iget-object v1, p0, Lqc/a;->a:[Lqc/b;

    .line 30
    .line 31
    sget-object v2, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    :goto_1
    check-cast v1, [Lkotlinx/coroutines/flow/f0;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_5

    .line 39
    :cond_2
    array-length v2, v1

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_2
    if-ge v4, v2, :cond_b

    .line 43
    .line 44
    aget-object v5, v1, v4

    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    if-nez v5, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iget-object v6, v5, Lkotlinx/coroutines/flow/f0;->_state:Ljava/lang/Object;

    .line 52
    .line 53
    if-nez v6, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    sget-object v7, Lx5/a;->k:Lkotlinx/coroutines/internal/u;

    .line 57
    .line 58
    if-ne v6, v7, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    sget-object v8, Lx5/a;->j:Lkotlinx/coroutines/internal/u;

    .line 62
    .line 63
    if-ne v6, v8, :cond_8

    .line 64
    .line 65
    sget-object v9, Lkotlinx/coroutines/flow/f0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 66
    .line 67
    :cond_6
    invoke-virtual {v9, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_7

    .line 72
    .line 73
    const/4 v6, 0x1

    .line 74
    goto :goto_3

    .line 75
    :cond_7
    invoke-virtual {v9, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    if-eq v8, v6, :cond_6

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    :goto_3
    if-eqz v6, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_8
    sget-object v7, Lkotlinx/coroutines/flow/f0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 86
    .line 87
    :cond_9
    invoke-virtual {v7, v5, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_a

    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    goto :goto_4

    .line 95
    :cond_a
    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    if-eq v9, v6, :cond_9

    .line 100
    .line 101
    const/4 v7, 0x0

    .line 102
    :goto_4
    if-eqz v7, :cond_3

    .line 103
    .line 104
    check-cast v6, Lnc/j;

    .line 105
    .line 106
    sget-object v5, Ll9/m;->a:Ll9/m;

    .line 107
    .line 108
    invoke-virtual {v6, v5}, Lnc/j;->resumeWith(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_b
    :goto_5
    monitor-enter p0

    .line 113
    :try_start_2
    iget v1, p0, Lkotlinx/coroutines/flow/e0;->d:I

    .line 114
    .line 115
    if-ne v1, p1, :cond_c

    .line 116
    .line 117
    add-int/2addr p1, v0

    .line 118
    iput p1, p0, Lkotlinx/coroutines/flow/e0;->d:I

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_c
    iget-object p1, p0, Lqc/a;->a:[Lqc/b;

    .line 122
    .line 123
    sget-object v2, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    monitor-exit p0

    .line 126
    move v10, v1

    .line 127
    move-object v1, p1

    .line 128
    move p1, v10

    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    monitor-exit p0

    .line 132
    throw p1

    .line 133
    :cond_d
    add-int/lit8 p1, p1, 0x2

    .line 134
    .line 135
    :try_start_3
    iput p1, p0, Lkotlinx/coroutines/flow/e0;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :goto_6
    return-void

    .line 139
    :catchall_1
    move-exception p1

    .line 140
    monitor-exit p0

    .line 141
    throw p1
.end method
