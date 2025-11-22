.class public final Lcom/airbnb/epoxy/q;
.super Lcom/airbnb/epoxy/e;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/epoxy/d$c;


# static fields
.field public static final k:Lcom/airbnb/epoxy/q$a;


# instance fields
.field public final f:Lcom/airbnb/epoxy/h0;

.field public final g:Lcom/airbnb/epoxy/d;

.field public final h:Lcom/airbnb/epoxy/p;

.field public i:I

.field public final j:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/epoxy/q$a;

    invoke-direct {v0}, Lcom/airbnb/epoxy/q$a;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/q;->k:Lcom/airbnb/epoxy/q$a;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/epoxy/p;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Lcom/airbnb/epoxy/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/airbnb/epoxy/e;-><init>()V

    new-instance v0, Lcom/airbnb/epoxy/h0;

    invoke-direct {v0}, Lcom/airbnb/epoxy/h0;-><init>()V

    iput-object v0, p0, Lcom/airbnb/epoxy/q;->f:Lcom/airbnb/epoxy/h0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/epoxy/q;->j:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    new-instance p1, Lcom/airbnb/epoxy/d;

    sget-object v1, Lcom/airbnb/epoxy/q;->k:Lcom/airbnb/epoxy/q$a;

    invoke-direct {p1, p2, p0, v1}, Lcom/airbnb/epoxy/d;-><init>(Landroid/os/Handler;Lcom/airbnb/epoxy/d$c;Lcom/airbnb/epoxy/q$a;)V

    iput-object p1, p0, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/airbnb/epoxy/d;->f:Ljava/util/List;

    .line 4
    .line 5
    return-object v0
.end method

.method public final d(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1    # Ljava/lang/RuntimeException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/p;->onExceptionSwallowed(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final e(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;ILcom/airbnb/epoxy/u;)V
    .locals 1
    .param p1    # Lcom/airbnb/epoxy/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/x;",
            "Lcom/airbnb/epoxy/u<",
            "*>;I",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/airbnb/epoxy/p;->onModelBound(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;ILcom/airbnb/epoxy/u;)V

    return-void
.end method

.method public final f(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;)V
    .locals 1
    .param p1    # Lcom/airbnb/epoxy/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/x;",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/epoxy/p;->onModelUnbound(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;)V

    return-void
.end method

.method public final g(Lcom/airbnb/epoxy/x;)V
    .locals 2
    .param p1    # Lcom/airbnb/epoxy/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/e;->g(Lcom/airbnb/epoxy/x;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    .line 10
    .line 11
    invoke-virtual {v1, p1, v0}, Lcom/airbnb/epoxy/p;->onViewAttachedToWindow(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    iget v0, p0, Lcom/airbnb/epoxy/q;->i:I

    return v0
.end method

.method public final h(Lcom/airbnb/epoxy/x;)V
    .locals 2
    .param p1    # Lcom/airbnb/epoxy/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/e;->h(Lcom/airbnb/epoxy/x;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    .line 10
    .line 11
    invoke-virtual {v1, p1, v0}, Lcom/airbnb/epoxy/p;->onViewDetachedFromWindow(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/p;->onAttachedToRecyclerViewInternal(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/airbnb/epoxy/e;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/p;->onDetachedFromRecyclerViewInternal(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/airbnb/epoxy/x;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/q;->g(Lcom/airbnb/epoxy/x;)V

    return-void
.end method

.method public final bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/airbnb/epoxy/x;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/q;->h(Lcom/airbnb/epoxy/x;)V

    return-void
.end method
