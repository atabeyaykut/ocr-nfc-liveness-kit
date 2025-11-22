.class public final Lp0/d;
.super Lp0/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public c:F

.field public d:Z

.field public e:J

.field public f:F

.field public g:I

.field public h:F

.field public j:F

.field public k:Ld0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lp0/a;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lp0/d;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp0/d;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lp0/d;->e:J

    const/4 v1, 0x0

    iput v1, p0, Lp0/d;->f:F

    iput v0, p0, Lp0/d;->g:I

    const/high16 v1, -0x31000000

    iput v1, p0, Lp0/d;->h:F

    const/high16 v1, 0x4f000000

    iput v1, p0, Lp0/d;->j:F

    iput-boolean v0, p0, Lp0/d;->l:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lp0/a;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 18
    .line 19
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Lp0/d;->g(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final d()F
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/d;->k:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lp0/d;->j:F

    .line 8
    .line 9
    const/high16 v2, 0x4f000000

    .line 10
    .line 11
    cmpl-float v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget v1, v0, Ld0/f;->l:F

    .line 16
    .line 17
    :cond_1
    return v1
.end method

.method public final doFrame(J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lp0/d;->l:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lp0/d;->g(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lp0/d;->k:Ld0/f;

    .line 17
    .line 18
    if-eqz v0, :cond_d

    .line 19
    .line 20
    iget-boolean v2, p0, Lp0/d;->l:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_1
    iget-wide v2, p0, Lp0/d;->e:J

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    cmp-long v6, v2, v4

    .line 31
    .line 32
    if-nez v6, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    sub-long v4, p1, v2

    .line 36
    .line 37
    :goto_0
    iget v0, v0, Ld0/f;->m:F

    .line 38
    .line 39
    const v2, 0x4e6e6b28    # 1.0E9f

    .line 40
    .line 41
    .line 42
    div-float/2addr v2, v0

    .line 43
    iget v0, p0, Lp0/d;->c:F

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    div-float/2addr v2, v0

    .line 50
    long-to-float v0, v4

    .line 51
    div-float/2addr v0, v2

    .line 52
    iget v2, p0, Lp0/d;->f:F

    .line 53
    .line 54
    invoke-virtual {p0}, Lp0/d;->f()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    neg-float v0, v0

    .line 61
    :cond_3
    add-float/2addr v2, v0

    .line 62
    iput v2, p0, Lp0/d;->f:F

    .line 63
    .line 64
    invoke-virtual {p0}, Lp0/d;->e()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p0}, Lp0/d;->d()F

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    sget-object v4, Lp0/f;->a:Landroid/graphics/PointF;

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    cmpl-float v0, v2, v0

    .line 76
    .line 77
    if-ltz v0, :cond_4

    .line 78
    .line 79
    cmpg-float v0, v2, v3

    .line 80
    .line 81
    if-gtz v0, :cond_4

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    const/4 v0, 0x0

    .line 86
    :goto_1
    xor-int/2addr v0, v4

    .line 87
    iget v2, p0, Lp0/d;->f:F

    .line 88
    .line 89
    invoke-virtual {p0}, Lp0/d;->e()F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {p0}, Lp0/d;->d()F

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-static {v2, v3, v5}, Lp0/f;->b(FFF)F

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iput v2, p0, Lp0/d;->f:F

    .line 102
    .line 103
    iput-wide p1, p0, Lp0/d;->e:J

    .line 104
    .line 105
    invoke-virtual {p0}, Lp0/a;->c()V

    .line 106
    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    if-eqz v0, :cond_a

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/4 v3, -0x1

    .line 116
    if-eq v0, v3, :cond_6

    .line 117
    .line 118
    iget v0, p0, Lp0/d;->g:I

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-lt v0, v3, :cond_6

    .line 125
    .line 126
    iget p1, p0, Lp0/d;->c:F

    .line 127
    .line 128
    const/4 p2, 0x0

    .line 129
    cmpg-float p1, p1, p2

    .line 130
    .line 131
    if-gez p1, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0}, Lp0/d;->e()F

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {p0}, Lp0/d;->d()F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    :goto_2
    iput p1, p0, Lp0/d;->f:F

    .line 143
    .line 144
    invoke-virtual {p0, v4}, Lp0/d;->g(Z)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lp0/d;->f()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p0, p1}, Lp0/a;->b(Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_6
    iget-object v0, p0, Lp0/a;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_7

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 172
    .line 173
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    iget v0, p0, Lp0/d;->g:I

    .line 178
    .line 179
    add-int/2addr v0, v4

    .line 180
    iput v0, p0, Lp0/d;->g:I

    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-ne v0, v2, :cond_8

    .line 187
    .line 188
    iget-boolean v0, p0, Lp0/d;->d:Z

    .line 189
    .line 190
    xor-int/2addr v0, v4

    .line 191
    iput-boolean v0, p0, Lp0/d;->d:Z

    .line 192
    .line 193
    iget v0, p0, Lp0/d;->c:F

    .line 194
    .line 195
    neg-float v0, v0

    .line 196
    iput v0, p0, Lp0/d;->c:F

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_8
    invoke-virtual {p0}, Lp0/d;->f()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    invoke-virtual {p0}, Lp0/d;->d()F

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    goto :goto_4

    .line 210
    :cond_9
    invoke-virtual {p0}, Lp0/d;->e()F

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    :goto_4
    iput v0, p0, Lp0/d;->f:F

    .line 215
    .line 216
    :goto_5
    iput-wide p1, p0, Lp0/d;->e:J

    .line 217
    .line 218
    :cond_a
    :goto_6
    iget-object p1, p0, Lp0/d;->k:Ld0/f;

    .line 219
    .line 220
    if-nez p1, :cond_b

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_b
    iget p1, p0, Lp0/d;->f:F

    .line 224
    .line 225
    iget p2, p0, Lp0/d;->h:F

    .line 226
    .line 227
    cmpg-float p2, p1, p2

    .line 228
    .line 229
    if-ltz p2, :cond_c

    .line 230
    .line 231
    iget p2, p0, Lp0/d;->j:F

    .line 232
    .line 233
    cmpl-float p1, p1, p2

    .line 234
    .line 235
    if-gtz p1, :cond_c

    .line 236
    .line 237
    :goto_7
    invoke-static {}, Ld0/c;->a()V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 242
    .line 243
    const/4 p2, 0x3

    .line 244
    new-array p2, p2, [Ljava/lang/Object;

    .line 245
    .line 246
    iget v0, p0, Lp0/d;->h:F

    .line 247
    .line 248
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    aput-object v0, p2, v1

    .line 253
    .line 254
    iget v0, p0, Lp0/d;->j:F

    .line 255
    .line 256
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    aput-object v0, p2, v4

    .line 261
    .line 262
    iget v0, p0, Lp0/d;->f:F

    .line 263
    .line 264
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    aput-object v0, p2, v2

    .line 269
    .line 270
    const-string v0, "Frame must be [%f,%f]. It is %f"

    .line 271
    .line 272
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw p1

    .line 280
    :cond_d
    :goto_8
    return-void
.end method

.method public final e()F
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/d;->k:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lp0/d;->h:F

    .line 8
    .line 9
    const/high16 v2, -0x31000000

    .line 10
    .line 11
    cmpl-float v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget v1, v0, Ld0/f;->k:F

    .line 16
    .line 17
    :cond_1
    return v1
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lp0/d;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(Z)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp0/d;->l:Z

    :cond_0
    return-void
.end method

.method public final getAnimatedFraction()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lp0/d;->k:Ld0/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lp0/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lp0/d;->d()F

    move-result v0

    iget v1, p0, Lp0/d;->f:F

    :goto_0
    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lp0/d;->d()F

    move-result v1

    invoke-virtual {p0}, Lp0/d;->e()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lp0/d;->f:F

    invoke-virtual {p0}, Lp0/d;->e()F

    move-result v1

    goto :goto_0
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/d;->k:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lp0/d;->f:F

    .line 8
    .line 9
    iget v2, v0, Ld0/f;->k:F

    .line 10
    .line 11
    sub-float/2addr v1, v2

    .line 12
    iget v0, v0, Ld0/f;->l:F

    .line 13
    .line 14
    sub-float/2addr v0, v2

    .line 15
    div-float v0, v1, v0

    .line 16
    .line 17
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    iget-object v0, p0, Lp0/d;->k:Ld0/f;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ld0/f;->b()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public final h(F)V
    .locals 2

    iget v0, p0, Lp0/d;->f:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lp0/d;->e()F

    move-result v0

    invoke-virtual {p0}, Lp0/d;->d()F

    move-result v1

    invoke-static {p1, v0, v1}, Lp0/f;->b(FFF)F

    move-result p1

    iput p1, p0, Lp0/d;->f:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lp0/d;->e:J

    invoke-virtual {p0}, Lp0/a;->c()V

    return-void
.end method

.method public final i(FF)V
    .locals 3

    .line 1
    cmpl-float v0, p1, p2

    .line 2
    .line 3
    if-gtz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lp0/d;->k:Ld0/f;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v1, -0x800001

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, v0, Ld0/f;->k:F

    .line 14
    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget v0, v0, Ld0/f;->l:F

    .line 22
    .line 23
    :goto_1
    invoke-static {p1, v1, v0}, Lp0/f;->b(FFF)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p2, v1, v0}, Lp0/f;->b(FFF)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iget v0, p0, Lp0/d;->h:F

    .line 32
    .line 33
    cmpl-float v0, p1, v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget v0, p0, Lp0/d;->j:F

    .line 38
    .line 39
    cmpl-float v0, p2, v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    :cond_2
    iput p1, p0, Lp0/d;->h:F

    .line 44
    .line 45
    iput p2, p0, Lp0/d;->j:F

    .line 46
    .line 47
    iget v0, p0, Lp0/d;->f:F

    .line 48
    .line 49
    invoke-static {v0, p1, p2}, Lp0/f;->b(FFF)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    float-to-int p1, p1

    .line 54
    int-to-float p1, p1

    .line 55
    invoke-virtual {p0, p1}, Lp0/d;->h(F)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    aput-object p1, v1, v2

    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    aput-object p2, v1, p1

    .line 77
    .line 78
    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    .line 79
    .line 80
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lp0/d;->l:Z

    return v0
.end method

.method public final setRepeatMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lp0/d;->d:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lp0/d;->d:Z

    .line 13
    .line 14
    iget p1, p0, Lp0/d;->c:F

    .line 15
    .line 16
    neg-float p1, p1

    .line 17
    iput p1, p0, Lp0/d;->c:F

    .line 18
    .line 19
    :cond_0
    return-void
.end method
