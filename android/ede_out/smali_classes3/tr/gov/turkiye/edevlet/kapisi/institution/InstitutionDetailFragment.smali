.class public final Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;",
        "<init>",
        "()V",
        "ui-institution-detail_release"
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
.field public a:Lgf/b;

.field public b:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public final c:Ll9/e;

.field public final d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

.field public f:Ljava/util/AbstractList;

.field public g:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

.field public h:Landroid/content/Context;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;

    .line 5
    .line 6
    const-string v2, "viewModel"

    .line 7
    .line 8
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailViewModel;"

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
    const-string v2, "mInstitutionDetailFragmentBinding"

    .line 18
    .line 19
    const-string v3, "getMInstitutionDetailFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->m:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0060

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    const-class v0, Lag/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->m:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->c:Ll9/e;

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;Ljava/lang/Throwable;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string p1, "action.login.open"

    .line 9
    .line 10
    const p2, 0x8000

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v0, 0x22

    .line 20
    .line 21
    if-lt p2, v0, :cond_0

    .line 22
    .line 23
    const-string p2, "tr.gov.turkiye.edevlet.kapisi"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->J()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->I(ZZ)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public static final F(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "serviceController"

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    new-instance v3, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 32
    .line 33
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavoriteProgress()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    invoke-static {v4, p2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListDBModelKt;->convertNormalStatus(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iput-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 62
    .line 63
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_3
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 76
    .line 77
    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 81
    .line 82
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->g:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 87
    .line 88
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 89
    .line 90
    if-eqz p2, :cond_6

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 96
    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 100
    .line 101
    if-eqz p0, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void

    .line 107
    :cond_4
    const-string p0, "serviceList"

    .line 108
    .line 109
    invoke-static {p0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v1

    .line 113
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1
.end method


# virtual methods
.method public final G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->m:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    return-object v0
.end method

.method public final H(Ljava/lang/Integer;)V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "InstitutionDetail_Screen"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p1, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    const-string v0, "OtherInstitutionDetail_Screen"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_1
    const-string v0, "WaterAndSewageInstitutionDetail_Screen"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_2
    const-string v0, "MobileLineInstitutionDetail_Screen"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_3
    const-string v0, "TelecommunicationInstitutionDetail_Screen"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_4
    const-string v0, "ElectricInstitutionDetail_Screen"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_5
    const-string v0, "NaturalGasInstitutionDetail_Screen"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_6
    const-string v0, "UniversityInstitutionDetail_Screen"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_7
    const-string v0, "MersisInstitutionDetail_Screen"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_8
    const-string v0, "PublicInstitutionDetail_Screen"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_9
    const-string v0, "MyCityInstitutionDetail_Screen"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_a
    const-string v0, "MunicipalityDetail_Screen"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "InstitutionContact_Screen"

    .line 50
    .line 51
    :goto_0
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const-string v1, "screen_view"

    .line 56
    .line 57
    new-instance v2, Lc5/b4;

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-direct {v2, v3, v4}, Lc5/b4;-><init>(II)V

    .line 62
    .line 63
    .line 64
    const-string v3, "screen_name"

    .line 65
    .line 66
    invoke-virtual {v2, v3, v0}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "screen_class"

    .line 70
    .line 71
    const-string v3, "InstitutionDetailFragment"

    .line 72
    .line 73
    invoke-virtual {v2, v0, v3}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const-string p1, "firebaseAnalytics"

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    :goto_1
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final I(ZZ)V
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
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->h:Landroid/content/Context;

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

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "mInstitutionDetailFragmentBinding.detailContainer"

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

.method public final J()V
    .locals 5

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->h:Landroid/content/Context;

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

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "mInstitutionDetailFragmentBinding.detailContainer"

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->a:Lgf/b;

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->J()V

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
    invoke-virtual {p0, p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->I(ZZ)V

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->a:Lgf/b;

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
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->c:Ll9/e;

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
    check-cast v3, Lag/d;

    .line 40
    .line 41
    iget-object v4, v3, Lr0/z;->c:Lnc/a0;

    .line 42
    .line 43
    new-instance v5, Lag/e;

    .line 44
    .line 45
    invoke-direct {v5, v3, p2, v1}, Lag/e;-><init>(Lag/d;ILp9/d;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v1, v0, v5, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 49
    .line 50
    .line 51
    new-instance p2, Lag/f;

    .line 52
    .line 53
    invoke-direct {p2, v3, v1}, Lag/f;-><init>(Lag/d;Lp9/d;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v3, Lr0/z;->c:Lnc/a0;

    .line 57
    .line 58
    iget-object v2, v3, Lag/d;->i:Lbg/c;

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
    check-cast v3, Lag/d;

    .line 79
    .line 80
    iget-object v4, v3, Lr0/z;->c:Lnc/a0;

    .line 81
    .line 82
    new-instance v5, Lag/g;

    .line 83
    .line 84
    invoke-direct {v5, v3, p2, v1}, Lag/g;-><init>(Lag/d;ILp9/d;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v4, v1, v0, v5, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 88
    .line 89
    .line 90
    new-instance p2, Lag/h;

    .line 91
    .line 92
    invoke-direct {p2, v3, v1}, Lag/h;-><init>(Lag/d;Lp9/d;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v3, Lr0/z;->c:Lnc/a0;

    .line 96
    .line 97
    iget-object v2, v3, Lag/d;->j:Lbg/d;

    .line 98
    .line 99
    invoke-static {v0, v2, p2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 103
    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 130
    .line 131
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_2

    .line 136
    .line 137
    invoke-static {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListDBModelKt;->convertProgressItem(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 146
    .line 147
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const-string p1, "serviceController"

    .line 156
    .line 157
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v1

    .line 161
    :cond_5
    const-string p1, "serviceList"

    .line 162
    .line 163
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v1

    .line 167
    :cond_6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->J()V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    const-string p1, "mNetworkHelper"

    .line 172
    .line 173
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v1

    .line 177
    :cond_8
    :goto_2
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->c:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lag/d;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;)V

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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/google/android/material/transition/MaterialSharedAxis;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, Lcom/google/android/material/transition/MaterialSharedAxis;-><init>(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/material/transition/MaterialSharedAxis;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/android/material/transition/MaterialSharedAxis;-><init>(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setReenterTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const v1, 0x7f0a0260

    .line 11
    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    new-array p1, p1, [Ll9/g;

    .line 17
    .line 18
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->j:Ljava/lang/Integer;

    .line 19
    .line 20
    new-instance v1, Ll9/g;

    .line 21
    .line 22
    const-string v2, "institutionCode"

    .line 23
    .line 24
    invoke-direct {v1, v2, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    aput-object v1, p1, v0

    .line 29
    .line 30
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->k:Ljava/lang/Integer;

    .line 31
    .line 32
    new-instance v1, Ll9/g;

    .line 33
    .line 34
    const-string v2, "categoryCode"

    .line 35
    .line 36
    invoke-direct {v1, v2, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v1, p1, v0

    .line 41
    .line 42
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->l:Ljava/lang/Integer;

    .line 43
    .line 44
    new-instance v2, Ll9/g;

    .line 45
    .line 46
    const-string v3, "cityCode"

    .line 47
    .line 48
    invoke-direct {v2, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    aput-object v2, p1, v1

    .line 53
    .line 54
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const v2, 0x7f0a01f1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->H(Ljava/lang/Integer;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :goto_0
    return v0
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
    const/4 p2, 0x1

    .line 10
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->h:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string v0, "institutionCode"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object p1, p2

    .line 38
    :goto_0
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->j:Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const-string v0, "categoryCode"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-object p1, p2

    .line 58
    :goto_1
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->k:Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    const-string p2, "cityCode"

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    :cond_2
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->l:Ljava/lang/Integer;

    .line 78
    .line 79
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->j:Ljava/lang/Integer;

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->k:Ljava/lang/Integer;

    .line 88
    .line 89
    if-eqz p2, :cond_3

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->c:Ll9/e;

    .line 96
    .line 97
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lag/d;

    .line 102
    .line 103
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->l:Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0, p1, p2, v1}, Lag/d;->d(IILjava/lang/Integer;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->k:Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->H(Ljava/lang/Integer;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method
