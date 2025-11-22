.class public final Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;",
        "Lee/a;",
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
.field public static final synthetic j:[Lda/m;
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

.field public b:Lgf/b;

.field public c:Ljava/lang/String;

.field public final d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public final e:Ll9/e;

.field public f:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

.field public g:Landroid/content/Context;

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;

    .line 5
    .line 6
    const-string v2, "mContactInfoFragmentBinding"

    .line 7
    .line 8
    const-string v3, "getMContactInfoFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ProfileContactViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->j:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0057

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lgg/b;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->j:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->e:Ll9/e;

    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;Ljava/lang/Throwable;)V
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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->j:Landroid/widget/ProgressBar;

    .line 50
    .line 51
    const/16 v0, 0x8

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 61
    .line 62
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->h:Landroidx/core/widget/NestedScrollView;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 93
    .line 94
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 95
    .line 96
    new-instance v0, Lxf/d;

    .line 97
    .line 98
    const/4 v1, 0x3

    .line 99
    invoke-direct {v0, v1, p0}, Lxf/d;-><init>(ILjava/lang/Object;)V

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->M()V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    return-void
.end method

.method public static final F(Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;)V
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;->getContactData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->j:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 2
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 4
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->h:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;->getContactData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->getUserProfileInfo()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_23

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->getUserProfileInfo()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;->getPersonalInformation()Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 7
    :goto_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->J()Z

    move-result v3

    const-string v4, "E"

    const v5, 0x7f130224

    const v6, 0x7f13022a

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getHasIDVerifiedPhoneNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->f:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getMobilePhoneNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v0

    :goto_4
    const/4 v7, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v3, 0x1

    :goto_6
    const-string v8, "-"

    const v9, 0x7f06011b

    const v10, 0x7f06011a

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->f:Landroid/widget/Button;

    const v5, 0x7f13022c

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->J()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    const v5, 0x7f130225

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    if-eqz v3, :cond_16

    goto/16 :goto_f

    :cond_9
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    iget-object v11, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    invoke-static {v11}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-static {v11, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->m:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getMobilePhoneCountryCode()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_b
    move-object v12, v0

    :goto_7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getMobilePhoneNumber()Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_c
    move-object v12, v0

    :goto_8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_d

    .line 10
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getHasIDVerifiedPhoneNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_d
    move-object v3, v0

    :goto_9
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 11
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->f:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->J()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    goto :goto_c

    :cond_e
    if-eqz p1, :cond_f

    .line 12
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getHasSMSVerifiedPhoneNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_f
    move-object v3, v0

    :goto_a
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 13
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->J()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_10
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->f:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->J()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    const v5, 0x7f130226

    goto :goto_c

    :cond_11
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    const v5, 0x7f130223

    :goto_c
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->J()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_13
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->f:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->J()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 14
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 15
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    const v5, 0x7f130228

    goto :goto_e

    :cond_14
    const-string p0, "mUserProfileResult"

    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_15
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    const v5, 0x7f130227

    :goto_e
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    if-eqz v3, :cond_16

    :goto_f
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->k:Landroid/widget/TextView;

    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-static {v5, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    :goto_10
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getHasVerifiedEmail()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_17
    move-object v3, v0

    :goto_11
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->i:Landroid/widget/TextView;

    const v4, 0x7f13020e

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->i:Landroid/widget/TextView;

    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-static {v4, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    goto :goto_16

    :cond_18
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getEMail()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_19
    move-object v3, v0

    :goto_12
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_13

    :cond_1a
    const/4 v3, 0x0

    goto :goto_14

    :cond_1b
    :goto_13
    const/4 v3, 0x1

    :goto_14
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v4

    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->i:Landroid/widget/TextView;

    if-eqz v3, :cond_1c

    const v3, 0x7f13020b

    goto :goto_15

    :cond_1c
    const v3, 0x7f13020c

    :goto_15
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->i:Landroid/widget/TextView;

    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-static {v4, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    :goto_16
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1d
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->f:Landroid/widget/Button;

    new-instance v4, Lie/d;

    invoke-direct {v4, v1, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->e:Landroid/widget/Button;

    new-instance v4, Lzd/e;

    invoke-direct {v4, v1, p0}, Lzd/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->o:Landroid/widget/TextView;

    new-instance v3, Lt1/f;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getEMail()Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    :cond_1e
    move-object v3, v0

    :goto_17
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    const/4 v2, 0x1

    :cond_20
    if-eqz v2, :cond_21

    goto :goto_18

    :cond_21
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getEMail()Ljava/lang/String;

    move-result-object v0

    :cond_22
    move-object v8, v0

    :goto_18
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->d:Landroid/widget/Button;

    new-instance v0, Lzd/d;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lzd/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_19

    .line 19
    :cond_23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->M()V

    goto :goto_19

    .line 20
    :cond_24
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->M()V

    :goto_19
    return-void
.end method

.method public static final G(Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->h:Landroidx/core/widget/NestedScrollView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 28
    .line 29
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->j:Landroid/widget/ProgressBar;

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
.method public final H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->j:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final J()Z
    .locals 3

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->getHasTwoFactorUsageRight()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "mUserProfileResult"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final K(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p1, "Contact_Edit"

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "EDK_Profile"

    .line 8
    .line 9
    new-instance v2, Lc5/b4;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v2, v3, v4}, Lc5/b4;-><init>(II)V

    .line 14
    .line 15
    .line 16
    const-string v3, "action"

    .line 17
    .line 18
    invoke-virtual {v2, v3, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v2, Lc5/b4;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "firebaseAnalytics"

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    :goto_0
    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

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

.method public final M()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->j:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 17
    .line 18
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->h:Landroidx/core/widget/NestedScrollView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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

.method public final N()V
    .locals 5

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

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

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "mContactInfoFragmentBind\u2026g.profileContactContainer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f060088

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const v3, 0x7f130215

    const v4, 0x7f08013e

    invoke-static {v2, v3, v1, v4, v0}, Lke/d$a;->a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_1
    return-void
.end method

.method public final O()V
    .locals 5

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

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

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentContactInfoBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "mContactInfoFragmentBind\u2026g.profileContactContainer"

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

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->e:Ll9/e;

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
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;)V

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
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->h:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->e:Ll9/e;

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
    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->h:Z

    .line 21
    .line 22
    :cond_0
    const-string v0, "Profile_Contact_Screen"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->L(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->g:Landroid/content/Context;

    .line 14
    .line 15
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->e:Ll9/e;

    .line 16
    .line 17
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lgg/b;

    .line 22
    .line 23
    invoke-virtual {p1}, Lgg/b;->d()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
