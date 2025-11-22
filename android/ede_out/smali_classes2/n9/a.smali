.class public final Ln9/a;
.super Lm9/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln9/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lm9/d<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:I

.field public d:Z

.field public final e:Ln9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln9/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Ln9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln9/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lc5/w;->b(I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ln9/a;-><init>([Ljava/lang/Object;IIZLn9/a;Ln9/a;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;IIZLn9/a;Ln9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;IIZ",
            "Ln9/a<",
            "TE;>;",
            "Ln9/a<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lm9/d;-><init>()V

    iput-object p1, p0, Ln9/a;->a:[Ljava/lang/Object;

    iput p2, p0, Ln9/a;->b:I

    iput p3, p0, Ln9/a;->c:I

    iput-boolean p4, p0, Ln9/a;->d:Z

    iput-object p5, p0, Ln9/a;->e:Ln9/a;

    iput-object p6, p0, Ln9/a;->f:Ln9/a;

    return-void
.end method


# virtual methods
.method public final A(IILjava/util/Collection;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+TE;>;Z)I"
        }
    .end annotation

    iget-object v0, p0, Ln9/a;->e:Ln9/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Ln9/a;->A(IILjava/util/Collection;Z)I

    move-result p1

    iget p2, p0, Ln9/a;->c:I

    sub-int/2addr p2, p1

    iput p2, p0, Ln9/a;->c:I

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v2, p0, Ln9/a;->a:[Ljava/lang/Object;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p4, :cond_1

    iget-object v2, p0, Ln9/a;->a:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int p3, p2, v1

    iget-object p4, p0, Ln9/a;->a:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v0, p0, Ln9/a;->c:I

    add-int/2addr p1, v1

    invoke-static {p4, p4, p1, p2, v0}, Lm9/i;->i0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget p2, p0, Ln9/a;->c:I

    sub-int p4, p2, p3

    invoke-static {p1, p4, p2}, Lc5/w;->C([Ljava/lang/Object;II)V

    iget p1, p0, Ln9/a;->c:I

    sub-int/2addr p1, p3

    iput p1, p0, Ln9/a;->c:I

    return p3
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ln9/a;->w()V

    iget v0, p0, Ln9/a;->c:I

    invoke-static {p1, v0}, Lm9/c$a;->b(II)V

    iget v0, p0, Ln9/a;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Ln9/a;->u(ILjava/lang/Object;)V

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ln9/a;->w()V

    iget v0, p0, Ln9/a;->b:I

    iget v1, p0, Ln9/a;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Ln9/a;->u(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln9/a;->w()V

    iget v0, p0, Ln9/a;->c:I

    invoke-static {p1, v0}, Lm9/c$a;->b(II)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Ln9/a;->b:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Ln9/a;->o(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln9/a;->w()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Ln9/a;->b:I

    iget v2, p0, Ln9/a;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Ln9/a;->o(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Ln9/a;->w()V

    iget v0, p0, Ln9/a;->b:I

    iget v1, p0, Ln9/a;->c:I

    invoke-virtual {p0, v0, v1}, Ln9/a;->z(II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, p0, :cond_4

    .line 3
    .line 4
    instance-of v1, p1, Ljava/util/List;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    check-cast p1, Ljava/util/List;

    .line 10
    .line 11
    iget-object v1, p0, Ln9/a;->a:[Ljava/lang/Object;

    .line 12
    .line 13
    iget v3, p0, Ln9/a;->c:I

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v4, v3, :cond_2

    .line 24
    .line 25
    iget v5, p0, Ln9/a;->b:I

    .line 26
    .line 27
    add-int/2addr v5, v4

    .line 28
    aget-object v5, v1, v5

    .line 29
    .line 30
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    :goto_1
    const/4 p1, 0x0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p1, 0x1

    .line 46
    :goto_2
    if-eqz p1, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    const/4 v0, 0x0

    .line 50
    :cond_4
    :goto_3
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Ln9/a;->c:I

    invoke-static {p1, v0}, Lm9/c$a;->a(II)V

    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget v1, p0, Ln9/a;->b:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Ln9/a;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_0
    if-ge v4, v1, :cond_1

    .line 9
    .line 10
    iget v5, p0, Ln9/a;->b:I

    .line 11
    .line 12
    add-int/2addr v5, v4

    .line 13
    aget-object v5, v0, v5

    .line 14
    .line 15
    mul-int/lit8 v3, v3, 0x1f

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v5, 0x0

    .line 25
    :goto_1
    add-int/2addr v3, v5

    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v3
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ln9/a;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget v2, p0, Ln9/a;->b:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Ln9/a;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ln9/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln9/a$a;-><init>(Ln9/a;I)V

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Ln9/a;->c:I

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Ln9/a;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget v2, p0, Ln9/a;->b:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ln9/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln9/a$a;-><init>(Ln9/a;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Ln9/a;->c:I

    invoke-static {p1, v0}, Lm9/c$a;->b(II)V

    new-instance v0, Ln9/a$a;

    invoke-direct {v0, p0, p1}, Ln9/a$a;-><init>(Ln9/a;I)V

    return-object v0
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ln9/a;->w()V

    iget v0, p0, Ln9/a;->c:I

    invoke-static {p1, v0}, Lm9/c$a;->a(II)V

    iget v0, p0, Ln9/a;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ln9/a;->y(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(ILjava/util/Collection;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Ln9/a;->e:Ln9/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ln9/a;->o(ILjava/util/Collection;I)V

    iget-object p1, v0, Ln9/a;->a:[Ljava/lang/Object;

    iput-object p1, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget p1, p0, Ln9/a;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Ln9/a;->c:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Ln9/a;->x(II)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Ln9/a;->a:[Ljava/lang/Object;

    add-int v2, p1, v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln9/a;->w()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ln9/a;->indexOf(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ln9/a;->m(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    if-ltz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln9/a;->w()V

    iget v0, p0, Ln9/a;->c:I

    iget v1, p0, Ln9/a;->b:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Ln9/a;->A(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln9/a;->w()V

    iget v0, p0, Ln9/a;->c:I

    iget v1, p0, Ln9/a;->b:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, p1, v2}, Ln9/a;->A(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ln9/a;->w()V

    iget v0, p0, Ln9/a;->c:I

    invoke-static {p1, v0}, Lm9/c$a;->a(II)V

    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget v1, p0, Ln9/a;->b:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    aput-object p2, v0, v1

    return-object p1
.end method

.method public final subList(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Ln9/a;->c:I

    invoke-static {p1, p2, v0}, Lm9/c$a;->c(III)V

    new-instance v0, Ln9/a;

    iget-object v2, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget v1, p0, Ln9/a;->b:I

    add-int v3, v1, p1

    sub-int v4, p2, p1

    iget-boolean v5, p0, Ln9/a;->d:Z

    iget-object p1, p0, Ln9/a;->f:Ln9/a;

    if-nez p1, :cond_0

    move-object v7, p0

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Ln9/a;-><init>([Ljava/lang/Object;IIZLn9/a;Ln9/a;)V

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget v1, p0, Ln9/a;->c:I

    iget v2, p0, Ln9/a;->b:I

    add-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lm9/i;->l0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    iget v1, p0, Ln9/a;->c:I

    iget v2, p0, Ln9/a;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(array, offse\u2026h, destination.javaClass)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/2addr v1, v2

    invoke-static {v0, p1, v3, v2, v1}, Lm9/i;->i0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    array-length v0, p1

    iget v1, p0, Ln9/a;->c:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Ln9/a;->c:I

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    mul-int/lit8 v3, v1, 0x3

    .line 8
    .line 9
    add-int/lit8 v3, v3, 0x2

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-string v3, "["

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    const-string v4, ", "

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_0
    iget v4, p0, Ln9/a;->b:I

    .line 30
    .line 31
    add-int/2addr v4, v3

    .line 32
    aget-object v4, v0, v4

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v0, "]"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "sb.toString()"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final u(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Ln9/a;->e:Ln9/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Ln9/a;->u(ILjava/lang/Object;)V

    iget-object p1, v1, Ln9/a;->a:[Ljava/lang/Object;

    iput-object p1, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget p1, p0, Ln9/a;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Ln9/a;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Ln9/a;->x(II)V

    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln9/a;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Ln9/a;->f:Ln9/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, Ln9/a;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    if-nez v0, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final x(II)V
    .locals 5

    .line 1
    iget v0, p0, Ln9/a;->c:I

    .line 2
    .line 3
    add-int/2addr v0, p2

    .line 4
    iget-object v1, p0, Ln9/a;->e:Ln9/a;

    .line 5
    .line 6
    if-nez v1, :cond_5

    .line 7
    .line 8
    if-ltz v0, :cond_4

    .line 9
    .line 10
    iget-object v1, p0, Ln9/a;->a:[Ljava/lang/Object;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-le v0, v2, :cond_3

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    shr-int/lit8 v3, v2, 0x1

    .line 17
    .line 18
    add-int/2addr v2, v3

    .line 19
    sub-int v3, v2, v0

    .line 20
    .line 21
    if-gez v3, :cond_0

    .line 22
    .line 23
    move v2, v0

    .line 24
    :cond_0
    const v3, 0x7ffffff7

    .line 25
    .line 26
    .line 27
    sub-int v4, v2, v3

    .line 28
    .line 29
    if-lez v4, :cond_2

    .line 30
    .line 31
    if-le v0, v3, :cond_1

    .line 32
    .line 33
    const v2, 0x7fffffff

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const v2, 0x7ffffff7

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    const-string v0, "<this>"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "copyOf(this, newSize)"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    .line 57
    .line 58
    iget v1, p0, Ln9/a;->b:I

    .line 59
    .line 60
    iget v2, p0, Ln9/a;->c:I

    .line 61
    .line 62
    add-int/2addr v1, v2

    .line 63
    add-int v2, p1, p2

    .line 64
    .line 65
    invoke-static {v0, v0, v2, p1, v1}, Lm9/i;->i0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 66
    .line 67
    .line 68
    iget p1, p0, Ln9/a;->c:I

    .line 69
    .line 70
    add-int/2addr p1, p2

    .line 71
    iput p1, p0, Ln9/a;->c:I

    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public final y(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln9/a;->e:Ln9/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ln9/a;->y(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget v0, p0, Ln9/a;->c:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Ln9/a;->c:I

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object v1, v0, p1

    .line 19
    .line 20
    add-int/lit8 v2, p1, 0x1

    .line 21
    .line 22
    iget v3, p0, Ln9/a;->c:I

    .line 23
    .line 24
    iget v4, p0, Ln9/a;->b:I

    .line 25
    .line 26
    add-int/2addr v3, v4

    .line 27
    invoke-static {v0, v0, p1, v2, v3}, Lm9/i;->i0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Ln9/a;->a:[Ljava/lang/Object;

    .line 31
    .line 32
    iget v0, p0, Ln9/a;->c:I

    .line 33
    .line 34
    add-int/2addr v4, v0

    .line 35
    add-int/lit8 v4, v4, -0x1

    .line 36
    .line 37
    const-string v0, "<this>"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    aput-object v0, p1, v4

    .line 44
    .line 45
    iget p1, p0, Ln9/a;->c:I

    .line 46
    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 48
    .line 49
    iput p1, p0, Ln9/a;->c:I

    .line 50
    .line 51
    return-object v1
.end method

.method public final z(II)V
    .locals 3

    iget-object v0, p0, Ln9/a;->e:Ln9/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ln9/a;->z(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln9/a;->a:[Ljava/lang/Object;

    add-int v1, p1, p2

    iget v2, p0, Ln9/a;->c:I

    invoke-static {v0, v0, p1, v1, v2}, Lm9/i;->i0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Ln9/a;->a:[Ljava/lang/Object;

    iget v0, p0, Ln9/a;->c:I

    sub-int v1, v0, p2

    invoke-static {p1, v1, v0}, Lc5/w;->C([Ljava/lang/Object;II)V

    :goto_0
    iget p1, p0, Ln9/a;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Ln9/a;->c:I

    return-void
.end method
