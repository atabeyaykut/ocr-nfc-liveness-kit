.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;",
        "Lse/a;",
        "event",
        "Ll9/m;",
        "onEvent",
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
.field public static final synthetic s:[Lda/m;
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
.field public a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

.field public b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

.field public final c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public final d:Ll9/e;

.field public e:Lv/e;

.field public f:Landroid/content/Context;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public j:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;

.field public k:Lzg/a;

.field public l:Lzg/a;

.field public m:Leg/i;

.field public n:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 5
    .line 6
    const-string v2, "mApprovalBinding"

    .line 7
    .line 8
    const-string v3, "getMApprovalBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0051

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lzg/l;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$x;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$x;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$y;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$y;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$x;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$y;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->d:Ll9/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 67
    .line 68
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 78
    .line 79
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 89
    .line 90
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 91
    .line 92
    new-instance v0, Lie/d;

    .line 93
    .line 94
    const/16 v1, 0xa

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 127
    .line 128
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 172
    .line 173
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 181
    .line 182
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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

.method public static final F(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

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
    if-eqz p0, :cond_8

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_2
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 47
    .line 48
    const-string v1, "mApprovalBinding.mktApprovalPageParentContainer"

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->f:Landroid/content/Context;

    .line 54
    .line 55
    if-eqz p1, :cond_8

    .line 56
    .line 57
    sget v0, Lke/d;->a:I

    .line 58
    .line 59
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->e:Landroidx/core/widget/NestedScrollView;

    .line 64
    .line 65
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const v0, 0x7f060025

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const v1, 0x7f060097

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const v1, 0x7f130066

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v1, v2, v0, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-eqz p0, :cond_8

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 100
    .line 101
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :cond_4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->f:Landroid/content/Context;

    .line 106
    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const/4 v0, 0x0

    .line 119
    goto :goto_1

    .line 120
    :cond_6
    :goto_0
    const/4 v0, 0x1

    .line 121
    :goto_1
    if-eqz v0, :cond_7

    .line 122
    .line 123
    const v0, 0x7f130249

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :cond_7
    const-string v0, "if (errorMessage.isNullO\u2026rrorMessage\n            }"

    .line 131
    .line 132
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget v0, Lke/d;->a:I

    .line 136
    .line 137
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->e:Landroidx/core/widget/NestedScrollView;

    .line 142
    .line 143
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const v0, 0x7f060088

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-static {p0, v2, p1}, Lke/d$a;->b(Landroid/view/ViewGroup;Ljava/lang/String;I)Lke/d;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-eqz p0, :cond_8

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 160
    .line 161
    .line 162
    :cond_8
    :goto_2
    return-void
.end method

.method public static final G(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->e:Landroidx/core/widget/NestedScrollView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 17
    .line 18
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 28
    .line 29
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lv/e;->show()V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    return-object v0
.end method

.method public final I()Lzg/l;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->d:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzg/l;

    return-object v0
.end method

.method public final J()V
    .locals 7

    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->m()V

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v0, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getReport()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->m:Leg/i;

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getVehiclePlateCityCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lge/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getVehiclePlateNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPlateCityCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lge/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPlateNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->h:Landroid/widget/TextView;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getAccidentDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lge/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->m:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->f:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->m:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$v;

    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$v;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h(Lx9/l;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->p:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->m:Leg/i;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Leg/i;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->o:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getRole()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    const-string v3, "GUEST"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_a

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->p:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_9

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->m:Leg/i;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Leg/i;->e()Leg/c;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Leg/c;->a()Leg/m;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_a

    :cond_9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->p:Ljava/lang/String;

    goto :goto_b

    :cond_a
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->m:Leg/i;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Leg/i;->e()Leg/c;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Leg/c;->a()Leg/m;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Leg/m;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_b
    move-object v1, v2

    :goto_9
    if-eqz v1, :cond_c

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->m:Leg/i;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Leg/i;->e()Leg/c;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Leg/c;->a()Leg/m;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Leg/m;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_c
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->m:Leg/i;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Leg/i;->e()Leg/c;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Leg/c;->a()Leg/m;

    move-result-object v1

    if-eqz v1, :cond_d

    :goto_a
    invoke-virtual {v1}, Leg/m;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_d
    move-object v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getParticipants()Lio/realm/q0;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getRole()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_f
    move-object v5, v2

    :goto_d
    const-string v6, "HOST"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getPartyRole()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v5

    iget-object v5, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getIdentityNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v5

    iget-object v5, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getPlate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    goto :goto_e

    :cond_10
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getPartyRole()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v5

    iget-object v5, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getIdentityNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v5

    iget-object v5, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getPlate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    :goto_e
    invoke-static {v1}, Lge/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_11
    move-object v1, v2

    :goto_f
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->l:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->f:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-direct {v1, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->j:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->l:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->j:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;

    const-string v3, "mServiceListController"

    if-eqz v1, :cond_15

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_14

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->j:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    goto :goto_10

    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v2

    :cond_14
    :goto_10
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->b:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lxf/d;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lxf/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_11

    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v2

    :cond_16
    :goto_11
    return-void
.end method

.method public final K([B)V
    .locals 5

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "inflater.inflate(R.layou\u2026age_preview_dialog, null)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a01de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v4, "dialogText"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lge/b;->b(Landroid/widget/ImageView;[B)V

    new-instance p1, Lv/e;

    invoke-direct {p1, v0}, Lv/e;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    invoke-virtual {p1}, Lv/e;->show()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lv/e;->b(Z)V

    const v0, 0x7f130031

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1, v0, v3, v3, v1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$w;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$w;

    const/4 v1, 0x3

    invoke-static {p1, v3, v3, v0, v1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->n:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 13
    .line 14
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 26
    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->e:Landroidx/core/widget/NestedScrollView;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final M()V
    .locals 4

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->k:Lzg/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lzg/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "mApprovalBinding.imgHitPoint"

    if-nez v0, :cond_2

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->k:Lzg/a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lzg/a;->b:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v3

    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contentArray"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lge/b;->b(Landroid/widget/ImageView;[B)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->c:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Ltf/c;

    invoke-direct {v3, v0, p0, v1}, Ltf/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0800fc

    invoke-static {v0, v1}, Lge/b;->a(Landroid/widget/ImageView;I)V

    :goto_1
    return-void
.end method

.method public final N()V
    .locals 4

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->l:Lzg/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lzg/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "mApprovalBinding.imgScenarioPoint"

    if-nez v0, :cond_2

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->l:Lzg/a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lzg/a;->b:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->d:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scenarioArray"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lge/b;->b(Landroid/widget/ImageView;[B)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->d:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lcg/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0}, Lcg/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentApprovalBinding;->d:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0800fc

    invoke-static {v0, v1}, Lge/b;->a(Landroid/widget/ImageView;I)V

    :goto_1
    return-void
.end method

.method public final invalidate()V
    .locals 2

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    move-result-object v0

    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$a;

    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

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
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$u;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$u;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$l;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$l;

    .line 25
    .line 26
    sget-object v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$m;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$m;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;

    .line 34
    .line 35
    invoke-direct {v6, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 36
    .line 37
    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v1 .. v6}, Lee/a;->B(Laf/c;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/q;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    sget-object v9, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$o;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$o;

    .line 47
    .line 48
    sget-object v10, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$p;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$p;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    new-instance v12, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;

    .line 55
    .line 56
    invoke-direct {v12, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 57
    .line 58
    .line 59
    move-object v7, p0

    .line 60
    invoke-virtual/range {v7 .. v12}, Lee/a;->B(Laf/c;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/q;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$r;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$r;

    .line 68
    .line 69
    sget-object v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$s;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$s;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;

    .line 76
    .line 77
    invoke-direct {v5, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 78
    .line 79
    .line 80
    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v5}, Lee/a;->B(Laf/c;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/q;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    sget-object v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$c;

    .line 89
    .line 90
    sget-object v9, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$d;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$d;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    new-instance v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$e;

    .line 97
    .line 98
    invoke-direct {v11, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$e;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 99
    .line 100
    .line 101
    move-object v6, p0

    .line 102
    invoke-virtual/range {v6 .. v11}, Lee/a;->B(Laf/c;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/q;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$f;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$f;

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$g;

    .line 116
    .line 117
    invoke-direct {v3, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$g;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0, v1, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$h;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$h;

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$i;

    .line 134
    .line 135
    invoke-direct {v3, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$i;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0, v1, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$j;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$j;

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;

    .line 152
    .line 153
    invoke-direct {v3, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0, v1, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final onEvent(Lse/a;)V
    .locals 6
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p1, Lse/a;->a:Z

    .line 4
    .line 5
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v4, v2

    .line 23
    check-cast v4, Lzg/a;

    .line 24
    .line 25
    iget-object v4, v4, Lzg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListInfo;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v4, v3

    .line 41
    :goto_0
    iget-object v5, p1, Lse/a;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object v2, v3

    .line 51
    :goto_1
    check-cast v2, Lzg/a;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    iget-object p1, p1, Lse/a;->c:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    if-eqz v2, :cond_4

    .line 61
    .line 62
    const-string p1, ""

    .line 63
    .line 64
    :goto_2
    invoke-static {v2, p1}, Lzg/a;->a(Lzg/a;Ljava/lang/String;)Lzg/a;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    move-object p1, v3

    .line 70
    :goto_3
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iget-object v0, p1, Lzg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListInfo;->getContentType()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    move-object v0, v3

    .line 88
    :goto_4
    if-eqz v0, :cond_d

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const v2, -0x3eef1c1e

    .line 95
    .line 96
    .line 97
    if-eq v1, v2, :cond_a

    .line 98
    .line 99
    const v2, 0x6868611e

    .line 100
    .line 101
    .line 102
    if-eq v1, v2, :cond_8

    .line 103
    .line 104
    const v2, 0x6a4133c0

    .line 105
    .line 106
    .line 107
    if-eq v1, v2, :cond_6

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_6
    const-string v1, "ACCIDENT_SCENARIO"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_7

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->l:Lzg/a;

    .line 120
    .line 121
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->N()V

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_8
    const-string v1, "DASHPOINT"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_9

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_9
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->k:Lzg/a;

    .line 135
    .line 136
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->M()V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_a
    const-string v1, "ACCIDENT_PHOTO"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    if-nez v0, :cond_b

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_b
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->g:Ljava/util/ArrayList;

    .line 150
    .line 151
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_d

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->j:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;

    .line 161
    .line 162
    if-eqz p1, :cond_c

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_c
    const-string p1, "mServiceListController"

    .line 169
    .line 170
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v3

    .line 174
    :cond_d
    :goto_5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->L()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->J()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    .line 179
    .line 180
    :catch_0
    :cond_e
    return-void
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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->f:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const-string v1, "layout_inflater"

    .line 25
    .line 26
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p2, v0

    .line 32
    :goto_0
    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 33
    .line 34
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p2, Landroid/view/LayoutInflater;

    .line 38
    .line 39
    const v1, 0x7f0d0108

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string v0, "inflater.inflate(R.layout.progress_dialog, null)"

    .line 47
    .line 48
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lv/e;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

    .line 57
    .line 58
    invoke-static {v0, p2}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Lv/e;->b(Z)V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 74
    .line 75
    .line 76
    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->n:Ljava/lang/String;

    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public final x([B)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->K([B)V

    return-void
.end method
