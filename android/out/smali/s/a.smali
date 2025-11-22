.class public final Ls/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls/b;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Ls/a;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls/a;->a:F

    iput p2, p0, Ls/a;->b:F

    iput p3, p0, Ls/a;->c:F

    iput p4, p0, Ls/a;->d:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ls/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls/a;->e:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "All radii must be >= 0."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lq/e;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lx5/a;->m(Lq/e;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p2, Lq/e;->a:Lq/a;

    .line 20
    .line 21
    invoke-static {v2, v3}, Lu/c;->d(Lq/a;I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    :goto_0
    invoke-static {p2}, Lx5/a;->m(Lq/e;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p2, p2, Lq/e;->b:Lq/a;

    .line 37
    .line 38
    invoke-static {p2, v3}, Lu/c;->d(Lq/a;I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {v4, v5, v2, p2, v3}, Lg/f;->a(IIIII)D

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    int-to-double v6, v2

    .line 55
    div-double/2addr v6, v4

    .line 56
    invoke-static {v6, v7}, Lc5/w;->D(D)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    int-to-double v6, p2

    .line 61
    div-double/2addr v6, v4

    .line 62
    invoke-static {v6, v7}, Lc5/w;->D(D)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-nez v4, :cond_2

    .line 71
    .line 72
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 73
    .line 74
    :cond_2
    invoke-static {v2, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const-string v5, "createBitmap(width, height, config)"

    .line 79
    .line 80
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v5, Landroid/graphics/Canvas;

    .line 84
    .line 85
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .line 87
    .line 88
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    sub-int/2addr v2, v8

    .line 104
    int-to-float v2, v2

    .line 105
    const/high16 v8, 0x40000000    # 2.0f

    .line 106
    .line 107
    div-float/2addr v2, v8

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    sub-int/2addr p2, v9

    .line 113
    int-to-float p2, p2

    .line 114
    div-float/2addr p2, v8

    .line 115
    invoke-virtual {v6, v2, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 116
    .line 117
    .line 118
    new-instance p2, Landroid/graphics/BitmapShader;

    .line 119
    .line 120
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 121
    .line 122
    invoke-direct {p2, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v6}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 129
    .line 130
    .line 131
    const/16 p1, 0x8

    .line 132
    .line 133
    new-array p1, p1, [F

    .line 134
    .line 135
    iget p2, p0, Ls/a;->a:F

    .line 136
    .line 137
    aput p2, p1, v7

    .line 138
    .line 139
    aput p2, p1, v3

    .line 140
    .line 141
    const/4 p2, 0x2

    .line 142
    iget v2, p0, Ls/a;->b:F

    .line 143
    .line 144
    aput v2, p1, p2

    .line 145
    .line 146
    aput v2, p1, v1

    .line 147
    .line 148
    const/4 p2, 0x4

    .line 149
    iget v1, p0, Ls/a;->d:F

    .line 150
    .line 151
    aput v1, p1, p2

    .line 152
    .line 153
    const/4 p2, 0x5

    .line 154
    aput v1, p1, p2

    .line 155
    .line 156
    const/4 p2, 0x6

    .line 157
    iget v1, p0, Ls/a;->c:F

    .line 158
    .line 159
    aput v1, p1, p2

    .line 160
    .line 161
    const/4 p2, 0x7

    .line 162
    aput v1, p1, p2

    .line 163
    .line 164
    new-instance p2, Landroid/graphics/RectF;

    .line 165
    .line 166
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    int-to-float v1, v1

    .line 171
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    int-to-float v2, v2

    .line 176
    const/4 v3, 0x0

    .line 177
    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 178
    .line 179
    .line 180
    new-instance v1, Landroid/graphics/Path;

    .line 181
    .line 182
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 183
    .line 184
    .line 185
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 186
    .line 187
    invoke-virtual {v1, p2, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    .line 192
    .line 193
    return-object v4
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ls/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Ls/a;

    iget v1, p1, Ls/a;->a:F

    iget v3, p0, Ls/a;->a:F

    cmpg-float v1, v3, v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget v1, p0, Ls/a;->b:F

    iget v3, p1, Ls/a;->b:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget v1, p0, Ls/a;->c:F

    iget v3, p1, Ls/a;->c:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget v1, p0, Ls/a;->d:F

    iget p1, p1, Ls/a;->d:F

    cmpg-float p1, v1, p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Ls/a;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ls/a;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Ls/a;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ls/a;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
