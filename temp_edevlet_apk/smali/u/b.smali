.class public final Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp/a;-><init>(I)V

    sput-object v0, Lu/b;->a:Lp/a;

    return-void
.end method

.method public static final a(Lp/g;)Z
    .locals 3

    .line 1
    iget v0, p0, Lp/g;->i:I

    .line 2
    .line 3
    invoke-static {v0}, Lg/d;->c(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lp/g;->L:Lp/b;

    .line 16
    .line 17
    iget-object v0, v0, Lp/b;->b:Lq/f;

    .line 18
    .line 19
    iget-object v2, p0, Lp/g;->B:Lq/f;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    instance-of v0, v2, Lq/b;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lp/g;->c:Lr/a;

    .line 29
    .line 30
    instance-of v0, p0, Lr/b;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    instance-of v0, v2, Lq/g;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    check-cast p0, Lr/b;

    .line 39
    .line 40
    invoke-interface {p0}, Lr/b;->d()Landroid/widget/ImageView;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    instance-of v0, v0, Landroid/widget/ImageView;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-interface {p0}, Lr/b;->d()Landroid/widget/ImageView;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast v2, Lq/g;

    .line 53
    .line 54
    invoke-interface {v2}, Lq/g;->c()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-ne p0, v0, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p0, Lj7/p;

    .line 62
    .line 63
    invoke-direct {p0}, Lj7/p;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    const/4 v1, 0x0

    .line 68
    :cond_3
    :goto_0
    return v1
.end method

.method public static final b(Lp/g;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p2, :cond_3

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object p0, p0, Lp/g;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    move-object p1, p0

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string p0, "Invalid resource ID: "

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_3
    move-object p1, p3

    .line 49
    :goto_0
    return-object p1
.end method
