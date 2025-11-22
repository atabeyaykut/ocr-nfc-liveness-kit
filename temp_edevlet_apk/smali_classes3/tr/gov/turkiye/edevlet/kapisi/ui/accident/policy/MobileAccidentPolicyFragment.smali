.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;",
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

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;

    .line 5
    .line 6
    const-string v2, "mPolicyBinding"

    .line 7
    .line 8
    const-string v3, "getMPolicyBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->e:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0071

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Luh/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$d;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$d;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$e;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$e;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$d;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->e:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$e;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->b:Ll9/e;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->e:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    return-object v0
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Luh/d;

    .line 8
    .line 9
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$a;

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

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "companyBrand"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->d:Ljava/lang/String;

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/a;->m()V

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object p1

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$c;

    invoke-direct {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h(Lx9/l;)V

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPlateCityCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPlateCityCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lmc/o;->k0(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v4, 0x30

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPlateCityCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v3, p2

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPlateNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, p2

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPlateCityCode()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, p2

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPlateNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_7
    move-object v4, p2

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getOwnerDifferentFromDriver()Z

    move-result v0

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getDocumentSerialNumber()Ljava/lang/String;

    move-result-object p2

    :cond_9
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_a
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->d:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;->f:Landroid/widget/TextView;

    if-nez v1, :cond_d

    const p2, 0x7f13015f

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;->d:Landroid/widget/TextView;

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->d:Ljava/lang/String;

    goto :goto_9

    :cond_d
    const p2, 0x7f130161

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;->d:Landroid/widget/TextView;

    const-string p2, "-"

    :goto_9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_a
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;->b:Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lt1/f;

    const/16 v0, 0xe

    invoke-direct {p2, v0, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
