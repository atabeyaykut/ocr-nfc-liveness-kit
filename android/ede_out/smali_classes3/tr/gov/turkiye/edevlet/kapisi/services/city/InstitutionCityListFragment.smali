.class public final Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Li8/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lee/a;",
        "Li8/d<",
        "Lqg/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;",
        "Lee/a;",
        "Li8/d;",
        "Lqg/m;",
        "<init>",
        "()V",
        "ui-services_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic f:[Lda/m;
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
.field public final a:Ll9/e;

.field public final b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public c:Landroid/content/Context;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;

    .line 5
    .line 6
    const-string v2, "viewModel"

    .line 7
    .line 8
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListViewModel;"

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
    const-string v2, "mInstitutionCityListFragmentBinding"

    .line 18
    .line 19
    const-string v3, "getMInstitutionCityListFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->f:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d005e

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    const-class v0, Lqg/i;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->f:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->a:Ll9/e;

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->f:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    return-object v0
.end method

.method public final F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->c:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 26
    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 37
    .line 38
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 48
    .line 49
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 60
    .line 61
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->d:Landroid/widget/TextView;

    .line 62
    .line 63
    const v1, 0x7f1301c7

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 78
    .line 79
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 80
    .line 81
    const v1, 0x7f1301c6

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 96
    .line 97
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->b:Landroid/widget/ImageView;

    .line 98
    .line 99
    const-string v1, "mInstitutionCityListFrag\u2026ystemErrorView.iconSearch"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const v1, 0x7f0800c8

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Lge/b;->a(Landroid/widget/ImageView;I)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->a:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqg/i;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    :try_start_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->b:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "mInstitutionCityListFrag\u2026ing.searchView.searchText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->x(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x0

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string v1, "categoryCode"

    .line 24
    .line 25
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object p1, v0

    .line 35
    :goto_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->d:I

    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string v1, "title"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move-object p1, v0

    .line 57
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->e:Ljava/lang/String;

    .line 62
    .line 63
    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->d:I

    .line 64
    .line 65
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->a:Ll9/e;

    .line 66
    .line 67
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lqg/i;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v2, Lqg/j;

    .line 77
    .line 78
    invoke-direct {v2, v1, p1, v0}, Lqg/j;-><init>(Lqg/i;ILp9/d;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v1, Lr0/z;->c:Lnc/a0;

    .line 82
    .line 83
    const/4 v3, 0x3

    .line 84
    invoke-static {p1, v0, p2, v2, v3}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 85
    .line 86
    .line 87
    new-instance p2, Lqg/k;

    .line 88
    .line 89
    invoke-direct {p2, v1, v0}, Lqg/k;-><init>(Lqg/i;Lp9/d;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v1, Lqg/i;->h:Lqg/l;

    .line 93
    .line 94
    invoke-static {p1, v0, p2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public final y()V
    .locals 0

    return-void
.end method
