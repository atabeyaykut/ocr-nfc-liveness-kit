.class public final Lh2/e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/e$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/shockwave/pdfium/PdfiumCore;

.field public final b:Lcom/shockwave/pdfium/PdfDocument;

.field public final c:Lcom/github/barteksc/pdfviewer/PDFView;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/util/SparseBooleanArray;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lh2/e;->d:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lh2/e;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lh2/e;->f:Landroid/graphics/Matrix;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lh2/e;->g:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh2/e;->h:Z

    iput-object p2, p0, Lh2/e;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    iput-object p3, p0, Lh2/e;->a:Lcom/shockwave/pdfium/PdfiumCore;

    iput-object p4, p0, Lh2/e;->b:Lcom/shockwave/pdfium/PdfDocument;

    return-void
.end method


# virtual methods
.method public final a(IIFFLandroid/graphics/RectF;ZIZ)V
    .locals 11

    move-object v0, p0

    new-instance v10, Lh2/e$c;

    move-object v1, v10

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move v5, p1

    move v6, p2

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lh2/e$c;-><init>(FFLandroid/graphics/RectF;IIZIZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Lh2/e$c;)Lk2/a;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li2/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh2/e;->g:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    iget v1, p1, Lh2/e$c;->d:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p1, Lh2/e$c;->d:I

    .line 10
    .line 11
    if-gez v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lh2/e;->a:Lcom/shockwave/pdfium/PdfiumCore;

    .line 14
    .line 15
    iget-object v3, p0, Lh2/e;->b:Lcom/shockwave/pdfium/PdfDocument;

    .line 16
    .line 17
    invoke-virtual {v1, v3, v2}, Lcom/shockwave/pdfium/PdfiumCore;->h(Lcom/shockwave/pdfium/PdfDocument;I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Li2/a;

    .line 31
    .line 32
    invoke-direct {v0, v2, p1}, Li2/a;-><init>(ILjava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_0
    :goto_0
    iget v1, p1, Lh2/e$c;->a:F

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v3, p1, Lh2/e$c;->b:F

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    :try_start_1
    iget-boolean v4, p1, Lh2/e$c;->h:Z

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 56
    .line 57
    :goto_1
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    iget-object v5, p0, Lh2/e;->f:Landroid/graphics/Matrix;

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 64
    .line 65
    .line 66
    iget-object v6, p1, Lh2/e$c;->c:Landroid/graphics/RectF;

    .line 67
    .line 68
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .line 69
    .line 70
    neg-float v7, v7

    .line 71
    int-to-float v1, v1

    .line 72
    mul-float v7, v7, v1

    .line 73
    .line 74
    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 75
    .line 76
    neg-float v8, v8

    .line 77
    int-to-float v3, v3

    .line 78
    mul-float v8, v8, v3

    .line 79
    .line 80
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const/high16 v8, 0x3f800000    # 1.0f

    .line 88
    .line 89
    div-float v7, v8, v7

    .line 90
    .line 91
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    div-float/2addr v8, v6

    .line 96
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 97
    .line 98
    .line 99
    iget-object v6, p0, Lh2/e;->d:Landroid/graphics/RectF;

    .line 100
    .line 101
    const/4 v7, 0x0

    .line 102
    invoke-virtual {v6, v7, v7, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lh2/e;->e:Landroid/graphics/Rect;

    .line 109
    .line 110
    invoke-virtual {v6, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    iget-object v5, p0, Lh2/e;->a:Lcom/shockwave/pdfium/PdfiumCore;

    .line 120
    .line 121
    iget-object v6, p0, Lh2/e;->b:Lcom/shockwave/pdfium/PdfDocument;

    .line 122
    .line 123
    iget v8, p1, Lh2/e$c;->d:I

    .line 124
    .line 125
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    iget-boolean v13, p1, Lh2/e$c;->i:Z

    .line 138
    .line 139
    move-object v7, v4

    .line 140
    invoke-virtual/range {v5 .. v13}, Lcom/shockwave/pdfium/PdfiumCore;->j(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    iget-object v0, p0, Lh2/e;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getInvalidPageColor()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 151
    .line 152
    .line 153
    :goto_2
    new-instance v0, Lk2/a;

    .line 154
    .line 155
    iget v6, p1, Lh2/e$c;->e:I

    .line 156
    .line 157
    iget v7, p1, Lh2/e$c;->d:I

    .line 158
    .line 159
    iget-object v9, p1, Lh2/e$c;->c:Landroid/graphics/RectF;

    .line 160
    .line 161
    iget-boolean v10, p1, Lh2/e$c;->f:Z

    .line 162
    .line 163
    iget v11, p1, Lh2/e$c;->g:I

    .line 164
    .line 165
    move-object v5, v0

    .line 166
    move-object v8, v4

    .line 167
    invoke-direct/range {v5 .. v11}, Lk2/a;-><init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :catch_1
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    const/4 p1, 0x0

    .line 176
    return-object p1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh2/e;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lh2/e$c;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lh2/e;->b(Lh2/e$c;)Lk2/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean v1, p0, Lh2/e;->h:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lh2/e$a;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lh2/e$a;-><init>(Lh2/e;Lk2/a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p1, Lk2/a;->c:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Li2/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    new-instance v1, Lh2/e$b;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1}, Lh2/e$b;-><init>(Lh2/e;Li2/a;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method
