.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;",
        "<init>",
        "()V",
        "ui-dashboard_release"
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

.field public f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;

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
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;

    .line 5
    .line 6
    const-string v2, "viewModel"

    .line 7
    .line 8
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityViewModel;"

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
    const-string v3, "getMInstitutionListFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->k:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0067

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    const-class v0, Luf/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->k:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->c:Ll9/e;

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->k:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->h:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->g:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 26
    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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

.method public final H()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 19
    .line 20
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->h:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->g:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->a:Lgf/b;

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
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->j:Landroid/content/Context;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->j:Landroid/content/Context;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->c:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Luf/d;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;)V

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
    .locals 10

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->j:Landroid/content/Context;

    .line 14
    .line 15
    const/16 p1, 0x5b

    .line 16
    .line 17
    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->h:I

    .line 18
    .line 19
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "realm"

    .line 24
    .line 25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, p2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v1, 0x1

    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->c:Landroid/widget/HorizontalScrollView;

    .line 69
    .line 70
    const/16 v0, 0x8

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->c:Landroid/widget/HorizontalScrollView;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    new-instance p2, Lio/realm/d0$c;

    .line 88
    .line 89
    invoke-direct {p2, v0}, Lio/realm/d0$c;-><init>(Lio/realm/d0;)V

    .line 90
    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    :goto_0
    invoke-virtual {p2}, Lio/realm/internal/OsResults$a;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x2

    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    invoke-virtual {p2}, Lio/realm/internal/OsResults$a;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    add-int/lit8 v7, v3, 0x1

    .line 106
    .line 107
    if-ltz v3, :cond_2

    .line 108
    .line 109
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    const v9, 0x7f0d008a

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v9, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    const-string v8, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    .line 123
    .line 124
    invoke-static {v5, v8}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    check-cast v5, Lcom/google/android/material/chip/Chip;

    .line 128
    .line 129
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;->getCityName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;->getCityId()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-virtual {v5, v4}, Landroid/view/View;->setId(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v1}, Landroid/view/View;->setClickable(Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v1}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    .line 147
    .line 148
    .line 149
    if-nez v3, :cond_1

    .line 150
    .line 151
    invoke-virtual {v5, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 152
    .line 153
    .line 154
    :cond_1
    new-instance v3, Lzd/a;

    .line 155
    .line 156
    invoke-direct {v3, v6, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 167
    .line 168
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    move v3, v7

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    invoke-static {}, Lb8/f;->k0()V

    .line 174
    .line 175
    .line 176
    throw v5

    .line 177
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    if-nez p2, :cond_6

    .line 182
    .line 183
    invoke-virtual {v0}, Lio/realm/d0;->size()I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-le p2, v1, :cond_4

    .line 188
    .line 189
    const-string p2, "Multiple"

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_4
    const-string p2, "Single"

    .line 193
    .line 194
    :goto_1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 195
    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    const-string v3, "EDK_MyCity"

    .line 199
    .line 200
    new-instance v4, Lc5/b4;

    .line 201
    .line 202
    invoke-direct {v4, v6, v2}, Lc5/b4;-><init>(II)V

    .line 203
    .line 204
    .line 205
    const-string v2, "action"

    .line 206
    .line 207
    invoke-virtual {v4, v2, p2}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object p2, v4, Lc5/b4;->a:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p2, Landroid/os/Bundle;

    .line 213
    .line 214
    invoke-virtual {v0, p2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_5
    const-string p2, "firebaseAnalytics"

    .line 219
    .line 220
    invoke-static {p2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    nop

    .line 225
    :cond_6
    :goto_2
    if-eqz p1, :cond_8

    .line 226
    .line 227
    iget p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->g:I

    .line 228
    .line 229
    if-nez p2, :cond_7

    .line 230
    .line 231
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;->getCityId()I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->g:I

    .line 236
    .line 237
    :cond_7
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->c:Ll9/e;

    .line 238
    .line 239
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    check-cast p1, Luf/d;

    .line 244
    .line 245
    iget p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->h:I

    .line 246
    .line 247
    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->g:I

    .line 248
    .line 249
    invoke-virtual {p1, p2, v0}, Luf/d;->d(II)V

    .line 250
    .line 251
    .line 252
    :cond_8
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;->e:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 257
    .line 258
    new-instance p2, Lnf/a;

    .line 259
    .line 260
    invoke-direct {p2, v1, p0}, Lnf/a;-><init>(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    .line 265
    .line 266
    return-void
.end method
