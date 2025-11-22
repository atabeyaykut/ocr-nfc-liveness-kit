.class public Lcom/yalantis/ucrop/view/GestureCropImageView;
.super Ls8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/GestureCropImageView$b;,
        Lcom/yalantis/ucrop/view/GestureCropImageView$a;,
        Lcom/yalantis/ucrop/view/GestureCropImageView$c;
    }
.end annotation


# instance fields
.field public E:Landroid/view/ScaleGestureDetector;

.field public F:Lr8/e;

.field public G:Landroid/view/GestureDetector;

.field public H:F

.field public I:F

.field public K:Z

.field public L:Z

.field public M:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Ls8/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->K:Z

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->L:Z

    const/4 p1, 0x5

    iput p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->M:I

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    .line 1
    invoke-super {p0}, Ls8/c;->c()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/GestureDetector;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/yalantis/ucrop/view/GestureCropImageView$a;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/yalantis/ucrop/view/GestureCropImageView$a;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->G:Landroid/view/GestureDetector;

    .line 21
    .line 22
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/yalantis/ucrop/view/GestureCropImageView$c;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/yalantis/ucrop/view/GestureCropImageView$c;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->E:Landroid/view/ScaleGestureDetector;

    .line 37
    .line 38
    new-instance v0, Lr8/e;

    .line 39
    .line 40
    new-instance v1, Lcom/yalantis/ucrop/view/GestureCropImageView$b;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/view/GestureCropImageView$b;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lr8/e;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView$b;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->F:Lr8/e;

    .line 49
    .line 50
    return-void
.end method

.method public getDoubleTapScaleSteps()I
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->M:I

    return v0
.end method

.method public getDoubleTapTargetScale()F
    .locals 5

    invoke-virtual {p0}, Ls8/c;->getCurrentScale()F

    move-result v0

    invoke-virtual {p0}, Ls8/a;->getMaxScale()F

    move-result v1

    invoke-virtual {p0}, Ls8/a;->getMinScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->M:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ls8/a;->h()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-le v0, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-float/2addr v3, v0

    .line 29
    const/high16 v0, 0x40000000    # 2.0f

    .line 30
    .line 31
    div-float/2addr v3, v0

    .line 32
    iput v3, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->H:F

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    add-float/2addr v4, v3

    .line 43
    div-float/2addr v4, v0

    .line 44
    iput v4, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->I:F

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->G:Landroid/view/GestureDetector;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->L:Z

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->E:Landroid/view/ScaleGestureDetector;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->K:Z

    .line 61
    .line 62
    if-eqz v0, :cond_c

    .line 63
    .line 64
    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->F:Lr8/e;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const/4 v4, 0x0

    .line 74
    if-eqz v3, :cond_b

    .line 75
    .line 76
    const/4 v5, -0x1

    .line 77
    if-eq v3, v2, :cond_a

    .line 78
    .line 79
    const/4 v6, 0x2

    .line 80
    if-eq v3, v6, :cond_5

    .line 81
    .line 82
    const/4 v1, 0x5

    .line 83
    if-eq v3, v1, :cond_4

    .line 84
    .line 85
    const/4 v1, 0x6

    .line 86
    if-eq v3, v1, :cond_3

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_3
    iput v5, v0, Lr8/e;->f:I

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iput v1, v0, Lr8/e;->a:F

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, v0, Lr8/e;->b:F

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    iput v1, v0, Lr8/e;->f:I

    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :cond_5
    iget v3, v0, Lr8/e;->e:I

    .line 123
    .line 124
    if-eq v3, v5, :cond_c

    .line 125
    .line 126
    iget v3, v0, Lr8/e;->f:I

    .line 127
    .line 128
    if-eq v3, v5, :cond_c

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iget v5, v0, Lr8/e;->f:I

    .line 135
    .line 136
    if-le v3, v5, :cond_c

    .line 137
    .line 138
    iget v3, v0, Lr8/e;->e:I

    .line 139
    .line 140
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iget v5, v0, Lr8/e;->e:I

    .line 145
    .line 146
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    iget v6, v0, Lr8/e;->f:I

    .line 151
    .line 152
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    iget v7, v0, Lr8/e;->f:I

    .line 157
    .line 158
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    iget-boolean v8, v0, Lr8/e;->h:Z

    .line 163
    .line 164
    if-eqz v8, :cond_6

    .line 165
    .line 166
    iput v4, v0, Lr8/e;->g:F

    .line 167
    .line 168
    iput-boolean v1, v0, Lr8/e;->h:Z

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_6
    iget v1, v0, Lr8/e;->a:F

    .line 172
    .line 173
    iget v8, v0, Lr8/e;->b:F

    .line 174
    .line 175
    iget v9, v0, Lr8/e;->c:F

    .line 176
    .line 177
    iget v10, v0, Lr8/e;->d:F

    .line 178
    .line 179
    sub-float/2addr v8, v10

    .line 180
    float-to-double v10, v8

    .line 181
    sub-float/2addr v1, v9

    .line 182
    float-to-double v8, v1

    .line 183
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    double-to-float v1, v8

    .line 188
    float-to-double v8, v1

    .line 189
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    .line 190
    .line 191
    .line 192
    move-result-wide v8

    .line 193
    double-to-float v1, v8

    .line 194
    sub-float v8, v7, v5

    .line 195
    .line 196
    float-to-double v8, v8

    .line 197
    sub-float v10, v6, v3

    .line 198
    .line 199
    float-to-double v10, v10

    .line 200
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 201
    .line 202
    .line 203
    move-result-wide v8

    .line 204
    double-to-float v8, v8

    .line 205
    float-to-double v8, v8

    .line 206
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    .line 207
    .line 208
    .line 209
    move-result-wide v8

    .line 210
    double-to-float v8, v8

    .line 211
    const/high16 v9, 0x43b40000    # 360.0f

    .line 212
    .line 213
    rem-float/2addr v8, v9

    .line 214
    rem-float/2addr v1, v9

    .line 215
    sub-float/2addr v8, v1

    .line 216
    iput v8, v0, Lr8/e;->g:F

    .line 217
    .line 218
    const/high16 v1, -0x3ccc0000    # -180.0f

    .line 219
    .line 220
    cmpg-float v1, v8, v1

    .line 221
    .line 222
    if-gez v1, :cond_7

    .line 223
    .line 224
    add-float/2addr v8, v9

    .line 225
    goto :goto_0

    .line 226
    :cond_7
    const/high16 v1, 0x43340000    # 180.0f

    .line 227
    .line 228
    cmpl-float v1, v8, v1

    .line 229
    .line 230
    if-lez v1, :cond_8

    .line 231
    .line 232
    sub-float/2addr v8, v9

    .line 233
    :goto_0
    iput v8, v0, Lr8/e;->g:F

    .line 234
    .line 235
    :cond_8
    :goto_1
    iget-object v1, v0, Lr8/e;->i:Lr8/e$a;

    .line 236
    .line 237
    if-eqz v1, :cond_9

    .line 238
    .line 239
    check-cast v1, Lcom/yalantis/ucrop/view/GestureCropImageView$b;

    .line 240
    .line 241
    iget v8, v0, Lr8/e;->g:F

    .line 242
    .line 243
    iget-object v1, v1, Lcom/yalantis/ucrop/view/GestureCropImageView$b;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 244
    .line 245
    iget v9, v1, Lcom/yalantis/ucrop/view/GestureCropImageView;->H:F

    .line 246
    .line 247
    iget v10, v1, Lcom/yalantis/ucrop/view/GestureCropImageView;->I:F

    .line 248
    .line 249
    cmpl-float v4, v8, v4

    .line 250
    .line 251
    if-eqz v4, :cond_9

    .line 252
    .line 253
    iget-object v4, v1, Ls8/c;->d:Landroid/graphics/Matrix;

    .line 254
    .line 255
    invoke-virtual {v4, v8, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v4}, Ls8/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 259
    .line 260
    .line 261
    iget-object v8, v1, Ls8/c;->g:Ls8/c$a;

    .line 262
    .line 263
    if-eqz v8, :cond_9

    .line 264
    .line 265
    invoke-virtual {v1, v4}, Ls8/c;->a(Landroid/graphics/Matrix;)F

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    check-cast v8, Lcom/yalantis/ucrop/UCropActivity$a;

    .line 270
    .line 271
    invoke-virtual {v8, v1}, Lcom/yalantis/ucrop/UCropActivity$a;->a(F)V

    .line 272
    .line 273
    .line 274
    :cond_9
    iput v6, v0, Lr8/e;->a:F

    .line 275
    .line 276
    iput v7, v0, Lr8/e;->b:F

    .line 277
    .line 278
    iput v3, v0, Lr8/e;->c:F

    .line 279
    .line 280
    iput v5, v0, Lr8/e;->d:F

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_a
    iput v5, v0, Lr8/e;->e:I

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    iput v3, v0, Lr8/e;->c:F

    .line 291
    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    iput v3, v0, Lr8/e;->d:F

    .line 297
    .line 298
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    iput v1, v0, Lr8/e;->e:I

    .line 307
    .line 308
    :goto_2
    iput v4, v0, Lr8/e;->g:F

    .line 309
    .line 310
    iput-boolean v2, v0, Lr8/e;->h:Z

    .line 311
    .line 312
    :cond_c
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    and-int/lit16 p1, p1, 0xff

    .line 317
    .line 318
    if-ne p1, v2, :cond_d

    .line 319
    .line 320
    invoke-virtual {p0, v2}, Ls8/a;->setImageToWrapCropBounds(Z)V

    .line 321
    .line 322
    .line 323
    :cond_d
    return v2
.end method

.method public setDoubleTapScaleSteps(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->M:I

    return-void
.end method

.method public setRotateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->K:Z

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->L:Z

    return-void
.end method
