.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;",
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
.field public static final synthetic e:[Lda/m;
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

.field public c:Landroid/content/Context;

.field public d:Lv/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;

    .line 5
    .line 6
    const-string v2, "mAgreementBinding"

    .line 7
    .line 8
    const-string v3, "getMAgreementBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->e:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0050

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lyg/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$i;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$i;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$j;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$j;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$i;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->e:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$j;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->b:Ll9/e;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->e:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    return-object v0
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lyg/d;

    .line 8
    .line 9
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$a;

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
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->b:Ll9/e;

    .line 5
    .line 6
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Lyg/d;

    .line 12
    .line 13
    sget-object v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$c;

    .line 14
    .line 15
    sget-object v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$d;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$d;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$e;

    .line 23
    .line 24
    invoke-direct {v6, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$e;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;Lp9/d;)V

    .line 25
    .line 26
    .line 27
    move-object v1, p0

    .line 28
    invoke-virtual/range {v1 .. v6}, Lee/a;->B(Laf/c;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/q;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    move-object v2, p1

    .line 36
    check-cast v2, Lyg/d;

    .line 37
    .line 38
    sget-object v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$f;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$f;

    .line 39
    .line 40
    sget-object v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$g;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$g;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;

    .line 47
    .line 48
    invoke-direct {v6, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;Lp9/d;)V

    .line 49
    .line 50
    .line 51
    move-object v1, p0

    .line 52
    invoke-virtual/range {v1 .. v6}, Lee/a;->B(Laf/c;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/q;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->c:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string v0, "layout_inflater"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p1, p2

    .line 32
    :goto_0
    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p1, Landroid/view/LayoutInflater;

    .line 38
    .line 39
    const v0, 0x7f0d0108

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "inflater.inflate(R.layout.progress_dialog, null)"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lv/e;

    .line 52
    .line 53
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->c:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, v0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->d:Lv/e;

    .line 62
    .line 63
    invoke-static {p2, p1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->d:Lv/e;

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Lv/e;->b(Z)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->b:Landroid/widget/Button;

    .line 79
    .line 80
    new-instance p2, Lzd/a;

    .line 81
    .line 82
    const/16 v0, 0xb

    .line 83
    .line 84
    invoke-direct {p2, v0, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
