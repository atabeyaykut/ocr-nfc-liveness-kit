.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$d;
    }
.end annotation


# static fields
.field public static final w:Lcom/airbnb/lottie/LottieAnimationView$a;


# instance fields
.field public final a:Lcom/airbnb/lottie/LottieAnimationView$b;

.field public final b:Lcom/airbnb/lottie/LottieAnimationView$c;

.field public c:Ld0/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld0/o<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public d:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public final e:Ld0/l;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public p:Z

.field public q:Ld0/v;

.field public final r:Ljava/util/HashSet;

.field public s:I

.field public t:Ld0/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld0/t<",
            "Ld0/f;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ld0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieAnimationView$a;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->w:Lcom/airbnb/lottie/LottieAnimationView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$b;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->a:Lcom/airbnb/lottie/LottieAnimationView$b;

    .line 10
    .line 11
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$c;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:I

    .line 20
    .line 21
    new-instance v0, Ld0/l;

    .line 22
    .line 23
    invoke-direct {v0}, Ld0/l;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Z

    .line 40
    .line 41
    sget-object v2, Ld0/v;->a:Ld0/v;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ld0/v;

    .line 44
    .line 45
    new-instance v2, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:Ljava/util/HashSet;

    .line 51
    .line 52
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:I

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lb8/f;->c:[I

    .line 59
    .line 60
    const v4, 0x7f04027d

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p2, v3, v4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Z

    .line 72
    .line 73
    const/16 v2, 0xa

    .line 74
    .line 75
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v4, 0x5

    .line 80
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    const/16 v6, 0x10

    .line 85
    .line 86
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    if-nez v5, :cond_0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string p2, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 104
    .line 105
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    if-eqz v5, :cond_3

    .line 116
    .line 117
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    if-eqz v7, :cond_4

    .line 128
    .line 129
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_1
    const/4 v2, 0x4

    .line 139
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 153
    .line 154
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    .line 155
    .line 156
    :cond_5
    const/16 v2, 0x8

    .line 157
    .line 158
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    const/4 v3, -0x1

    .line 163
    if-eqz v2, :cond_6

    .line 164
    .line 165
    iget-object v2, v0, Ld0/l;->c:Lp0/d;

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 168
    .line 169
    .line 170
    :cond_6
    const/16 v2, 0xd

    .line 171
    .line 172
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_7

    .line 177
    .line 178
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 183
    .line 184
    .line 185
    :cond_7
    const/16 v2, 0xc

    .line 186
    .line 187
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_8

    .line 192
    .line 193
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 198
    .line 199
    .line 200
    :cond_8
    const/16 v2, 0xf

    .line 201
    .line 202
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    const/high16 v5, 0x3f800000    # 1.0f

    .line 207
    .line 208
    if-eqz v4, :cond_9

    .line 209
    .line 210
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 215
    .line 216
    .line 217
    :cond_9
    const/4 v2, 0x7

    .line 218
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const/16 v2, 0x9

    .line 226
    .line 227
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 233
    .line 234
    .line 235
    const/4 v2, 0x3

    .line 236
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    iget-boolean v6, v0, Ld0/l;->m:Z

    .line 241
    .line 242
    if-ne v6, v2, :cond_a

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_a
    iput-boolean v2, v0, Ld0/l;->m:Z

    .line 246
    .line 247
    iget-object v2, v0, Ld0/l;->b:Ld0/f;

    .line 248
    .line 249
    if-eqz v2, :cond_b

    .line 250
    .line 251
    invoke-virtual {v0}, Ld0/l;->c()V

    .line 252
    .line 253
    .line 254
    :cond_b
    :goto_2
    const/4 v2, 0x2

    .line 255
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-eqz v6, :cond_c

    .line 260
    .line 261
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-static {v3, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    new-instance v3, Ld0/w;

    .line 274
    .line 275
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    invoke-direct {v3, v2}, Ld0/w;-><init>(I)V

    .line 280
    .line 281
    .line 282
    new-instance v2, Li0/e;

    .line 283
    .line 284
    const-string v6, "**"

    .line 285
    .line 286
    filled-new-array {v6}, [Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-direct {v2, v6}, Li0/e;-><init>([Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    new-instance v6, Lq0/c;

    .line 294
    .line 295
    invoke-direct {v6, v3}, Lq0/c;-><init>(Ld0/w;)V

    .line 296
    .line 297
    .line 298
    sget-object v3, Ld0/q;->E:Landroid/graphics/ColorFilter;

    .line 299
    .line 300
    invoke-virtual {v0, v2, v3, v6}, Ld0/l;->a(Li0/e;Ljava/lang/Object;Lq0/c;)V

    .line 301
    .line 302
    .line 303
    :cond_c
    const/16 v2, 0xe

    .line 304
    .line 305
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_d

    .line 310
    .line 311
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    iput v2, v0, Ld0/l;->d:F

    .line 316
    .line 317
    :cond_d
    const/16 v2, 0xb

    .line 318
    .line 319
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-eqz v3, :cond_f

    .line 324
    .line 325
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    invoke-static {}, Ld0/v;->values()[Ld0/v;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    array-length v3, v3

    .line 334
    if-lt v2, v3, :cond_e

    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    :cond_e
    invoke-static {}, Ld0/v;->values()[Ld0/v;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    aget-object v2, v3, v2

    .line 342
    .line 343
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Ld0/v;)V

    .line 344
    .line 345
    .line 346
    :cond_f
    const/4 v2, 0x6

    .line 347
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    sget-object v2, Lp0/g;->a:Lp0/g$a;

    .line 362
    .line 363
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    const-string v2, "animator_duration_scale"

    .line 368
    .line 369
    invoke-static {p2, v2, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 370
    .line 371
    .line 372
    move-result p2

    .line 373
    cmpl-float p2, p2, v4

    .line 374
    .line 375
    if-eqz p2, :cond_10

    .line 376
    .line 377
    const/4 p1, 0x1

    .line 378
    :cond_10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    iput-boolean p1, v0, Ld0/l;->e:Z

    .line 387
    .line 388
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 389
    .line 390
    .line 391
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Z

    .line 392
    .line 393
    return-void
.end method

.method private setCompositionTask(Ld0/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/t<",
            "Ld0/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Ld0/f;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 5
    .line 6
    invoke-virtual {v0}, Ld0/l;->d()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->a:Lcom/airbnb/lottie/LottieAnimationView$b;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object v1, p1, Ld0/t;->d:Ld0/r;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p1, Ld0/t;->d:Ld0/r;

    .line 20
    .line 21
    iget-object v1, v1, Ld0/r;->a:Ljava/lang/Object;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p1, Ld0/t;->d:Ld0/r;

    .line 26
    .line 27
    iget-object v1, v1, Ld0/r;->a:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView$b;->onResult(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v1, p1, Ld0/t;->a:Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p1

    .line 38
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ld0/t;->b(Ld0/o;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ld0/t;

    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p1

    .line 48
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ld0/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->a:Lcom/airbnb/lottie/LottieAnimationView$b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v2, v0, Ld0/t;->a:Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Ld0/t;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ld0/t;->c(Lcom/airbnb/lottie/LottieAnimationView$c;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    .line 24
    throw v1

    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ld0/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eq v0, v2, :cond_6

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Ld0/f;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-boolean v4, v0, Ld0/f;->n:Z

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v5, 0x1c

    .line 27
    .line 28
    if-ge v4, v5, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget v0, v0, Ld0/f;->o:I

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    if-le v0, v4, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v4, 0x18

    .line 42
    .line 43
    if-eq v0, v4, :cond_5

    .line 44
    .line 45
    const/16 v4, 0x19

    .line 46
    .line 47
    if-ne v0, v4, :cond_4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/4 v3, 0x1

    .line 51
    :cond_5
    :goto_0
    if-eqz v3, :cond_0

    .line 52
    .line 53
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v1, v0, :cond_7

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    :cond_7
    return-void
.end method

.method public final buildDrawingCache(Z)V
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:I

    invoke-super {p0, p1}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ld0/v;->b:Ld0/v;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Ld0/v;)V

    :cond_0
    iget p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:I

    invoke-static {}, Ld0/c;->a()V

    return-void
.end method

.method public final c()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->f()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    :goto_0
    return-void
.end method

.method public getComposition()Ld0/f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Ld0/f;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Ld0/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld0/f;->b()F

    move-result v0

    float-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    iget v0, v0, Lp0/d;->f:F

    .line 6
    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    iget-object v0, v0, Ld0/l;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lp0/d;->d()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lp0/d;->e()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getPerformanceTracker()Ld0/u;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->b:Ld0/f;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Ld0/f;->a:Ld0/u;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getProgress()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    iget-object v1, v0, Lp0/d;->k:Ld0/f;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, v0, Lp0/d;->f:F

    .line 12
    .line 13
    iget v2, v1, Ld0/f;->k:F

    .line 14
    .line 15
    sub-float/2addr v0, v2

    .line 16
    iget v1, v1, Ld0/f;->l:F

    .line 17
    .line 18
    sub-float/2addr v1, v2

    .line 19
    div-float/2addr v0, v1

    .line 20
    :goto_0
    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    iget v0, v0, Ld0/l;->d:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    iget v0, v0, Lp0/d;->c:F

    .line 6
    .line 7
    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    if-ne v0, v1, :cond_0

    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v1, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, v1, Lp0/d;->l:Z

    .line 11
    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 19
    .line 20
    iget-object v1, v0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 26
    .line 27
    invoke-virtual {v0}, Lp0/d;->cancel()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 35
    .line 36
    :cond_1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$d;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$d;->a:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$d;->b:I

    .line 34
    .line 35
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:I

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$d;->c:F

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$d;->d:Z

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$d;->e:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 57
    .line 58
    iput-object v0, v1, Ld0/l;->k:Ljava/lang/String;

    .line 59
    .line 60
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$d;->f:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 63
    .line 64
    .line 65
    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$d;->g:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$d;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$d;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$d;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:I

    .line 15
    .line 16
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$d;->b:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 19
    .line 20
    iget-object v2, v0, Ld0/l;->c:Lp0/d;

    .line 21
    .line 22
    iget-object v3, v2, Lp0/d;->k:Ld0/f;

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v4, v2, Lp0/d;->f:F

    .line 29
    .line 30
    iget v5, v3, Ld0/f;->k:F

    .line 31
    .line 32
    sub-float/2addr v4, v5

    .line 33
    iget v3, v3, Ld0/f;->l:F

    .line 34
    .line 35
    sub-float/2addr v3, v5

    .line 36
    div-float v3, v4, v3

    .line 37
    .line 38
    :goto_0
    iput v3, v1, Lcom/airbnb/lottie/LottieAnimationView$d;->c:F

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-boolean v2, v2, Lp0/d;->l:Z

    .line 46
    .line 47
    :goto_1
    if-nez v2, :cond_2

    .line 48
    .line 49
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    iget-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    :cond_2
    const/4 v3, 0x1

    .line 60
    :cond_3
    iput-boolean v3, v1, Lcom/airbnb/lottie/LottieAnimationView$d;->d:Z

    .line 61
    .line 62
    iget-object v2, v0, Ld0/l;->k:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView$d;->e:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, v1, Lcom/airbnb/lottie/LottieAnimationView$d;->f:I

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$d;->g:I

    .line 79
    .line 80
    return-object v1
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2}, Ld0/l;->g()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    iget-object p1, p2, Ld0/l;->c:Lp0/d;

    .line 51
    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_5
    iget-boolean p1, p1, Lp0/d;->l:Z

    .line 57
    .line 58
    :goto_1
    if-eqz p1, :cond_6

    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 63
    .line 64
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 67
    .line 68
    iget-object p1, p2, Ld0/l;->h:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p2, Ld0/l;->c:Lp0/d;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lp0/d;->g(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 79
    .line 80
    .line 81
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 82
    .line 83
    :cond_6
    :goto_2
    return-void
.end method

.method public setAnimation(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ld0/t;

    new-instance v1, Ld0/d;

    invoke-direct {v1, p0, p1}, Ld0/d;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Ld0/t;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Ld0/g;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ld0/j;

    invoke-direct {v3, v2, v0, p1, v1}, Ld0/j;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v1, v3}, Ld0/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ld0/t;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ld0/g;->a:Ljava/util/HashMap;

    .line 5
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ld0/j;

    invoke-direct {v3, v2, v1, p1, v0}, Ld0/j;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v0, v3}, Ld0/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ld0/t;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 6
    :goto_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Ld0/t;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ld0/t;

    new-instance v1, Ld0/e;

    invoke-direct {v1, p0, p1}, Ld0/e;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Ld0/t;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ld0/g;->a:Ljava/util/HashMap;

    const-string v1, "asset_"

    .line 8
    invoke-static {v1, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ld0/i;

    invoke-direct {v2, v0, p1, v1}, Ld0/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ld0/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ld0/t;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ld0/g;->a:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ld0/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Ld0/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Ld0/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ld0/t;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 12
    :goto_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Ld0/t;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ld0/k;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ld0/k;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, p1}, Ld0/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ld0/t;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Ld0/t;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ld0/g;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    const-string v1, "url_"

    .line 12
    .line 13
    invoke-static {v1, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ld0/h;

    .line 18
    .line 19
    invoke-direct {v2, v0, p1, v1}, Ld0/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Ld0/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ld0/t;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ld0/h;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v0, p1, v2}, Ld0/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v1}, Ld0/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ld0/t;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Ld0/t;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    iput-boolean p1, v0, Ld0/l;->s:Z

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Z

    return-void
.end method

.method public setComposition(Ld0/f;)V
    .locals 8
    .param p1    # Ld0/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Ld0/f;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 10
    .line 11
    iget-object v2, v0, Ld0/l;->b:Ld0/f;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    if-ne v2, p1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    iput-boolean v4, v0, Ld0/l;->v:Z

    .line 21
    .line 22
    invoke-virtual {v0}, Ld0/l;->d()V

    .line 23
    .line 24
    .line 25
    iput-object p1, v0, Ld0/l;->b:Ld0/f;

    .line 26
    .line 27
    invoke-virtual {v0}, Ld0/l;->c()V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Ld0/l;->c:Lp0/d;

    .line 31
    .line 32
    iget-object v5, v2, Lp0/d;->k:Ld0/f;

    .line 33
    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    :goto_0
    iput-object p1, v2, Lp0/d;->k:Ld0/f;

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    iget v5, v2, Lp0/d;->h:F

    .line 44
    .line 45
    iget v6, p1, Ld0/f;->k:F

    .line 46
    .line 47
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    float-to-int v5, v5

    .line 52
    int-to-float v5, v5

    .line 53
    iget v6, v2, Lp0/d;->j:F

    .line 54
    .line 55
    iget v7, p1, Ld0/f;->l:F

    .line 56
    .line 57
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget v5, p1, Ld0/f;->k:F

    .line 63
    .line 64
    float-to-int v5, v5

    .line 65
    int-to-float v5, v5

    .line 66
    iget v6, p1, Ld0/f;->l:F

    .line 67
    .line 68
    :goto_1
    float-to-int v6, v6

    .line 69
    int-to-float v6, v6

    .line 70
    invoke-virtual {v2, v5, v6}, Lp0/d;->i(FF)V

    .line 71
    .line 72
    .line 73
    iget v5, v2, Lp0/d;->f:F

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    iput v6, v2, Lp0/d;->f:F

    .line 77
    .line 78
    float-to-int v5, v5

    .line 79
    int-to-float v5, v5

    .line 80
    invoke-virtual {v2, v5}, Lp0/d;->h(F)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lp0/a;->c()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lp0/d;->getAnimatedFraction()F

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0, v2}, Ld0/l;->p(F)V

    .line 91
    .line 92
    .line 93
    iget v2, v0, Ld0/l;->d:F

    .line 94
    .line 95
    iput v2, v0, Ld0/l;->d:F

    .line 96
    .line 97
    new-instance v2, Ljava/util/ArrayList;

    .line 98
    .line 99
    iget-object v5, v0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_4

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Ld0/l$n;

    .line 119
    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    invoke-interface {v6}, Ld0/l$n;->run()V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 130
    .line 131
    .line 132
    iget-boolean v2, v0, Ld0/l;->q:Z

    .line 133
    .line 134
    iget-object p1, p1, Ld0/f;->a:Ld0/u;

    .line 135
    .line 136
    iput-boolean v2, p1, Ld0/u;->a:Z

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    instance-of v2, p1, Landroid/widget/ImageView;

    .line 143
    .line 144
    if-eqz v2, :cond_5

    .line 145
    .line 146
    check-cast p1, Landroid/widget/ImageView;

    .line 147
    .line 148
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    :goto_3
    iput-boolean v4, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-ne p1, v0, :cond_6

    .line 164
    .line 165
    if-nez v1, :cond_6

    .line 166
    .line 167
    return-void

    .line 168
    :cond_6
    if-nez v1, :cond_8

    .line 169
    .line 170
    iget-object p1, v0, Ld0/l;->c:Lp0/d;

    .line 171
    .line 172
    if-nez p1, :cond_7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    iget-boolean v4, p1, Lp0/d;->l:Z

    .line 176
    .line 177
    :goto_4
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    .line 182
    .line 183
    if-eqz v4, :cond_8

    .line 184
    .line 185
    invoke-virtual {v0}, Ld0/l;->g()V

    .line 186
    .line 187
    .line 188
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    invoke-virtual {p0, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:Ljava/util/HashSet;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_9

    .line 209
    .line 210
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Ld0/p;

    .line 215
    .line 216
    invoke-interface {v0}, Ld0/p;->a()V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_9
    return-void
.end method

.method public setFailureListener(Ld0/o;)V
    .locals 0
    .param p1    # Ld0/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/o<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Ld0/o;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:I

    return-void
.end method

.method public setFontAssetDelegate(Ld0/a;)V
    .locals 0

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    iget-object p1, p1, Ld0/l;->l:Lh0/a;

    return-void
.end method

.method public setFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0, p1}, Ld0/l;->h(I)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    iput-boolean p1, v0, Ld0/l;->f:Z

    return-void
.end method

.method public setImageAssetDelegate(Ld0/b;)V
    .locals 0

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    iget-object p1, p1, Ld0/l;->j:Lh0/b;

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    iput-object p1, v0, Ld0/l;->k:Ljava/lang/String;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0, p1}, Ld0/l;->i(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0, p1}, Ld0/l;->j(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0, p1}, Ld0/l;->k(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0, p1}, Ld0/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0, p1}, Ld0/l;->m(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0, p1}, Ld0/l;->n(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0, p1}, Ld0/l;->o(F)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-boolean v1, v0, Ld0/l;->r:Z

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-boolean p1, v0, Ld0/l;->r:Z

    .line 9
    .line 10
    iget-object v0, v0, Ld0/l;->n:Ll0/c;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ll0/c;->o(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iput-boolean p1, v0, Ld0/l;->q:Z

    .line 4
    .line 5
    iget-object v0, v0, Ld0/l;->b:Ld0/f;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Ld0/f;->a:Ld0/u;

    .line 10
    .line 11
    iput-boolean p1, v0, Ld0/u;->a:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {v0, p1}, Ld0/l;->p(F)V

    return-void
.end method

.method public setRenderMode(Ld0/v;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ld0/v;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lp0/d;->setRepeatMode(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    iput-boolean p1, v0, Ld0/l;->g:Z

    return-void
.end method

.method public setScale(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iput p1, v0, Ld0/l;->d:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iget-object p1, v0, Ld0/l;->c:Lp0/d;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean p1, p1, Lp0/d;->l:Z

    .line 18
    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ld0/l;->g()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 4
    .line 5
    iput p1, v0, Lp0/d;->c:F

    .line 6
    .line 7
    return-void
.end method

.method public setTextDelegate(Ld0/x;)V
    .locals 0

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ld0/l;

    .line 8
    .line 9
    if-ne p1, v3, :cond_1

    .line 10
    .line 11
    iget-object v4, v3, Ld0/l;->c:Lp0/d;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean v4, v4, Lp0/d;->l:Z

    .line 18
    .line 19
    :goto_0
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 28
    .line 29
    iget-object v0, v3, Ld0/l;->h:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v3, Ld0/l;->c:Lp0/d;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lp0/d;->g(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    if-nez v0, :cond_3

    .line 44
    .line 45
    instance-of v0, p1, Ld0/l;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    move-object v0, p1

    .line 50
    check-cast v0, Ld0/l;

    .line 51
    .line 52
    iget-object v3, v0, Ld0/l;->c:Lp0/d;

    .line 53
    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-boolean v2, v3, Lp0/d;->l:Z

    .line 58
    .line 59
    :goto_1
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v2, v0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 64
    .line 65
    .line 66
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lp0/d;->g(Z)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
