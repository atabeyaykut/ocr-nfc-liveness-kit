.class public final Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;",
        "Landroid/widget/ScrollView;",
        "Lcom/afollestad/materialdialogs/internal/main/DialogLayout;",
        "a",
        "Lcom/afollestad/materialdialogs/internal/main/DialogLayout;",
        "getRootView",
        "()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;",
        "setRootView",
        "(Lcom/afollestad/materialdialogs/internal/main/DialogLayout;)V",
        "rootView",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "titleLayout"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v4, "getChildAt(0)"

    .line 22
    .line 23
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x1

    .line 35
    if-le v0, v4, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sub-int/2addr v0, v5

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v4, "view"

    .line 53
    .line 54
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    add-int/2addr v6, v4

    .line 70
    sub-int/2addr v0, v6

    .line 71
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->a:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    .line 72
    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-lez v6, :cond_2

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/4 v6, 0x0

    .line 84
    :goto_1
    if-lez v0, :cond_3

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    :cond_3
    iget-object v0, v4, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->h:Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0, v6}, Lz/a;->setDrawDivider(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v4, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->k:Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Lz/a;->setDrawDivider(Z)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_5
    :goto_2
    return-void

    .line 107
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->a:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    .line 108
    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->h:Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;

    .line 112
    .line 113
    if-eqz v4, :cond_7

    .line 114
    .line 115
    invoke-virtual {v4, v3}, Lz/a;->setDrawDivider(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->k:Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    .line 119
    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Lz/a;->setDrawDivider(Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v1

    .line 130
    :cond_8
    :goto_4
    return-void
.end method

.method public final getRootView()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->a:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-string v0, "block"

    .line 5
    .line 6
    sget-object v1, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$a;->a:Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$a;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Lb0/b;

    .line 32
    .line 33
    invoke-direct {v2, p0, v1}, Lb0/b;-><init>(Landroid/view/View;Lx9/l;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->a()V

    return-void
.end method

.method public final setRootView(Lcom/afollestad/materialdialogs/internal/main/DialogLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->a:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    return-void
.end method
