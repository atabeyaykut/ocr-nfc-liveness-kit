.class public final Lj8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Le8/j<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;",
        "Le8/d<",
        "TItem;>;"
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Z

.field public d:Z

.field public e:Le8/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/m<",
            "TItem;>;"
        }
    .end annotation
.end field

.field public final f:Le8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/b<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lj8/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lj8/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lg8/b;->a:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    const-class v2, Lj8/d;

    .line 9
    .line 10
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Le8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/b<",
            "TItem;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/d;->f:Le8/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj8/d;->c:Z

    return-void
.end method

.method public static l(Lj8/d;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj8/d;->f:Le8/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le8/b;->e(I)Le8/b$b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, Le8/b$b;->b:Le8/j;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Le8/b$b;->a:Le8/c;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v2, v1}, Le8/j;->e(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lj8/d;->e:Le8/m;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0, v2, v1}, Le8/m;->a(Le8/j;Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Landroid/view/View;ILe8/b;Le8/j;)V
    .locals 0

    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lj8/d;->b:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lj8/d;->d:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p4, p2}, Lj8/d;->k(Landroid/view/View;Le8/j;I)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/View;ILe8/b;Le8/j;)V
    .locals 0

    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lj8/d;->b:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lj8/d;->d:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p4, p2}, Lj8/d;->k(Landroid/view/View;Le8/j;I)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g(Landroid/view/View;Landroid/view/MotionEvent;Le8/b;Le8/j;)V
    .locals 0

    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j(Le8/j;ILjava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;I",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le8/j;->e(Z)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    :cond_0
    if-ltz p2, :cond_1

    iget-object p3, p0, Lj8/d;->f:Le8/b;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    iget-object p2, p0, Lj8/d;->e:Le8/m;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1, v0}, Le8/m;->a(Le8/j;Z)V

    :cond_2
    return-void
.end method

.method public final k(Landroid/view/View;Le8/j;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TItem;I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Le8/j;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p2}, Le8/j;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lj8/d;->c:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-interface {p2}, Le8/j;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lj8/d;->f:Le8/b;

    .line 24
    .line 25
    if-nez p1, :cond_4

    .line 26
    .line 27
    iget-boolean p1, p0, Lj8/d;->a:Z

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Lj8/a;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lj8/a;-><init>(Lj8/d;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Le8/b;->j(Lk8/a;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 40
    .line 41
    .line 42
    :cond_2
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1, p3}, Le8/b;->c(I)Le8/j;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p0, p1, p3, p2}, Lj8/d;->j(Le8/j;ILjava/util/Iterator;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-static {p0, p3}, Lj8/d;->l(Lj8/d;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    iget-boolean p3, p0, Lj8/d;->a:Z

    .line 60
    .line 61
    if-nez p3, :cond_5

    .line 62
    .line 63
    new-instance p3, Landroidx/collection/ArraySet;

    .line 64
    .line 65
    invoke-direct {p3}, Landroidx/collection/ArraySet;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lj8/c;

    .line 69
    .line 70
    invoke-direct {v2, p3}, Lj8/c;-><init>(Landroidx/collection/ArraySet;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Le8/b;->j(Lk8/a;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v2, Lj8/b;

    .line 80
    .line 81
    invoke-direct {v2, p0, p3}, Lj8/b;-><init>(Lj8/d;Landroidx/collection/ArraySet;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Le8/b;->j(Lk8/a;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    xor-int/lit8 p3, v0, 0x1

    .line 88
    .line 89
    invoke-interface {p2, p3}, Le8/j;->e(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lj8/d;->e:Le8/m;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-interface {p1, p2, p3}, Le8/m;->a(Le8/j;Z)V

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_0
    return-void
.end method
