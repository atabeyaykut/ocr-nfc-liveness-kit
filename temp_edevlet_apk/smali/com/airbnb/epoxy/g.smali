.class public Lcom/airbnb/epoxy/g;
.super Lcom/airbnb/epoxy/EpoxyRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/g$c;,
        Lcom/airbnb/epoxy/g$b;
    }
.end annotation


# static fields
.field public static m:Lcom/airbnb/epoxy/g$c;

.field public static n:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field


# instance fields
.field public l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/epoxy/g$a;

    invoke-direct {v0}, Lcom/airbnb/epoxy/g$a;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/g;->m:Lcom/airbnb/epoxy/g$c;

    const/16 v0, 0x8

    sput v0, Lcom/airbnb/epoxy/g;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static setDefaultGlobalSnapHelperFactory(Lcom/airbnb/epoxy/g$c;)V
    .locals 0
    .param p0    # Lcom/airbnb/epoxy/g$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/airbnb/epoxy/g;->m:Lcom/airbnb/epoxy/g$c;

    return-void
.end method

.method public static setDefaultItemSpacingDp(I)V
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    sput p0, Lcom/airbnb/epoxy/g;->n:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-super {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->a()V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-super {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->d()V

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g;->getDefaultSpacingBetweenItemsDp()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemSpacingDp(I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/g;->setPaddingDp(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/g;->getSnapHelperFactory()Lcom/airbnb/epoxy/g$c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/g$c;->a()Landroidx/recyclerview/widget/LinearSnapHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setRemoveAdapterWhenDetachedFromWindow(Z)V

    return-void
.end method

.method public getDefaultSpacingBetweenItemsDp()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation

    sget v0, Lcom/airbnb/epoxy/g;->n:I

    return v0
.end method

.method public getNumViewsToShowOnScreen()F
    .locals 1

    iget v0, p0, Lcom/airbnb/epoxy/g;->l:F

    return v0
.end method

.method public getSnapHelperFactory()Lcom/airbnb/epoxy/g$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/airbnb/epoxy/g;->m:Lcom/airbnb/epoxy/g$c;

    return-object v0
.end method

.method public final onChildAttachedToWindow(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/airbnb/epoxy/g;->l:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-lez v0, :cond_8

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x7f0a015b

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getSpacingDecorator()Lcom/airbnb/epoxy/t;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget p1, p1, Lcom/airbnb/epoxy/t;->a:I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-lez p1, :cond_0

    .line 32
    .line 33
    int-to-float p1, p1

    .line 34
    iget v2, p0, Lcom/airbnb/epoxy/g;->l:F

    .line 35
    .line 36
    mul-float p1, p1, v2

    .line 37
    .line 38
    float-to-int p1, p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-lez v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-lez v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    sub-int/2addr v3, v4

    .line 92
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-lez v3, :cond_4

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-lez v3, :cond_5

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 138
    .line 139
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    sub-int/2addr v3, v4

    .line 144
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_6

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    :cond_6
    :goto_3
    sub-int/2addr v3, v1

    .line 155
    sub-int/2addr v3, p1

    .line 156
    int-to-float p1, v3

    .line 157
    iget v1, p0, Lcom/airbnb/epoxy/g;->l:F

    .line 158
    .line 159
    div-float/2addr p1, v1

    .line 160
    float-to-int p1, p1

    .line 161
    if-eqz v2, :cond_7

    .line 162
    .line 163
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_7
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    .line 168
    :cond_8
    :goto_4
    return-void
.end method

.method public final onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a015b

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 2

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "numItemsToPrefetch must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setModels(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setModels(Ljava/util/List;)V

    return-void
.end method

.method public setNumViewsToShowOnScreen(F)V
    .locals 2

    iput p1, p0, Lcom/airbnb/epoxy/g;->l:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/g;->setInitialPrefetchItemCount(I)V

    return-void
.end method

.method public setPadding(Lcom/airbnb/epoxy/g$b;)V
    .locals 6
    .param p1    # Lcom/airbnb/epoxy/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/g;->setPaddingDp(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p1, Lcom/airbnb/epoxy/g$b;->e:I

    iget v2, p1, Lcom/airbnb/epoxy/g$b;->d:I

    iget v3, p1, Lcom/airbnb/epoxy/g$b;->c:I

    iget v4, p1, Lcom/airbnb/epoxy/g$b;->b:I

    iget v5, p1, Lcom/airbnb/epoxy/g$b;->a:I

    iget p1, p1, Lcom/airbnb/epoxy/g$b;->f:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v5, v4, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemSpacingPx(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c(I)I

    move-result p1

    invoke-virtual {p0, v4}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c(I)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->e(I)I

    move-result p1

    invoke-virtual {p0, v4}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->e(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->e(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->e(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->e(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemSpacingPx(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setPaddingDp(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/g;->getDefaultSpacingBetweenItemsDp()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->c(I)I

    move-result p1

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemSpacingPx(I)V

    return-void
.end method

.method public setPaddingRes(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->e(I)I

    move-result p1

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemSpacingPx(I)V

    return-void
.end method
