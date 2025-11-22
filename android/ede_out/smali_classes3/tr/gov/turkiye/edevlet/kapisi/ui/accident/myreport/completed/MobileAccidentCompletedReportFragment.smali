.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;
.implements Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemUIController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemUIController$a;",
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
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public final b:Ll9/e;

.field public c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController;

.field public d:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemUIController;

.field public e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

.field public f:Z

.field public g:Lv/e;

.field public h:Landroid/content/Context;

.field public final j:[Ljava/lang/String;

.field public final k:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    .line 5
    .line 6
    const-string v2, "mReportListBinding"

    .line 7
    .line 8
    const-string v3, "getMReportListBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->l:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const v0, 0x7f0d0069

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$a;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lrh/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$n;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$n;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$o;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$o;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$n;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->l:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$o;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->b:Ll9/e;

    const-string v1, "INITIATED"

    const-string v2, "PARTY_COMPLETED"

    const-string v3, "RECEIVED_CONFIRM_REQUEST"

    const-string v4, "MERGED"

    const-string v5, "WAITING_CONFIRM_REQUEST"

    const-string v6, "SCENARIO"

    const-string v7, "DRAFT_INITIATED"

    const-string v8, "HOST_APPROVED"

    const-string v9, "HOST_REJECTED"

    const-string v10, "COMPLETE"

    const-string v11, "WAITING_CONFIRM_RESPONSE"

    const-string v12, "GUEST_APPROVED"

    const-string v13, "GUEST_REJECTED"

    const-string v14, "EXPIRED"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->j:[Ljava/lang/String;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Landroidx/camera/camera2/interop/c;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Landroidx/camera/camera2/interop/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026\n\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->k:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string p1, "action.login.open"

    .line 13
    .line 14
    const v0, 0x8000

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v1, 0x22

    .line 24
    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_7

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_2
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    const/16 v2, 0x8

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 67
    .line 68
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 78
    .line 79
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 89
    .line 90
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 91
    .line 92
    new-instance v0, Lie/d;

    .line 93
    .line 94
    const/16 v1, 0x10

    .line 95
    .line 96
    invoke-direct {v0, v1, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 108
    .line 109
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 127
    .line 128
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 138
    .line 139
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    :cond_4
    const/4 v1, 0x1

    .line 153
    :cond_5
    if-nez v1, :cond_7

    .line 154
    .line 155
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 160
    .line 161
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 172
    .line 173
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 181
    .line 182
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 192
    .line 193
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 194
    .line 195
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    :cond_7
    :goto_0
    return-void
.end method

.method public static final F(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string p1, "action.login.open"

    .line 13
    .line 14
    const v0, 0x8000

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v1, 0x22

    .line 24
    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_5

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->h:Landroid/content/Context;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    sget v0, Lke/d;->a:I

    .line 55
    .line 56
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    .line 62
    const-string v0, "mReportListBinding.mktReportListMainContainer"

    .line 63
    .line 64
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const v0, 0x7f060025

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const v2, 0x7f060097

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const v2, 0x7f130066

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v2, v1, v0, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 99
    .line 100
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :cond_4
    invoke-virtual {p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->K(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_0
    return-void
.end method

.method public static final G(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 7
    .line 8
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "mSelectedInProgressReport"

    .line 12
    .line 13
    if-eqz v2, :cond_19

    .line 14
    .line 15
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getConsolidatedStatus()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v5, 0x0

    .line 24
    new-array v6, v5, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    .line 30
    .line 31
    if-eqz v2, :cond_18

    .line 32
    .line 33
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getConsolidatedStatus()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v6, "INITIATED"

    .line 38
    .line 39
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const v7, 0x7f0a0274

    .line 44
    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    invoke-static/range {p0 .. p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Landroidx/navigation/NavOptions$Builder;

    .line 53
    .line 54
    invoke-direct {v1}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v7, v5}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const v2, 0x7f0a026e

    .line 66
    .line 67
    .line 68
    goto/16 :goto_9

    .line 69
    .line 70
    :cond_0
    const-string v6, "PARTY_COMPLETED"

    .line 71
    .line 72
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    invoke-static/range {p0 .. p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const v1, 0x7f0a026f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_d

    .line 89
    .line 90
    :cond_1
    const-string v6, "RECEIVED_CONFIRM_REQUEST"

    .line 91
    .line 92
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    const/4 v8, 0x1

    .line 97
    const-class v9, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 98
    .line 99
    const-string v10, "realm"

    .line 100
    .line 101
    if-eqz v6, :cond_6

    .line 102
    .line 103
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v9}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 119
    .line 120
    if-eqz v1, :cond_17

    .line 121
    .line 122
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getReport()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getParticipants()Lio/realm/q0;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    move-object v1, v3

    .line 134
    :goto_0
    if-eqz v1, :cond_3

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    xor-int/2addr v2, v8

    .line 141
    if-ne v2, v8, :cond_3

    .line 142
    .line 143
    const/4 v2, 0x1

    .line 144
    goto :goto_1

    .line 145
    :cond_3
    const/4 v2, 0x0

    .line 146
    :goto_1
    if-eqz v2, :cond_17

    .line 147
    .line 148
    const/4 v2, 0x2

    .line 149
    new-array v2, v2, [Ll9/g;

    .line 150
    .line 151
    invoke-virtual {v1, v5}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 156
    .line 157
    if-eqz v4, :cond_4

    .line 158
    .line 159
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getIdentityNumber()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    move-object v4, v3

    .line 165
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    new-instance v6, Ll9/g;

    .line 170
    .line 171
    const-string v7, "identityNumber"

    .line 172
    .line 173
    invoke-direct {v6, v7, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    aput-object v6, v2, v5

    .line 177
    .line 178
    invoke-virtual {v1, v5}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 183
    .line 184
    if-eqz v1, :cond_5

    .line 185
    .line 186
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getPlate()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    new-instance v3, Ll9/g;

    .line 195
    .line 196
    const-string v4, "plateNumber"

    .line 197
    .line 198
    invoke-direct {v3, v4, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    aput-object v3, v2, v8

    .line 202
    .line 203
    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static/range {p0 .. p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const v2, 0x7f0a0273

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v2, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_d

    .line 218
    .line 219
    :cond_6
    const-string v6, "MERGED"

    .line 220
    .line 221
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_7

    .line 226
    .line 227
    const/4 v6, 0x1

    .line 228
    goto :goto_3

    .line 229
    :cond_7
    const-string v6, "WAITING_CONFIRM_REQUEST"

    .line 230
    .line 231
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    :goto_3
    const/4 v11, 0x3

    .line 236
    if-eqz v6, :cond_9

    .line 237
    .line 238
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    .line 239
    .line 240
    if-eqz v1, :cond_8

    .line 241
    .line 242
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getReportPartyId()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-eqz v1, :cond_17

    .line 247
    .line 248
    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    new-instance v2, Lrh/i;

    .line 256
    .line 257
    invoke-direct {v2, v0, v1, v3}, Lrh/i;-><init>(Lrh/d;Ljava/lang/String;Lp9/d;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, v0, Lr0/z;->c:Lnc/a0;

    .line 261
    .line 262
    invoke-static {v1, v3, v5, v2, v11}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 263
    .line 264
    .line 265
    new-instance v2, Lrh/j;

    .line 266
    .line 267
    invoke-direct {v2, v0, v3}, Lrh/j;-><init>(Lrh/d;Lp9/d;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, v0, Lrh/d;->l:Lrh/r;

    .line 271
    .line 272
    invoke-static {v1, v0, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_d

    .line 276
    .line 277
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v3

    .line 281
    :cond_9
    const-string v4, "SCENARIO"

    .line 282
    .line 283
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eqz v4, :cond_a

    .line 288
    .line 289
    const/4 v4, 0x1

    .line 290
    goto :goto_4

    .line 291
    :cond_a
    const-string v4, "DRAFT_INITIATED"

    .line 292
    .line 293
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    :goto_4
    if-eqz v4, :cond_c

    .line 298
    .line 299
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-static {v2, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v9}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v2}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 315
    .line 316
    if-eqz v2, :cond_17

    .line 317
    .line 318
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getScenarioId()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->h:Landroid/content/Context;

    .line 327
    .line 328
    if-eqz v6, :cond_b

    .line 329
    .line 330
    new-instance v3, Lorg/json/JSONObject;

    .line 331
    .line 332
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 333
    .line 334
    .line 335
    const-string v7, "scenarioId"

    .line 336
    .line 337
    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    .line 339
    .line 340
    const-string v7, "partyId"

    .line 341
    .line 342
    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    .line 344
    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v8, "json "

    .line 348
    .line 349
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    new-array v5, v5, [Ljava/lang/Object;

    .line 360
    .line 361
    invoke-virtual {v1, v7, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v5, "https://www.turkiye.gov.tr/sbm-mobil-kaza-tespit-tutanagi?kroki=duzenle&par="

    .line 367
    .line 368
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v2, "&sce="

    .line 375
    .line 376
    invoke-static {v1, v2, v4}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    const v2, 0x7f130192

    .line 381
    .line 382
    .line 383
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    const-string v4, "toString()"

    .line 392
    .line 393
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    const-string v4, "getString(R.string.mkt_toolbar_title)"

    .line 397
    .line 398
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v1, v3, v2}, Lze/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    :cond_b
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->k:Landroidx/activity/result/ActivityResultLauncher;

    .line 406
    .line 407
    invoke-virtual {v0, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_d

    .line 411
    .line 412
    :cond_c
    const-string v1, "HOST_APPROVED"

    .line 413
    .line 414
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_d

    .line 419
    .line 420
    const/4 v1, 0x1

    .line 421
    goto :goto_5

    .line 422
    :cond_d
    const-string v1, "HOST_REJECTED"

    .line 423
    .line 424
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    :goto_5
    if-eqz v1, :cond_e

    .line 429
    .line 430
    const/4 v1, 0x1

    .line 431
    goto :goto_6

    .line 432
    :cond_e
    const-string v1, "COMPLETE"

    .line 433
    .line 434
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    :goto_6
    if-eqz v1, :cond_f

    .line 439
    .line 440
    const/4 v1, 0x1

    .line 441
    goto :goto_7

    .line 442
    :cond_f
    const-string v1, "WAITING_CONFIRM_RESPONSE"

    .line 443
    .line 444
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    :goto_7
    if-eqz v1, :cond_12

    .line 449
    .line 450
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-static {v1, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v9}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 466
    .line 467
    if-eqz v1, :cond_17

    .line 468
    .line 469
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getReport()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    if-eqz v1, :cond_10

    .line 474
    .line 475
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getReportNumber()Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    goto :goto_8

    .line 480
    :cond_10
    move-object v1, v3

    .line 481
    :goto_8
    const v2, 0x7f0a0277

    .line 482
    .line 483
    .line 484
    if-eqz v1, :cond_11

    .line 485
    .line 486
    new-array v3, v8, [Ll9/g;

    .line 487
    .line 488
    new-instance v4, Ll9/g;

    .line 489
    .line 490
    const-string v6, "reportNumber"

    .line 491
    .line 492
    invoke-direct {v4, v6, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    aput-object v4, v3, v5

    .line 496
    .line 497
    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-static/range {p0 .. p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    new-instance v3, Landroidx/navigation/NavOptions$Builder;

    .line 506
    .line 507
    invoke-direct {v3}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v7, v5}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v3}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-virtual {v0, v2, v1, v3}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_d

    .line 522
    .line 523
    :cond_11
    invoke-static/range {p0 .. p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    new-instance v1, Landroidx/navigation/NavOptions$Builder;

    .line 528
    .line 529
    invoke-direct {v1}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1, v7, v5}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v1}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    :goto_9
    invoke-virtual {v0, v2, v3, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_d

    .line 544
    .line 545
    :cond_12
    const-string v1, "GUEST_APPROVED"

    .line 546
    .line 547
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-eqz v1, :cond_13

    .line 552
    .line 553
    goto :goto_a

    .line 554
    :cond_13
    const-string v1, "GUEST_REJECTED"

    .line 555
    .line 556
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v8

    .line 560
    :goto_a
    if-eqz v8, :cond_15

    .line 561
    .line 562
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-static {v1, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v9}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 578
    .line 579
    if-eqz v1, :cond_17

    .line 580
    .line 581
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getReport()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual/range {p0 .. p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v14

    .line 593
    invoke-static {v14}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    if-eqz v2, :cond_14

    .line 597
    .line 598
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getReportId()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    move-object v15, v1

    .line 603
    goto :goto_b

    .line 604
    :cond_14
    move-object v15, v3

    .line 605
    :goto_b
    invoke-static {v15}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getReportId()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v16

    .line 612
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    new-instance v1, Lrh/m;

    .line 619
    .line 620
    const/16 v17, 0x0

    .line 621
    .line 622
    move-object v12, v1

    .line 623
    move-object v13, v0

    .line 624
    invoke-direct/range {v12 .. v17}, Lrh/m;-><init>(Lrh/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp9/d;)V

    .line 625
    .line 626
    .line 627
    iget-object v2, v0, Lr0/z;->c:Lnc/a0;

    .line 628
    .line 629
    invoke-static {v2, v3, v5, v1, v11}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 630
    .line 631
    .line 632
    new-instance v1, Lrh/n;

    .line 633
    .line 634
    invoke-direct {v1, v0, v3}, Lrh/n;-><init>(Lrh/d;Lp9/d;)V

    .line 635
    .line 636
    .line 637
    iget-object v0, v0, Lrh/d;->m:Lzg/j;

    .line 638
    .line 639
    invoke-static {v2, v0, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 640
    .line 641
    .line 642
    goto :goto_d

    .line 643
    :cond_15
    const-string v1, "EXPIRED"

    .line 644
    .line 645
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    if-eqz v1, :cond_16

    .line 650
    .line 651
    const v1, 0x7f130184

    .line 652
    .line 653
    .line 654
    goto :goto_c

    .line 655
    :cond_16
    const v1, 0x7f13017f

    .line 656
    .line 657
    .line 658
    :goto_c
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->K(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    :cond_17
    :goto_d
    return-void

    .line 666
    :cond_18
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    throw v3

    .line 670
    :cond_19
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    throw v3
.end method

.method public static final H(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 16
    .line 17
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 29
    .line 30
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->l:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    return-object v0
.end method

.method public final J()Lrh/d;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->b:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh/d;

    return-object v0
.end method

.method public final K(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->h:Landroid/content/Context;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const p1, 0x7f130249

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v1, "if (errorMessage.isNullO\u2026rrorMessage\n            }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "mReportListBinding.mktReportListMainContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f060088

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v1, p1, v0}, Lke/d$a;->b(Landroid/view/ViewGroup;Ljava/lang/String;I)Lke/d;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_3
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
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$e;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$e;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$f;

    .line 16
    .line 17
    invoke-direct {v3, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$f;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$g;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$g;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$h;

    .line 34
    .line 35
    invoke-direct {v3, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$h;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, v0, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$i;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$i;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;

    .line 52
    .line 53
    invoke-direct {v3, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v0, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$k;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$k;

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;

    .line 70
    .line 71
    invoke-direct {v3, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, v0, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$m;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$m;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;

    .line 88
    .line 89
    invoke-direct {v3, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1, v0, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$c;

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$d;

    .line 106
    .line 107
    invoke-direct {v3, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, v0, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 111
    .line 112
    .line 113
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
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->h:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x1

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string v1, "redirectToCompletedTab"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne p1, p2, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->f:Z

    .line 35
    .line 36
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->h:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const-string v3, "layout_inflater"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v2, v1

    .line 55
    :goto_1
    const-string v3, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 56
    .line 57
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    check-cast v2, Landroid/view/LayoutInflater;

    .line 61
    .line 62
    const v3, 0x7f0d0108

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v3, "inflater.inflate(R.layout.progress_dialog, null)"

    .line 70
    .line 71
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v3, Lv/e;

    .line 75
    .line 76
    invoke-direct {v3, p1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    iput-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 80
    .line 81
    invoke-static {v3, v2}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lv/e;->b(Z)V

    .line 89
    .line 90
    .line 91
    :cond_2
    const/4 p1, 0x2

    .line 92
    new-array p1, p1, [Lqh/a;

    .line 93
    .line 94
    new-instance v2, Lqh/a;

    .line 95
    .line 96
    const v3, 0x7f13017d

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, v0, v3}, Lqh/a;-><init>(II)V

    .line 100
    .line 101
    .line 102
    aput-object v2, p1, v0

    .line 103
    .line 104
    new-instance v2, Lqh/a;

    .line 105
    .line 106
    const v3, 0x7f13017c

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, p2, v3}, Lqh/a;-><init>(II)V

    .line 110
    .line 111
    .line 112
    aput-object v2, p1, p2

    .line 113
    .line 114
    invoke-static {p1}, Lb8/f;->Y([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const/4 v2, 0x0

    .line 123
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    add-int/lit8 v4, v2, 0x1

    .line 134
    .line 135
    if-ltz v2, :cond_5

    .line 136
    .line 137
    check-cast v3, Lqh/a;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    const v6, 0x7f0d00a9

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v6, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    const-string v6, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    .line 151
    .line 152
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    check-cast v5, Lcom/google/android/material/chip/Chip;

    .line 156
    .line 157
    iget v6, v3, Lqh/a;->b:I

    .line 158
    .line 159
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    iget v3, v3, Lqh/a;->a:I

    .line 167
    .line 168
    invoke-virtual {v5, v3}, Landroid/view/View;->setId(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, p2}, Landroid/view/View;->setClickable(Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, p2}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    .line 175
    .line 176
    .line 177
    iget-boolean v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->f:Z

    .line 178
    .line 179
    if-eqz v3, :cond_3

    .line 180
    .line 181
    if-ne v2, p2, :cond_4

    .line 182
    .line 183
    invoke-virtual {v5, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lrh/d;->d()V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_3
    if-nez v2, :cond_4

    .line 195
    .line 196
    invoke-virtual {v5, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    new-instance v3, Lrh/g;

    .line 207
    .line 208
    invoke-direct {v3, v2, v1}, Lrh/g;-><init>(Lrh/d;Lp9/d;)V

    .line 209
    .line 210
    .line 211
    iget-object v6, v2, Lr0/z;->c:Lnc/a0;

    .line 212
    .line 213
    const/4 v7, 0x3

    .line 214
    invoke-static {v6, v1, v0, v3, v7}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 215
    .line 216
    .line 217
    new-instance v3, Lrh/h;

    .line 218
    .line 219
    invoke-direct {v3, v2, v1}, Lrh/h;-><init>(Lrh/d;Lp9/d;)V

    .line 220
    .line 221
    .line 222
    iget-object v2, v2, Lrh/d;->h:Lrh/q;

    .line 223
    .line 224
    invoke-static {v6, v2, v3}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 225
    .line 226
    .line 227
    :cond_4
    :goto_3
    new-instance v2, Lzd/e;

    .line 228
    .line 229
    const/16 v3, 0xe

    .line 230
    .line 231
    invoke-direct {v2, v3, p0}, Lzd/e;-><init>(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMyreportsBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 242
    .line 243
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    move v2, v4

    .line 247
    goto :goto_2

    .line 248
    :cond_5
    invoke-static {}, Lb8/f;->k0()V

    .line 249
    .line 250
    .line 251
    throw v1

    .line 252
    :cond_6
    return-void
.end method

.method public final v(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;)V
    .locals 5

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    .line 7
    .line 8
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->j:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getConsolidatedStatus()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lm9/k;->o0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getReportPartyId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v1, Lrh/k;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, v0, p1, v2}, Lrh/k;-><init>(Lrh/d;Ljava/lang/String;Lp9/d;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x3

    .line 40
    const/4 v3, 0x0

    .line 41
    iget-object v4, v0, Lr0/z;->c:Lnc/a0;

    .line 42
    .line 43
    invoke-static {v4, v2, v3, v1, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 44
    .line 45
    .line 46
    new-instance p1, Lrh/l;

    .line 47
    .line 48
    invoke-direct {p1, v0, v2}, Lrh/l;-><init>(Lrh/d;Lp9/d;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lrh/d;->k:Lrh/s;

    .line 52
    .line 53
    invoke-static {v4, v0, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public final z(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;)V
    .locals 7

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getVehiclePlateCityCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getVehiclePlateNumber()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getReportNumber()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string p1, "plateCityCode"

    .line 30
    .line 31
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "plateNumber"

    .line 35
    .line 36
    invoke-static {v4, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "reportId"

    .line 40
    .line 41
    invoke-static {v5, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lrh/e;

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v1, p1

    .line 48
    move-object v2, v0

    .line 49
    invoke-direct/range {v1 .. v6}, Lrh/e;-><init>(Lrh/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp9/d;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    const/4 v2, 0x0

    .line 54
    iget-object v3, v0, Lr0/z;->c:Lnc/a0;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-static {v3, v4, v2, p1, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 58
    .line 59
    .line 60
    new-instance p1, Lrh/f;

    .line 61
    .line 62
    invoke-direct {p1, v0, v4}, Lrh/f;-><init>(Lrh/d;Lp9/d;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lrh/d;->j:Lrh/a;

    .line 66
    .line 67
    invoke-static {v3, v0, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
