.class public final Lge/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/widget/ImageView;I)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x1b

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lx5/a;->l(Landroid/content/Context;)Le/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lp/g$a;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Lp/g$a;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, v1, Lp/g$a;->c:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Lp/g$a;->e(Landroid/widget/ImageView;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    iput-object p0, v1, Lp/g$a;->r:Ljava/lang/Boolean;

    .line 45
    .line 46
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 47
    .line 48
    iput-object p0, v1, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    .line 49
    .line 50
    const p0, 0x7f0800c9

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Lp/g$a;->d(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0}, Lp/g$a;->c(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lp/g$a;->a()Lp/g;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {v0, p0}, Le/f;->a(Lp/g;)Lp/c;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static final b(Landroid/widget/ImageView;[B)V
    .locals 3

    .line 1
    const-string v0, "array"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x1b

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lx5/a;->l(Landroid/content/Context;)Le/f;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lp/g$a;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v1, v2}, Lp/g$a;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, v1, Lp/g$a;->c:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Lp/g$a;->e(Landroid/widget/ImageView;)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    iput-object p0, v1, Lp/g$a;->r:Ljava/lang/Boolean;

    .line 46
    .line 47
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 48
    .line 49
    iput-object p0, v1, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    .line 50
    .line 51
    const p0, 0x7f0800c9

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Lp/g$a;->d(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p0}, Lp/g$a;->c(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lp/g$a;->a()Lp/g;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {v0, p0}, Le/f;->a(Lp/g;)Lp/c;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static final c(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x1b

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lx5/a;->l(Landroid/content/Context;)Le/f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lp/g$a;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-direct {v1, v3}, Lp/g$a;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, v1, Lp/g$a;->c:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Lp/g$a;->e(Landroid/widget/ImageView;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lp/g$a;->b()V

    .line 39
    .line 40
    .line 41
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    iput-object p0, v1, Lp/g$a;->r:Ljava/lang/Boolean;

    .line 44
    .line 45
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    .line 47
    iput-object p0, v1, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    .line 48
    .line 49
    const p0, 0x7f0800c9

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Lp/g$a;->d(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Lp/g$a;->c(I)V

    .line 56
    .line 57
    .line 58
    new-array p0, v2, [Ls/b;

    .line 59
    .line 60
    new-instance p1, Ls/a;

    .line 61
    .line 62
    const/high16 v2, 0x42100000    # 36.0f

    .line 63
    .line 64
    invoke-direct {p1, v2, v2, v2, v2}, Ls/a;-><init>(FFFF)V

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    aput-object p1, p0, v2

    .line 69
    .line 70
    invoke-static {p0}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iput-object p0, v1, Lp/g$a;->m:Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {v1}, Lp/g$a;->a()Lp/g;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {v0, p0}, Le/f;->a(Lp/g;)Lp/c;

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static final d(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x1b

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lx5/a;->l(Landroid/content/Context;)Le/f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lp/g$a;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Lp/g$a;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, v1, Lp/g$a;->c:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Lp/g$a;->e(Landroid/widget/ImageView;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lp/g$a;->b()V

    .line 39
    .line 40
    .line 41
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    iput-object p0, v1, Lp/g$a;->r:Ljava/lang/Boolean;

    .line 44
    .line 45
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    .line 47
    iput-object p0, v1, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    .line 48
    .line 49
    const p0, 0x7f080106

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Lp/g$a;->d(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Lp/g$a;->c(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lp/g$a;->a()Lp/g;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {v0, p0}, Le/f;->a(Lp/g;)Lp/c;

    .line 63
    .line 64
    .line 65
    return-void
.end method
