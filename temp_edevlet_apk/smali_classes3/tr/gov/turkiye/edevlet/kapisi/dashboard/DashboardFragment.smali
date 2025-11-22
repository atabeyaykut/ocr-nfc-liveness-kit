.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0008H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;",
        "Lpe/f;",
        "event",
        "Ll9/m;",
        "onEvent",
        "Lxe/a;",
        "Lqe/b;",
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
.field public a:Landroid/content/SharedPreferences;

.field public b:Lgf/b;

.field public c:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public d:Ljava/util/ArrayList;

.field public e:Lio/realm/y0;

.field public f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

.field public final g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public h:Landroid/content/Context;

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    .line 5
    .line 6
    const-string v2, "mDashboardFragmentBinding"

    .line 7
    .line 8
    const-string v3, "getMDashboardFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->k:[Lda/m;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0059

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$a;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->j:Z

    return-void
.end method

.method public static O(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V
    .locals 3

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageId(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getButtonTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageButtonText(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageContent(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageFolder(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageIconLink(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageLink(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getServiceCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageServiceCode(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getPopupType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageType(Ljava/lang/Integer;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;->setMessageShown(Z)V

    new-instance p0, Landroidx/camera/camera2/interop/f;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Landroidx/camera/camera2/interop/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->k:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;

    return-object v0
.end method

.method public final F()Lgf/b;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->b:Lgf/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mNetworkHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final G(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, "_"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "EDK_MainPage"

    .line 14
    .line 15
    new-instance v2, Lc5/b4;

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v2, v3, v4}, Lc5/b4;-><init>(II)V

    .line 20
    .line 21
    .line 22
    const-string v3, "action"

    .line 23
    .line 24
    invoke-virtual {v2, v3, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "firebaseAnalytics"

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :goto_0
    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "DashboardFragment"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v2, "screen_view"

    .line 8
    .line 9
    new-instance v3, Lc5/b4;

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-direct {v3, v4, v5}, Lc5/b4;-><init>(II)V

    .line 14
    .line 15
    .line 16
    const-string v4, "screen_name"

    .line 17
    .line 18
    invoke-virtual {v3, v4, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "screen_class"

    .line 22
    .line 23
    invoke-virtual {v3, p1, v0}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v3, Lc5/b4;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p1, "firebaseAnalytics"

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    :goto_0
    return-void
.end method

.method public final I(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->b:Lgf/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->F()Lgf/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "getString(name)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 25
    .line 26
    const-string v1, "action.servicepage.open"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "folderUrl"

    .line 32
    .line 33
    const-string v2, "edk-duyurular"

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v1, "serviceName"

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string p1, "isCustomPage"

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const-string p1, "isEdkFolder"

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string p1, "isFavMenuActive"

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 v1, 0x22

    .line 63
    .line 64
    if-lt p1, v1, :cond_0

    .line 65
    .line 66
    const-string p1, "tr.gov.turkiye.edevlet.kapisi"

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->N()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->L()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->b:Lgf/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->F()Lgf/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "action.servicepage.open"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "folderUrl"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p2, "serviceName"

    .line 28
    .line 29
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string p1, "isCustomPage"

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string p1, "isEdkFolder"

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string p1, "isFavMenuActive"

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 p2, 0x22

    .line 52
    .line 53
    if-lt p1, p2, :cond_0

    .line 54
    .line 55
    const-string p1, "tr.gov.turkiye.edevlet.kapisi"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->N()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->L()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final K(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->b:Lgf/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->F()Lgf/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "getString(name)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 25
    .line 26
    const-string v1, "action.servicepage.open"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "folderUrl"

    .line 32
    .line 33
    const-string v2, "edk-mesaj-kutusu"

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v1, "serviceName"

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string p1, "isCustomPage"

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const-string p1, "isEdkFolder"

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string p1, "isFavMenuActive"

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 v1, 0x22

    .line 63
    .line 64
    if-lt p1, v1, :cond_0

    .line 65
    .line 66
    const-string p1, "tr.gov.turkiye.edevlet.kapisi"

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->N()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->L()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public final L()V
    .locals 5

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->h:Landroid/content/Context;

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

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "mDashboardFragmentBinding.dashboardContainer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f060088

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const v3, 0x7f130249

    const v4, 0x7f08013e

    invoke-static {v2, v3, v1, v4, v0}, Lke/d$a;->a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_1
    return-void
.end method

.method public final M(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->h:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    :try_start_0
    const-string v1, "layout_inflater"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroid/view/LayoutInflater;

    .line 17
    .line 18
    const v2, 0x7f0d0086

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "inflater.inflate(R.layou\u2026nfo_message_dialog, null)"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const v2, 0x7f0a0368

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/widget/TextView;

    .line 39
    .line 40
    const v4, 0x7f0a0367

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/widget/TextView;

    .line 48
    .line 49
    const v5, 0x7f0a0366

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroid/widget/ImageView;

    .line 57
    .line 58
    const-string v6, "dialogImage"

    .line 59
    .line 60
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getIcon()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v5, v6}, Lge/b;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getTitle()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getPopupType()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getButtonTitle()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v6, 0x1

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-nez v7, :cond_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const/4 v7, 0x0

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 106
    :goto_1
    if-nez v7, :cond_2

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_2
    const-string v4, "getString(R.string.button_text_url)"

    .line 110
    .line 111
    const/4 v7, 0x2

    .line 112
    if-eq v2, v7, :cond_6

    .line 113
    .line 114
    const/4 v7, 0x3

    .line 115
    if-eq v2, v7, :cond_5

    .line 116
    .line 117
    const/4 v7, 0x5

    .line 118
    if-eq v2, v7, :cond_4

    .line 119
    .line 120
    const/4 v7, 0x6

    .line 121
    if-eq v2, v7, :cond_3

    .line 122
    .line 123
    const v2, 0x7f130035

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    const v2, 0x7f130033

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const-string v4, "getString(R.string.button_text_service)"

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    const v2, 0x7f130032

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string v4, "getString(R.string.button_text_message)"

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    const v2, 0x7f130030

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v4, "getString(R.string.button_text_announcement)"

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_6
    const v2, 0x7f130034

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const-string v4, "getString(R.string.button_text_settings)"

    .line 169
    .line 170
    :goto_2
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    move-object v4, v2

    .line 174
    :goto_3
    new-instance v2, Lv/e;

    .line 175
    .line 176
    invoke-direct {v2, v0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v2, v1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getPopupType()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eq v0, v6, :cond_7

    .line 187
    .line 188
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$c;

    .line 189
    .line 190
    invoke-direct {v0, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v2, v3, v4, v0, v6}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 194
    .line 195
    .line 196
    :cond_7
    const v0, 0x7f130031

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$d;

    .line 204
    .line 205
    invoke-direct {v1, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v2, v0, v1}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v5}, Lv/e;->b(Z)V

    .line 212
    .line 213
    .line 214
    invoke-static {v2, p0}, La0/b;->m(Lv/e;Landroidx/lifecycle/LifecycleOwner;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Lv/e;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :catch_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 222
    .line 223
    :cond_8
    :goto_4
    return-void
.end method

.method public final N()V
    .locals 5

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->h:Landroid/content/Context;

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

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "mDashboardFragmentBinding.dashboardContainer"

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

.method public final d()V
    .locals 2

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const v1, 0x7f0a014c

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    const-string v0, "EditorServiceList_Screen"

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    const-string v0, "Editor_Services"

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->G(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->b:Lgf/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->F()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Loe/a;->a(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->N()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->L()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->b:Lgf/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->F()Lgf/b;

    move-result-object v0

    invoke-virtual {v0}, Lgf/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    move-result v0

    invoke-static {p1, v0}, Loe/a;->c(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->N()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->L()V

    :cond_2
    :goto_0
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
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/google/android/material/transition/MaterialFadeThrough;

    invoke-direct {p1}, Lcom/google/android/material/transition/MaterialFadeThrough;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b;

    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onEvent(Lpe/f;)V
    .locals 4
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    iget-object p1, p1, Lpe/f;->a:Ljava/lang/String;

    .line 2
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->j:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {p1}, Lje/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lmc/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->e:Lio/realm/y0;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2, v0, v3}, Lcom/airbnb/epoxy/Typed3EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "conceptServiceList"

    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "editorChoiceList"

    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "mDashboardUIController"

    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Lpe/f;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onEvent(Lqe/b;)V
    .locals 1
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p1, Lqe/b;->a:Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;

    .line 4
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->M(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Lqe/b;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onEvent(Lxe/a;)V
    .locals 1
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lxe/a;->a:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lxe/a;->b:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    move-result v0

    invoke-static {p1, v0}, Loe/a;->c(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->L()V

    :cond_1
    :goto_0
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Lxe/a;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

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
    const v1, 0x7f0a025e

    .line 11
    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const v0, 0x7f0a000e

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_0
    return p1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->k(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "MainPage_Screen"

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->h:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 24
    .line 25
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 26
    .line 27
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->h:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->a:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const-string v1, "as"

    .line 42
    .line 43
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p2, 0x0

    .line 58
    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 59
    .line 60
    invoke-static {p1}, Lje/a;->a(Ljava/lang/String;)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Ljava/lang/String;

    .line 65
    .line 66
    sget-object v2, Lmc/a;->a:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-direct {p2, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 69
    .line 70
    .line 71
    iput-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->j:Z

    .line 72
    .line 73
    move-object p1, p2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object p1, v0

    .line 76
    :cond_3
    :goto_1
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const-string v1, "realm"

    .line 81
    .line 82
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 86
    .line 87
    invoke-virtual {p2, v2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v3, "serviceInsertion"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Lio/realm/RealmQuery;->h(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Lio/realm/RealmQuery;->f()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v5, Lio/realm/d0$c;

    .line 109
    .line 110
    invoke-direct {v5, v2}, Lio/realm/d0$c;-><init>(Lio/realm/d0;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_2
    invoke-virtual {v5}, Lio/realm/internal/OsResults$a;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    invoke-virtual {v5}, Lio/realm/internal/OsResults$a;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;

    .line 124
    .line 125
    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 126
    .line 127
    invoke-virtual {p2, v6}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const-string v7, "serviceCode"

    .line 132
    .line 133
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/EditorChoiceServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v6, v2, v7}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 145
    .line 146
    if-eqz v2, :cond_4

    .line 147
    .line 148
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    iput-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->d:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 162
    .line 163
    invoke-virtual {p2, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p2, v3}, Lio/realm/RealmQuery;->h(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Lio/realm/RealmQuery;->f()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->e:Lio/realm/y0;

    .line 178
    .line 179
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    .line 180
    .line 181
    invoke-direct {p2, p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;)V

    .line 182
    .line 183
    .line 184
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/airbnb/epoxy/p;->getAdapter()Lcom/airbnb/epoxy/q;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    new-instance v1, Llf/a;

    .line 191
    .line 192
    invoke-direct {v1, p0}, Llf/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 203
    .line 204
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    .line 205
    .line 206
    const-string v2, "mDashboardUIController"

    .line 207
    .line 208
    if-eqz v1, :cond_9

    .line 209
    .line 210
    invoke-virtual {p2, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 211
    .line 212
    .line 213
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    .line 214
    .line 215
    if-eqz p2, :cond_8

    .line 216
    .line 217
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->d:Ljava/util/ArrayList;

    .line 218
    .line 219
    if-eqz v1, :cond_7

    .line 220
    .line 221
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->e:Lio/realm/y0;

    .line 222
    .line 223
    if-eqz v2, :cond_6

    .line 224
    .line 225
    invoke-virtual {p2, v1, p1, v2}, Lcom/airbnb/epoxy/Typed3EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_6
    const-string p1, "conceptServiceList"

    .line 230
    .line 231
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_7
    const-string p1, "editorChoiceList"

    .line 236
    .line 237
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v0

    .line 241
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0
.end method

.method public final p(Llf/b;)V
    .locals 4

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Llf/b;->a:I

    .line 7
    .line 8
    const-string v1, "BarcodedDocumentServices_Screen"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget p1, p1, Llf/b;->b:I

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "action.mobile.accident"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "isCallingFromLogin"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v2, 0x22

    .line 37
    .line 38
    if-lt v1, v2, :cond_0

    .line 39
    .line 40
    const-string v1, "tr.gov.turkiye.edevlet.kapisi"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :pswitch_1
    const-string p1, "ATAM"

    .line 51
    .line 52
    const-string v0, "edk-atam"

    .line 53
    .line 54
    invoke-virtual {p0, p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :pswitch_2
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const v0, 0x7f0a0496

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 67
    .line 68
    .line 69
    const-string p1, "WonderServices_Screen"

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p1, "Wonder_Services"

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_3
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "getDefaultInstance()"

    .line 83
    .line 84
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lio/realm/RealmQuery;->d()Lio/realm/y0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    const/4 p1, 0x1

    .line 104
    new-array p1, p1, [Ll9/g;

    .line 105
    .line 106
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 107
    .line 108
    new-instance v1, Ll9/g;

    .line 109
    .line 110
    const-string v3, "mustAtLeastOne"

    .line 111
    .line 112
    invoke-direct {v1, v3, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    aput-object v1, p1, v2

    .line 116
    .line 117
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const v1, 0x7f0a02d6

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    const-string p1, "MyCityList_Screen"

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string p1, "MyCityList_Services"

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_1
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const v0, 0x7f0a02d5

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 148
    .line 149
    .line 150
    const-string p1, "MyCity_Screen"

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string p1, "MyCity_Services"

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :pswitch_4
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const v0, 0x7f0a008c

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string p1, "Barcoded_Document_Services"

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :pswitch_5
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const v0, 0x7f0a008d

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string p1, "Barcoded_Document_Verify"

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :pswitch_6
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const v0, 0x7f0a0154

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 199
    .line 200
    .line 201
    const-string p1, "EBYSServices_Screen"

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string p1, "Electronic_Document_Services"

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :pswitch_7
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const v0, 0x7f0a02eb

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 217
    .line 218
    .line 219
    const-string p1, "NewlyAddedServices_Screen"

    .line 220
    .line 221
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string p1, "Newly_Added_Services"

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :pswitch_8
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const v0, 0x7f0a02b9

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 235
    .line 236
    .line 237
    const-string p1, "MostUsedServices_Screen"

    .line 238
    .line 239
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const-string p1, "Most_Used_Services"

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :pswitch_9
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->K(I)V

    .line 246
    .line 247
    .line 248
    const-string p1, "Messages_Screen"

    .line 249
    .line 250
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string p1, "Messages"

    .line 254
    .line 255
    goto :goto_0

    .line 256
    :pswitch_a
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->I(I)V

    .line 257
    .line 258
    .line 259
    const-string p1, "Announcement_Screen"

    .line 260
    .line 261
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string p1, "Announcement"

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :pswitch_b
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    const v0, 0x7f0a016c

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 275
    .line 276
    .line 277
    const-string p1, "MyFavoriteServices_Screen"

    .line 278
    .line 279
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const-string p1, "Favorite_Services"

    .line 283
    .line 284
    :goto_0
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->G(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :goto_1
    return-void

    .line 288
    nop

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u()V
    .locals 2

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const v1, 0x7f0a00e9

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    const-string v0, "ConceptServiceList_Screen"

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->H(Ljava/lang/String;)V

    const-string v0, "Concept_Services"

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->G(Ljava/lang/String;)V

    return-void
.end method
