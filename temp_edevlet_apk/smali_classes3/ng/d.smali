.class public final Lng/d;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/t;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/t;Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lng/d;->a:Lkotlin/jvm/internal/t;

    iput-object p2, p0, Lng/d;->b:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lng/d;->a:Lkotlin/jvm/internal/t;

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-boolean p2, p1, Lkotlin/jvm/internal/t;->a:Z

    .line 15
    .line 16
    if-nez p2, :cond_2

    .line 17
    .line 18
    iget-object p2, p0, Lng/d;->b:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 19
    .line 20
    iput-boolean v0, p2, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->q:Z

    .line 21
    .line 22
    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->E()V

    .line 23
    .line 24
    .line 25
    iget-boolean p2, p1, Lkotlin/jvm/internal/t;->a:Z

    .line 26
    .line 27
    xor-int/2addr p2, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p2, 0x0

    .line 30
    :goto_0
    iput-boolean p2, p1, Lkotlin/jvm/internal/t;->a:Z

    .line 31
    .line 32
    :cond_2
    :goto_1
    return-void
.end method
