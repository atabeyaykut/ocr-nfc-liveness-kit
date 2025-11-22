.class public final Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;",
        "<init>",
        "()V",
        "ui-profile_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic l:[Lda/m;
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

.field public c:Landroid/content/SharedPreferences;

.field public d:Ljava/lang/String;

.field public e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

.field public final f:Ll9/e;

.field public final g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public h:Landroid/content/Context;

.field public j:Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    .line 5
    .line 6
    const-string v2, "viewModel"

    .line 7
    .line 8
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ProfileContactViewModel;"

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
    const-string v2, "mProfileFragmentBinding"

    .line 18
    .line 19
    const-string v3, "getMProfileFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->l:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0073

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    const-class v0, Lgg/b;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$d;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$d;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$e;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$e;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$d;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->l:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$e;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->f:Ll9/e;

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;Ljava/lang/Throwable;)V
    .locals 2

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
    const v0, 0x8000

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    if-lt v0, v1, :cond_0

    .line 22
    .line 23
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->h:Landroid/widget/ProgressBar;

    .line 50
    .line 51
    const/16 v0, 0x8

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->k:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 61
    .line 62
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 81
    .line 82
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 93
    .line 94
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 95
    .line 96
    new-instance v0, Lzd/e;

    .line 97
    .line 98
    const/4 v1, 0x7

    .line 99
    invoke-direct {v0, v1, p0}, Lzd/e;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->N()V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    return-void
.end method

.method public static final F(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual/range {p1 .. p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;->getContactData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->h:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->k:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 2
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 4
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;->getContactData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->getUserProfileInfo()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_c

    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    if-eqz v1, :cond_b

    .line 7
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->getCanShowBanner()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->I()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "profileBannerDiscoveryClick"

    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->I()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v9, "profileBannerDiscoveryDate"

    invoke-interface {v5, v9, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v11, v12}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v5, v9, v11

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->I()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "profileBannerShown"

    invoke-interface {v9, v10, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->I()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "profileBannerShownDate"

    invoke-interface {v9, v10, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v9, 0x7

    cmp-long v11, v7, v9

    if-ltz v11, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_5

    goto :goto_5

    :catch_0
    nop

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_6

    .line 8
    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->g:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->e:Lcom/google/android/material/button/MaterialButton;

    new-instance v5, Lzd/d;

    const/16 v7, 0xa

    invoke-direct {v5, v7, v0}, Lzd/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->d:Lcom/google/android/material/button/MaterialButton;

    new-instance v5, Lie/d;

    const/4 v7, 0x7

    invoke-direct {v5, v7, v0}, Lie/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    move-result-object v5

    iget-object v5, v5, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->g:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :goto_6
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->getHasTwoFactorUsageRight()I

    move-result v2

    if-ne v2, v6, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x5

    const-string v11, "mProfileUIController"

    const v12, 0x7f080123

    const v13, 0x7f130219

    const/4 v14, 0x2

    const v15, 0x7f080125

    const v4, 0x7f13021a

    const v5, 0x7f080128

    const v7, 0x7f130218

    if-eqz v2, :cond_9

    .line 10
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->j:Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;

    if-eqz v2, :cond_8

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->h:Landroid/content/Context;

    new-array v11, v10, [Ljg/a;

    .line 11
    new-instance v10, Ljg/a;

    invoke-direct {v10, v6, v7, v5}, Ljg/a;-><init>(III)V

    aput-object v10, v11, v3

    new-instance v3, Ljg/a;

    invoke-direct {v3, v14, v4, v15}, Ljg/a;-><init>(III)V

    aput-object v3, v11, v6

    new-instance v3, Ljg/a;

    const v4, 0x7f13021b

    const v5, 0x7f080127

    invoke-direct {v3, v9, v4, v5}, Ljg/a;-><init>(III)V

    aput-object v3, v11, v14

    new-instance v3, Ljg/a;

    invoke-direct {v3, v8, v13, v12}, Ljg/a;-><init>(III)V

    aput-object v3, v11, v9

    new-instance v3, Ljg/a;

    const v4, 0x7f080121

    const v5, 0x7f130217

    const/4 v6, 0x5

    invoke-direct {v3, v6, v5, v4}, Ljg/a;-><init>(III)V

    aput-object v3, v11, v8

    .line 12
    invoke-static {v11}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_8

    .line 13
    :cond_8
    invoke-static {v11}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_9
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->j:Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;

    if-eqz v2, :cond_a

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->h:Landroid/content/Context;

    new-array v10, v8, [Ljg/a;

    .line 14
    new-instance v11, Ljg/a;

    invoke-direct {v11, v6, v7, v5}, Ljg/a;-><init>(III)V

    aput-object v11, v10, v3

    new-instance v3, Ljg/a;

    invoke-direct {v3, v14, v4, v15}, Ljg/a;-><init>(III)V

    aput-object v3, v10, v6

    new-instance v3, Ljg/a;

    invoke-direct {v3, v8, v13, v12}, Ljg/a;-><init>(III)V

    aput-object v3, v10, v14

    new-instance v3, Ljg/a;

    const v4, 0x7f080121

    const v5, 0x7f130217

    const/4 v6, 0x5

    invoke-direct {v3, v6, v5, v4}, Ljg/a;-><init>(III)V

    aput-object v3, v10, v9

    .line 15
    invoke-static {v10}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 16
    :goto_8
    invoke-virtual {v2, v1, v0, v3}, Lcom/airbnb/epoxy/Typed3EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_a
    invoke-static {v11}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_b
    const/4 v0, 0x0

    const-string v1, "mUserProfileResult"

    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->N()V

    goto :goto_9

    .line 19
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->N()V

    :goto_9
    return-void
.end method

.method public static final G(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->k:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 28
    .line 29
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->h:Landroid/widget/ProgressBar;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->l:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    return-object v0
.end method

.method public final I()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sharedPreferences"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final J(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "EDK_Profile"

    .line 6
    .line 7
    new-instance v2, Lc5/b4;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v2, v3, v4}, Lc5/b4;-><init>(II)V

    .line 12
    .line 13
    .line 14
    const-string v3, "action"

    .line 15
    .line 16
    invoke-virtual {v2, v3, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p1, "firebaseAnalytics"

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    :goto_0
    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "screen_view"

    .line 6
    .line 7
    new-instance v2, Lc5/b4;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v2, v3, v4}, Lc5/b4;-><init>(II)V

    .line 12
    .line 13
    .line 14
    const-string v3, "screen_name"

    .line 15
    .line 16
    invoke-virtual {v2, v3, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "screen_class"

    .line 20
    .line 21
    const-string v3, "ProfileFragment"

    .line 22
    .line 23
    invoke-virtual {v2, p1, v3}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

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

.method public final L()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->k:Z

    .line 3
    .line 4
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->d:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    const-string v2, "tr"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v2, "en"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string v1, "edk-2fa-operations-en"

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const-string v1, "edk-2fa-operations"

    .line 29
    .line 30
    :goto_1
    const v2, 0x7f13025b

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "getString(R.string.settings_fragment_two_factor)"

    .line 38
    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->M(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "TwoFactorSettings_Screen"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->K(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "Two_Factor_Settings"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->J(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-string v0, "mLanguage"

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    throw v0
.end method

.method public final M(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->a:Lgf/b;

    .line 2
    .line 3
    const-string v1, "mProfileFragmentBinding.profileMainContainer"

    .line 4
    .line 5
    const v2, 0x7f0a02dc

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v1, "action.servicepage.open"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "folderUrl"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string p2, "serviceName"

    .line 30
    .line 31
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string p1, "isCustomPage"

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p1, "isEdkFolder"

    .line 41
    .line 42
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string p1, "isFavMenuActive"

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 p2, 0x22

    .line 54
    .line 55
    if-lt p1, p2, :cond_0

    .line 56
    .line 57
    const-string p1, "tr.gov.turkiye.edevlet.kapisi"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->h:Landroid/content/Context;

    .line 67
    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :cond_2
    sget p2, Lke/d;->a:I

    .line 81
    .line 82
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    .line 88
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const p3, 0x7f060025

    .line 92
    .line 93
    .line 94
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    const v0, 0x7f060097

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const v0, 0x7f130066

    .line 106
    .line 107
    .line 108
    invoke-static {p2, v0, v3, p3, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->h:Landroid/content/Context;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-eqz p2, :cond_4

    .line 127
    .line 128
    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :cond_4
    sget p2, Lke/d;->a:I

    .line 133
    .line 134
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 139
    .line 140
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const p3, 0x7f060088

    .line 144
    .line 145
    .line 146
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    const p3, 0x7f130215

    .line 151
    .line 152
    .line 153
    const v0, 0x7f08013e

    .line 154
    .line 155
    .line 156
    invoke-static {p2, p3, v3, v0, p1}, Lke/d$a;->a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_0
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->h:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 17
    .line 18
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->k:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->f:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgg/b;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;)V

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
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/google/android/material/transition/MaterialFadeThrough;

    invoke-direct {p1}, Lcom/google/android/material/transition/MaterialFadeThrough;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->k:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->f:Ll9/e;

    .line 9
    .line 10
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lgg/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lgg/b;->d()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->k:Z

    .line 21
    .line 22
    :cond_0
    const-string v0, "Profile_Screen"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->K(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->h:Landroid/content/Context;

    .line 14
    .line 15
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->j:Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;

    .line 21
    .line 22
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->j:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 27
    .line 28
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->j:Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->f:Ll9/e;

    .line 36
    .line 37
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lgg/b;

    .line 42
    .line 43
    invoke-virtual {p1}, Lgg/b;->d()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "requireActivity()"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$c;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 65
    .line 66
    invoke-interface {p1, p2, v0, v1}, Landroidx/core/view/MenuHost;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    const-string p1, "mProfileUIController"

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    throw p1
.end method

.method public final s(Ljg/a;)V
    .locals 3

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget p1, p1, Ljg/a;->a:I

    .line 8
    .line 9
    if-eq p1, v0, :cond_7

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p1, v1, :cond_6

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p1, v1, :cond_5

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-eq p1, v1, :cond_4

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->d:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    const-string v1, "tr"

    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v1, "en"

    .line 39
    .line 40
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const-string p1, "edk-erisim-kisitlamalari-en"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    const-string p1, "edk-erisim-kisitlamalari"

    .line 50
    .line 51
    :goto_1
    const v1, 0x7f130217

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "getString(R.string.profile_item_account_access)"

    .line 59
    .line 60
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1, p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->M(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    const-string p1, "AccessRestrictions_Screen"

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->K(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p1, "Access_Restrictions"

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->J(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    const-string p1, "mLanguage"

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    throw p1

    .line 84
    :cond_4
    const p1, 0x7f13025c

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v1, "getString(R.string.setti\u2026s_fragment_usage_history)"

    .line 92
    .line 93
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "edk-login-history"

    .line 97
    .line 98
    invoke-virtual {p0, p1, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->M(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    const-string p1, "UsageHistory_Screen"

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->K(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string p1, "Usage_History"

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->L()V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    const p1, 0x7f13024b

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v0, "getString(R.string.setti\u2026fragment_change_password)"

    .line 121
    .line 122
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "https://giris.turkiye.gov.tr/Giris/Mobil/V2/SifreDegistir?start=1"

    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, p1, v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->M(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    const-string p1, "ChangePassword_Screen"

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->K(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string p1, "Change_Password"

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const v0, 0x7f0a030c

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 147
    .line 148
    .line 149
    const-string p1, "Id_And_Address_Info"

    .line 150
    .line 151
    :goto_2
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->J(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_3
    return-void
.end method

.method public final t()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->k:Z

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method
