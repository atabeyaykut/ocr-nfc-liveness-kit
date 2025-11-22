.class public final Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;
.super Lt8/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;",
        "Lt8/b;",
        "<init>",
        "()V",
        "app_v21Release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public b:Lzf/d1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt8/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lzf/d1;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;->d()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;->b:Lzf/d1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appComponent"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()V
    .locals 4

    .line 1
    new-instance v0, Laf/b;

    .line 2
    .line 3
    new-instance v1, Lbf/a;

    .line 4
    .line 5
    invoke-direct {v1}, Lbf/a;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lbf/c;

    .line 9
    .line 10
    invoke-direct {v2}, Lbf/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p0}, Laf/b;-><init>(Lbf/a;Lbf/c;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lzf/d1;

    .line 17
    .line 18
    new-instance v2, Lvd/d;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3}, Lvd/d;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v0, p0}, Lzf/d1;-><init>(Lvd/d;Laf/b;Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;->b:Lzf/d1;

    .line 28
    .line 29
    new-instance v0, Lj0/e;

    .line 30
    .line 31
    const/16 v2, 0x25

    .line 32
    .line 33
    invoke-direct {v0, v2}, Lj0/e;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v1, Lzf/d1;->j0:Lv8/a;

    .line 37
    .line 38
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lcf/a;

    .line 41
    .line 42
    const-class v3, Lng/k;

    .line 43
    .line 44
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v1, Lzf/d1;->o0:Lv8/a;

    .line 48
    .line 49
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lcf/a;

    .line 52
    .line 53
    const-class v3, Lsf/d;

    .line 54
    .line 55
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v1, Lzf/d1;->p0:Lv8/a;

    .line 59
    .line 60
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lcf/a;

    .line 63
    .line 64
    const-class v3, Lyf/e;

    .line 65
    .line 66
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v1, Lzf/d1;->q0:Lv8/a;

    .line 70
    .line 71
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Lcf/a;

    .line 74
    .line 75
    const-class v3, Lvf/c;

    .line 76
    .line 77
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v1, Lzf/d1;->r0:Lv8/a;

    .line 81
    .line 82
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Lcf/a;

    .line 85
    .line 86
    const-class v3, Lnf/e;

    .line 87
    .line 88
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v1, Lzf/d1;->s0:Lv8/a;

    .line 92
    .line 93
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v2, Lcf/a;

    .line 96
    .line 97
    const-class v3, Lpf/d;

    .line 98
    .line 99
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v1, Lzf/d1;->t0:Lv8/a;

    .line 103
    .line 104
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v2, Lcf/a;

    .line 107
    .line 108
    const-class v3, Lqf/d;

    .line 109
    .line 110
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, v1, Lzf/d1;->u0:Lv8/a;

    .line 114
    .line 115
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Lcf/a;

    .line 118
    .line 119
    const-class v3, Lof/d;

    .line 120
    .line 121
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, v1, Lzf/d1;->v0:Lv8/a;

    .line 125
    .line 126
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v2, Lcf/a;

    .line 129
    .line 130
    const-class v3, Lmf/f;

    .line 131
    .line 132
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v1, Lzf/d1;->w0:Lv8/a;

    .line 136
    .line 137
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v2, Lcf/a;

    .line 140
    .line 141
    const-class v3, Ltf/i;

    .line 142
    .line 143
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object v2, v1, Lzf/d1;->x0:Lv8/a;

    .line 147
    .line 148
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Lcf/a;

    .line 151
    .line 152
    const-class v3, Luf/d;

    .line 153
    .line 154
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, v1, Lzf/d1;->y0:Lv8/a;

    .line 158
    .line 159
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v2, Lcf/a;

    .line 162
    .line 163
    const-class v3, Lrf/g;

    .line 164
    .line 165
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, v1, Lzf/d1;->z0:Lv8/a;

    .line 169
    .line 170
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, Lcf/a;

    .line 173
    .line 174
    const-class v3, Lvg/d;

    .line 175
    .line 176
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iget-object v2, v1, Lzf/d1;->A0:Lv8/a;

    .line 180
    .line 181
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v2, Lcf/a;

    .line 184
    .line 185
    const-class v3, Lwg/d;

    .line 186
    .line 187
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget-object v2, v1, Lzf/d1;->B0:Lv8/a;

    .line 191
    .line 192
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v2, Lcf/a;

    .line 195
    .line 196
    const-class v3, Lqg/i;

    .line 197
    .line 198
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iget-object v2, v1, Lzf/d1;->C0:Lv8/a;

    .line 202
    .line 203
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v2, Lcf/a;

    .line 206
    .line 207
    const-class v3, Lag/d;

    .line 208
    .line 209
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, v1, Lzf/d1;->F0:Lv8/a;

    .line 213
    .line 214
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v2, Lcf/a;

    .line 217
    .line 218
    const-class v3, Lfg/f;

    .line 219
    .line 220
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object v2, v1, Lzf/d1;->G0:Lv8/a;

    .line 224
    .line 225
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v2, Lcf/a;

    .line 228
    .line 229
    const-class v3, Lgg/b;

    .line 230
    .line 231
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iget-object v2, v1, Lzf/d1;->H0:Lv8/a;

    .line 235
    .line 236
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v2, Lcf/a;

    .line 239
    .line 240
    const-class v3, Lig/a;

    .line 241
    .line 242
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iget-object v2, v1, Lzf/d1;->I0:Lv8/a;

    .line 246
    .line 247
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v2, Lcf/a;

    .line 250
    .line 251
    const-class v3, Lbe/j;

    .line 252
    .line 253
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    iget-object v2, v1, Lzf/d1;->J0:Lv8/a;

    .line 257
    .line 258
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v2, Lcf/a;

    .line 261
    .line 262
    const-class v3, Lth/d;

    .line 263
    .line 264
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    iget-object v2, v1, Lzf/d1;->K0:Lv8/a;

    .line 268
    .line 269
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v2, Lcf/a;

    .line 272
    .line 273
    const-class v3, Ljh/c;

    .line 274
    .line 275
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object v2, v1, Lzf/d1;->L0:Lv8/a;

    .line 279
    .line 280
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v2, Lcf/a;

    .line 283
    .line 284
    const-class v3, Lbh/c;

    .line 285
    .line 286
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    iget-object v2, v1, Lzf/d1;->M0:Lv8/a;

    .line 290
    .line 291
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v2, Lcf/a;

    .line 294
    .line 295
    const-class v3, Lyg/d;

    .line 296
    .line 297
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    iget-object v2, v1, Lzf/d1;->N0:Lv8/a;

    .line 301
    .line 302
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v2, Lcf/a;

    .line 305
    .line 306
    const-class v3, Ldh/f;

    .line 307
    .line 308
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    iget-object v2, v1, Lzf/d1;->P0:Lv8/a;

    .line 312
    .line 313
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v2, Lcf/a;

    .line 316
    .line 317
    const-class v3, Luh/d;

    .line 318
    .line 319
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    iget-object v2, v1, Lzf/d1;->Q0:Lv8/a;

    .line 323
    .line 324
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v2, Lcf/a;

    .line 327
    .line 328
    const-class v3, Lhh/g;

    .line 329
    .line 330
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    iget-object v2, v1, Lzf/d1;->R0:Lv8/a;

    .line 334
    .line 335
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v2, Lcf/a;

    .line 338
    .line 339
    const-class v3, Lkh/e;

    .line 340
    .line 341
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    iget-object v2, v1, Lzf/d1;->S0:Lv8/a;

    .line 345
    .line 346
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v2, Lcf/a;

    .line 349
    .line 350
    const-class v3, Lch/l;

    .line 351
    .line 352
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iget-object v2, v1, Lzf/d1;->T0:Lv8/a;

    .line 356
    .line 357
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v2, Lcf/a;

    .line 360
    .line 361
    const-class v3, Lmh/c;

    .line 362
    .line 363
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    iget-object v2, v1, Lzf/d1;->U0:Lv8/a;

    .line 367
    .line 368
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v2, Lcf/a;

    .line 371
    .line 372
    const-class v3, Llh/e;

    .line 373
    .line 374
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    iget-object v2, v1, Lzf/d1;->V0:Lv8/a;

    .line 378
    .line 379
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v2, Lcf/a;

    .line 382
    .line 383
    const-class v3, Lnh/c;

    .line 384
    .line 385
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    iget-object v2, v1, Lzf/d1;->W0:Lv8/a;

    .line 389
    .line 390
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v2, Lcf/a;

    .line 393
    .line 394
    const-class v3, Lfh/d;

    .line 395
    .line 396
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    iget-object v2, v1, Lzf/d1;->Z0:Lv8/a;

    .line 400
    .line 401
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v2, Lcf/a;

    .line 404
    .line 405
    const-class v3, Lzg/l;

    .line 406
    .line 407
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    iget-object v2, v1, Lzf/d1;->a1:Lv8/a;

    .line 411
    .line 412
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v2, Lcf/a;

    .line 415
    .line 416
    const-class v3, Lph/d;

    .line 417
    .line 418
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    iget-object v2, v1, Lzf/d1;->b1:Lv8/a;

    .line 422
    .line 423
    iget-object v2, v2, Lv8/a;->a:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v2, Lcf/a;

    .line 426
    .line 427
    const-class v3, Lwh/a;

    .line 428
    .line 429
    invoke-virtual {v0, v3, v2}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    iget-object v1, v1, Lzf/d1;->c1:Lv8/a;

    .line 433
    .line 434
    iget-object v1, v1, Lv8/a;->a:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v1, Lcf/a;

    .line 437
    .line 438
    const-class v2, Lrh/d;

    .line 439
    .line 440
    invoke-virtual {v0, v2, v1}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0}, Lj0/e;->e()Ljava/util/Map;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    new-instance v1, Lcf/b;

    .line 451
    .line 452
    new-instance v2, Lc5/v;

    .line 453
    .line 454
    invoke-direct {v2}, Lc5/v;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-direct {v1, v2, v0}, Lcf/b;-><init>(Lc5/v;Ljava/util/Map;)V

    .line 458
    .line 459
    .line 460
    sput-object v1, Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/a$a;->a:Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/a;

    .line 461
    .line 462
    return-void
.end method

.method public final onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Lt8/b;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 9
    .line 10
    and-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    new-instance v2, Lr0/k0;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lr0/k0;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/google/android/gms/internal/clearcut/d0;->f:Lr0/k0;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/clearcut/d0;->e:Lr0/g1;

    .line 26
    .line 27
    instance-of v2, v0, Lr0/g;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    new-instance v0, Lr0/g;

    .line 32
    .line 33
    invoke-direct {v0}, Lr0/g;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_1
    sput-object v0, Lcom/google/android/gms/internal/clearcut/d0;->e:Lr0/g1;

    .line 37
    .line 38
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;->d()V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lio/realm/g0;->k:Ljava/lang/Object;

    .line 42
    .line 43
    const-class v0, Lio/realm/g0;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {p0}, Lio/realm/g0;->y(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    new-instance v0, Lio/realm/o0$a;

    .line 51
    .line 52
    sget-object v2, Lio/realm/a;->g:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v0, v2}, Lio/realm/o0$a;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-boolean v1, v0, Lio/realm/o0$a;->c:Z

    .line 58
    .line 59
    const-string v2, "eDevletKapisi.realm"

    .line 60
    .line 61
    iput-object v2, v0, Lio/realm/o0$a;->b:Ljava/lang/String;

    .line 62
    .line 63
    iput-boolean v1, v0, Lio/realm/o0$a;->j:Z

    .line 64
    .line 65
    iput-boolean v1, v0, Lio/realm/o0$a;->k:Z

    .line 66
    .line 67
    invoke-virtual {v0}, Lio/realm/o0$a;->a()Lio/realm/o0;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lio/realm/g0;->F(Lio/realm/o0;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Landroidx/work/DelegatingWorkerFactory;

    .line 75
    .line 76
    invoke-direct {v0}, Landroidx/work/DelegatingWorkerFactory;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;->b:Lzf/d1;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    new-instance v2, Lj0/e;

    .line 84
    .line 85
    const/16 v3, 0x17

    .line 86
    .line 87
    invoke-direct {v2, v3}, Lj0/e;-><init>(I)V

    .line 88
    .line 89
    .line 90
    iget-object v3, v1, Lzf/d1;->d1:Lv8/a;

    .line 91
    .line 92
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteListWorker;

    .line 93
    .line 94
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, v1, Lzf/d1;->e1:Lv8/a;

    .line 98
    .line 99
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteOperationWorker;

    .line 100
    .line 101
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, v1, Lzf/d1;->f1:Lv8/a;

    .line 105
    .line 106
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;

    .line 107
    .line 108
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, v1, Lzf/d1;->g1:Lv8/a;

    .line 112
    .line 113
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/editor/EditorChoiceWorker;

    .line 114
    .line 115
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v1, Lzf/d1;->h1:Lv8/a;

    .line 119
    .line 120
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;

    .line 121
    .line 122
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v3, v1, Lzf/d1;->i1:Lv8/a;

    .line 126
    .line 127
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;

    .line 128
    .line 129
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v3, v1, Lzf/d1;->j1:Lv8/a;

    .line 133
    .line 134
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;

    .line 135
    .line 136
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v3, v1, Lzf/d1;->k1:Lv8/a;

    .line 140
    .line 141
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateCheckWorker;

    .line 142
    .line 143
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object v3, v1, Lzf/d1;->l1:Lv8/a;

    .line 147
    .line 148
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;

    .line 149
    .line 150
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v3, v1, Lzf/d1;->m1:Lv8/a;

    .line 154
    .line 155
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;

    .line 156
    .line 157
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object v3, v1, Lzf/d1;->n1:Lv8/a;

    .line 161
    .line 162
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;

    .line 163
    .line 164
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget-object v3, v1, Lzf/d1;->o1:Lv8/a;

    .line 168
    .line 169
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyLoginWorker;

    .line 170
    .line 171
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    iget-object v3, v1, Lzf/d1;->p1:Lv8/a;

    .line 175
    .line 176
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;

    .line 177
    .line 178
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object v3, v1, Lzf/d1;->q1:Lv8/a;

    .line 182
    .line 183
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;

    .line 184
    .line 185
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iget-object v3, v1, Lzf/d1;->r1:Lv8/a;

    .line 189
    .line 190
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/TimeWorker;

    .line 191
    .line 192
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iget-object v3, v1, Lzf/d1;->s1:Lv8/a;

    .line 196
    .line 197
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;

    .line 198
    .line 199
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget-object v3, v1, Lzf/d1;->t1:Lv8/a;

    .line 203
    .line 204
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;

    .line 205
    .line 206
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iget-object v3, v1, Lzf/d1;->u1:Lv8/a;

    .line 210
    .line 211
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSRequestWorker;

    .line 212
    .line 213
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    iget-object v3, v1, Lzf/d1;->v1:Lv8/a;

    .line 217
    .line 218
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;

    .line 219
    .line 220
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object v3, v1, Lzf/d1;->w1:Lv8/a;

    .line 224
    .line 225
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;

    .line 226
    .line 227
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    iget-object v3, v1, Lzf/d1;->x1:Lv8/a;

    .line 231
    .line 232
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/DeleteDeviceWorker;

    .line 233
    .line 234
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-object v3, v1, Lzf/d1;->y1:Lv8/a;

    .line 238
    .line 239
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;

    .line 240
    .line 241
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object v3, v1, Lzf/d1;->z1:Lv8/a;

    .line 245
    .line 246
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;

    .line 247
    .line 248
    invoke-virtual {v2, v4, v3}, Lj0/e;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Lj0/e;->e()Ljava/util/Map;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    new-instance v3, Lle/b;

    .line 256
    .line 257
    invoke-direct {v3, v2}, Lle/b;-><init>(Ljava/util/Map;)V

    .line 258
    .line 259
    .line 260
    iget-object v2, v1, Lzf/d1;->a:Laf/a;

    .line 261
    .line 262
    check-cast v2, Laf/b;

    .line 263
    .line 264
    invoke-virtual {v2}, Laf/b;->d()Lud/d0;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    iput-object v4, v3, Lle/b;->b:Lud/d0;

    .line 269
    .line 270
    iget-object v4, v2, Laf/b;->a:Lbf/a;

    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Laf/b;->b()Lrc/v;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    new-instance v5, Lud/d0$b;

    .line 280
    .line 281
    invoke-direct {v5}, Lud/d0$b;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v6, "https://api.turkiye.gov.tr/"

    .line 285
    .line 286
    invoke-virtual {v5, v6}, Lud/d0$b;->c(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iput-object v4, v5, Lud/d0$b;->b:Lrc/d$a;

    .line 290
    .line 291
    new-instance v4, Lvd/g;

    .line 292
    .line 293
    invoke-direct {v4}, Lvd/g;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v4}, Lud/d0$b;->a(Lvd/g;)V

    .line 297
    .line 298
    .line 299
    invoke-static {}, Lwd/a;->c()Lwd/a;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v5, v4}, Lud/d0$b;->b(Lwd/a;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5}, Lud/d0$b;->d()Lud/d0;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    iput-object v4, v3, Lle/b;->c:Lud/d0;

    .line 311
    .line 312
    iget-object v4, v2, Laf/b;->a:Lbf/a;

    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Laf/b;->c()Lrc/v;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    new-instance v5, Lud/d0$b;

    .line 322
    .line 323
    invoke-direct {v5}, Lud/d0$b;-><init>()V

    .line 324
    .line 325
    .line 326
    const-string v6, "https://m.turkiye.gov.tr/"

    .line 327
    .line 328
    invoke-virtual {v5, v6}, Lud/d0$b;->c(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iput-object v4, v5, Lud/d0$b;->b:Lrc/d$a;

    .line 332
    .line 333
    new-instance v4, Lvd/g;

    .line 334
    .line 335
    invoke-direct {v4}, Lvd/g;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v4}, Lud/d0$b;->a(Lvd/g;)V

    .line 339
    .line 340
    .line 341
    invoke-static {}, Lwd/a;->c()Lwd/a;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v5, v4}, Lud/d0$b;->b(Lwd/a;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5}, Lud/d0$b;->d()Lud/d0;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    iput-object v4, v3, Lle/b;->d:Lud/d0;

    .line 353
    .line 354
    iget-object v4, v2, Laf/b;->a:Lbf/a;

    .line 355
    .line 356
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Laf/b;->b()Lrc/v;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    new-instance v5, Lud/d0$b;

    .line 364
    .line 365
    invoke-direct {v5}, Lud/d0$b;-><init>()V

    .line 366
    .line 367
    .line 368
    const-string v6, "https://giris.turkiye.gov.tr/"

    .line 369
    .line 370
    invoke-virtual {v5, v6}, Lud/d0$b;->c(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iput-object v4, v5, Lud/d0$b;->b:Lrc/d$a;

    .line 374
    .line 375
    new-instance v4, Lvd/g;

    .line 376
    .line 377
    invoke-direct {v4}, Lvd/g;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v5, v4}, Lud/d0$b;->a(Lvd/g;)V

    .line 381
    .line 382
    .line 383
    invoke-static {}, Lwd/a;->c()Lwd/a;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-virtual {v5, v4}, Lud/d0$b;->b(Lwd/a;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v5}, Lud/d0$b;->d()Lud/d0;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    iput-object v4, v3, Lle/b;->e:Lud/d0;

    .line 395
    .line 396
    iget-object v1, v1, Lzf/d1;->b:Lvd/d;

    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    const-string v1, "5057"

    .line 402
    .line 403
    iput-object v1, v3, Lle/b;->f:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v2}, Laf/b;->e()Landroid/content/SharedPreferences;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    iget-object v4, v2, Laf/b;->b:Lbf/c;

    .line 410
    .line 411
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    const-string v4, "mode"

    .line 415
    .line 416
    const-string v5, "light"

    .line 417
    .line 418
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    iput-object v1, v3, Lle/b;->g:Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v2}, Laf/b;->a()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    iput-object v1, v3, Lle/b;->h:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v0, v3}, Landroidx/work/DelegatingWorkerFactory;->addFactory(Landroidx/work/WorkerFactory;)V

    .line 435
    .line 436
    .line 437
    new-instance v1, Landroidx/work/Configuration$Builder;

    .line 438
    .line 439
    invoke-direct {v1}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 440
    .line 441
    .line 442
    const/4 v2, 0x3

    .line 443
    invoke-virtual {v1, v2}, Landroidx/work/Configuration$Builder;->setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v1, v0}, Landroidx/work/Configuration$Builder;->setWorkerFactory(Landroidx/work/WorkerFactory;)Landroidx/work/Configuration$Builder;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {p0, v0}, Landroidx/work/WorkManager;->initialize(Landroid/content/Context;Landroidx/work/Configuration;)V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :cond_2
    const-string v0, "appComponent"

    .line 460
    .line 461
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    const/4 v0, 0x0

    .line 465
    throw v0

    .line 466
    :catchall_0
    move-exception v1

    .line 467
    monitor-exit v0

    .line 468
    throw v1
.end method
