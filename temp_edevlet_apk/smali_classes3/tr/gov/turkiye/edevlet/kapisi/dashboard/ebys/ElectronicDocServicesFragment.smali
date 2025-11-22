.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController$a;",
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

.field public d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

.field public e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
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
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;

    .line 5
    .line 6
    const-string v2, "viewModel"

    .line 7
    .line 8
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesViewModel;"

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
    const-string v2, "mMostUsedFragmentBinding"

    .line 18
    .line 19
    const-string v3, "getMMostUsedFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->h:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0079

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    const-class v0, Lpf/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->h:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->b:Ll9/e;

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->f:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mServiceController"

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 34
    .line 35
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavoriteProgress()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    invoke-static {v4, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListDBModelKt;->convertNormalStatus(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iput-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->f:Ljava/util/List;

    .line 64
    .line 65
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 66
    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :cond_3
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController$a;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 83
    .line 84
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 89
    .line 90
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 91
    .line 92
    if-eqz p2, :cond_6

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->f:Ljava/util/List;

    .line 102
    .line 103
    if-eqz p0, :cond_4

    .line 104
    .line 105
    invoke-virtual {p1, p0}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void

    .line 109
    :cond_4
    const-string p0, "mServiceList"

    .line 110
    .line 111
    invoke-static {p0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v1
.end method


# virtual methods
.method public final F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->h:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    return-object v0
.end method

.method public final G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

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
    const-string v1, "mMostUsedFragmentBinding\u2026ystemErrorView.iconSearch"

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

.method public final H(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    const p1, 0x7f130249

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x7f13009d

    goto :goto_0

    :cond_1
    const p1, 0x7f1302ab

    :goto_0
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->g:Landroid/content/Context;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0a02dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    sget v1, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "mMostUsedFragmentBinding.containerList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f060088

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const v2, 0x7f08013e

    invoke-static {v1, p1, v0, v2, p2}, Lke/d$a;->a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_3
    return-void
.end method

.method public final I()V
    .locals 5

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0a02dc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget v2, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "mMostUsedFragmentBinding.containerList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f060025

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const v4, 0x7f060097

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const v4, 0x7f130066

    invoke-static {v2, v4, v1, v3, v0}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_1
    return-void
.end method

.method public final a(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V
    .locals 1

    .line 1
    const-string v0, "service"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->a:Lgf/b;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 19
    .line 20
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {p1, v0}, Loe/a;->c(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->I()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p1, "mNetworkHelper"

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    throw p1

    .line 45
    :cond_2
    const/4 p1, 0x1

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->H(ZZ)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final b(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V
    .locals 6

    .line 1
    const-string v0, "service"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->a:Lgf/b;

    .line 7
    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v2, 0x3

    .line 21
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->b:Ll9/e;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-interface {v3}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lpf/d;

    .line 40
    .line 41
    iget-object v4, v3, Lr0/z;->c:Lnc/a0;

    .line 42
    .line 43
    new-instance v5, Lpf/e;

    .line 44
    .line 45
    invoke-direct {v5, v3, p2, v1}, Lpf/e;-><init>(Lpf/d;ILp9/d;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v1, v0, v5, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 49
    .line 50
    .line 51
    new-instance p2, Lpf/f;

    .line 52
    .line 53
    invoke-direct {p2, v3, v1}, Lpf/f;-><init>(Lpf/d;Lp9/d;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v3, Lr0/z;->c:Lnc/a0;

    .line 57
    .line 58
    iget-object v2, v3, Lpf/d;->i:Lrf/d;

    .line 59
    .line 60
    invoke-static {v0, v2, p2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-eqz p2, :cond_1

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-interface {v3}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lpf/d;

    .line 79
    .line 80
    iget-object v4, v3, Lr0/z;->c:Lnc/a0;

    .line 81
    .line 82
    new-instance v5, Lpf/i;

    .line 83
    .line 84
    invoke-direct {v5, v3, p2, v1}, Lpf/i;-><init>(Lpf/d;ILp9/d;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v4, v1, v0, v5, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 88
    .line 89
    .line 90
    new-instance p2, Lpf/j;

    .line 91
    .line 92
    invoke-direct {p2, v3, v1}, Lpf/j;-><init>(Lpf/d;Lp9/d;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v3, Lr0/z;->c:Lnc/a0;

    .line 96
    .line 97
    iget-object v2, v3, Lpf/d;->j:Lrf/n;

    .line 98
    .line 99
    invoke-static {v0, v2, p2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->f:Ljava/util/List;

    .line 103
    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    check-cast p2, Ljava/lang/Iterable;

    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_3

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 132
    .line 133
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_2

    .line 138
    .line 139
    invoke-static {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListDBModelKt;->convertProgressItem(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->f:Ljava/util/List;

    .line 148
    .line 149
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ElectronicServiceListUIController;

    .line 150
    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    const-string p1, "mServiceController"

    .line 158
    .line 159
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1

    .line 163
    :cond_5
    const-string p1, "mServiceList"

    .line 164
    .line 165
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v1

    .line 169
    :cond_6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->I()V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_7
    const-string p1, "mNetworkHelper"

    .line 174
    .line 175
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v1

    .line 179
    :cond_8
    :goto_2
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpf/d;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;)V

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
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ebys/ElectronicDocServicesFragment;->g:Landroid/content/Context;

    return-void
.end method
