.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;",
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

.field public c:Lv/e;

.field public d:Landroid/content/Context;

.field public e:Llh/b;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final j:I

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;

    .line 5
    .line 6
    const-string v2, "mGenerateQRBinding"

    .line 7
    .line 8
    const-string v3, "getMGenerateQRBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->l:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d007b

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$a;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Llh/e;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$i;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$i;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$j;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$j;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$i;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->l:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$j;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->b:Ll9/e;

    const/16 v0, 0x32

    iput v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->j:I

    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->c:Lv/e;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 67
    .line 68
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 78
    .line 79
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 89
    .line 90
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 91
    .line 92
    new-instance v0, Lzd/d;

    .line 93
    .line 94
    const/16 v1, 0x11

    .line 95
    .line 96
    invoke-direct {v0, v1, p0}, Lzd/d;-><init>(ILjava/lang/Object;)V

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 127
    .line 128
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 172
    .line 173
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 181
    .line 182
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

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


# virtual methods
.method public final F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->l:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    return-object v0
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
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$h;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$h;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;)V

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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->b:Ll9/e;

    .line 21
    .line 22
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v2, v0

    .line 27
    check-cast v2, Llh/e;

    .line 28
    .line 29
    sget-object v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$b;

    .line 30
    .line 31
    sget-object v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$c;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;

    .line 39
    .line 40
    invoke-direct {v6, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;Lp9/d;)V

    .line 41
    .line 42
    .line 43
    move-object v1, p0

    .line 44
    invoke-virtual/range {v1 .. v6}, Lee/a;->B(Laf/c;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/q;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    move-object v2, p1

    .line 52
    check-cast v2, Llh/e;

    .line 53
    .line 54
    sget-object v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$e;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$e;

    .line 55
    .line 56
    sget-object v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$f;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$f;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$g;

    .line 63
    .line 64
    invoke-direct {v6, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$g;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;Lp9/d;)V

    .line 65
    .line 66
    .line 67
    move-object v1, p0

    .line 68
    invoke-virtual/range {v1 .. v6}, Lee/a;->B(Laf/c;Lkotlin/jvm/internal/r;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/q;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->e:Llh/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->e:Llh/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->e:Llh/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->d:Landroid/content/Context;

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
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->c:Lv/e;

    .line 57
    .line 58
    invoke-static {v0, p2}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->c:Lv/e;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->b:Lcom/google/android/material/button/MaterialButton;

    .line 74
    .line 75
    new-instance p2, Lie/d;

    .line 76
    .line 77
    const/16 v0, 0xd

    .line 78
    .line 79
    invoke-direct {p2, v0, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
