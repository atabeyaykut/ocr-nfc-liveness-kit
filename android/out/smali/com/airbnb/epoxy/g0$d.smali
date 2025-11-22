.class public final Lcom/airbnb/epoxy/g0$d;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/g0$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/airbnb/epoxy/u<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/airbnb/epoxy/g0;

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/g0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    invoke-static {p1}, Lcom/airbnb/epoxy/g0;->N(Lcom/airbnb/epoxy/g0;)I

    move-result p1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    iput p2, p0, Lcom/airbnb/epoxy/g0$d;->b:I

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->Q(Lcom/airbnb/epoxy/g0;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    .line 16
    .line 17
    if-gt p1, v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->b:I

    .line 20
    .line 21
    add-int/2addr p1, v0

    .line 22
    invoke-virtual {v1, p2, p1}, Lcom/airbnb/epoxy/g0;->U(Lcom/airbnb/epoxy/u;I)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    .line 30
    .line 31
    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->R(Lcom/airbnb/epoxy/g0;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;)Z"
        }
    .end annotation

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->S(Lcom/airbnb/epoxy/g0;)I

    move-result v2

    if-ne v0, v2, :cond_2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->b:I

    add-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lcom/airbnb/epoxy/g0;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p2, v0

    iput p2, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->T(Lcom/airbnb/epoxy/g0;)I

    move-result p2

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;)Z"
        }
    .end annotation

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->l(Lcom/airbnb/epoxy/g0;)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->b:I

    iget v2, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0, p1}, Lcom/airbnb/epoxy/g0;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->u(Lcom/airbnb/epoxy/g0;)I

    move-result p1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return v0

    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->w(Lcom/airbnb/epoxy/g0;)I

    move-result v2

    if-ne v0, v2, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->b:I

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/epoxy/u;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final h(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iput p1, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    iget-object p1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    invoke-static {p1}, Lcom/airbnb/epoxy/g0;->K(Lcom/airbnb/epoxy/g0;)I

    move-result p1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/g0$d;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 4
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

    .line 1
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->x(Lcom/airbnb/epoxy/g0;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    .line 14
    .line 15
    if-gt p1, v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/airbnb/epoxy/g0$d$a;

    .line 18
    .line 19
    iget v2, p0, Lcom/airbnb/epoxy/g0$d;->b:I

    .line 20
    .line 21
    add-int/2addr p1, v2

    .line 22
    new-instance v3, Lcom/airbnb/epoxy/g0$b;

    .line 23
    .line 24
    invoke-direct {v3, v1, p1}, Lcom/airbnb/epoxy/g0$b;-><init>(Lcom/airbnb/epoxy/g0;I)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    .line 28
    .line 29
    invoke-direct {v0, v3, p0, v2, p1}, Lcom/airbnb/epoxy/g0$d$a;-><init>(Lcom/airbnb/epoxy/g0$b;Lcom/airbnb/epoxy/g0$d;II)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->z(Lcom/airbnb/epoxy/g0;)I

    move-result v2

    if-ne v0, v2, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->b:I

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/airbnb/epoxy/g0;->a0(I)Lcom/airbnb/epoxy/u;

    move-result-object p1

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->A(Lcom/airbnb/epoxy/g0;)I

    move-result v0

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final removeRange(II)V
    .locals 3

    if-eq p1, p2, :cond_1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->C(Lcom/airbnb/epoxy/g0;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->b:I

    add-int v2, p1, v0

    add-int/2addr v0, p2

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/epoxy/g0;->removeRange(II)V

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->D(Lcom/airbnb/epoxy/g0;)I

    move-result p1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->G(Lcom/airbnb/epoxy/g0;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    .line 16
    .line 17
    if-ge p1, v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->b:I

    .line 20
    .line 21
    add-int/2addr p1, v0

    .line 22
    invoke-virtual {v1, p2, p1}, Lcom/airbnb/epoxy/g0;->b0(Lcom/airbnb/epoxy/u;I)Lcom/airbnb/epoxy/u;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Lcom/airbnb/epoxy/g0$d;->a:Lcom/airbnb/epoxy/g0;

    invoke-static {v1}, Lcom/airbnb/epoxy/g0;->H(Lcom/airbnb/epoxy/g0;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/airbnb/epoxy/g0$d;->c:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
