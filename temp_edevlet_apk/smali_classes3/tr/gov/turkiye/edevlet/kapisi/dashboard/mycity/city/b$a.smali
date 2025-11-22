.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$a;
.super Li8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li8/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1

    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$b;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c(Landroid/view/View;ILe8/b;Le8/j;)V
    .locals 0

    .line 1
    check-cast p4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 2
    .line 3
    const-string p4, "v"

    .line 4
    .line 5
    invoke-static {p1, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p3, Le8/b;->f:Landroidx/collection/ArrayMap;

    .line 9
    .line 10
    const-class p3, Lj8/d;

    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Le8/d;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Lj8/d;

    .line 22
    .line 23
    iget-object p3, p1, Lj8/d;->f:Le8/b;

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Le8/b;->c(I)Le8/j;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    invoke-interface {p3}, Le8/j;->a()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    const/4 p4, 0x1

    .line 36
    if-ne p3, p4, :cond_0

    .line 37
    .line 38
    iget-object p3, p1, Lj8/d;->f:Le8/b;

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Le8/b;->c(I)Le8/j;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    const/4 p4, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, p4}, Lj8/d;->j(Le8/j;ILjava/util/Iterator;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p1, p2}, Lj8/d;->l(Lj8/d;I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method
