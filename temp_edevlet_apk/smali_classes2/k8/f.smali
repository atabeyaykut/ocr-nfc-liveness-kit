.class public final Lk8/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Li8/c;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Le8/j<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Li8/c<",
            "TItem;>;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$attachToView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li8/a;

    if-eqz v0, :cond_0

    new-instance v0, Lk8/f$a;

    invoke-direct {v0, p0, p1}, Lk8/f$a;-><init>(Li8/c;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Li8/e;

    if-eqz v0, :cond_1

    new-instance v0, Lk8/f$b;

    invoke-direct {v0, p0, p1}, Lk8/f$b;-><init>(Li8/c;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Li8/f;

    if-eqz v0, :cond_2

    new-instance v0, Lk8/f$c;

    invoke-direct {v0, p0, p1}, Lk8/f$c;-><init>(Li8/c;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_2
    instance-of p1, p0, Li8/b;

    if-eqz p1, :cond_3

    check-cast p0, Li8/b;

    invoke-virtual {p0}, Li8/b;->c()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li8/c;

    invoke-interface {v0, p0}, Li8/c;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0, v1}, Lk8/f;->a(Li8/c;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    :cond_0
    invoke-interface {v0, p0}, Li8/c;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_1
    return-void
.end method
