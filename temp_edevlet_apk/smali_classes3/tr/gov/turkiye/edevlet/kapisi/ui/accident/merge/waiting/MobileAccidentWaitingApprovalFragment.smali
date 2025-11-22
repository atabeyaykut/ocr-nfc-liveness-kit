.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;",
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
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public final b:Ll9/e;

.field public c:Lv/e;

.field public d:Landroid/content/Context;

.field public e:Lph/a;

.field public final f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;

    .line 5
    .line 6
    const-string v2, "mWaitingApprovalBinding"

    .line 7
    .line 8
    const-string v3, "getMWaitingApprovalBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->h:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d007d

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$a;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lph/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$e;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$e;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$f;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$f;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$e;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->h:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$f;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->b:Ll9/e;

    const/16 v0, 0x3c

    iput v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->f:I

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->h:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;

    return-object v0
.end method

.method public final invalidate()V
    .locals 0

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
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$d;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;)V

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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->b:Ll9/e;

    .line 21
    .line 22
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lph/d;

    .line 27
    .line 28
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$b;

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
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;

    .line 36
    .line 37
    invoke-direct {v3, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;Lp9/d;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v0, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->e:Lph/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->e:Lph/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->e:Lph/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->d:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const-string v1, "layout_inflater"

    .line 25
    .line 26
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p2, v0

    .line 32
    :goto_0
    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 33
    .line 34
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p2, Landroid/view/LayoutInflater;

    .line 38
    .line 39
    const v1, 0x7f0d0108

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string v0, "inflater.inflate(R.layout.progress_dialog, null)"

    .line 47
    .line 48
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lv/e;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->c:Lv/e;

    .line 57
    .line 58
    invoke-static {v0, p2}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->c:Lv/e;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Lv/e;->b(Z)V

    .line 67
    .line 68
    .line 69
    :cond_1
    new-instance p1, Lph/a;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lph/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->e:Lph/a;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;->b:Lcom/google/android/material/button/MaterialButton;

    .line 84
    .line 85
    new-instance p2, Lie/d;

    .line 86
    .line 87
    const/16 v0, 0xf

    .line 88
    .line 89
    invoke-direct {p2, v0, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
