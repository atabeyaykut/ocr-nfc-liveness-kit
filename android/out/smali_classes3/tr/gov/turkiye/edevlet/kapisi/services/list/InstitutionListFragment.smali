.class public final Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;",
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
.field public static final synthetic k:[Lda/m;
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
.field public a:Lgf/b;

.field public b:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public final c:Ll9/e;

.field public final d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

.field public g:I

.field public h:I

.field public j:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;

    .line 5
    .line 6
    const-string v2, "viewModel"

    .line 7
    .line 8
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListViewModel;"

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
    const-string v2, "mInstitutionListFragmentBinding"

    .line 18
    .line 19
    const-string v3, "getMInstitutionListFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->k:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0061

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    const-class v0, Lvg/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->k:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->c:Ll9/e;

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->k:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    return-object v0
.end method

.method public final F(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ll9/g;

    .line 3
    .line 4
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getInstitutionCode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ll9/g;

    .line 13
    .line 14
    const-string v3, "institutionCode"

    .line 15
    .line 16
    invoke-direct {v2, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aput-object v2, v0, v1

    .line 21
    .line 22
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getCategoryCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ll9/g;

    .line 31
    .line 32
    const-string v3, "categoryCode"

    .line 33
    .line 34
    invoke-direct {v2, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getCityCode()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v1, Ll9/g;

    .line 49
    .line 50
    const-string v2, "cityCode"

    .line 51
    .line 52
    invoke-direct {v1, v2, p1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x2

    .line 56
    aput-object v1, v0, p1

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const v1, 0x7f0a01f2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->d:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 26
    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 37
    .line 38
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 49
    .line 50
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->d:Landroid/widget/TextView;

    .line 51
    .line 52
    const v1, 0x7f1301c7

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 67
    .line 68
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 69
    .line 70
    const v1, 0x7f1301c6

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 85
    .line 86
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->b:Landroid/widget/ImageView;

    .line 87
    .line 88
    const-string v1, "mInstitutionListFragment\u2026ystemErrorView.iconSearch"

    .line 89
    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const v1, 0x7f0800c8

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Lge/b;->a(Landroid/widget/ImageView;I)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final c(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V
    .locals 4

    .line 1
    const-string v0, "institution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->a:Lgf/b;

    .line 7
    .line 8
    const-string v1, "mInstitutionListFragmentBinding.containerList"

    .line 9
    .line 10
    const v2, 0x7f0a02dc

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->isOpened()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->j:Landroid/content/Context;

    .line 34
    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :cond_2
    sget v0, Lke/d;->a:I

    .line 48
    .line 49
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const v1, 0x7f060025

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const v2, 0x7f060097

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const v2, 0x7f130066

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v2, v3, v1, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->j:Landroid/content/Context;

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :cond_4
    sget v0, Lke/d;->a:I

    .line 100
    .line 101
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 106
    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const v1, 0x7f060088

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const v1, 0x7f130249

    .line 118
    .line 119
    .line 120
    const v2, 0x7f08013e

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v1, v3, v2, p1}, Lke/d$a;->a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_1
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->c:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvg/d;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;)V

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

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->j:Landroid/content/Context;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const-string v2, "cityCode"

    .line 42
    .line 43
    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v1, v0

    .line 53
    :goto_1
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->g:I

    .line 60
    .line 61
    :cond_2
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->h:I

    .line 68
    .line 69
    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->c:Ll9/e;

    .line 70
    .line 71
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lvg/d;

    .line 76
    .line 77
    iget v2, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->h:I

    .line 78
    .line 79
    iget v3, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->g:I

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v4, Lvg/e;

    .line 85
    .line 86
    invoke-direct {v4, v1, v2, v3, v0}, Lvg/e;-><init>(Lvg/d;IILp9/d;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v1, Lr0/z;->c:Lnc/a0;

    .line 90
    .line 91
    const/4 v3, 0x3

    .line 92
    invoke-static {v2, v0, p2, v4, v3}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 93
    .line 94
    .line 95
    new-instance v3, Lvg/f;

    .line 96
    .line 97
    invoke-direct {v3, v1, v0}, Lvg/f;-><init>(Lvg/d;Lp9/d;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v1, Lvg/d;->h:Lvg/g;

    .line 101
    .line 102
    invoke-static {v2, v1, v3}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 103
    .line 104
    .line 105
    :try_start_0
    const-string v1, "InstitutionList_Screen"

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 114
    .line 115
    .line 116
    packed-switch p1, :pswitch_data_1

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_0
    const-string v1, "OtherInstitution_Screen"

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_1
    const-string v1, "WaterAndSewageInstitution_Screen"

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :pswitch_2
    const-string v1, "MobileLineInstitution_Screen"

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_3
    const-string v1, "TelecommunicationInstitution_Screen"

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :pswitch_4
    const-string v1, "ElectricInstitution_Screen"

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :pswitch_5
    const-string v1, "NaturalGasInstitution_Screen"

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :pswitch_6
    const-string v1, "UniversityInstitution_Screen"

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :pswitch_7
    const-string v1, "MersisInstitution_Screen"

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :pswitch_8
    const-string v1, "PublicInstitution_Screen"

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :pswitch_9
    const-string v1, "MyCityInstitution_Screen"

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :pswitch_a
    const-string v1, "Municipality_.Screen"

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    const-string v1, "InstitutionContact_Screen"

    .line 154
    .line 155
    :goto_2
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 156
    .line 157
    if-eqz p1, :cond_5

    .line 158
    .line 159
    const-string v0, "screen_view"

    .line 160
    .line 161
    new-instance v2, Lc5/b4;

    .line 162
    .line 163
    const/4 v3, 0x2

    .line 164
    invoke-direct {v2, v3, p2}, Lc5/b4;-><init>(II)V

    .line 165
    .line 166
    .line 167
    const-string p2, "screen_name"

    .line 168
    .line 169
    invoke-virtual {v2, p2, v1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string p2, "screen_class"

    .line 173
    .line 174
    const-string v1, "InstitutionListFragment"

    .line 175
    .line 176
    invoke-virtual {v2, p2, v1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p2, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p2, Landroid/os/Bundle;

    .line 182
    .line 183
    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    const-string p1, "firebaseAnalytics"

    .line 188
    .line 189
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :catch_0
    :goto_3
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
