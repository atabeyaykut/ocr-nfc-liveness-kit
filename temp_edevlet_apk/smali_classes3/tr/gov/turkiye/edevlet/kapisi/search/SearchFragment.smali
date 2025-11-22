.class public final Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController$a;",
        "<init>",
        "()V",
        "ui-search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic s:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/SharedPreferences$Editor;

.field public c:Landroid/content/SharedPreferences;

.field public d:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public final e:Ll9/e;

.field public final f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

.field public h:Landroid/content/Context;

.field public j:Landroid/os/Handler;

.field public k:Landroidx/browser/trusted/j;

.field public l:Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController;

.field public m:Ljava/lang/String;

.field public n:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 5
    .line 6
    const-string v2, "viewModel"

    .line 7
    .line 8
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/search/SearchViewModel;"

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v0, v3

    .line 16
    .line 17
    const-string v2, "binding"

    .line 18
    .line 19
    const-string v3, "getBinding()Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0078

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    const-class v0, Lng/k;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$d;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$d;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$e;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$e;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$d;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$e;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->e:Ll9/e;

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$a;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->p:Z

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->q:Z

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "mSearchFragmentBinding.searchView.searchText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->x(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "mSearchFragmentBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->j:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->k:Landroidx/browser/trusted/j;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p1, "mSearchRunner"

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    :goto_1
    const-string v3, "mSearchFragmentBinding"

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 39
    .line 40
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->b:Landroid/widget/ImageButton;

    .line 41
    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_4
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 57
    .line 58
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->b:Landroid/widget/ImageButton;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lmc/n;->i0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x3

    .line 76
    if-lt v0, v1, :cond_5

    .line 77
    .line 78
    invoke-static {p1}, Lmc/n;->i0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance v0, Landroid/os/Handler;

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->j:Landroid/os/Handler;

    .line 96
    .line 97
    new-instance v1, Landroidx/browser/trusted/j;

    .line 98
    .line 99
    const/4 v2, 0x4

    .line 100
    invoke-direct {v1, v2, p1, p0}, Landroidx/browser/trusted/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->k:Landroidx/browser/trusted/j;

    .line 104
    .line 105
    const-wide/16 v2, 0x2ee

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_2
    return-void

    .line 111
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1
.end method

.method public final G(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    :try_start_0
    iput-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->p:Z

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$c;

    invoke-direct {v1, p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$c;-><init>(Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h(Lx9/l;)V

    goto :goto_0

    :cond_0
    const-string p1, "mSearchFragmentBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final H()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mSearchFragmentBinding"

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->d:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 29
    .line 30
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 40
    .line 41
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;

    .line 51
    .line 52
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1
.end method

.method public final I()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mSearchFragmentBinding"

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 9
    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 29
    .line 30
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 40
    .line 41
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;

    .line 51
    .line 52
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->d:Landroid/widget/ProgressBar;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->e:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lng/k;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/w;->v(Landroidx/fragment/app/Fragment;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance p1, Lcom/google/android/material/transition/MaterialFadeThrough;

    invoke-direct {p1}, Lcom/google/android/material/transition/MaterialFadeThrough;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->d:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "screen_view"

    .line 9
    .line 10
    new-instance v2, Lc5/b4;

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v2, v3, v4}, Lc5/b4;-><init>(II)V

    .line 15
    .line 16
    .line 17
    const-string v3, "screen_name"

    .line 18
    .line 19
    const-string v4, "Search_Screen"

    .line 20
    .line 21
    invoke-virtual {v2, v3, v4}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "screen_class"

    .line 25
    .line 26
    const-string v4, "SearchFragment"

    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v0, "firebaseAnalytics"

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :goto_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->h:Landroid/content/Context;

    .line 14
    .line 15
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    aget-object p1, p1, p2

    .line 19
    .line 20
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 21
    .line 22
    invoke-virtual {p2, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 27
    .line 28
    const-string p2, "binding"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 34
    .line 35
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    .line 37
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->h:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    const-string v0, "mSearchFragmentBinding"

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 55
    .line 56
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 57
    .line 58
    new-instance v1, Lng/b;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lng/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 71
    .line 72
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 73
    .line 74
    new-instance v1, Lng/c;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lng/c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 87
    .line 88
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 89
    .line 90
    const-string v1, "mSearchFragmentBinding.searchView.searchText"

    .line 91
    .line 92
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v1, Lng/e;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lng/e;-><init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 104
    .line 105
    if-eqz p1, :cond_0

    .line 106
    .line 107
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 108
    .line 109
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->b:Landroid/widget/ImageButton;

    .line 110
    .line 111
    new-instance p2, Lxf/d;

    .line 112
    .line 113
    const/4 v0, 0x6

    .line 114
    invoke-direct {p2, v0, p0}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2

    .line 125
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p2

    .line 129
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p2

    .line 133
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p2
.end method

.method public final q(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;)V
    .locals 10

    .line 1
    const-string v0, "service"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->m:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->b:Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_15

    .line 12
    .line 13
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->c:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-eqz v3, :cond_14

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v6, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 31
    :goto_1
    if-nez v6, :cond_a

    .line 32
    .line 33
    new-instance v6, Lj7/h;

    .line 34
    .line 35
    invoke-direct {v6}, Lj7/h;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v3}, Lng/j;->a(Landroid/content/SharedPreferences;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-static {v3}, Lm9/k;->B0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move-object v3, v2

    .line 50
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/4 v8, 0x0

    .line 65
    goto :goto_4

    .line 66
    :cond_4
    :goto_3
    const/4 v8, 0x1

    .line 67
    :goto_4
    if-nez v8, :cond_8

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    :goto_5
    if-ge v8, v7, :cond_6

    .line 76
    .line 77
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    check-cast v9, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v9, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_5

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    goto :goto_6

    .line 91
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 92
    .line 93
    const/4 v9, 0x1

    .line 94
    goto :goto_5

    .line 95
    :cond_6
    :goto_6
    if-ne v9, v4, :cond_9

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    const/4 v8, 0x5

    .line 102
    if-lt v7, v8, :cond_7

    .line 103
    .line 104
    invoke-static {v3}, Lm9/t;->X0(Ljava/util/List;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/util/Collection;

    .line 109
    .line 110
    invoke-static {v3}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    :cond_7
    invoke-interface {v3, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_8
    invoke-virtual {v7, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    move-object v3, v7

    .line 122
    :cond_9
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v7, Ljava/io/StringWriter;

    .line 127
    .line 128
    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 129
    .line 130
    .line 131
    :try_start_0
    new-instance v8, Lq7/b;

    .line 132
    .line 133
    invoke-direct {v8, v7}, Lq7/b;-><init>(Ljava/io/Writer;)V

    .line 134
    .line 135
    .line 136
    iput-boolean v5, v8, Lq7/b;->h:Z

    .line 137
    .line 138
    invoke-virtual {v6, v3, v0, v8}, Lj7/h;->d(Ljava/util/ArrayList;Ljava/lang/Class;Lq7/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v3, "parser.toJson(toBeAddedList)"

    .line 146
    .line 147
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v3, "recent_search_texts"

    .line 151
    .line 152
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    .line 157
    .line 158
    goto :goto_8

    .line 159
    :catch_0
    move-exception p1

    .line 160
    new-instance v0, Lj7/m;

    .line 161
    .line 162
    invoke-direct {v0, p1}, Lj7/m;-><init>(Ljava/lang/Exception;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_a
    :goto_8
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceCode()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lmc/i;->t(Ljava/lang/String;)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->isConceptService()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_d

    .line 179
    .line 180
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->a:Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v1, :cond_c

    .line 183
    .line 184
    const-string v3, "tr"

    .line 185
    .line 186
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    invoke-static {p1, v0, v1}, Loe/a;->d(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;IZ)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    goto :goto_9

    .line 201
    :cond_b
    invoke-static {p1, v4, v1}, Loe/a;->d(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;IZ)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :goto_9
    if-eqz v0, :cond_12

    .line 206
    .line 207
    goto/16 :goto_b

    .line 208
    .line 209
    :cond_c
    const-string p1, "mLanguage"

    .line 210
    .line 211
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v2

    .line 215
    :cond_d
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceFolderName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v1}, La6/a;->r(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_e

    .line 224
    .line 225
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceURL()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v0}, La6/a;->q(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_12

    .line 234
    .line 235
    new-instance v0, Landroid/content/Intent;

    .line 236
    .line 237
    const-string v1, "action.mobile.accident"

    .line 238
    .line 239
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const-string v1, "isCallingFromLogin"

    .line 243
    .line 244
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    .line 246
    .line 247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 248
    .line 249
    const/16 v3, 0x22

    .line 250
    .line 251
    if-lt v1, v3, :cond_11

    .line 252
    .line 253
    const-string v1, "tr.gov.turkiye.edevlet.kapisi"

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    goto :goto_b

    .line 259
    :cond_e
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    if-eqz v0, :cond_10

    .line 264
    .line 265
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    const-string v6, "getDefaultInstance()"

    .line 270
    .line 271
    invoke-static {v3, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 275
    .line 276
    invoke-virtual {v3, v6}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    const-string v6, "serviceCode"

    .line 281
    .line 282
    invoke-virtual {v3, v0, v6}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 290
    .line 291
    if-eqz v3, :cond_f

    .line 292
    .line 293
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-static {v3, v0}, Loe/a;->c(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-eqz v0, :cond_12

    .line 302
    .line 303
    goto :goto_b

    .line 304
    :cond_f
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    invoke-static {p1, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/BaseUrlExtensionKt;->prepareSearchService(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;I)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    new-instance v6, Landroidx/camera/core/impl/p;

    .line 313
    .line 314
    const/4 v7, 0x4

    .line 315
    invoke-direct {v6, v7, v3}, Landroidx/camera/core/impl/p;-><init>(ILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v6}, Lio/realm/g0;->s(Lio/realm/g0$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    .line 320
    .line 321
    goto :goto_a

    .line 322
    :catch_1
    nop

    .line 323
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    invoke-static {p1, v0, v4}, Loe/a;->b(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;IZ)Landroid/content/Intent;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    if-eqz v0, :cond_12

    .line 332
    .line 333
    goto :goto_b

    .line 334
    :cond_10
    invoke-static {p1, v4, v5}, Loe/a;->b(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;IZ)Landroid/content/Intent;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    if-eqz v0, :cond_12

    .line 339
    .line 340
    :cond_11
    :goto_b
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 341
    .line 342
    .line 343
    :cond_12
    :try_start_2
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceName()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    const-string v0, " "

    .line 348
    .line 349
    const-string v1, "_"

    .line 350
    .line 351
    invoke-static {p1, v0, v1}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->d:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 356
    .line 357
    if-eqz v0, :cond_13

    .line 358
    .line 359
    const-string v1, "EDK_Search "

    .line 360
    .line 361
    new-instance v2, Lc5/b4;

    .line 362
    .line 363
    const/4 v3, 0x2

    .line 364
    invoke-direct {v2, v3, v5}, Lc5/b4;-><init>(II)V

    .line 365
    .line 366
    .line 367
    const-string v3, "action"

    .line 368
    .line 369
    const-string v4, "Hizmet"

    .line 370
    .line 371
    invoke-virtual {v2, v3, v4}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const-string v3, "label"

    .line 375
    .line 376
    invoke-virtual {v2, v3, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object p1, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast p1, Landroid/os/Bundle;

    .line 382
    .line 383
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    goto :goto_c

    .line 387
    :cond_13
    const-string p1, "firebaseAnalytics"

    .line 388
    .line 389
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 393
    :catch_2
    :goto_c
    return-void

    .line 394
    :cond_14
    const-string p1, "sharedPreferences"

    .line 395
    .line 396
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw v2

    .line 400
    :cond_15
    const-string p1, "sharedPreferencesEditor"

    .line 401
    .line 402
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v2
.end method
