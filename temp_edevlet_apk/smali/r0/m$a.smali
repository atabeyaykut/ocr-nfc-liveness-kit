.class public final Lr0/m$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1"
    f = "MavericksLifecycleAwareFlow.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:Lpc/u;

.field public c:Lx9/q;

.field public d:Lkotlin/jvm/internal/v;

.field public e:Lkotlin/jvm/internal/v;

.field public f:Lkotlin/jvm/internal/t;

.field public g:I

.field public final synthetic h:Lr0/m;

.field public final synthetic j:Lkotlinx/coroutines/flow/g;


# direct methods
.method public constructor <init>(Lr0/m;Lkotlinx/coroutines/flow/g;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/m$a;->h:Lr0/m;

    iput-object p2, p0, Lr0/m$a;->j:Lkotlinx/coroutines/flow/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr0/m$a;

    iget-object v1, p0, Lr0/m$a;->h:Lr0/m;

    iget-object v2, p0, Lr0/m$a;->j:Lkotlinx/coroutines/flow/g;

    invoke-direct {v0, v1, v2, p2}, Lr0/m$a;-><init>(Lr0/m;Lkotlinx/coroutines/flow/g;Lp9/d;)V

    iput-object p1, v0, Lr0/m$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/m$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/m$a;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/m$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 4
    .line 5
    iget v2, v1, Lr0/m$a;->g:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    iget-object v2, v1, Lr0/m$a;->f:Lkotlin/jvm/internal/t;

    .line 13
    .line 14
    iget-object v3, v1, Lr0/m$a;->e:Lkotlin/jvm/internal/v;

    .line 15
    .line 16
    iget-object v4, v1, Lr0/m$a;->d:Lkotlin/jvm/internal/v;

    .line 17
    .line 18
    iget-object v5, v1, Lr0/m$a;->c:Lx9/q;

    .line 19
    .line 20
    iget-object v6, v1, Lr0/m$a;->b:Lpc/u;

    .line 21
    .line 22
    iget-object v7, v1, Lr0/m$a;->a:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v7, Lkotlin/jvm/internal/v;

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object v9, v1

    .line 30
    move-object v12, v2

    .line 31
    move-object v13, v3

    .line 32
    move-object v14, v4

    .line 33
    move-object v15, v5

    .line 34
    move-object v11, v6

    .line 35
    move-object v10, v7

    .line 36
    move-object v2, v0

    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    invoke-static/range {p1 .. p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v1, Lr0/m$a;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lnc/a0;

    .line 53
    .line 54
    new-instance v4, Lkotlin/jvm/internal/v;

    .line 55
    .line 56
    invoke-direct {v4}, Lkotlin/jvm/internal/v;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v5, v1, Lr0/m$a;->h:Lr0/m;

    .line 60
    .line 61
    iget-object v5, v5, Lr0/m;->d:Landroidx/lifecycle/LifecycleOwner;

    .line 62
    .line 63
    invoke-interface {v5}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v6, "owner.lifecycle"

    .line 68
    .line 69
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v6, -0x1

    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x6

    .line 75
    invoke-static {v6, v7, v8}, Lb8/f;->e(ILpc/f;I)Lpc/a;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    new-instance v8, Lcom/airbnb/mvrx/MavericksLifecycleAwareFlowKt$startedChannel$observer$1;

    .line 80
    .line 81
    invoke-direct {v8, v6}, Lcom/airbnb/mvrx/MavericksLifecycleAwareFlowKt$startedChannel$observer$1;-><init>(Lpc/a;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v8}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 85
    .line 86
    .line 87
    new-instance v9, Lr0/n;

    .line 88
    .line 89
    invoke-direct {v9, v5, v8}, Lr0/n;-><init>(Landroidx/lifecycle/Lifecycle;Lcom/airbnb/mvrx/MavericksLifecycleAwareFlowKt$startedChannel$observer$1;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v9}, Lpc/b;->c(Lx9/l;)V

    .line 93
    .line 94
    .line 95
    iput-object v6, v4, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 96
    .line 97
    new-instance v5, Lr0/m$a$a;

    .line 98
    .line 99
    invoke-direct {v5, v1, v7}, Lr0/m$a$a;-><init>(Lr0/m$a;Lp9/d;)V

    .line 100
    .line 101
    .line 102
    sget-object v6, Lp9/g;->a:Lp9/g;

    .line 103
    .line 104
    sget-object v8, Lpc/f;->a:Lpc/f;

    .line 105
    .line 106
    const/4 v9, 0x4

    .line 107
    const/4 v10, 0x0

    .line 108
    invoke-static {v10, v8, v9}, Lb8/f;->e(ILpc/f;I)Lpc/a;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-static {v2, v6}, Lnc/w;->b(Lnc/a0;Lp9/f;)Lp9/f;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v6, Lpc/q;

    .line 117
    .line 118
    invoke-direct {v6, v2, v8}, Lpc/q;-><init>(Lp9/f;Lpc/a;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v3, v6, v5}, Lnc/a;->l0(ILnc/a;Lx9/p;)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Lr0/m$a$f;

    .line 125
    .line 126
    invoke-direct {v2, v1, v7}, Lr0/m$a$f;-><init>(Lr0/m$a;Lp9/d;)V

    .line 127
    .line 128
    .line 129
    new-instance v5, Lkotlin/jvm/internal/v;

    .line 130
    .line 131
    invoke-direct {v5}, Lkotlin/jvm/internal/v;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v7, v5, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 135
    .line 136
    new-instance v8, Lkotlin/jvm/internal/v;

    .line 137
    .line 138
    invoke-direct {v8}, Lkotlin/jvm/internal/v;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v7, v8, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 142
    .line 143
    new-instance v7, Lkotlin/jvm/internal/t;

    .line 144
    .line 145
    invoke-direct {v7}, Lkotlin/jvm/internal/t;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-boolean v10, v7, Lkotlin/jvm/internal/t;->a:Z

    .line 149
    .line 150
    move-object v9, v1

    .line 151
    move-object v15, v2

    .line 152
    move-object v10, v4

    .line 153
    move-object v14, v5

    .line 154
    move-object v11, v6

    .line 155
    move-object v12, v7

    .line 156
    move-object v13, v8

    .line 157
    move-object v2, v0

    .line 158
    :goto_0
    iget-boolean v0, v12, Lkotlin/jvm/internal/t;->a:Z

    .line 159
    .line 160
    if-nez v0, :cond_3

    .line 161
    .line 162
    iput-object v10, v9, Lr0/m$a;->a:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v11, v9, Lr0/m$a;->b:Lpc/u;

    .line 165
    .line 166
    iput-object v15, v9, Lr0/m$a;->c:Lx9/q;

    .line 167
    .line 168
    iput-object v14, v9, Lr0/m$a;->d:Lkotlin/jvm/internal/v;

    .line 169
    .line 170
    iput-object v13, v9, Lr0/m$a;->e:Lkotlin/jvm/internal/v;

    .line 171
    .line 172
    iput-object v12, v9, Lr0/m$a;->f:Lkotlin/jvm/internal/t;

    .line 173
    .line 174
    iput v3, v9, Lr0/m$a;->g:I

    .line 175
    .line 176
    new-instance v8, Lkotlinx/coroutines/selects/a;

    .line 177
    .line 178
    invoke-direct {v8, v9}, Lkotlinx/coroutines/selects/a;-><init>(Lp9/d;)V

    .line 179
    .line 180
    .line 181
    :try_start_0
    iget-object v0, v10, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v0, Lpc/g;

    .line 184
    .line 185
    new-instance v16, Lr0/m$a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    move-object/from16 v3, v16

    .line 189
    .line 190
    move-object v5, v10

    .line 191
    move-object v6, v14

    .line 192
    move-object v7, v13

    .line 193
    move-object/from16 v17, v8

    .line 194
    .line 195
    move-object v8, v15

    .line 196
    move-object/from16 v18, v9

    .line 197
    .line 198
    move-object v9, v11

    .line 199
    move-object/from16 v19, v10

    .line 200
    .line 201
    move-object v10, v12

    .line 202
    :try_start_1
    invoke-direct/range {v3 .. v10}, Lr0/m$a$b;-><init>(Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v0}, Lpc/u;->l()Lkotlinx/coroutines/selects/b;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v10, Lr0/m$a$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 210
    .line 211
    const/4 v5, 0x0

    .line 212
    move-object v3, v10

    .line 213
    move-object/from16 v4, v16

    .line 214
    .line 215
    move-object/from16 v6, v19

    .line 216
    .line 217
    move-object v7, v14

    .line 218
    move-object v8, v13

    .line 219
    move-object v9, v15

    .line 220
    move-object/from16 v20, v10

    .line 221
    .line 222
    move-object v10, v11

    .line 223
    move-object/from16 v16, v11

    .line 224
    .line 225
    move-object v11, v12

    .line 226
    :try_start_2
    invoke-direct/range {v3 .. v11}, Lr0/m$a$c;-><init>(Lx9/p;Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 227
    .line 228
    .line 229
    move-object/from16 v11, v17

    .line 230
    .line 231
    move-object/from16 v3, v20

    .line 232
    .line 233
    :try_start_3
    invoke-interface {v0, v11, v3}, Lkotlinx/coroutines/selects/b;->z(Lkotlinx/coroutines/selects/c;Lx9/p;)V

    .line 234
    .line 235
    .line 236
    new-instance v0, Lr0/m$a$d;

    .line 237
    .line 238
    const/4 v4, 0x0

    .line 239
    move-object v3, v0

    .line 240
    move-object/from16 v5, v19

    .line 241
    .line 242
    move-object v6, v14

    .line 243
    move-object v7, v13

    .line 244
    move-object v8, v15

    .line 245
    move-object/from16 v9, v16

    .line 246
    .line 247
    move-object v10, v12

    .line 248
    invoke-direct/range {v3 .. v10}, Lr0/m$a$d;-><init>(Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V

    .line 249
    .line 250
    .line 251
    invoke-interface/range {v16 .. v16}, Lpc/u;->l()Lkotlinx/coroutines/selects/b;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    new-instance v9, Lr0/m$a$e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    .line 257
    const/4 v5, 0x0

    .line 258
    move-object v3, v9

    .line 259
    move-object v4, v0

    .line 260
    move-object/from16 v6, v19

    .line 261
    .line 262
    move-object v7, v14

    .line 263
    move-object v8, v13

    .line 264
    move-object v0, v9

    .line 265
    move-object v9, v15

    .line 266
    move-object/from16 v21, v10

    .line 267
    .line 268
    move-object/from16 v10, v16

    .line 269
    .line 270
    move-object v1, v11

    .line 271
    move-object v11, v12

    .line 272
    :try_start_4
    invoke-direct/range {v3 .. v11}, Lr0/m$a$e;-><init>(Lx9/p;Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V

    .line 273
    .line 274
    .line 275
    move-object/from16 v3, v21

    .line 276
    .line 277
    invoke-interface {v3, v1, v0}, Lkotlinx/coroutines/selects/b;->z(Lkotlinx/coroutines/selects/c;Lx9/p;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    goto :goto_2

    .line 283
    :catchall_1
    move-exception v0

    .line 284
    move-object v1, v11

    .line 285
    goto :goto_2

    .line 286
    :catchall_2
    move-exception v0

    .line 287
    :goto_1
    move-object/from16 v1, v17

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :catchall_3
    move-exception v0

    .line 291
    move-object/from16 v16, v11

    .line 292
    .line 293
    goto :goto_1

    .line 294
    :catchall_4
    move-exception v0

    .line 295
    move-object v1, v8

    .line 296
    move-object/from16 v18, v9

    .line 297
    .line 298
    move-object/from16 v19, v10

    .line 299
    .line 300
    move-object/from16 v16, v11

    .line 301
    .line 302
    :goto_2
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/selects/a;->L(Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    :goto_3
    invoke-virtual {v1}, Lkotlinx/coroutines/selects/a;->K()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-ne v0, v2, :cond_2

    .line 310
    .line 311
    return-object v2

    .line 312
    :cond_2
    move-object/from16 v11, v16

    .line 313
    .line 314
    move-object/from16 v9, v18

    .line 315
    .line 316
    move-object/from16 v10, v19

    .line 317
    .line 318
    :goto_4
    const/4 v3, 0x1

    .line 319
    move-object/from16 v1, p0

    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :cond_3
    sget-object v0, Ll9/m;->a:Ll9/m;

    .line 324
    .line 325
    return-object v0
.end method
