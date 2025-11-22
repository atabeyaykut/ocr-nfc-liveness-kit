.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;",
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
.field public static final synthetic h:[Lda/m;
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

.field public final b:Ll9/e;

.field public final c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;

.field public e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;

    .line 5
    .line 6
    const-string v2, "viewModel"

    .line 7
    .line 8
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesViewModel;"

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
    const-string v2, "mEditorServiceFragmentBinding"

    .line 18
    .line 19
    const-string v3, "getMEditorServiceFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->h:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0079

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    const-class v0, Lof/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->h:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->b:Ll9/e;

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->h:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    return-object v0
.end method

.method public final F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 26
    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 85
    .line 86
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->b:Landroid/widget/ImageView;

    .line 87
    .line 88
    const-string v1, "mEditorServiceFragmentBi\u2026ystemErrorView.iconSearch"

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

.method public final G(ZZ)V
    .locals 3

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->g:Landroid/content/Context;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    const v0, 0x7f0a02dc

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget v0, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "mEditorServiceFragmentBinding.containerList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f060088

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const v1, 0x7f130249

    const v2, 0x7f08013e

    invoke-static {v0, v1, p2, v2, p1}, Lke/d$a;->a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_1
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lof/d;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final j(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)V
    .locals 4

    .line 1
    const-string v0, "service"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->a:Lgf/b;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 17
    .line 18
    invoke-static {p1}, Loe/a;->a(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->g:Landroid/content/Context;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const v1, 0x7f0a02dc

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    sget v1, Lke/d;->a:I

    .line 48
    .line 49
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    .line 55
    const-string v2, "mEditorServiceFragmentBinding.containerList"

    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const v2, 0x7f060025

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const v3, 0x7f060097

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const v3, 0x7f130066

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v3, v0, v2, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 p1, 0x1

    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->G(ZZ)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
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
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->g:Landroid/content/Context;

    return-void
.end method
