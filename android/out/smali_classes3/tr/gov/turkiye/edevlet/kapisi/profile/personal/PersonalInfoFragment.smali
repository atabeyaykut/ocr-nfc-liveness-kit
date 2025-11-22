.class public final Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;",
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
.field public static final synthetic g:[Lda/m;
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

.field public d:Z

.field public e:Lke/d;

.field public final f:Ll9/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;

    .line 5
    .line 6
    const-string v2, "mPersonalInfoFragmentBinding"

    .line 7
    .line 8
    const-string v3, "getMPersonalInfoFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->g:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v0, 0x7f0d006f

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->d:Z

    const-class v1, Lfg/f;

    invoke-static {v1}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v1

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$c;

    invoke-direct {v2, p0, v1, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$d;

    invoke-direct {v3, v1, v2, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$c;Lda/d;)V

    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->g:[Lda/m;

    aget-object v0, v1, v0

    invoke-virtual {v3, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->f:Ll9/e;

    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;Ljava/lang/Throwable;Z)V
    .locals 3

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
    if-eqz p0, :cond_7

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_1
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 43
    .line 44
    const-string v0, "mPersonalInfoFragmentBinding.profileContainer"

    .line 45
    .line 46
    const v1, 0x7f0a02dc

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->c:Landroid/content/Context;

    .line 55
    .line 56
    if-eqz p1, :cond_7

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :cond_2
    sget p2, Lke/d;->a:I

    .line 69
    .line 70
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->d:Landroidx/core/widget/NestedScrollView;

    .line 75
    .line 76
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const p2, 0x7f060025

    .line 80
    .line 81
    .line 82
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const v0, 0x7f060097

    .line 87
    .line 88
    .line 89
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const v0, 0x7f130066

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v0, v2, p2, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-eqz p0, :cond_7

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->e:Landroid/widget/ProgressBar;

    .line 111
    .line 112
    const/16 p2, 0x8

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 122
    .line 123
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->d:Landroidx/core/widget/NestedScrollView;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 142
    .line 143
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 144
    .line 145
    const/4 p2, 0x0

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 154
    .line 155
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 156
    .line 157
    new-instance p2, Lnf/a;

    .line 158
    .line 159
    const/4 v0, 0x4

    .line 160
    invoke-direct {p2, v0, p0}, Lnf/a;-><init>(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    if-eqz p2, :cond_6

    .line 168
    .line 169
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->c:Landroid/content/Context;

    .line 170
    .line 171
    if-eqz p1, :cond_7

    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    if-eqz p2, :cond_5

    .line 178
    .line 179
    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    :cond_5
    sget p2, Lke/d;->a:I

    .line 184
    .line 185
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->d:Landroidx/core/widget/NestedScrollView;

    .line 190
    .line 191
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const p2, 0x7f060088

    .line 195
    .line 196
    .line 197
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    const p2, 0x7f130215

    .line 202
    .line 203
    .line 204
    const v0, 0x7f08013e

    .line 205
    .line 206
    .line 207
    invoke-static {p0, p2, v2, v0, p1}, Lke/d$a;->a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    if-eqz p0, :cond_7

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->K()V

    .line 218
    .line 219
    .line 220
    :cond_7
    :goto_0
    return-void
.end method

.method public static final F(Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;->getUserProfileResult()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->e:Landroid/widget/ProgressBar;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 26
    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 37
    .line 38
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->d:Landroidx/core/widget/NestedScrollView;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;->getUserProfileResult()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->J(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->K()V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public static final G(Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;->getUserProfileResult()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->e:Landroid/widget/ProgressBar;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 26
    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 37
    .line 38
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->d:Landroidx/core/widget/NestedScrollView;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;->getUserProfileResult()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->J(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;)V

    .line 58
    .line 59
    .line 60
    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->d:Z

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->c:Landroid/content/Context;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->e:Lke/d;

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->isShown()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move-object v0, v1

    .line 85
    :goto_0
    if-eqz v0, :cond_1

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    const v1, 0x7f0a02dc

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_2
    sget v0, Lke/d;->a:I

    .line 107
    .line 108
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->d:Landroidx/core/widget/NestedScrollView;

    .line 113
    .line 114
    const-string v2, "mPersonalInfoFragmentBinding.profileContainer"

    .line 115
    .line 116
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const v2, 0x7f060129

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    const v2, 0x7f130216

    .line 127
    .line 128
    .line 129
    const v3, 0x7f080140

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v2, v1, v3, p1}, Lke/d$a;->a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->e:Lke/d;

    .line 137
    .line 138
    if-eqz p1, :cond_4

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->K()V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_1
    return-void
.end method

.method public static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "-"

    const-string v3, "dd.MM.yyyy"

    if-lt v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Landroidx/browser/trusted/b;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/camera/camera2/internal/compat/params/b;->h(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Landroidx/browser/trusted/c;->l()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    const-string v4, "ofPattern(\"dd.MM.yyyy\")"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/appcompat/widget/k;->m(Ljava/time/LocalDateTime;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-object p0, v2

    :goto_0
    const-string v0, "{\n            try {\n    \u2026}\n            }\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :try_start_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string p0, "{\n            try {\n    \u2026\"\n            }\n        }"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v2

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->g:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    return-object v0
.end method

.method public final J(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->getUserProfileInfo()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz v1, :cond_a

    .line 11
    .line 12
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->getUserProfileInfo()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->getIdentityInformation()Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v1, v0

    .line 24
    :goto_1
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->getAddressInformation()Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object p1, v0

    .line 32
    :goto_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->k:Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;->getNameSurname()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move-object v3, v0

    .line 46
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->i:Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;->getFatherName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move-object v3, v0

    .line 63
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->j:Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;->getMotherName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    goto :goto_5

    .line 79
    :cond_5
    move-object v3, v0

    .line 80
    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->g:Landroid/widget/TextView;

    .line 88
    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;->getBirthDate()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    goto :goto_6

    .line 96
    :cond_6
    move-object v3, v0

    .line 97
    :goto_6
    invoke-static {v3}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->H(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->h:Landroid/widget/TextView;

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;->getBirthPlace()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    goto :goto_7

    .line 117
    :cond_7
    move-object v3, v0

    .line 118
    :goto_7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->f:Landroid/widget/TextView;

    .line 126
    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;->getDetailAddress()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    goto :goto_8

    .line 134
    :cond_8
    move-object p1, v0

    .line 135
    :goto_8
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->l:Landroid/widget/TextView;

    .line 143
    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;->getInformationUpdateTime()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :cond_9
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->H(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->c:Landroid/widget/Button;

    .line 162
    .line 163
    new-instance v0, Lbe/d;

    .line 164
    .line 165
    const/4 v1, 0x5

    .line 166
    invoke-direct {v0, v1, p0}, Lbe/d;-><init>(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_a
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->K()V

    .line 174
    .line 175
    .line 176
    :goto_9
    return-void
.end method

.method public final K()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->e:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 17
    .line 18
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->d:Landroidx/core/widget/NestedScrollView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->f:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfg/f;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;)V

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

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->c:Landroid/content/Context;

    .line 14
    .line 15
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->f:Ll9/e;

    .line 16
    .line 17
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lfg/f;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance p2, Lfg/g;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p2, p1, v0}, Lfg/g;-><init>(Lfg/f;Lp9/d;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p1, Lr0/z;->c:Lnc/a0;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x3

    .line 36
    invoke-static {v1, v0, v2, p2, v3}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 37
    .line 38
    .line 39
    new-instance p2, Lfg/h;

    .line 40
    .line 41
    invoke-direct {p2, p1, v0}, Lfg/h;-><init>(Lfg/f;Lp9/d;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lfg/f;->h:Lfg/l;

    .line 45
    .line 46
    invoke-static {v1, p1, p2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
