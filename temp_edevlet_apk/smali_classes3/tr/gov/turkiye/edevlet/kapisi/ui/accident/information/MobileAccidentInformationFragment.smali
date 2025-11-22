.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;
.super Lee/a;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;",
        "Lee/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;",
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
.field public static final synthetic v:[Lda/m;
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

.field public c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;

.field public d:Lv/e;

.field public e:Lv/e;

.field public f:Landroid/content/Context;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Ljava/io/File;

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    .line 5
    .line 6
    const-string v2, "mInformationBinding"

    .line 7
    .line 8
    const-string v3, "getMInformationBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->v:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    const v0, 0x7f0d005c

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$b;

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 14
    .line 15
    const-class v0, Lhh/g;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$k;

    .line 22
    .line 23
    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$k;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$l;

    .line 27
    .line 28
    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$l;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$k;Lda/d;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->v:[Lda/m;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    aget-object v0, v0, v1

    .line 35
    .line 36
    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$l;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->b:Ll9/e;

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->g:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-array v0, v1, [Lhh/i;

    .line 50
    .line 51
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 52
    .line 53
    new-instance v7, Lhh/i;

    .line 54
    .line 55
    const-string v2, " "

    .line 56
    .line 57
    const-string v1, "EMPTY"

    .line 58
    .line 59
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v4, " "

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    const-string v6, " "

    .line 66
    .line 67
    move-object v1, v7

    .line 68
    invoke-direct/range {v1 .. v6}, Lhh/i;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    aput-object v7, v0, v1

    .line 73
    .line 74
    invoke-static {v0}, Lb8/f;->Y([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->h:Ljava/util/ArrayList;

    .line 79
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->j:Ljava/util/ArrayList;

    .line 86
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->k:Ljava/util/ArrayList;

    .line 93
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static final E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->d:Lv/e;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 67
    .line 68
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 78
    .line 79
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 89
    .line 90
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 91
    .line 92
    new-instance p1, Lhh/b;

    .line 93
    .line 94
    invoke-direct {p1, v1}, Lhh/b;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 106
    .line 107
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 125
    .line 126
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 136
    .line 137
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_5

    .line 149
    .line 150
    :cond_4
    const/4 v1, 0x1

    .line 151
    :cond_5
    if-nez v1, :cond_7

    .line 152
    .line 153
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 158
    .line 159
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 179
    .line 180
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 181
    .line 182
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 190
    .line 191
    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public final F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->v:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    return-object v0
.end method

.method public final G()Lhh/g;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->b:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhh/g;

    return-object v0
.end method

.method public final H(I)V
    .locals 4

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget v1, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->f:Landroidx/core/widget/NestedScrollView;

    const-string v2, "mInformationBinding.mktA\u2026nformationParentContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f060025

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f060097

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v0}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    new-instance v0, Ln2/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ln2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lo2/a;->a:Lo2/a;

    .line 7
    .line 8
    iput-object v1, v0, Ln2/a;->b:Lo2/a;

    .line 9
    .line 10
    const-string v1, "image/jpeg"

    .line 11
    .line 12
    const-string v2, "image/png"

    .line 13
    .line 14
    const-string v3, "image/jpg"

    .line 15
    .line 16
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Ln2/a;->c:[Ljava/lang/String;

    .line 21
    .line 22
    const/16 v1, 0x964

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ln2/a;->a(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final invalidate()V
    .locals 2

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->G()Lhh/g;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$a;

    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;)V

    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    return-void
.end method

.method public final m(Lhh/i;)V
    .locals 8

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->h:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance p1, Lhh/i;

    const-string v3, " "

    const-string v1, "EMPTY"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, " "

    const/4 v6, 0x1

    const-string v7, " "

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lhh/i;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/airbnb/epoxy/Typed2EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "mServiceListController"

    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    const/16 p1, 0x40

    if-eq p2, p1, :cond_3

    sget-object p1, Lyd/a;->a:Lyd/a$a;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "task canncelled"

    invoke-virtual {p1, p3, p2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->e:Lv/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lv/e;->show()V

    :cond_1
    const/4 p1, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p3

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;

    invoke-direct {v1, p0, p2, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;Landroid/net/Uri;Lp9/d;)V

    const/4 p2, 0x3

    invoke-static {p3, p1, v0, v1, p2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    move-result-object p1

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$d;

    invoke-direct {p2, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;)V

    invoke-virtual {p1, p2}, Lnc/g1;->o(Lx9/l;)Lnc/k0;

    :cond_3
    :goto_1
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
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->G()Lhh/g;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$e;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$e;

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
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$f;

    .line 16
    .line 17
    invoke-direct {v3, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$f;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;Lp9/d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v2, v3}, Lee/a;->C(Laf/c;Lkotlin/jvm/internal/r;Lr0/e1;Lx9/p;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->G()Lhh/g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$g;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$g;

    .line 28
    .line 29
    sget-object v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$h;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$h;

    .line 30
    .line 31
    sget-object v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$i;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$i;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lee/a;->D(Ljava/lang/String;)Lr0/e1;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$j;

    .line 38
    .line 39
    invoke-direct {v5, p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$j;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;Lp9/d;)V

    .line 40
    .line 41
    .line 42
    const-string v6, "$this$onEach"

    .line 43
    .line 44
    invoke-static {p1, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v6, "prop1"

    .line 48
    .line 49
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v6, "prop2"

    .line 53
    .line 54
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v6, "prop3"

    .line 58
    .line 59
    invoke-static {v3, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 63
    .line 64
    .line 65
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    :cond_0
    move-object v6, p0

    .line 70
    :goto_0
    iget-object v7, p1, Lr0/z;->d:Lr0/r;

    .line 71
    .line 72
    invoke-interface {v7}, Lr0/r;->a()Lkotlinx/coroutines/flow/w;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    new-instance v8, Lr0/p0;

    .line 77
    .line 78
    invoke-direct {v8, v7, v0, v2, v3}, Lr0/p0;-><init>(Lkotlinx/coroutines/flow/f;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$g;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$h;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$i;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v8}, Lb8/f;->z(Lkotlinx/coroutines/flow/f;)Lkotlinx/coroutines/flow/f;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const/4 v8, 0x3

    .line 86
    new-array v8, v8, [Lda/l;

    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    aput-object v0, v8, v9

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    aput-object v2, v8, v0

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    aput-object v3, v8, v0

    .line 96
    .line 97
    invoke-virtual {v4, v8}, Lr0/h;->a([Lda/l;)Lr0/h;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v2, Lr0/q0;

    .line 102
    .line 103
    invoke-direct {v2, v5, v1}, Lr0/q0;-><init>(Lx9/r;Lp9/d;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v7, v6, v0, v2}, Lr0/z;->b(Lkotlinx/coroutines/flow/f;Landroidx/lifecycle/LifecycleOwner;Lr0/h;Lx9/p;)Lnc/t1;

    .line 107
    .line 108
    .line 109
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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const-string v1, "layout_inflater"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 26
    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Landroid/view/LayoutInflater;

    .line 31
    .line 32
    const v1, 0x7f0d0108

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "inflater.inflate(R.layout.progress_dialog, null)"

    .line 40
    .line 41
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lv/e;

    .line 45
    .line 46
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->d:Lv/e;

    .line 55
    .line 56
    invoke-static {v2, v1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->d:Lv/e;

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    invoke-virtual {v1, p2}, Lv/e;->b(Z)V

    .line 64
    .line 65
    .line 66
    :cond_0
    const v1, 0x7f0d00f7

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v1, "inflater.inflate(R.layou\u2026to_progress_dialog, null)"

    .line 74
    .line 75
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lv/e;

    .line 79
    .line 80
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v2}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->e:Lv/e;

    .line 89
    .line 90
    invoke-static {v1, p1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->e:Lv/e;

    .line 94
    .line 95
    if-eqz p1, :cond_1

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lv/e;->b(Z)V

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 105
    .line 106
    .line 107
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 118
    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentAddress()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    move-object v1, v0

    .line 133
    :goto_0
    if-eqz v1, :cond_4

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_3

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    const/4 v1, 0x0

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 145
    :goto_2
    if-eqz v1, :cond_5

    .line 146
    .line 147
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-eqz v2, :cond_6

    .line 158
    .line 159
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceAddress()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    goto :goto_3

    .line 164
    :cond_5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    if-eqz v2, :cond_6

    .line 175
    .line 176
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getAccidentAddress()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    goto :goto_3

    .line 181
    :cond_6
    move-object v2, v0

    .line 182
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getRole()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iput-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->q:Ljava/lang/String;

    .line 190
    .line 191
    :cond_7
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->q:Ljava/lang/String;

    .line 192
    .line 193
    const-string v2, "HOST"

    .line 194
    .line 195
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_8

    .line 200
    .line 201
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->g:Lcom/google/android/material/card/MaterialCardView;

    .line 206
    .line 207
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_8
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->g:Lcom/google/android/material/card/MaterialCardView;

    .line 216
    .line 217
    const/16 v1, 0x8

    .line 218
    .line 219
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    :goto_4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->i:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 227
    .line 228
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 229
    .line 230
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    .line 231
    .line 232
    const/4 v3, 0x4

    .line 233
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 237
    .line 238
    .line 239
    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;

    .line 240
    .line 241
    invoke-direct {p2, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;)V

    .line 242
    .line 243
    .line 244
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;

    .line 245
    .line 246
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->i:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 251
    .line 252
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;

    .line 253
    .line 254
    const-string v2, "mServiceListController"

    .line 255
    .line 256
    if-eqz v1, :cond_a

    .line 257
    .line 258
    invoke-virtual {p2, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 259
    .line 260
    .line 261
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;

    .line 262
    .line 263
    if-eqz p2, :cond_9

    .line 264
    .line 265
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->h:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {p2, v1, v0}, Lcom/airbnb/epoxy/Typed2EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->b:Landroid/widget/Button;

    .line 275
    .line 276
    new-instance v0, Lcg/b;

    .line 277
    .line 278
    const/4 v1, 0x2

    .line 279
    invoke-direct {v0, v1, p0, p1}, Lcg/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->c:Lcom/google/android/material/button/MaterialButton;

    .line 290
    .line 291
    new-instance v0, Ls1/b;

    .line 292
    .line 293
    invoke-direct {v0, v1, p0, p1}, Ls1/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v0
.end method
