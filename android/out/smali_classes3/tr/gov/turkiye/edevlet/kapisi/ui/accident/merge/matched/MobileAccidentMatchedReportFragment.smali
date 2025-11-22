.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;",
        "Lee/a;",
        "<init>",
        "()V",
        "ui-mobile-accident_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic m:[Lda/m;
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
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public final b:Ll9/e;

.field public c:Lv/e;

.field public d:Landroid/content/Context;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public final l:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
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
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;

    .line 5
    .line 6
    const-string v2, "mMatchedReportInfoBinding"

    .line 7
    .line 8
    const-string v3, "getMMatchedReportInfoBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;"

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
    const-string v2, "viewModel"

    .line 18
    .line 19
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->m:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0066

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lnh/c;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$f;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$f;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$g;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$g;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$f;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->m:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$g;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->b:Ll9/e;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/k;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Landroidx/camera/core/impl/k;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026}\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->l:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->m:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;

    return-object v0
.end method

.method public final F(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->d:Landroid/content/Context;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const p1, 0x7f130249

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v1, "if (errorMessage.isNullO\u2026rrorMessage\n            }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;->c:Landroidx/core/widget/NestedScrollView;

    const-string v2, "mMatchedReportInfoBinding.mktMatchedMainContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f060088

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v1, p1, v0}, Lke/d$a;->b(Landroid/view/ViewGroup;Ljava/lang/String;I)Lke/d;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_3
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnh/c;

    .line 8
    .line 9
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$a;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
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
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$e;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$e;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->b:Ll9/e;

    .line 21
    .line 22
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lnh/c;

    .line 27
    .line 28
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$c;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;

    .line 36
    .line 37
    invoke-direct {v3, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;Lp9/d;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v0, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 41
    .line 42
    .line 43
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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->d:Landroid/content/Context;

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
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string v0, "identityNumber"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, p2

    .line 30
    :goto_0
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->h:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const-string v0, "plateNumber"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object p1, p2

    .line 46
    :goto_1
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->j:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->d:Landroid/content/Context;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    const-string v1, "layout_inflater"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move-object v0, p2

    .line 66
    :goto_2
    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    check-cast v0, Landroid/view/LayoutInflater;

    .line 72
    .line 73
    const v1, 0x7f0d0108

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "inflater.inflate(R.layout.progress_dialog, null)"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lv/e;

    .line 86
    .line 87
    invoke-direct {v1, p1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->c:Lv/e;

    .line 91
    .line 92
    invoke-static {v1, v0}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->c:Lv/e;

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Lv/e;->b(Z)V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 108
    .line 109
    .line 110
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 121
    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getRole()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->f:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getScenarioId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->g:Ljava/lang/String;

    .line 141
    .line 142
    :cond_4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;->d:Landroid/widget/TextView;

    .line 147
    .line 148
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->h:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;->e:Landroid/widget/TextView;

    .line 158
    .line 159
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->j:Ljava/lang/String;

    .line 160
    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    invoke-static {v0}, Lge/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    :cond_5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMatchedReportInfoBinding;->b:Landroid/widget/Button;

    .line 175
    .line 176
    new-instance p2, Lzd/d;

    .line 177
    .line 178
    const/16 v0, 0x12

    .line 179
    .line 180
    invoke-direct {p2, v0, p0}, Lzd/d;-><init>(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method
