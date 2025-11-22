.class public Lcom/yalantis/ucrop/view/OverlayView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final A:I

.field public final B:I

.field public C:Lo8/d;

.field public D:Z

.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/RectF;

.field public c:I

.field public d:I

.field public e:[F

.field public f:I

.field public g:I

.field public h:F

.field public j:[F

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public final p:Landroid/graphics/Path;

.field public final q:Landroid/graphics/Paint;

.field public final r:Landroid/graphics/Paint;

.field public final s:Landroid/graphics/Paint;

.field public final t:Landroid/graphics/Paint;

.field public v:I

.field public w:F

.field public x:F

.field public y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Landroid/graphics/Paint;

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->x:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070205

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070206

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070204

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->B:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-static {v0}, Lb8/f;->I(Landroid/graphics/RectF;)[F

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:[F

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    .line 17
    .line 18
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/high16 v4, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr v0, v4

    .line 46
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public getCropViewRect()Landroid/graphics/RectF;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFreestyleCropMode()I
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:I

    return v0
.end method

.method public getOverlayViewChangeListener()Lo8/d;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->C:Lo8/d;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:Landroid/graphics/RectF;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Path;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 16
    .line 17
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/high16 v4, 0x40000000    # 2.0f

    .line 59
    .line 60
    div-float/2addr v3, v4

    .line 61
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->l:Z

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:I

    .line 81
    .line 82
    mul-int/lit8 v0, v0, 0x4

    .line 83
    .line 84
    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    .line 85
    .line 86
    mul-int/lit8 v2, v2, 0x4

    .line 87
    .line 88
    add-int/2addr v2, v0

    .line 89
    new-array v0, v2, [F

    .line 90
    .line 91
    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    :goto_1
    iget v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:I

    .line 97
    .line 98
    const/high16 v5, 0x3f800000    # 1.0f

    .line 99
    .line 100
    if-ge v2, v4, :cond_2

    .line 101
    .line 102
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    .line 103
    .line 104
    add-int/lit8 v6, v3, 0x1

    .line 105
    .line 106
    iget v7, v1, Landroid/graphics/RectF;->left:F

    .line 107
    .line 108
    aput v7, v4, v3

    .line 109
    .line 110
    add-int/lit8 v3, v6, 0x1

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    int-to-float v8, v2

    .line 117
    add-float/2addr v8, v5

    .line 118
    iget v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:I

    .line 119
    .line 120
    add-int/lit8 v5, v5, 0x1

    .line 121
    .line 122
    int-to-float v5, v5

    .line 123
    div-float v5, v8, v5

    .line 124
    .line 125
    mul-float v5, v5, v7

    .line 126
    .line 127
    iget v7, v1, Landroid/graphics/RectF;->top:F

    .line 128
    .line 129
    add-float/2addr v5, v7

    .line 130
    aput v5, v4, v6

    .line 131
    .line 132
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    .line 133
    .line 134
    add-int/lit8 v5, v3, 0x1

    .line 135
    .line 136
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 137
    .line 138
    aput v6, v4, v3

    .line 139
    .line 140
    add-int/lit8 v3, v5, 0x1

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    iget v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:I

    .line 147
    .line 148
    add-int/lit8 v7, v7, 0x1

    .line 149
    .line 150
    int-to-float v7, v7

    .line 151
    div-float/2addr v8, v7

    .line 152
    mul-float v8, v8, v6

    .line 153
    .line 154
    iget v6, v1, Landroid/graphics/RectF;->top:F

    .line 155
    .line 156
    add-float/2addr v8, v6

    .line 157
    aput v8, v4, v5

    .line 158
    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_2
    :goto_2
    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    .line 163
    .line 164
    if-ge v0, v2, :cond_3

    .line 165
    .line 166
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    .line 167
    .line 168
    add-int/lit8 v4, v3, 0x1

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    int-to-float v7, v0

    .line 175
    add-float/2addr v7, v5

    .line 176
    iget v8, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    .line 177
    .line 178
    add-int/lit8 v8, v8, 0x1

    .line 179
    .line 180
    int-to-float v8, v8

    .line 181
    div-float v8, v7, v8

    .line 182
    .line 183
    mul-float v8, v8, v6

    .line 184
    .line 185
    iget v6, v1, Landroid/graphics/RectF;->left:F

    .line 186
    .line 187
    add-float/2addr v8, v6

    .line 188
    aput v8, v2, v3

    .line 189
    .line 190
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    .line 191
    .line 192
    add-int/lit8 v3, v4, 0x1

    .line 193
    .line 194
    iget v6, v1, Landroid/graphics/RectF;->top:F

    .line 195
    .line 196
    aput v6, v2, v4

    .line 197
    .line 198
    add-int/lit8 v4, v3, 0x1

    .line 199
    .line 200
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    iget v8, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    .line 205
    .line 206
    add-int/lit8 v8, v8, 0x1

    .line 207
    .line 208
    int-to-float v8, v8

    .line 209
    div-float/2addr v7, v8

    .line 210
    mul-float v7, v7, v6

    .line 211
    .line 212
    iget v6, v1, Landroid/graphics/RectF;->left:F

    .line 213
    .line 214
    add-float/2addr v7, v6

    .line 215
    aput v7, v2, v3

    .line 216
    .line 217
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    .line 218
    .line 219
    add-int/lit8 v3, v4, 0x1

    .line 220
    .line 221
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 222
    .line 223
    aput v6, v2, v4

    .line 224
    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    .line 229
    .line 230
    if-eqz v0, :cond_4

    .line 231
    .line 232
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    .line 233
    .line 234
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 235
    .line 236
    .line 237
    :cond_4
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:Z

    .line 238
    .line 239
    if-eqz v0, :cond_5

    .line 240
    .line 241
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    .line 242
    .line 243
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 244
    .line 245
    .line 246
    :cond_5
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:I

    .line 247
    .line 248
    if-eqz v0, :cond_6

    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 256
    .line 257
    .line 258
    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->B:I

    .line 259
    .line 260
    int-to-float v3, v2

    .line 261
    neg-int v2, v2

    .line 262
    int-to-float v2, v2

    .line 263
    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 264
    .line 265
    .line 266
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 267
    .line 268
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 275
    .line 276
    .line 277
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 278
    .line 279
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Landroid/graphics/Paint;

    .line 283
    .line 284
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 288
    .line 289
    .line 290
    :cond_6
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:I

    sub-int/2addr p4, p2

    iput p4, p0, Lcom/yalantis/ucrop/view/OverlayView;->d:I

    iget-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->D:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->D:Z

    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:F

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->setTargetAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yalantis/ucrop/view/OverlayView;->a:Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_18

    .line 10
    .line 11
    iget v2, v0, Lcom/yalantis/ucrop/view/OverlayView;->v:I

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_c

    .line 16
    .line 17
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    and-int/lit16 v5, v5, 0xff

    .line 30
    .line 31
    const/4 v8, -0x1

    .line 32
    const/4 v9, 0x1

    .line 33
    if-nez v5, :cond_8

    .line 34
    .line 35
    iget v5, v0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    .line 36
    .line 37
    int-to-double v10, v5

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v12, -0x1

    .line 40
    :goto_0
    const/16 v13, 0x8

    .line 41
    .line 42
    if-ge v5, v13, :cond_2

    .line 43
    .line 44
    iget-object v13, v0, Lcom/yalantis/ucrop/view/OverlayView;->e:[F

    .line 45
    .line 46
    aget v13, v13, v5

    .line 47
    .line 48
    sub-float v13, v2, v13

    .line 49
    .line 50
    float-to-double v13, v13

    .line 51
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 52
    .line 53
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 54
    .line 55
    .line 56
    move-result-wide v13

    .line 57
    iget-object v15, v0, Lcom/yalantis/ucrop/view/OverlayView;->e:[F

    .line 58
    .line 59
    add-int/lit8 v16, v5, 0x1

    .line 60
    .line 61
    aget v15, v15, v16

    .line 62
    .line 63
    sub-float v15, v4, v15

    .line 64
    .line 65
    move/from16 v17, v4

    .line 66
    .line 67
    float-to-double v3, v15

    .line 68
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    add-double/2addr v3, v13

    .line 73
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    cmpg-double v6, v3, v10

    .line 78
    .line 79
    if-gez v6, :cond_1

    .line 80
    .line 81
    div-int/lit8 v12, v5, 0x2

    .line 82
    .line 83
    move-wide v10, v3

    .line 84
    :cond_1
    add-int/lit8 v5, v5, 0x2

    .line 85
    .line 86
    move/from16 v4, v17

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move/from16 v17, v4

    .line 90
    .line 91
    iget v3, v0, Lcom/yalantis/ucrop/view/OverlayView;->v:I

    .line 92
    .line 93
    if-ne v3, v9, :cond_3

    .line 94
    .line 95
    if-gez v12, :cond_3

    .line 96
    .line 97
    move/from16 v3, v17

    .line 98
    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    const/4 v6, 0x4

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move/from16 v3, v17

    .line 108
    .line 109
    :cond_4
    move v6, v12

    .line 110
    :goto_1
    iput v6, v0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    .line 111
    .line 112
    if-eq v6, v8, :cond_5

    .line 113
    .line 114
    const/16 v16, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    const/16 v16, 0x0

    .line 118
    .line 119
    :goto_2
    if-nez v16, :cond_6

    .line 120
    .line 121
    const/high16 v1, -0x40800000    # -1.0f

    .line 122
    .line 123
    iput v1, v0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    .line 124
    .line 125
    iput v1, v0, Lcom/yalantis/ucrop/view/OverlayView;->x:F

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    iget v1, v0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    cmpg-float v1, v1, v4

    .line 132
    .line 133
    if-gez v1, :cond_7

    .line 134
    .line 135
    iput v2, v0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    .line 136
    .line 137
    iput v3, v0, Lcom/yalantis/ucrop/view/OverlayView;->x:F

    .line 138
    .line 139
    :cond_7
    :goto_3
    return v16

    .line 140
    :cond_8
    move v3, v4

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    and-int/lit16 v4, v4, 0xff

    .line 146
    .line 147
    const/4 v5, 0x2

    .line 148
    if-ne v4, v5, :cond_16

    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-ne v4, v9, :cond_16

    .line 155
    .line 156
    iget v4, v0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    .line 157
    .line 158
    if-eq v4, v8, :cond_16

    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    int-to-float v4, v4

    .line 165
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    sub-int/2addr v4, v6

    .line 178
    int-to-float v4, v4

    .line 179
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    int-to-float v4, v4

    .line 188
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    sub-int/2addr v4, v6

    .line 201
    int-to-float v4, v4

    .line 202
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    iget-object v4, v0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    .line 207
    .line 208
    invoke-virtual {v4, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 209
    .line 210
    .line 211
    iget v6, v0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    .line 212
    .line 213
    if-eqz v6, :cond_d

    .line 214
    .line 215
    if-eq v6, v9, :cond_c

    .line 216
    .line 217
    if-eq v6, v5, :cond_b

    .line 218
    .line 219
    const/4 v5, 0x3

    .line 220
    if-eq v6, v5, :cond_a

    .line 221
    .line 222
    const/4 v5, 0x4

    .line 223
    if-eq v6, v5, :cond_9

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_9
    iget v5, v0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    .line 227
    .line 228
    sub-float v5, v2, v5

    .line 229
    .line 230
    iget v6, v0, Lcom/yalantis/ucrop/view/OverlayView;->x:F

    .line 231
    .line 232
    sub-float v6, v3, v6

    .line 233
    .line 234
    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 235
    .line 236
    .line 237
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 238
    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    int-to-float v6, v6

    .line 244
    cmpl-float v5, v5, v6

    .line 245
    .line 246
    if-lez v5, :cond_15

    .line 247
    .line 248
    iget v5, v4, Landroid/graphics/RectF;->top:F

    .line 249
    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    int-to-float v6, v6

    .line 255
    cmpl-float v5, v5, v6

    .line 256
    .line 257
    if-lez v5, :cond_15

    .line 258
    .line 259
    iget v5, v4, Landroid/graphics/RectF;->right:F

    .line 260
    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    int-to-float v6, v6

    .line 266
    cmpg-float v5, v5, v6

    .line 267
    .line 268
    if-gez v5, :cond_15

    .line 269
    .line 270
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 271
    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    int-to-float v6, v6

    .line 277
    cmpg-float v5, v5, v6

    .line 278
    .line 279
    if-gez v5, :cond_15

    .line 280
    .line 281
    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 282
    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_a
    iget v5, v1, Landroid/graphics/RectF;->top:F

    .line 286
    .line 287
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 288
    .line 289
    invoke-virtual {v4, v2, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_b
    iget v5, v1, Landroid/graphics/RectF;->left:F

    .line 294
    .line 295
    iget v6, v1, Landroid/graphics/RectF;->top:F

    .line 296
    .line 297
    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_c
    iget v5, v1, Landroid/graphics/RectF;->left:F

    .line 302
    .line 303
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 304
    .line 305
    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_d
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 310
    .line 311
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 312
    .line 313
    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 314
    .line 315
    .line 316
    :goto_4
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    iget v6, v0, Lcom/yalantis/ucrop/view/OverlayView;->A:I

    .line 321
    .line 322
    int-to-float v6, v6

    .line 323
    cmpl-float v5, v5, v6

    .line 324
    .line 325
    if-ltz v5, :cond_e

    .line 326
    .line 327
    const/4 v5, 0x1

    .line 328
    goto :goto_5

    .line 329
    :cond_e
    const/4 v5, 0x0

    .line 330
    :goto_5
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    cmpl-float v6, v7, v6

    .line 335
    .line 336
    if-ltz v6, :cond_f

    .line 337
    .line 338
    const/16 v16, 0x1

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_f
    const/16 v16, 0x0

    .line 342
    .line 343
    :goto_6
    if-eqz v16, :cond_10

    .line 344
    .line 345
    iget v6, v4, Landroid/graphics/RectF;->left:F

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_10
    iget v6, v1, Landroid/graphics/RectF;->left:F

    .line 349
    .line 350
    :goto_7
    if-eqz v5, :cond_11

    .line 351
    .line 352
    iget v7, v4, Landroid/graphics/RectF;->top:F

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_11
    iget v7, v1, Landroid/graphics/RectF;->top:F

    .line 356
    .line 357
    :goto_8
    if-eqz v16, :cond_12

    .line 358
    .line 359
    iget v8, v4, Landroid/graphics/RectF;->right:F

    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_12
    iget v8, v1, Landroid/graphics/RectF;->right:F

    .line 363
    .line 364
    :goto_9
    if-eqz v5, :cond_13

    .line 365
    .line 366
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 367
    .line 368
    goto :goto_a

    .line 369
    :cond_13
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 370
    .line 371
    :goto_a
    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 372
    .line 373
    .line 374
    if-nez v5, :cond_14

    .line 375
    .line 376
    if-eqz v16, :cond_15

    .line 377
    .line 378
    :cond_14
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/yalantis/ucrop/view/OverlayView;->a()V

    .line 379
    .line 380
    .line 381
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 382
    .line 383
    .line 384
    :cond_15
    iput v2, v0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    .line 385
    .line 386
    iput v3, v0, Lcom/yalantis/ucrop/view/OverlayView;->x:F

    .line 387
    .line 388
    return v9

    .line 389
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    and-int/lit16 v2, v2, 0xff

    .line 394
    .line 395
    if-ne v2, v9, :cond_17

    .line 396
    .line 397
    const/high16 v2, -0x40800000    # -1.0f

    .line 398
    .line 399
    iput v2, v0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    .line 400
    .line 401
    iput v2, v0, Lcom/yalantis/ucrop/view/OverlayView;->x:F

    .line 402
    .line 403
    iput v8, v0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    .line 404
    .line 405
    iget-object v2, v0, Lcom/yalantis/ucrop/view/OverlayView;->C:Lo8/d;

    .line 406
    .line 407
    if-eqz v2, :cond_17

    .line 408
    .line 409
    check-cast v2, Ls8/e;

    .line 410
    .line 411
    iget-object v2, v2, Ls8/e;->a:Lcom/yalantis/ucrop/view/UCropView;

    .line 412
    .line 413
    iget-object v2, v2, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 414
    .line 415
    invoke-virtual {v2, v1}, Ls8/a;->setCropRect(Landroid/graphics/RectF;)V

    .line 416
    .line 417
    .line 418
    :cond_17
    const/4 v1, 0x0

    .line 419
    return v1

    .line 420
    :cond_18
    :goto_c
    const/4 v1, 0x0

    .line 421
    return v1
.end method

.method public setCircleDimmedLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    return-void
.end method

.method public setCropFrameColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setCropGridColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropGridColumnCount(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    return-void
.end method

.method public setCropGridRowCount(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:[F

    return-void
.end method

.method public setCropGridStrokeWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setDimmedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:I

    return-void
.end method

.method public setFreestyleCropEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:I

    return-void
.end method

.method public setFreestyleCropMode(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setOverlayViewChangeListener(Lo8/d;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->C:Lo8/d;

    return-void
.end method

.method public setShowCropFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:Z

    return-void
.end method

.method public setShowCropGrid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->l:Z

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:F

    .line 2
    .line 3
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:I

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    int-to-float v1, v0

    .line 8
    div-float/2addr v1, p1

    .line 9
    float-to-int v1, v1

    .line 10
    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->d:I

    .line 11
    .line 12
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->a:Landroid/graphics/RectF;

    .line 13
    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    int-to-float v1, v2

    .line 17
    mul-float v1, v1, p1

    .line 18
    .line 19
    float-to-int p1, v1

    .line 20
    sub-int/2addr v0, p1

    .line 21
    div-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, v0

    .line 28
    int-to-float v1, v1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    add-int/2addr v4, p1

    .line 39
    add-int/2addr v4, v0

    .line 40
    int-to-float p1, v4

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->d:I

    .line 46
    .line 47
    add-int/2addr v0, v4

    .line 48
    int-to-float v0, v0

    .line 49
    invoke-virtual {v3, v1, v2, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sub-int/2addr v2, v1

    .line 54
    div-int/lit8 v2, v2, 0x2

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    int-to-float p1, p1

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, v2

    .line 66
    int-to-float v0, v0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iget v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:I

    .line 72
    .line 73
    add-int/2addr v4, v5

    .line 74
    int-to-float v4, v4

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    add-int/2addr v5, v1

    .line 80
    add-int/2addr v5, v2

    .line 81
    int-to-float v1, v5

    .line 82
    invoke-virtual {v3, p1, v0, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->C:Lo8/d;

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    check-cast p1, Ls8/e;

    .line 90
    .line 91
    iget-object p1, p1, Ls8/e;->a:Lcom/yalantis/ucrop/view/UCropView;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 94
    .line 95
    invoke-virtual {p1, v3}, Ls8/a;->setCropRect(Landroid/graphics/RectF;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->a()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->D:Z

    .line 107
    .line 108
    :goto_1
    return-void
.end method
