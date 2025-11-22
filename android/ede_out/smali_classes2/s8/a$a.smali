.class public final Ls8/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ls8/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:J

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final j:F

.field public final k:Z


# direct methods
.method public constructor <init>(Ls8/a;JFFFFFFZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ls8/a$a;->a:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Ls8/a$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ls8/a$a;->c:J

    iput p4, p0, Ls8/a$a;->d:F

    iput p5, p0, Ls8/a$a;->e:F

    iput p6, p0, Ls8/a$a;->f:F

    iput p7, p0, Ls8/a$a;->g:F

    iput p8, p0, Ls8/a$a;->h:F

    iput p9, p0, Ls8/a$a;->j:F

    iput-boolean p10, p0, Ls8/a$a;->k:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ls8/a$a;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ls8/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, p0, Ls8/a$a;->c:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    iget-wide v3, p0, Ls8/a$a;->b:J

    .line 20
    .line 21
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    long-to-float v1, v1

    .line 26
    long-to-float v2, v3

    .line 27
    div-float v3, v1, v2

    .line 28
    .line 29
    const/high16 v4, 0x3f800000    # 1.0f

    .line 30
    .line 31
    sub-float/2addr v3, v4

    .line 32
    mul-float v5, v3, v3

    .line 33
    .line 34
    mul-float v5, v5, v3

    .line 35
    .line 36
    add-float/2addr v5, v4

    .line 37
    iget v3, p0, Ls8/a$a;->f:F

    .line 38
    .line 39
    mul-float v3, v3, v5

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    add-float/2addr v3, v4

    .line 43
    iget v6, p0, Ls8/a$a;->g:F

    .line 44
    .line 45
    mul-float v5, v5, v6

    .line 46
    .line 47
    add-float/2addr v5, v4

    .line 48
    iget v4, p0, Ls8/a$a;->j:F

    .line 49
    .line 50
    invoke-static {v1, v4, v2}, Lb8/f;->A(FFF)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    cmpg-float v1, v1, v2

    .line 55
    .line 56
    if-gez v1, :cond_2

    .line 57
    .line 58
    iget-object v1, v0, Ls8/c;->b:[F

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    aget v2, v1, v2

    .line 62
    .line 63
    iget v6, p0, Ls8/a$a;->d:F

    .line 64
    .line 65
    sub-float/2addr v2, v6

    .line 66
    sub-float/2addr v3, v2

    .line 67
    const/4 v2, 0x1

    .line 68
    aget v1, v1, v2

    .line 69
    .line 70
    iget v2, p0, Ls8/a$a;->e:F

    .line 71
    .line 72
    sub-float/2addr v1, v2

    .line 73
    sub-float/2addr v5, v1

    .line 74
    invoke-virtual {v0, v3, v5}, Ls8/c;->f(FF)V

    .line 75
    .line 76
    .line 77
    iget-boolean v1, p0, Ls8/a$a;->k:Z

    .line 78
    .line 79
    if-nez v1, :cond_1

    .line 80
    .line 81
    iget v1, p0, Ls8/a$a;->h:F

    .line 82
    .line 83
    add-float/2addr v1, v4

    .line 84
    iget-object v2, v0, Ls8/a;->r:Landroid/graphics/RectF;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v0, v1, v3, v2}, Ls8/a;->j(FFF)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object v1, v0, Ls8/c;->a:[F

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ls8/a;->i([F)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_2

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method
