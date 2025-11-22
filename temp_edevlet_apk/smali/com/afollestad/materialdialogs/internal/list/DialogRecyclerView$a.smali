.class public final Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView$a;

    invoke-direct {v0}, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView$a;-><init>()V

    sput-object v0, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView$a;->a:Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;

    .line 2
    .line 3
    const-string v0, "$receiver"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_8

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_4

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_7

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    sub-int/2addr v0, v1

    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    instance-of v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ne v2, v0, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    instance-of v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-ne v2, v0, :cond_3

    .line 71
    .line 72
    :goto_0
    const/4 v0, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 v0, 0x0

    .line 75
    :goto_1
    if-eqz v0, :cond_6

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 82
    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    instance-of v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_5

    .line 105
    .line 106
    :goto_2
    const/4 v0, 0x1

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    const/4 v0, 0x0

    .line 109
    :goto_3
    if-eqz v0, :cond_6

    .line 110
    .line 111
    const/4 v4, 0x1

    .line 112
    :cond_6
    if-eqz v4, :cond_9

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/h;->l()V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    throw p1

    .line 120
    :cond_8
    :goto_4
    const/4 v1, 0x2

    .line 121
    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 125
    .line 126
    return-object p1
.end method
