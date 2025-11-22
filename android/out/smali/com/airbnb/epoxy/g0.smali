.class public Lcom/airbnb/epoxy/g0;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/g0$d;,
        Lcom/airbnb/epoxy/g0$b;,
        Lcom/airbnb/epoxy/g0$a;,
        Lcom/airbnb/epoxy/g0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/airbnb/epoxy/u<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/airbnb/epoxy/g0$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public static synthetic A(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic C(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic D(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic G(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic H(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic I(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic K(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic L(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic M(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic N(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic Q(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic R(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic S(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic T(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic h(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic l(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic u(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic w(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic x(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method

.method public static synthetic z(Lcom/airbnb/epoxy/g0;)I
    .locals 0

    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    return p0
.end method


# virtual methods
.method public final U(Lcom/airbnb/epoxy/u;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->X()V

    invoke-super {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final V(Lcom/airbnb/epoxy/u;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->X()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final X()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/epoxy/g0;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/epoxy/g0;->b:Lcom/airbnb/epoxy/g0$c;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Models cannot be changed once they are added to the controller"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final Y()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/epoxy/g0;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/epoxy/g0;->b:Lcom/airbnb/epoxy/g0$c;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Models cannot be changed once they are added to the controller"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final a0(I)Lcom/airbnb/epoxy/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/epoxy/u<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->Y()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/epoxy/u;

    return-object p1
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/airbnb/epoxy/u;

    invoke-virtual {p0, p2, p1}, Lcom/airbnb/epoxy/g0;->U(Lcom/airbnb/epoxy/u;I)V

    return-void
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/airbnb/epoxy/u;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/g0;->V(Lcom/airbnb/epoxy/u;)Z

    move-result p1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->X()V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->X()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b0(Lcom/airbnb/epoxy/u;I)Lcom/airbnb/epoxy/u;
    .locals 4

    invoke-super {p0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/epoxy/u;

    invoke-virtual {p2}, Lcom/airbnb/epoxy/u;->id()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/airbnb/epoxy/u;->id()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->Y()V

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->X()V

    :cond_0
    return-object p2
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->Y()V

    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/airbnb/epoxy/g0$a;

    invoke-direct {v0, p0}, Lcom/airbnb/epoxy/g0$a;-><init>(Lcom/airbnb/epoxy/g0;)V

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/airbnb/epoxy/g0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/epoxy/g0$b;-><init>(Lcom/airbnb/epoxy/g0;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/airbnb/epoxy/g0$b;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/epoxy/g0$b;-><init>(Lcom/airbnb/epoxy/g0;I)V

    return-object v0
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/g0;->a0(I)Lcom/airbnb/epoxy/u;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->Y()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/airbnb/epoxy/g0$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/airbnb/epoxy/g0$a;-><init>(Lcom/airbnb/epoxy/g0;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/epoxy/g0$a;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/airbnb/epoxy/g0$a;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/airbnb/epoxy/g0$a;->remove()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method public final removeRange(II)V
    .locals 0

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/g0;->Y()V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/airbnb/epoxy/g0$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/airbnb/epoxy/g0$a;-><init>(Lcom/airbnb/epoxy/g0;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/epoxy/g0$a;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/airbnb/epoxy/g0$a;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/airbnb/epoxy/g0$a;->remove()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/airbnb/epoxy/u;

    invoke-virtual {p0, p2, p1}, Lcom/airbnb/epoxy/g0;->b0(Lcom/airbnb/epoxy/u;I)Lcom/airbnb/epoxy/u;

    move-result-object p1

    return-object p1
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    new-instance v0, Lcom/airbnb/epoxy/g0$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/airbnb/epoxy/g0$d;-><init>(Lcom/airbnb/epoxy/g0;II)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
