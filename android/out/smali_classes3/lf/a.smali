.class public final Llf/a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;)V
    .locals 0

    iput-object p1, p0, Llf/a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemRangeInserted(II)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->k:[Lda/m;

    .line 4
    .line 5
    iget-object p1, p0, Llf/a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    .line 6
    .line 7
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
