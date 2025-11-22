.class public Lcom/yalantis/ucrop/UCropActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final H:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroidx/transition/AutoTransition;

.field public C:Landroid/graphics/Bitmap$CompressFormat;

.field public D:I

.field public E:[I

.field public final F:Lcom/yalantis/ucrop/UCropActivity$a;

.field public final G:Lcom/yalantis/ucrop/UCropActivity$b;

.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public g:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public h:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Lcom/yalantis/ucrop/view/UCropView;

.field public n:Lcom/yalantis/ucrop/view/GestureCropImageView;

.field public p:Lcom/yalantis/ucrop/view/OverlayView;

.field public q:Landroid/view/ViewGroup;

.field public r:Landroid/view/ViewGroup;

.field public s:Landroid/view/ViewGroup;

.field public t:Landroid/view/ViewGroup;

.field public v:Landroid/view/ViewGroup;

.field public w:Landroid/view/ViewGroup;

.field public final x:Ljava/util/ArrayList;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/yalantis/ucrop/UCropActivity;->H:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->x:Ljava/util/ArrayList;

    sget-object v0, Lcom/yalantis/ucrop/UCropActivity;->H:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->C:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->D:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->E:[I

    new-instance v0, Lcom/yalantis/ucrop/UCropActivity$a;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/UCropActivity$a;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->F:Lcom/yalantis/ucrop/UCropActivity$a;

    new-instance v0, Lcom/yalantis/ucrop/UCropActivity$b;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/UCropActivity$b;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->G:Lcom/yalantis/ucrop/UCropActivity$b;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d011f

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v2, 0x7f060149

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-string v3, "com.yalantis.ucrop.StatusBarColor"

    .line 24
    .line 25
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, v1, Lcom/yalantis/ucrop/UCropActivity;->c:I

    .line 30
    .line 31
    const v2, 0x7f06014a

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const-string v3, "com.yalantis.ucrop.ToolbarColor"

    .line 39
    .line 40
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput v2, v1, Lcom/yalantis/ucrop/UCropActivity;->b:I

    .line 45
    .line 46
    const v2, 0x7f06013c

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const-string v3, "com.yalantis.ucrop.UcropColorControlsWidgetActive"

    .line 54
    .line 55
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iput v2, v1, Lcom/yalantis/ucrop/UCropActivity;->d:I

    .line 60
    .line 61
    const v2, 0x7f06014b

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const-string v3, "com.yalantis.ucrop.UcropToolbarWidgetColor"

    .line 69
    .line 70
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput v2, v1, Lcom/yalantis/ucrop/UCropActivity;->e:I

    .line 75
    .line 76
    const-string v2, "com.yalantis.ucrop.UcropToolbarCancelDrawable"

    .line 77
    .line 78
    const v3, 0x7f08014b

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iput v2, v1, Lcom/yalantis/ucrop/UCropActivity;->g:I

    .line 86
    .line 87
    const-string v2, "com.yalantis.ucrop.UcropToolbarCropDrawable"

    .line 88
    .line 89
    const v3, 0x7f08014c

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iput v2, v1, Lcom/yalantis/ucrop/UCropActivity;->h:I

    .line 97
    .line 98
    const-string v2, "com.yalantis.ucrop.UcropToolbarTitleText"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iput-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->a:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const v3, 0x7f1302a5

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :goto_0
    iput-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->a:Ljava/lang/String;

    .line 121
    .line 122
    const v2, 0x7f060143

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    const-string v3, "com.yalantis.ucrop.UcropLogoColor"

    .line 130
    .line 131
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iput v2, v1, Lcom/yalantis/ucrop/UCropActivity;->j:I

    .line 136
    .line 137
    const-string v2, "com.yalantis.ucrop.HideBottomControls"

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    const/4 v4, 0x1

    .line 145
    xor-int/2addr v2, v4

    .line 146
    iput-boolean v2, v1, Lcom/yalantis/ucrop/UCropActivity;->k:Z

    .line 147
    .line 148
    const v2, 0x7f06013f

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    const-string v5, "com.yalantis.ucrop.UcropRootViewBackgroundColor"

    .line 156
    .line 157
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    iput v2, v1, Lcom/yalantis/ucrop/UCropActivity;->f:I

    .line 162
    .line 163
    iget v2, v1, Lcom/yalantis/ucrop/UCropActivity;->c:I

    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    if-eqz v5, :cond_1

    .line 170
    .line 171
    const/high16 v6, -0x80000000

    .line 172
    .line 173
    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 177
    .line 178
    .line 179
    :cond_1
    const v2, 0x7f0a0400

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    .line 187
    .line 188
    iget v6, v1, Lcom/yalantis/ucrop/UCropActivity;->b:I

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    .line 192
    .line 193
    iget v6, v1, Lcom/yalantis/ucrop/UCropActivity;->e:I

    .line 194
    .line 195
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 196
    .line 197
    .line 198
    const v6, 0x7f0a0409

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Landroid/widget/TextView;

    .line 206
    .line 207
    iget v7, v1, Lcom/yalantis/ucrop/UCropActivity;->e:I

    .line 208
    .line 209
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    .line 211
    .line 212
    iget-object v7, v1, Lcom/yalantis/ucrop/UCropActivity;->a:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    iget v6, v1, Lcom/yalantis/ucrop/UCropActivity;->g:I

    .line 218
    .line 219
    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    iget v7, v1, Lcom/yalantis/ucrop/UCropActivity;->e:I

    .line 228
    .line 229
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 230
    .line 231
    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    if-eqz v5, :cond_2

    .line 245
    .line 246
    invoke-virtual {v5, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 247
    .line 248
    .line 249
    :cond_2
    const v5, 0x7f0a0477

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Lcom/yalantis/ucrop/view/UCropView;

    .line 257
    .line 258
    iput-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->m:Lcom/yalantis/ucrop/view/UCropView;

    .line 259
    .line 260
    invoke-virtual {v5}, Lcom/yalantis/ucrop/view/UCropView;->getCropImageView()Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    iput-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 265
    .line 266
    iget-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->m:Lcom/yalantis/ucrop/view/UCropView;

    .line 267
    .line 268
    invoke-virtual {v5}, Lcom/yalantis/ucrop/view/UCropView;->getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    iput-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 273
    .line 274
    iget-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 275
    .line 276
    iget-object v6, v1, Lcom/yalantis/ucrop/UCropActivity;->F:Lcom/yalantis/ucrop/UCropActivity$a;

    .line 277
    .line 278
    invoke-virtual {v5, v6}, Ls8/c;->setTransformImageListener(Ls8/c$a;)V

    .line 279
    .line 280
    .line 281
    const v5, 0x7f0a01bf

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    check-cast v5, Landroid/widget/ImageView;

    .line 289
    .line 290
    iget v6, v1, Lcom/yalantis/ucrop/UCropActivity;->j:I

    .line 291
    .line 292
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 293
    .line 294
    invoke-virtual {v5, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 295
    .line 296
    .line 297
    const v5, 0x7f0a0478

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    iget v7, v1, Lcom/yalantis/ucrop/UCropActivity;->f:I

    .line 305
    .line 306
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 307
    .line 308
    .line 309
    iget-boolean v6, v1, Lcom/yalantis/ucrop/UCropActivity;->k:Z

    .line 310
    .line 311
    if-nez v6, :cond_3

    .line 312
    .line 313
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 322
    .line 323
    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 324
    .line 325
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 330
    .line 331
    .line 332
    :cond_3
    iget-boolean v5, v1, Lcom/yalantis/ucrop/UCropActivity;->k:Z

    .line 333
    .line 334
    const v6, 0x7f0a0479

    .line 335
    .line 336
    .line 337
    const v7, 0x7f0a03b9

    .line 338
    .line 339
    .line 340
    const v8, 0x7f0a03bb

    .line 341
    .line 342
    .line 343
    const/4 v11, 0x0

    .line 344
    const/4 v12, 0x0

    .line 345
    const-string v13, "com.yalantis.ucrop.AspectRatioOptions"

    .line 346
    .line 347
    const-string v14, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    .line 348
    .line 349
    if-eqz v5, :cond_a

    .line 350
    .line 351
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    check-cast v5, Landroid/view/ViewGroup;

    .line 356
    .line 357
    const v15, 0x7f0a0107

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    check-cast v5, Landroid/view/ViewGroup;

    .line 365
    .line 366
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 370
    .line 371
    .line 372
    move-result-object v15

    .line 373
    const v6, 0x7f0d0121

    .line 374
    .line 375
    .line 376
    invoke-virtual {v15, v6, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    new-instance v5, Landroidx/transition/AutoTransition;

    .line 380
    .line 381
    invoke-direct {v5}, Landroidx/transition/AutoTransition;-><init>()V

    .line 382
    .line 383
    .line 384
    iput-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->B:Landroidx/transition/AutoTransition;

    .line 385
    .line 386
    const-wide/16 v9, 0x32

    .line 387
    .line 388
    invoke-virtual {v5, v9, v10}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/Transition;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    check-cast v5, Landroid/view/ViewGroup;

    .line 396
    .line 397
    iput-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->q:Landroid/view/ViewGroup;

    .line 398
    .line 399
    iget-object v9, v1, Lcom/yalantis/ucrop/UCropActivity;->G:Lcom/yalantis/ucrop/UCropActivity$b;

    .line 400
    .line 401
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    .line 403
    .line 404
    const v5, 0x7f0a03ba

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    check-cast v5, Landroid/view/ViewGroup;

    .line 412
    .line 413
    iput-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->r:Landroid/view/ViewGroup;

    .line 414
    .line 415
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    check-cast v5, Landroid/view/ViewGroup;

    .line 423
    .line 424
    iput-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->s:Landroid/view/ViewGroup;

    .line 425
    .line 426
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    .line 428
    .line 429
    const v5, 0x7f0a0217

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    check-cast v9, Landroid/view/ViewGroup;

    .line 437
    .line 438
    iput-object v9, v1, Lcom/yalantis/ucrop/UCropActivity;->t:Landroid/view/ViewGroup;

    .line 439
    .line 440
    const v9, 0x7f0a0218

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    check-cast v9, Landroid/view/ViewGroup;

    .line 448
    .line 449
    iput-object v9, v1, Lcom/yalantis/ucrop/UCropActivity;->v:Landroid/view/ViewGroup;

    .line 450
    .line 451
    const v9, 0x7f0a0219

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    check-cast v9, Landroid/view/ViewGroup;

    .line 459
    .line 460
    iput-object v9, v1, Lcom/yalantis/ucrop/UCropActivity;->w:Landroid/view/ViewGroup;

    .line 461
    .line 462
    invoke-virtual {v0, v14, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 463
    .line 464
    .line 465
    move-result v9

    .line 466
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    const/high16 v6, 0x3f800000    # 1.0f

    .line 471
    .line 472
    if-eqz v10, :cond_4

    .line 473
    .line 474
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 475
    .line 476
    .line 477
    move-result v16

    .line 478
    if-eqz v16, :cond_5

    .line 479
    .line 480
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .line 484
    .line 485
    new-instance v9, Lp8/a;

    .line 486
    .line 487
    invoke-direct {v9, v11, v6, v6}, Lp8/a;-><init>(Ljava/lang/String;FF)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    new-instance v9, Lp8/a;

    .line 494
    .line 495
    const/high16 v7, 0x40400000    # 3.0f

    .line 496
    .line 497
    const/high16 v8, 0x40800000    # 4.0f

    .line 498
    .line 499
    invoke-direct {v9, v11, v7, v8}, Lp8/a;-><init>(Ljava/lang/String;FF)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    new-instance v8, Lp8/a;

    .line 506
    .line 507
    const v9, 0x7f1302a6

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    invoke-direct {v8, v9, v12, v12}, Lp8/a;-><init>(Ljava/lang/String;FF)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    new-instance v8, Lp8/a;

    .line 525
    .line 526
    const/high16 v9, 0x40000000    # 2.0f

    .line 527
    .line 528
    invoke-direct {v8, v11, v7, v9}, Lp8/a;-><init>(Ljava/lang/String;FF)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    new-instance v7, Lp8/a;

    .line 535
    .line 536
    const/high16 v8, 0x41800000    # 16.0f

    .line 537
    .line 538
    const/high16 v9, 0x41100000    # 9.0f

    .line 539
    .line 540
    invoke-direct {v7, v11, v8, v9}, Lp8/a;-><init>(Ljava/lang/String;FF)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    const/4 v9, 0x2

    .line 547
    :cond_5
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    check-cast v5, Landroid/widget/LinearLayout;

    .line 552
    .line 553
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 554
    .line 555
    const/4 v8, -0x1

    .line 556
    invoke-direct {v7, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 557
    .line 558
    .line 559
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 560
    .line 561
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v8

    .line 569
    iget-object v10, v1, Lcom/yalantis/ucrop/UCropActivity;->x:Ljava/util/ArrayList;

    .line 570
    .line 571
    if-eqz v8, :cond_6

    .line 572
    .line 573
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    check-cast v8, Lp8/a;

    .line 578
    .line 579
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 580
    .line 581
    .line 582
    move-result-object v15

    .line 583
    const v2, 0x7f0d0120

    .line 584
    .line 585
    .line 586
    invoke-virtual {v15, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    check-cast v2, Landroid/widget/FrameLayout;

    .line 591
    .line 592
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 596
    .line 597
    .line 598
    move-result-object v15

    .line 599
    check-cast v15, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;

    .line 600
    .line 601
    iget v11, v1, Lcom/yalantis/ucrop/UCropActivity;->d:I

    .line 602
    .line 603
    invoke-virtual {v15, v11}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setActiveColor(I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v15, v8}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setAspectRatio(Lp8/a;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    const v2, 0x7f0a0400

    .line 616
    .line 617
    .line 618
    const/4 v11, 0x0

    .line 619
    goto :goto_1

    .line 620
    :cond_6
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    check-cast v2, Landroid/view/ViewGroup;

    .line 625
    .line 626
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    if-eqz v5, :cond_7

    .line 638
    .line 639
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    check-cast v5, Landroid/view/ViewGroup;

    .line 644
    .line 645
    new-instance v6, Ln8/a;

    .line 646
    .line 647
    invoke-direct {v6, v1}, Ln8/a;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    .line 652
    .line 653
    goto :goto_2

    .line 654
    :cond_7
    const v2, 0x7f0a03ec

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    check-cast v2, Landroid/widget/TextView;

    .line 662
    .line 663
    iput-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->y:Landroid/widget/TextView;

    .line 664
    .line 665
    const v2, 0x7f0a0370

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    check-cast v5, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    .line 673
    .line 674
    new-instance v6, Ln8/b;

    .line 675
    .line 676
    invoke-direct {v6, v1}, Ln8/b;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v5, v6}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    check-cast v2, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    .line 687
    .line 688
    iget v5, v1, Lcom/yalantis/ucrop/UCropActivity;->d:I

    .line 689
    .line 690
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    .line 691
    .line 692
    .line 693
    const v2, 0x7f0a049b

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    new-instance v5, Ln8/c;

    .line 701
    .line 702
    invoke-direct {v5, v1}, Ln8/c;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    .line 707
    .line 708
    const v2, 0x7f0a049c

    .line 709
    .line 710
    .line 711
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    new-instance v5, Ln8/d;

    .line 716
    .line 717
    invoke-direct {v5, v1}, Ln8/d;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    .line 722
    .line 723
    iget v2, v1, Lcom/yalantis/ucrop/UCropActivity;->d:I

    .line 724
    .line 725
    iget-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->y:Landroid/widget/TextView;

    .line 726
    .line 727
    if-eqz v5, :cond_8

    .line 728
    .line 729
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    .line 731
    .line 732
    :cond_8
    const v2, 0x7f0a03ed

    .line 733
    .line 734
    .line 735
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    check-cast v2, Landroid/widget/TextView;

    .line 740
    .line 741
    iput-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->z:Landroid/widget/TextView;

    .line 742
    .line 743
    const v2, 0x7f0a0378

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    check-cast v5, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    .line 751
    .line 752
    new-instance v6, Ln8/e;

    .line 753
    .line 754
    invoke-direct {v6, v1}, Ln8/e;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v5, v6}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    check-cast v2, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    .line 765
    .line 766
    iget v5, v1, Lcom/yalantis/ucrop/UCropActivity;->d:I

    .line 767
    .line 768
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    .line 769
    .line 770
    .line 771
    iget v2, v1, Lcom/yalantis/ucrop/UCropActivity;->d:I

    .line 772
    .line 773
    iget-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->z:Landroid/widget/TextView;

    .line 774
    .line 775
    if-eqz v5, :cond_9

    .line 776
    .line 777
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 778
    .line 779
    .line 780
    :cond_9
    const v2, 0x7f0a01c2

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    check-cast v2, Landroid/widget/ImageView;

    .line 788
    .line 789
    const v5, 0x7f0a01c1

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    check-cast v5, Landroid/widget/ImageView;

    .line 797
    .line 798
    const v6, 0x7f0a01c0

    .line 799
    .line 800
    .line 801
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 802
    .line 803
    .line 804
    move-result-object v6

    .line 805
    check-cast v6, Landroid/widget/ImageView;

    .line 806
    .line 807
    new-instance v7, Lr8/f;

    .line 808
    .line 809
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 810
    .line 811
    .line 812
    move-result-object v8

    .line 813
    iget v9, v1, Lcom/yalantis/ucrop/UCropActivity;->d:I

    .line 814
    .line 815
    invoke-direct {v7, v8, v9}, Lr8/f;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    .line 820
    .line 821
    new-instance v2, Lr8/f;

    .line 822
    .line 823
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 824
    .line 825
    .line 826
    move-result-object v7

    .line 827
    iget v8, v1, Lcom/yalantis/ucrop/UCropActivity;->d:I

    .line 828
    .line 829
    invoke-direct {v2, v7, v8}, Lr8/f;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 833
    .line 834
    .line 835
    new-instance v2, Lr8/f;

    .line 836
    .line 837
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    iget v7, v1, Lcom/yalantis/ucrop/UCropActivity;->d:I

    .line 842
    .line 843
    invoke-direct {v2, v5, v7}, Lr8/f;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 847
    .line 848
    .line 849
    :cond_a
    const-string v2, "com.yalantis.ucrop.InputUri"

    .line 850
    .line 851
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    move-object v7, v2

    .line 856
    check-cast v7, Landroid/net/Uri;

    .line 857
    .line 858
    const-string v2, "com.yalantis.ucrop.OutputUri"

    .line 859
    .line 860
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    move-object v8, v2

    .line 865
    check-cast v8, Landroid/net/Uri;

    .line 866
    .line 867
    const-string v2, "com.yalantis.ucrop.CompressionFormatName"

    .line 868
    .line 869
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 874
    .line 875
    .line 876
    move-result v5

    .line 877
    if-nez v5, :cond_b

    .line 878
    .line 879
    invoke-static {v2}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    .line 880
    .line 881
    .line 882
    move-result-object v11

    .line 883
    goto :goto_3

    .line 884
    :cond_b
    const/4 v11, 0x0

    .line 885
    :goto_3
    if-nez v11, :cond_c

    .line 886
    .line 887
    sget-object v11, Lcom/yalantis/ucrop/UCropActivity;->H:Landroid/graphics/Bitmap$CompressFormat;

    .line 888
    .line 889
    :cond_c
    iput-object v11, v1, Lcom/yalantis/ucrop/UCropActivity;->C:Landroid/graphics/Bitmap$CompressFormat;

    .line 890
    .line 891
    const-string v2, "com.yalantis.ucrop.CompressionQuality"

    .line 892
    .line 893
    const/16 v5, 0x5a

    .line 894
    .line 895
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    iput v2, v1, Lcom/yalantis/ucrop/UCropActivity;->D:I

    .line 900
    .line 901
    const-string v2, "com.yalantis.ucrop.AllowedGestures"

    .line 902
    .line 903
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    const/4 v15, 0x3

    .line 908
    if-eqz v2, :cond_d

    .line 909
    .line 910
    array-length v5, v2

    .line 911
    if-ne v5, v15, :cond_d

    .line 912
    .line 913
    iput-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->E:[I

    .line 914
    .line 915
    :cond_d
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 916
    .line 917
    const-string v5, "com.yalantis.ucrop.MaxBitmapSize"

    .line 918
    .line 919
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 920
    .line 921
    .line 922
    move-result v5

    .line 923
    invoke-virtual {v2, v5}, Ls8/c;->setMaxBitmapSize(I)V

    .line 924
    .line 925
    .line 926
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 927
    .line 928
    const-string v5, "com.yalantis.ucrop.MaxScaleMultiplier"

    .line 929
    .line 930
    const/high16 v6, 0x41200000    # 10.0f

    .line 931
    .line 932
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 933
    .line 934
    .line 935
    move-result v5

    .line 936
    invoke-virtual {v2, v5}, Ls8/a;->setMaxScaleMultiplier(F)V

    .line 937
    .line 938
    .line 939
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 940
    .line 941
    const-string v5, "com.yalantis.ucrop.ImageToCropBoundsAnimDuration"

    .line 942
    .line 943
    const/16 v6, 0x1f4

    .line 944
    .line 945
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 946
    .line 947
    .line 948
    move-result v5

    .line 949
    int-to-long v5, v5

    .line 950
    invoke-virtual {v2, v5, v6}, Ls8/a;->setImageToWrapCropBoundsAnimDuration(J)V

    .line 951
    .line 952
    .line 953
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 954
    .line 955
    const-string v5, "com.yalantis.ucrop.FreeStyleCrop"

    .line 956
    .line 957
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 958
    .line 959
    .line 960
    move-result v5

    .line 961
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setFreestyleCropEnabled(Z)V

    .line 962
    .line 963
    .line 964
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 965
    .line 966
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 967
    .line 968
    .line 969
    move-result-object v5

    .line 970
    const v6, 0x7f060142

    .line 971
    .line 972
    .line 973
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 974
    .line 975
    .line 976
    move-result v5

    .line 977
    const-string v6, "com.yalantis.ucrop.DimmedLayerColor"

    .line 978
    .line 979
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 980
    .line 981
    .line 982
    move-result v5

    .line 983
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setDimmedColor(I)V

    .line 984
    .line 985
    .line 986
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 987
    .line 988
    const-string v5, "com.yalantis.ucrop.CircleDimmedLayer"

    .line 989
    .line 990
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 991
    .line 992
    .line 993
    move-result v5

    .line 994
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setCircleDimmedLayer(Z)V

    .line 995
    .line 996
    .line 997
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 998
    .line 999
    const-string v5, "com.yalantis.ucrop.ShowCropFrame"

    .line 1000
    .line 1001
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v5

    .line 1005
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropFrame(Z)V

    .line 1006
    .line 1007
    .line 1008
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 1009
    .line 1010
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v5

    .line 1014
    const v6, 0x7f060140

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 1018
    .line 1019
    .line 1020
    move-result v5

    .line 1021
    const-string v6, "com.yalantis.ucrop.CropFrameColor"

    .line 1022
    .line 1023
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1024
    .line 1025
    .line 1026
    move-result v5

    .line 1027
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameColor(I)V

    .line 1028
    .line 1029
    .line 1030
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 1031
    .line 1032
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v5

    .line 1036
    const v6, 0x7f070201

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1040
    .line 1041
    .line 1042
    move-result v5

    .line 1043
    const-string v6, "com.yalantis.ucrop.CropFrameStrokeWidth"

    .line 1044
    .line 1045
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1046
    .line 1047
    .line 1048
    move-result v5

    .line 1049
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameStrokeWidth(I)V

    .line 1050
    .line 1051
    .line 1052
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 1053
    .line 1054
    const-string v5, "com.yalantis.ucrop.ShowCropGrid"

    .line 1055
    .line 1056
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1057
    .line 1058
    .line 1059
    move-result v5

    .line 1060
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropGrid(Z)V

    .line 1061
    .line 1062
    .line 1063
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 1064
    .line 1065
    const-string v5, "com.yalantis.ucrop.CropGridRowCount"

    .line 1066
    .line 1067
    const/4 v6, 0x2

    .line 1068
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1069
    .line 1070
    .line 1071
    move-result v5

    .line 1072
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridRowCount(I)V

    .line 1073
    .line 1074
    .line 1075
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 1076
    .line 1077
    const-string v5, "com.yalantis.ucrop.CropGridColumnCount"

    .line 1078
    .line 1079
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1080
    .line 1081
    .line 1082
    move-result v5

    .line 1083
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColumnCount(I)V

    .line 1084
    .line 1085
    .line 1086
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 1087
    .line 1088
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v5

    .line 1092
    const v6, 0x7f060141

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 1096
    .line 1097
    .line 1098
    move-result v5

    .line 1099
    const-string v6, "com.yalantis.ucrop.CropGridColor"

    .line 1100
    .line 1101
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1102
    .line 1103
    .line 1104
    move-result v5

    .line 1105
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColor(I)V

    .line 1106
    .line 1107
    .line 1108
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->p:Lcom/yalantis/ucrop/view/OverlayView;

    .line 1109
    .line 1110
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v5

    .line 1114
    const v6, 0x7f070202

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1118
    .line 1119
    .line 1120
    move-result v5

    .line 1121
    const-string v6, "com.yalantis.ucrop.CropGridStrokeWidth"

    .line 1122
    .line 1123
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1124
    .line 1125
    .line 1126
    move-result v5

    .line 1127
    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridStrokeWidth(I)V

    .line 1128
    .line 1129
    .line 1130
    const-string v2, "com.yalantis.ucrop.AspectRatioX"

    .line 1131
    .line 1132
    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 1133
    .line 1134
    .line 1135
    move-result v2

    .line 1136
    const-string v5, "com.yalantis.ucrop.AspectRatioY"

    .line 1137
    .line 1138
    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 1139
    .line 1140
    .line 1141
    move-result v5

    .line 1142
    invoke-virtual {v0, v14, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1143
    .line 1144
    .line 1145
    move-result v6

    .line 1146
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v9

    .line 1150
    cmpl-float v10, v2, v12

    .line 1151
    .line 1152
    if-lez v10, :cond_f

    .line 1153
    .line 1154
    cmpl-float v10, v5, v12

    .line 1155
    .line 1156
    if-lez v10, :cond_f

    .line 1157
    .line 1158
    iget-object v6, v1, Lcom/yalantis/ucrop/UCropActivity;->q:Landroid/view/ViewGroup;

    .line 1159
    .line 1160
    if-eqz v6, :cond_e

    .line 1161
    .line 1162
    const/16 v9, 0x8

    .line 1163
    .line 1164
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    .line 1166
    .line 1167
    :cond_e
    iget-object v6, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 1168
    .line 1169
    div-float/2addr v2, v5

    .line 1170
    invoke-virtual {v6, v2}, Ls8/a;->setTargetAspectRatio(F)V

    .line 1171
    .line 1172
    .line 1173
    goto :goto_5

    .line 1174
    :cond_f
    if-eqz v9, :cond_10

    .line 1175
    .line 1176
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1177
    .line 1178
    .line 1179
    move-result v2

    .line 1180
    if-ge v6, v2, :cond_10

    .line 1181
    .line 1182
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 1183
    .line 1184
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v5

    .line 1188
    check-cast v5, Lp8/a;

    .line 1189
    .line 1190
    iget v5, v5, Lp8/a;->b:F

    .line 1191
    .line 1192
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v6

    .line 1196
    check-cast v6, Lp8/a;

    .line 1197
    .line 1198
    iget v6, v6, Lp8/a;->c:F

    .line 1199
    .line 1200
    div-float v12, v5, v6

    .line 1201
    .line 1202
    goto :goto_4

    .line 1203
    :cond_10
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 1204
    .line 1205
    :goto_4
    invoke-virtual {v2, v12}, Ls8/a;->setTargetAspectRatio(F)V

    .line 1206
    .line 1207
    .line 1208
    :goto_5
    const-string v2, "com.yalantis.ucrop.MaxSizeX"

    .line 1209
    .line 1210
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1211
    .line 1212
    .line 1213
    move-result v2

    .line 1214
    const-string v5, "com.yalantis.ucrop.MaxSizeY"

    .line 1215
    .line 1216
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1217
    .line 1218
    .line 1219
    move-result v0

    .line 1220
    if-lez v2, :cond_11

    .line 1221
    .line 1222
    if-lez v0, :cond_11

    .line 1223
    .line 1224
    iget-object v5, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 1225
    .line 1226
    invoke-virtual {v5, v2}, Ls8/a;->setMaxResultImageSizeX(I)V

    .line 1227
    .line 1228
    .line 1229
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 1230
    .line 1231
    invoke-virtual {v2, v0}, Ls8/a;->setMaxResultImageSizeY(I)V

    .line 1232
    .line 1233
    .line 1234
    :cond_11
    if-eqz v7, :cond_12

    .line 1235
    .line 1236
    if-eqz v8, :cond_12

    .line 1237
    .line 1238
    :try_start_0
    iget-object v0, v1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 1239
    .line 1240
    invoke-virtual {v0}, Ls8/c;->getMaxBitmapSize()I

    .line 1241
    .line 1242
    .line 1243
    move-result v10

    .line 1244
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v6

    .line 1248
    new-instance v11, Ls8/b;

    .line 1249
    .line 1250
    invoke-direct {v11, v0}, Ls8/b;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V

    .line 1251
    .line 1252
    .line 1253
    new-instance v0, Lq8/b;

    .line 1254
    .line 1255
    move-object v5, v0

    .line 1256
    move v9, v10

    .line 1257
    invoke-direct/range {v5 .. v11}, Lq8/b;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILs8/b;)V

    .line 1258
    .line 1259
    .line 1260
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1261
    .line 1262
    new-array v5, v3, [Ljava/lang/Void;

    .line 1263
    .line 1264
    invoke-virtual {v0, v2, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    .line 1266
    .line 1267
    goto :goto_7

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    goto :goto_6

    .line 1270
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1271
    .line 1272
    const v2, 0x7f1302a4

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v2

    .line 1279
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1280
    .line 1281
    .line 1282
    :goto_6
    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/UCropActivity;->t(Ljava/lang/Throwable;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 1286
    .line 1287
    .line 1288
    :goto_7
    iget-boolean v0, v1, Lcom/yalantis/ucrop/UCropActivity;->k:Z

    .line 1289
    .line 1290
    if-eqz v0, :cond_14

    .line 1291
    .line 1292
    iget-object v0, v1, Lcom/yalantis/ucrop/UCropActivity;->q:Landroid/view/ViewGroup;

    .line 1293
    .line 1294
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    if-nez v0, :cond_13

    .line 1299
    .line 1300
    const v7, 0x7f0a03b9

    .line 1301
    .line 1302
    .line 1303
    goto :goto_8

    .line 1304
    :cond_13
    const v7, 0x7f0a03bb

    .line 1305
    .line 1306
    .line 1307
    :goto_8
    invoke-virtual {v1, v7}, Lcom/yalantis/ucrop/UCropActivity;->u(I)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_9

    .line 1311
    :cond_14
    invoke-virtual {v1, v3}, Lcom/yalantis/ucrop/UCropActivity;->s(I)V

    .line 1312
    .line 1313
    .line 1314
    :goto_9
    iget-object v0, v1, Lcom/yalantis/ucrop/UCropActivity;->A:Landroid/view/View;

    .line 1315
    .line 1316
    if-nez v0, :cond_15

    .line 1317
    .line 1318
    new-instance v0, Landroid/view/View;

    .line 1319
    .line 1320
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1321
    .line 1322
    .line 1323
    iput-object v0, v1, Lcom/yalantis/ucrop/UCropActivity;->A:Landroid/view/View;

    .line 1324
    .line 1325
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1326
    .line 1327
    const/4 v2, -0x1

    .line 1328
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1329
    .line 1330
    .line 1331
    const v2, 0x7f0a0400

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v0, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1335
    .line 1336
    .line 1337
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->A:Landroid/view/View;

    .line 1338
    .line 1339
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    .line 1341
    .line 1342
    iget-object v0, v1, Lcom/yalantis/ucrop/UCropActivity;->A:Landroid/view/View;

    .line 1343
    .line 1344
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1345
    .line 1346
    .line 1347
    :cond_15
    const v2, 0x7f0a0479

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1355
    .line 1356
    iget-object v2, v1, Lcom/yalantis/ucrop/UCropActivity;->A:Landroid/view/View;

    .line 1357
    .line 1358
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1359
    .line 1360
    .line 1361
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0264

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/yalantis/ucrop/UCropActivity;->e:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const v1, 0x7f1302a8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "%s - %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UCropActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    const v0, 0x7f0a0261

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget v0, p0, Lcom/yalantis/ucrop/UCropActivity;->h:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->e:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    return v2
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a0261

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->A:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 14
    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/yalantis/ucrop/UCropActivity;->l:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 22
    .line 23
    iget-object v6, p0, Lcom/yalantis/ucrop/UCropActivity;->C:Landroid/graphics/Bitmap$CompressFormat;

    .line 24
    .line 25
    iget v7, p0, Lcom/yalantis/ucrop/UCropActivity;->D:I

    .line 26
    .line 27
    new-instance v13, Ln8/f;

    .line 28
    .line 29
    invoke-direct {v13, p0}, Ln8/f;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ls8/a;->h()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Ls8/a;->setImageToWrapCropBounds(Z)V

    .line 37
    .line 38
    .line 39
    new-instance v11, Lp8/d;

    .line 40
    .line 41
    iget-object v1, p1, Ls8/a;->r:Landroid/graphics/RectF;

    .line 42
    .line 43
    iget-object v3, p1, Ls8/c;->a:[F

    .line 44
    .line 45
    invoke-static {v3}, Lb8/f;->p0([F)Landroid/graphics/RectF;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p1}, Ls8/c;->getCurrentScale()F

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {p1}, Ls8/c;->getCurrentAngle()F

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-direct {v11, v1, v3, v4, v5}, Lp8/d;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    .line 58
    .line 59
    .line 60
    new-instance v12, Lp8/b;

    .line 61
    .line 62
    iget v4, p1, Ls8/a;->B:I

    .line 63
    .line 64
    iget v5, p1, Ls8/a;->C:I

    .line 65
    .line 66
    invoke-virtual {p1}, Ls8/c;->getImageInputPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {p1}, Ls8/c;->getImageOutputPath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {p1}, Ls8/c;->getExifInfo()Lp8/c;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    move-object v3, v12

    .line 79
    invoke-direct/range {v3 .. v10}, Lp8/b;-><init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lp8/c;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lq8/a;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {p1}, Ls8/c;->getViewBitmap()Landroid/graphics/Bitmap;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    move-object v8, v1

    .line 93
    invoke-direct/range {v8 .. v13}, Lq8/a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lp8/d;Lp8/b;Ln8/f;)V

    .line 94
    .line 95
    .line 96
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 97
    .line 98
    new-array v0, v0, [Ljava/lang/Void;

    .line 99
    .line 100
    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    .line 102
    .line 103
    return v2

    .line 104
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const v1, 0x102002c

    .line 109
    .line 110
    .line 111
    if-ne v0, v1, :cond_1

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 114
    .line 115
    .line 116
    return v2

    .line 117
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    return p1
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a0261

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->l:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a0264

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->l:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls8/a;->h()V

    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 5

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->E:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setScaleEnabled(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->E:[I

    aget p1, v1, p1

    if-eq p1, v4, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setRotateEnabled(Z)V

    return-void
.end method

.method public final t(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yalantis.ucrop.Error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x60

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public final u(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->q:Landroid/view/ViewGroup;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const v3, 0x7f0a03b9

    .line 11
    .line 12
    .line 13
    if-ne p1, v3, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v4, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->r:Landroid/view/ViewGroup;

    .line 22
    .line 23
    const v4, 0x7f0a03ba

    .line 24
    .line 25
    .line 26
    if-ne p1, v4, :cond_2

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/4 v5, 0x0

    .line 31
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->s:Landroid/view/ViewGroup;

    .line 35
    .line 36
    const v5, 0x7f0a03bb

    .line 37
    .line 38
    .line 39
    if-ne p1, v5, :cond_3

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    const/4 v6, 0x0

    .line 44
    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->t:Landroid/view/ViewGroup;

    .line 48
    .line 49
    const/16 v6, 0x8

    .line 50
    .line 51
    if-ne p1, v3, :cond_4

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const/16 v7, 0x8

    .line 56
    .line 57
    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->v:Landroid/view/ViewGroup;

    .line 61
    .line 62
    if-ne p1, v4, :cond_5

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    goto :goto_4

    .line 66
    :cond_5
    const/16 v7, 0x8

    .line 67
    .line 68
    :goto_4
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->w:Landroid/view/ViewGroup;

    .line 72
    .line 73
    if-ne p1, v5, :cond_6

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    goto :goto_5

    .line 77
    :cond_6
    const/16 v7, 0x8

    .line 78
    .line 79
    :goto_5
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    const v0, 0x7f0a0479

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    .line 91
    iget-object v7, p0, Lcom/yalantis/ucrop/UCropActivity;->B:Landroidx/transition/AutoTransition;

    .line 92
    .line 93
    invoke-static {v0, v7}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->s:Landroid/view/ViewGroup;

    .line 97
    .line 98
    const v7, 0x7f0a03ed

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-ne p1, v5, :cond_7

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    goto :goto_6

    .line 109
    :cond_7
    const/16 v7, 0x8

    .line 110
    .line 111
    :goto_6
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->q:Landroid/view/ViewGroup;

    .line 115
    .line 116
    const v7, 0x7f0a03e8

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-ne p1, v3, :cond_8

    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    goto :goto_7

    .line 127
    :cond_8
    const/16 v3, 0x8

    .line 128
    .line 129
    :goto_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->r:Landroid/view/ViewGroup;

    .line 133
    .line 134
    const v3, 0x7f0a03ec

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-ne p1, v4, :cond_9

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    :cond_9
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    if-ne p1, v5, :cond_a

    .line 148
    .line 149
    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->s(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_a
    if-ne p1, v4, :cond_b

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->s(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_b
    const/4 p1, 0x2

    .line 160
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->s(I)V

    .line 161
    .line 162
    .line 163
    :goto_8
    return-void
.end method
