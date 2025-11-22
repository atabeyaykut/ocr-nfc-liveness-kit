.class public final Lk8/d;
.super Lk8/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Le8/j<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Lk8/c<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lk8/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lk8/d;->c:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lk8/d;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    move-object v3, v1

    .line 14
    check-cast v3, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    xor-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 25
    .line 26
    .line 27
    :cond_0
    check-cast p1, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-boolean p1, p0, Lk8/c;->b:Z

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lk8/c;->a:Le8/b;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    :goto_0
    if-eqz p1, :cond_7

    .line 41
    .line 42
    if-le v0, v2, :cond_4

    .line 43
    .line 44
    if-lez v2, :cond_3

    .line 45
    .line 46
    invoke-static {p1, p2, v2}, Le8/b;->g(Le8/b;II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    add-int/2addr p2, v2

    .line 50
    sub-int/2addr v0, v2

    .line 51
    invoke-virtual {p1, p2, v0}, Le8/b;->h(II)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    if-lez v0, :cond_5

    .line 56
    .line 57
    invoke-static {p1, p2, v0}, Le8/b;->g(Le8/b;II)V

    .line 58
    .line 59
    .line 60
    if-ge v0, v2, :cond_7

    .line 61
    .line 62
    add-int/2addr p2, v0

    .line 63
    sub-int/2addr v2, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_5
    if-nez v0, :cond_6

    .line 66
    .line 67
    :goto_1
    invoke-virtual {p1, p2, v2}, Le8/b;->i(II)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    invoke-virtual {p1}, Le8/b;->f()V

    .line 72
    .line 73
    .line 74
    :cond_7
    :goto_2
    return-void
.end method

.method public final b(ILjava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk8/d;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lk8/c;->b:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lk8/c;->a:Le8/b;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    add-int/2addr p1, v1

    .line 21
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {v0, p1, p2}, Le8/b;->h(II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    iget-object v0, p0, Lk8/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public final get(I)Le8/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lk8/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le8/j;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lk8/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
