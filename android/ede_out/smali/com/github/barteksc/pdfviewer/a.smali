.class public final Lcom/github/barteksc/pdfviewer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/github/barteksc/pdfviewer/PDFView;

.field public b:I

.field public c:F

.field public d:F

.field public e:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:I

.field public o:I

.field public p:F

.field public final q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/a;->q:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOriginalUserPages()[I

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOriginalUserPages()[I

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOriginalUserPages()[I

    move-result-object v1

    aget v1, v1, p1

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v1, p1

    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getDocumentPageCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v2
.end method

.method public final b(FZ)Lcom/github/barteksc/pdfviewer/a$a;
    .locals 4

    .line 1
    new-instance v0, Lcom/github/barteksc/pdfviewer/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/github/barteksc/pdfviewer/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpl-float v2, p1, v1

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :cond_0
    neg-float p1, p1

    .line 13
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 14
    .line 15
    iget-boolean v1, v1, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lcom/github/barteksc/pdfviewer/a;->c:F

    .line 20
    .line 21
    iget v2, p0, Lcom/github/barteksc/pdfviewer/a;->p:F

    .line 22
    .line 23
    add-float/2addr v1, v2

    .line 24
    div-float v1, p1, v1

    .line 25
    .line 26
    invoke-static {v1}, Lc5/w;->p(F)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, v0, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 31
    .line 32
    iget v2, p0, Lcom/github/barteksc/pdfviewer/a;->c:F

    .line 33
    .line 34
    iget v3, p0, Lcom/github/barteksc/pdfviewer/a;->p:F

    .line 35
    .line 36
    add-float/2addr v2, v3

    .line 37
    int-to-float v1, v1

    .line 38
    mul-float v2, v2, v1

    .line 39
    .line 40
    sub-float/2addr p1, v2

    .line 41
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget v1, p0, Lcom/github/barteksc/pdfviewer/a;->h:F

    .line 46
    .line 47
    div-float/2addr p1, v1

    .line 48
    iget v1, p0, Lcom/github/barteksc/pdfviewer/a;->f:F

    .line 49
    .line 50
    iget v2, p0, Lcom/github/barteksc/pdfviewer/a;->i:F

    .line 51
    .line 52
    div-float/2addr v1, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget v1, p0, Lcom/github/barteksc/pdfviewer/a;->d:F

    .line 55
    .line 56
    iget v2, p0, Lcom/github/barteksc/pdfviewer/a;->p:F

    .line 57
    .line 58
    add-float/2addr v1, v2

    .line 59
    div-float v1, p1, v1

    .line 60
    .line 61
    invoke-static {v1}, Lc5/w;->p(F)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, v0, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 66
    .line 67
    iget v2, p0, Lcom/github/barteksc/pdfviewer/a;->d:F

    .line 68
    .line 69
    iget v3, p0, Lcom/github/barteksc/pdfviewer/a;->p:F

    .line 70
    .line 71
    add-float/2addr v2, v3

    .line 72
    int-to-float v1, v1

    .line 73
    mul-float v2, v2, v1

    .line 74
    .line 75
    sub-float/2addr p1, v2

    .line 76
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iget v1, p0, Lcom/github/barteksc/pdfviewer/a;->i:F

    .line 81
    .line 82
    div-float v1, p1, v1

    .line 83
    .line 84
    iget p1, p0, Lcom/github/barteksc/pdfviewer/a;->g:F

    .line 85
    .line 86
    iget v2, p0, Lcom/github/barteksc/pdfviewer/a;->h:F

    .line 87
    .line 88
    div-float/2addr p1, v2

    .line 89
    :goto_0
    if-eqz p2, :cond_2

    .line 90
    .line 91
    invoke-static {p1}, Lc5/w;->d(F)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, v0, Lcom/github/barteksc/pdfviewer/a$a;->b:I

    .line 96
    .line 97
    invoke-static {v1}, Lc5/w;->d(F)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-static {p1}, Lc5/w;->p(F)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput p1, v0, Lcom/github/barteksc/pdfviewer/a$a;->b:I

    .line 107
    .line 108
    invoke-static {v1}, Lc5/w;->p(F)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    :goto_1
    iput p1, v0, Lcom/github/barteksc/pdfviewer/a$a;->c:I

    .line 113
    .line 114
    return-object v0
.end method

.method public final c(IIIIFF)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p4

    .line 4
    .line 5
    int-to-float v0, v0

    .line 6
    mul-float v0, v0, p5

    .line 7
    .line 8
    move/from16 v2, p3

    .line 9
    .line 10
    int-to-float v2, v2

    .line 11
    mul-float v2, v2, p6

    .line 12
    .line 13
    iget v3, v1, Lcom/github/barteksc/pdfviewer/a;->l:F

    .line 14
    .line 15
    iget v4, v1, Lcom/github/barteksc/pdfviewer/a;->m:F

    .line 16
    .line 17
    add-float v5, v0, p5

    .line 18
    .line 19
    const/high16 v6, 0x3f800000    # 1.0f

    .line 20
    .line 21
    cmpl-float v5, v5, v6

    .line 22
    .line 23
    if-lez v5, :cond_0

    .line 24
    .line 25
    sub-float v5, v6, v0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move/from16 v5, p5

    .line 29
    .line 30
    :goto_0
    add-float v7, v2, p6

    .line 31
    .line 32
    cmpl-float v7, v7, v6

    .line 33
    .line 34
    if-lez v7, :cond_1

    .line 35
    .line 36
    sub-float/2addr v6, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move/from16 v6, p6

    .line 39
    .line 40
    :goto_1
    mul-float v10, v3, v5

    .line 41
    .line 42
    mul-float v11, v4, v6

    .line 43
    .line 44
    new-instance v3, Landroid/graphics/RectF;

    .line 45
    .line 46
    add-float/2addr v5, v0

    .line 47
    add-float/2addr v6, v2

    .line 48
    invoke-direct {v3, v0, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    cmpl-float v4, v10, v2

    .line 54
    .line 55
    if-lez v4, :cond_9

    .line 56
    .line 57
    cmpl-float v2, v11, v2

    .line 58
    .line 59
    if-lez v2, :cond_9

    .line 60
    .line 61
    iget-object v2, v1, Lcom/github/barteksc/pdfviewer/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/github/barteksc/pdfviewer/PDFView;->e:Lh2/b;

    .line 64
    .line 65
    iget v4, v1, Lcom/github/barteksc/pdfviewer/a;->b:I

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v5, Lk2/a;

    .line 71
    .line 72
    const/4 v15, 0x0

    .line 73
    const/16 v17, 0x0

    .line 74
    .line 75
    const/16 v18, 0x0

    .line 76
    .line 77
    move-object v12, v5

    .line 78
    move/from16 v13, p1

    .line 79
    .line 80
    move/from16 v14, p2

    .line 81
    .line 82
    move-object/from16 v16, v3

    .line 83
    .line 84
    invoke-direct/range {v12 .. v18}, Lk2/a;-><init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    .line 85
    .line 86
    .line 87
    iget-object v6, v2, Lh2/b;->d:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v6

    .line 90
    :try_start_0
    iget-object v7, v2, Lh2/b;->a:Ljava/util/PriorityQueue;

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    const/4 v9, 0x0

    .line 101
    if-eqz v8, :cond_3

    .line 102
    .line 103
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Lk2/a;

    .line 108
    .line 109
    invoke-virtual {v8, v5}, Lk2/a;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-eqz v12, :cond_2

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto :goto_4

    .line 118
    :cond_3
    move-object v8, v9

    .line 119
    :goto_2
    const/16 v16, 0x1

    .line 120
    .line 121
    if-eqz v8, :cond_4

    .line 122
    .line 123
    iget-object v0, v2, Lh2/b;->a:Ljava/util/PriorityQueue;

    .line 124
    .line 125
    invoke-virtual {v0, v8}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    iput v4, v8, Lk2/a;->f:I

    .line 129
    .line 130
    iget-object v0, v2, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 131
    .line 132
    invoke-virtual {v0, v8}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    monitor-exit v6

    .line 136
    const/4 v0, 0x1

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    iget-object v2, v2, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_6

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Lk2/a;

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Lk2/a;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_5

    .line 161
    .line 162
    move-object v9, v4

    .line 163
    :cond_6
    if-eqz v9, :cond_7

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    :cond_7
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_3
    if-nez v0, :cond_8

    .line 168
    .line 169
    iget-object v0, v1, Lcom/github/barteksc/pdfviewer/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 170
    .line 171
    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/PDFView;->A:Lh2/e;

    .line 172
    .line 173
    const/4 v13, 0x0

    .line 174
    iget v14, v1, Lcom/github/barteksc/pdfviewer/a;->b:I

    .line 175
    .line 176
    iget-boolean v15, v0, Lcom/github/barteksc/pdfviewer/PDFView;->I:Z

    .line 177
    .line 178
    move/from16 v8, p1

    .line 179
    .line 180
    move/from16 v9, p2

    .line 181
    .line 182
    move-object v12, v3

    .line 183
    invoke-virtual/range {v7 .. v15}, Lh2/e;->a(IIFFLandroid/graphics/RectF;ZIZ)V

    .line 184
    .line 185
    .line 186
    :cond_8
    iget v0, v1, Lcom/github/barteksc/pdfviewer/a;->b:I

    .line 187
    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 189
    .line 190
    iput v0, v1, Lcom/github/barteksc/pdfviewer/a;->b:I

    .line 191
    .line 192
    return v16

    .line 193
    :goto_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    throw v0

    .line 195
    :cond_9
    return v0
.end method

.method public final d(IIZ)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lcom/github/barteksc/pdfviewer/a;->h:F

    .line 9
    .line 10
    int-to-float p1, p1

    .line 11
    mul-float v1, v1, p1

    .line 12
    .line 13
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    add-float/2addr v1, p1

    .line 16
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v1, p0, Lcom/github/barteksc/pdfviewer/a;->i:F

    .line 28
    .line 29
    int-to-float p1, p1

    .line 30
    mul-float v1, v1, p1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p3, 0x0

    .line 44
    :goto_0
    int-to-float p3, p3

    .line 45
    sub-float/2addr p1, p3

    .line 46
    sub-float/2addr p1, v1

    .line 47
    invoke-virtual {p0, p1, v2}, Lcom/github/barteksc/pdfviewer/a;->b(FZ)Lcom/github/barteksc/pdfviewer/a$a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p3, p1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 52
    .line 53
    invoke-virtual {p0, p3}, Lcom/github/barteksc/pdfviewer/a;->a(I)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-gez p3, :cond_2

    .line 58
    .line 59
    return v2

    .line 60
    :cond_2
    iget v1, p1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 61
    .line 62
    invoke-virtual {p0, v1, p3}, Lcom/github/barteksc/pdfviewer/a;->e(II)V

    .line 63
    .line 64
    .line 65
    iget-boolean v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 66
    .line 67
    if-eqz v1, :cond_7

    .line 68
    .line 69
    iget v1, p0, Lcom/github/barteksc/pdfviewer/a;->f:F

    .line 70
    .line 71
    iget v3, p0, Lcom/github/barteksc/pdfviewer/a;->i:F

    .line 72
    .line 73
    div-float/2addr v1, v3

    .line 74
    invoke-static {v1}, Lc5/w;->p(F)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/lit8 v1, v1, -0x1

    .line 79
    .line 80
    if-gez v1, :cond_3

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    :cond_3
    iget v3, p0, Lcom/github/barteksc/pdfviewer/a;->f:F

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    int-to-float v0, v0

    .line 90
    add-float/2addr v3, v0

    .line 91
    iget v0, p0, Lcom/github/barteksc/pdfviewer/a;->i:F

    .line 92
    .line 93
    div-float/2addr v3, v0

    .line 94
    invoke-static {v3}, Lc5/w;->d(F)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 101
    .line 102
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v3, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-le v0, v3, :cond_4

    .line 111
    .line 112
    move v0, v3

    .line 113
    :cond_4
    :goto_1
    if-gt v1, v0, :cond_c

    .line 114
    .line 115
    iget v4, p1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 116
    .line 117
    iget v6, p1, Lcom/github/barteksc/pdfviewer/a$a;->b:I

    .line 118
    .line 119
    iget v8, p0, Lcom/github/barteksc/pdfviewer/a;->j:F

    .line 120
    .line 121
    iget v9, p0, Lcom/github/barteksc/pdfviewer/a;->k:F

    .line 122
    .line 123
    move-object v3, p0

    .line 124
    move v5, p3

    .line 125
    move v7, v1

    .line 126
    invoke-virtual/range {v3 .. v9}, Lcom/github/barteksc/pdfviewer/a;->c(IIIIFF)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    :cond_5
    if-lt v2, p2, :cond_6

    .line 135
    .line 136
    return v2

    .line 137
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    iget v1, p0, Lcom/github/barteksc/pdfviewer/a;->g:F

    .line 141
    .line 142
    iget v3, p0, Lcom/github/barteksc/pdfviewer/a;->h:F

    .line 143
    .line 144
    div-float/2addr v1, v3

    .line 145
    invoke-static {v1}, Lc5/w;->p(F)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    add-int/lit8 v1, v1, -0x1

    .line 150
    .line 151
    if-gez v1, :cond_8

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    :cond_8
    iget v3, p0, Lcom/github/barteksc/pdfviewer/a;->g:F

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    int-to-float v0, v0

    .line 161
    add-float/2addr v3, v0

    .line 162
    iget v0, p0, Lcom/github/barteksc/pdfviewer/a;->h:F

    .line 163
    .line 164
    div-float/2addr v3, v0

    .line 165
    invoke-static {v3}, Lc5/w;->d(F)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 170
    .line 171
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 172
    .line 173
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v3, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-le v0, v3, :cond_9

    .line 182
    .line 183
    move v0, v3

    .line 184
    :cond_9
    :goto_2
    if-gt v1, v0, :cond_c

    .line 185
    .line 186
    iget v4, p1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 187
    .line 188
    iget v7, p1, Lcom/github/barteksc/pdfviewer/a$a;->c:I

    .line 189
    .line 190
    iget v8, p0, Lcom/github/barteksc/pdfviewer/a;->j:F

    .line 191
    .line 192
    iget v9, p0, Lcom/github/barteksc/pdfviewer/a;->k:F

    .line 193
    .line 194
    move-object v3, p0

    .line 195
    move v5, p3

    .line 196
    move v6, v1

    .line 197
    invoke-virtual/range {v3 .. v9}, Lcom/github/barteksc/pdfviewer/a;->c(IIIIFF)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_a

    .line 202
    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    :cond_a
    if-lt v2, p2, :cond_b

    .line 206
    .line 207
    return v2

    .line 208
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_c
    return v2
.end method

.method public final e(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->e:Lh2/b;

    .line 4
    .line 5
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/a;->q:Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v8, Lk2/a;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    move-object v1, v8

    .line 16
    move v2, p1

    .line 17
    move v3, p2

    .line 18
    invoke-direct/range {v1 .. v7}, Lk2/a;-><init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lh2/b;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v0, v0, Lh2/b;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lk2/a;

    .line 41
    .line 42
    invoke-virtual {v2, v8}, Lk2/a;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    monitor-exit v1

    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->A:Lh2/e;

    .line 58
    .line 59
    iget v2, p0, Lcom/github/barteksc/pdfviewer/a;->n:I

    .line 60
    .line 61
    int-to-float v4, v2

    .line 62
    iget v2, p0, Lcom/github/barteksc/pdfviewer/a;->o:I

    .line 63
    .line 64
    int-to-float v5, v2

    .line 65
    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/a;->q:Landroid/graphics/RectF;

    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    const/4 v8, 0x0

    .line 69
    iget-boolean v9, v0, Lcom/github/barteksc/pdfviewer/PDFView;->I:Z

    .line 70
    .line 71
    move v2, p1

    .line 72
    move v3, p2

    .line 73
    invoke-virtual/range {v1 .. v9}, Lh2/e;->a(IIFFLandroid/graphics/RectF;ZIZ)V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p1
.end method
