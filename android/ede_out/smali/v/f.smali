.class public final Lv/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/a;


# static fields
.field public static final a:Lv/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv/f;

    invoke-direct {v0}, Lv/f;-><init>()V

    sput-object v0, Lv/f;->a:Lv/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/Window;Lcom/afollestad/materialdialogs/internal/main/DialogLayout;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    :goto_0
    const/16 v0, 0x10

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v1, Landroid/graphics/Point;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 46
    .line 47
    .line 48
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v0, Ljava/lang/Number;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    check-cast v1, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const v2, 0x7f0700e9

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    mul-int/lit8 v2, v2, 0x2

    .line 80
    .line 81
    sub-int/2addr v1, v2

    .line 82
    invoke-virtual {p3, v1}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->setMaxHeight(I)V

    .line 83
    .line 84
    .line 85
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    .line 86
    .line 87
    invoke-direct {p3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p3, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 95
    .line 96
    .line 97
    const v1, 0x7f0700e6

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    mul-int/lit8 v1, v1, 0x2

    .line 105
    .line 106
    sub-int/2addr v0, v1

    .line 107
    if-eqz p4, :cond_2

    .line 108
    .line 109
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const p4, 0x7f0700e7

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 126
    .line 127
    invoke-virtual {p2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    return-void
.end method

.method public final b(Lv/e;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lv/e;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lx5/a;->j(Lv/e;I)Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    move-result-object v0

    invoke-static {v0}, Lb0/d;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lv/f$a;

    invoke-direct {p1, v0}, Lv/f$a;-><init>(Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lx5/a;->j(Lv/e;I)Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    move-result-object p1

    invoke-static {p1}, Lb0/d;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lv/f$b;

    invoke-direct {v0, p1}, Lv/f$b;-><init>(Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final d(Landroid/content/Context;Landroid/view/Window;Landroid/view/LayoutInflater;Lv/e;)Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const-string p2, "creatingContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dialog"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const p2, 0x7f0d00c2

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    new-instance p1, Ll9/l;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Ll9/l;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f1400fd

    goto :goto_0

    :cond_0
    const p1, 0x7f140103

    :goto_0
    return p1
.end method

.method public final f(Lcom/afollestad/materialdialogs/internal/main/DialogLayout;IF)V
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->setCornerRadii([F)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onDismiss()V
    .locals 0

    return-void
.end method
