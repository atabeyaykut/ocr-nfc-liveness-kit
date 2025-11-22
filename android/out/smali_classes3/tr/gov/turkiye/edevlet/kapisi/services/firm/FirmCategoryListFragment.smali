.class public final Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;",
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
.field public static final synthetic c:[Lda/m;
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


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;->c:[Lda/m;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d005d

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment$a;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final E(Ltg/c;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget p1, p1, Ltg/c;->c:I

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    const-string p1, "OtherInstitution_Screen"

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :pswitch_1
    const-string p1, "WaterAndSewageCity_Screen"

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :pswitch_2
    const-string p1, "MobileLineInstitution_Screen"

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :pswitch_3
    const-string p1, "TelecommunicationInstitution_Screen"

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :pswitch_4
    const-string p1, "ElectricCity_Screen"

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :pswitch_5
    const-string p1, "NaturalGasCity_Screen"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :goto_0
    const-string p1, "Firm_Screen"

    .line 29
    .line 30
    :goto_1
    :try_start_1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v1, "screen_view"

    .line 35
    .line 36
    new-instance v2, Lc5/b4;

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-direct {v2, v3, v4}, Lc5/b4;-><init>(II)V

    .line 41
    .line 42
    .line 43
    const-string v3, "screen_name"

    .line 44
    .line 45
    invoke-virtual {v2, v3, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "screen_class"

    .line 49
    .line 50
    const-string v3, "FirmCategoryListFragment"

    .line 51
    .line 52
    invoke-virtual {v2, p1, v3}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    const-string p1, "firebaseAnalytics"

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    :catch_0
    :goto_2
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;->E(Ltg/c;)V

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const p2, 0x7f050006

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;->c:[Lda/m;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    aget-object p1, v1, v0

    .line 29
    .line 30
    invoke-virtual {p2, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;

    .line 35
    .line 36
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;->b:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 37
    .line 38
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    invoke-direct {v3, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    aget-object p1, v1, v0

    .line 46
    .line 47
    invoke-virtual {p2, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;

    .line 52
    .line 53
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;->b:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 54
    .line 55
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    invoke-direct {v3, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1, v3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    .line 63
    .line 64
    aget-object p1, v1, v0

    .line 65
    .line 66
    invoke-virtual {p2, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;

    .line 71
    .line 72
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;->b:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 73
    .line 74
    new-instance p2, Ltg/b;

    .line 75
    .line 76
    invoke-direct {p2, p0}, Ltg/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/firm/FirmCategoryListFragment;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h(Lx9/l;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
