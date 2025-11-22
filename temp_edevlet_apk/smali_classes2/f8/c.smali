.class public Lf8/c;
.super Le8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Le8/j<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Le8/a<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field public final c:Z

.field public final d:Lk8/b;

.field public final e:Z

.field public final f:Lf8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf8/b<",
            "TModel;TItem;>;"
        }
    .end annotation
.end field

.field public final g:Le8/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/k<",
            "TItem;>;"
        }
    .end annotation
.end field

.field public final h:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-TModel;+TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx9/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-TModel;+TItem;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lk8/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lk8/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Le8/a;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lf8/c;->g:Le8/k;

    .line 11
    .line 12
    iput-object p1, p0, Lf8/c;->h:Lx9/l;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lf8/c;->c:Z

    .line 16
    .line 17
    sget-object v0, Le8/h;->a:Lk8/b;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput-object v0, p0, Lf8/c;->d:Lk8/b;

    .line 22
    .line 23
    iput-boolean p1, p0, Lf8/c;->e:Z

    .line 24
    .line 25
    new-instance p1, Lf8/b;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lf8/b;-><init>(Lf8/c;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lf8/c;->f:Lf8/b;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 34
    .line 35
    const-string v0, "null cannot be cast to non-null type com.mikepenz.fastadapter.IIdDistributor<Item>"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lf8/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf8/c;->g:Le8/k;

    invoke-interface {v0}, Le8/k;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(I)Le8/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lf8/c;->g:Le8/k;

    invoke-interface {v0, p1}, Le8/k;->get(I)Le8/j;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "A normal ModelAdapter does not allow null items."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lf8/c;->h:Lx9/l;

    .line 21
    .line 22
    invoke-interface {v2, v1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Le8/j;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-boolean p1, p0, Lf8/c;->e:Z

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lf8/c;->d:Lk8/b;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lk8/b;->a(Ljava/util/List;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object p1, p0, Le8/a;->a:Le8/b;

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    iget v1, p0, Le8/a;->b:I

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Le8/b;->d(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 p1, 0x0

    .line 55
    :goto_1
    iget-object v1, p0, Lf8/c;->g:Le8/k;

    .line 56
    .line 57
    invoke-interface {v1, p1, v0}, Le8/k;->b(ILjava/util/ArrayList;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final f(Le8/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/b<",
            "TItem;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf8/c;->g:Le8/k;

    .line 2
    .line 3
    instance-of v1, v0, Lk8/c;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Lk8/c;

    .line 10
    .line 11
    iput-object p1, v0, Lk8/c;->a:Le8/b;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string v0, "null cannot be cast to non-null type com.mikepenz.fastadapter.utils.DefaultItemList<Item>"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iput-object p1, p0, Le8/a;->a:Le8/b;

    .line 23
    .line 24
    return-void
.end method
