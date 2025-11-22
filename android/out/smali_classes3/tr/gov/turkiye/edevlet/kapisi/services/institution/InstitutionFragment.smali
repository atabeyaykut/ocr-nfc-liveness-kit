.class public final Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;",
        "Lee/a;",
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
.field public static final synthetic d:[Lda/m;
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
.field public a:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public final b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public c:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;

    .line 5
    .line 6
    const-string v2, "mInstitutionFragmentBinding"

    .line 7
    .line 8
    const-string v3, "getMInstitutionFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;"

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->d:[Lda/m;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d005d

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment$a;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final E(Lug/c;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string p1, "MunicipalityCity_Screen"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "Services_Screen"

    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v1, "screen_view"

    .line 13
    .line 14
    new-instance v2, Lc5/b4;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v2, v3, v4}, Lc5/b4;-><init>(II)V

    .line 19
    .line 20
    .line 21
    const-string v3, "screen_name"

    .line 22
    .line 23
    invoke-virtual {v2, v3, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "screen_class"

    .line 27
    .line 28
    const-string v3, "InstitutionFragment"

    .line 29
    .line 30
    invoke-virtual {v2, p1, v3}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p1, "firebaseAnalytics"

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    :goto_1
    return-void
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
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->E(Lug/c;)V

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const p2, 0x7f050006

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->d:[Lda/m;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    aget-object p1, v1, v0

    .line 34
    .line 35
    invoke-virtual {p2, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;

    .line 40
    .line 41
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;->b:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 42
    .line 43
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 44
    .line 45
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->c:Landroid/content/Context;

    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    aget-object p1, v1, v0

    .line 53
    .line 54
    invoke-virtual {p2, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;

    .line 59
    .line 60
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;->b:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 61
    .line 62
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 63
    .line 64
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->c:Landroid/content/Context;

    .line 65
    .line 66
    const/4 v4, 0x2

    .line 67
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {p1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    .line 72
    .line 73
    aget-object p1, v1, v0

    .line 74
    .line 75
    invoke-virtual {p2, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;

    .line 80
    .line 81
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;->b:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 82
    .line 83
    new-instance p2, Lug/b;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Lug/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h(Lx9/l;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
