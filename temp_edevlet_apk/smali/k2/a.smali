.class public final Lk2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/Bitmap;

.field public final d:Landroid/graphics/RectF;

.field public final e:Z

.field public f:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk2/a;->a:I

    iput p2, p0, Lk2/a;->b:I

    iput-object p3, p0, Lk2/a;->c:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lk2/a;->d:Landroid/graphics/RectF;

    iput-boolean p5, p0, Lk2/a;->e:Z

    iput p6, p0, Lk2/a;->f:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lk2/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lk2/a;

    .line 8
    .line 9
    iget v0, p1, Lk2/a;->b:I

    .line 10
    .line 11
    iget v2, p0, Lk2/a;->b:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lk2/a;->a:I

    .line 16
    .line 17
    iget v2, p1, Lk2/a;->a:I

    .line 18
    .line 19
    if-ne v2, v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lk2/a;->d:Landroid/graphics/RectF;

    .line 22
    .line 23
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 24
    .line 25
    iget-object v2, p0, Lk2/a;->d:Landroid/graphics/RectF;

    .line 26
    .line 27
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 28
    .line 29
    cmpl-float v0, v0, v3

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 34
    .line 35
    iget v3, v2, Landroid/graphics/RectF;->right:F

    .line 36
    .line 37
    cmpl-float v0, v0, v3

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 42
    .line 43
    iget v3, v2, Landroid/graphics/RectF;->top:F

    .line 44
    .line 45
    cmpl-float v0, v0, v3

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 50
    .line 51
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 52
    .line 53
    cmpl-float p1, p1, v0

    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_1
    return v1
.end method
