.class public Lcom/yalantis/ucrop/view/UCropView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yalantis/ucrop/view/GestureCropImageView;

.field public final b:Lcom/yalantis/ucrop/view/OverlayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0d0125

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a01be

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 26
    .line 27
    const v2, 0x7f0a0487

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/yalantis/ucrop/view/OverlayView;

    .line 35
    .line 36
    iput-object v2, p0, Lcom/yalantis/ucrop/view/UCropView;->b:Lcom/yalantis/ucrop/view/OverlayView;

    .line 37
    .line 38
    sget-object v4, Lc5/u;->k:[I

    .line 39
    .line 40
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x2

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iput-boolean v4, v2, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const v5, 0x7f060142

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x3

    .line 66
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iput v4, v2, Lcom/yalantis/ucrop/view/OverlayView;->n:I

    .line 71
    .line 72
    iget-object v6, v2, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    .line 76
    .line 77
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 78
    .line 79
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    .line 81
    .line 82
    const/high16 v4, 0x3f800000    # 1.0f

    .line 83
    .line 84
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const v6, 0x7f070201

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    const/4 v6, 0x5

    .line 99
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const v7, 0x7f060140

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    const/4 v7, 0x4

    .line 115
    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    iget-object v7, v2, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    .line 120
    .line 121
    int-to-float v8, v4

    .line 122
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    .line 127
    .line 128
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 129
    .line 130
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    .line 132
    .line 133
    iget-object v7, v2, Lcom/yalantis/ucrop/view/OverlayView;->t:Landroid/graphics/Paint;

    .line 134
    .line 135
    mul-int/lit8 v4, v4, 0x3

    .line 136
    .line 137
    int-to-float v4, v4

    .line 138
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    .line 143
    .line 144
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 145
    .line 146
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    .line 148
    .line 149
    const/16 v4, 0xa

    .line 150
    .line 151
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    iput-boolean v4, v2, Lcom/yalantis/ucrop/view/OverlayView;->k:Z

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const v5, 0x7f070202

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    const/16 v5, 0x9

    .line 169
    .line 170
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    const v6, 0x7f060141

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    const/4 v6, 0x6

    .line 186
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    iget-object v6, v2, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    .line 191
    .line 192
    int-to-float v4, v4

    .line 193
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    .line 198
    .line 199
    const/16 v4, 0x8

    .line 200
    .line 201
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    iput v4, v2, Lcom/yalantis/ucrop/view/OverlayView;->f:I

    .line 206
    .line 207
    const/4 v4, 0x7

    .line 208
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    iput p2, v2, Lcom/yalantis/ucrop/view/OverlayView;->g:I

    .line 213
    .line 214
    const/16 p2, 0xb

    .line 215
    .line 216
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    iput-boolean p2, v2, Lcom/yalantis/ucrop/view/OverlayView;->l:Z

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    const/4 p2, 0x0

    .line 226
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    cmpl-float v4, v0, p2

    .line 243
    .line 244
    if-eqz v4, :cond_1

    .line 245
    .line 246
    cmpl-float v4, v3, p2

    .line 247
    .line 248
    if-nez v4, :cond_0

    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_0
    div-float/2addr v0, v3

    .line 252
    iput v0, v1, Ls8/a;->t:F

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_1
    :goto_0
    iput p2, v1, Ls8/a;->t:F

    .line 256
    .line 257
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    .line 259
    .line 260
    new-instance p1, Ls8/d;

    .line 261
    .line 262
    invoke-direct {p1, p0}, Ls8/d;-><init>(Lcom/yalantis/ucrop/view/UCropView;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, p1}, Ls8/a;->setCropBoundsChangeListener(Lo8/c;)V

    .line 266
    .line 267
    .line 268
    new-instance p1, Ls8/e;

    .line 269
    .line 270
    invoke-direct {p1, p0}, Ls8/e;-><init>(Lcom/yalantis/ucrop/view/UCropView;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, p1}, Lcom/yalantis/ucrop/view/OverlayView;->setOverlayViewChangeListener(Lo8/d;)V

    .line 274
    .line 275
    .line 276
    return-void
.end method


# virtual methods
.method public getCropImageView()Lcom/yalantis/ucrop/view/GestureCropImageView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    return-object v0
.end method

.method public getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->b:Lcom/yalantis/ucrop/view/OverlayView;

    return-object v0
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
