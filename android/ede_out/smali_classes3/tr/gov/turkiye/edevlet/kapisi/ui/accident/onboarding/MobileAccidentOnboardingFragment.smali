.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;",
        "Lee/a;",
        "Ldf/n0;",
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
.field public static final synthetic f:[Lda/m;
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

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;

    .line 5
    .line 6
    const-string v2, "mOnboardingFragment"

    .line 7
    .line 8
    const-string v3, "getMOnboardingFragment()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;"

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
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingViewModel;"

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
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->f:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d006e

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lth/d;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->f:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->b:Ll9/e;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->f:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    return-object v0
.end method

.method public final F()Lth/d;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->b:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lth/d;

    return-object v0
.end method

.method public final G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 17
    .line 18
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 28
    .line 29
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 39
    .line 40
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->c:Lv/e;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_0
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->c:Lv/e;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lv/e;->show()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final invalidate()V
    .locals 2

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->F()Lth/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$a;

    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;)V

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

.method public final onEvent(Ldf/n0;)V
    .locals 6
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ldf/n0;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lqd/b;->l(Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p1, Ldf/n0;->a:Z

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto/16 :goto_a

    .line 29
    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object v2, p1, Ldf/n0;->b:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_1
    const/4 v2, 0x1

    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    if-eqz v1, :cond_8

    .line 45
    .line 46
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 47
    .line 48
    const-string v4, "v0"

    .line 49
    .line 50
    new-array v5, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v1, v4, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p1, Ldf/n0;->c:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 v5, 0x0

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    :goto_2
    const/4 v5, 0x1

    .line 69
    :goto_3
    if-nez v5, :cond_11

    .line 70
    .line 71
    iget-object p1, p1, Ldf/n0;->d:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_5

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_5
    const/4 v2, 0x0

    .line 83
    :cond_6
    :goto_4
    if-nez v2, :cond_11

    .line 84
    .line 85
    const-string v2, "v1"

    .line 86
    .line 87
    new-array v5, v0, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v1, v2, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->c:Lv/e;

    .line 93
    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    invoke-virtual {v1}, Lv/e;->dismiss()V

    .line 97
    .line 98
    .line 99
    :cond_7
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 113
    .line 114
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 124
    .line 125
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 135
    .line 136
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 146
    .line 147
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->d:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 157
    .line 158
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_b

    .line 164
    .line 165
    :cond_8
    if-eqz p1, :cond_9

    .line 166
    .line 167
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 168
    .line 169
    iget-object v4, p1, Ldf/n0;->e:Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    goto :goto_5

    .line 176
    :cond_9
    const/4 v1, 0x0

    .line 177
    :goto_5
    if-eqz v1, :cond_10

    .line 178
    .line 179
    iget-object v1, p1, Ldf/n0;->g:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v4, p1, Ldf/n0;->h:Ljava/lang/String;

    .line 182
    .line 183
    if-eqz v4, :cond_b

    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-nez v5, :cond_a

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_a
    const/4 v5, 0x0

    .line 193
    goto :goto_7

    .line 194
    :cond_b
    :goto_6
    const/4 v5, 0x1

    .line 195
    :goto_7
    if-nez v5, :cond_11

    .line 196
    .line 197
    iget-object p1, p1, Ldf/n0;->f:Ljava/lang/String;

    .line 198
    .line 199
    if-eqz p1, :cond_d

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-nez v5, :cond_c

    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_c
    const/4 v2, 0x0

    .line 209
    :cond_d
    :goto_8
    if-nez v2, :cond_11

    .line 210
    .line 211
    const-string v2, "required"

    .line 212
    .line 213
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->c:Lv/e;

    .line 218
    .line 219
    if-eqz v2, :cond_e

    .line 220
    .line 221
    invoke-virtual {v2}, Lv/e;->dismiss()V

    .line 222
    .line 223
    .line 224
    :cond_e
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 238
    .line 239
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 249
    .line 250
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 260
    .line 261
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 262
    .line 263
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 271
    .line 272
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->f:Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 282
    .line 283
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->e:Landroid/widget/TextView;

    .line 284
    .line 285
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 293
    .line 294
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->d:Landroidx/constraintlayout/widget/Group;

    .line 295
    .line 296
    if-eqz v1, :cond_f

    .line 297
    .line 298
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_f
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 310
    .line 311
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->b:Landroid/widget/Button;

    .line 312
    .line 313
    new-instance v0, Lt1/f;

    .line 314
    .line 315
    const/16 v1, 0xd

    .line 316
    .line 317
    invoke-direct {v0, v1, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    .line 322
    .line 323
    :goto_9
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 328
    .line 329
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->c:Landroid/widget/Button;

    .line 330
    .line 331
    new-instance v0, Lxf/d;

    .line 332
    .line 333
    const/16 v1, 0xe

    .line 334
    .line 335
    invoke-direct {v0, v1, p0}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_10
    :goto_a
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->F()Lth/d;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {p1}, Lth/d;->d()V

    .line 347
    .line 348
    .line 349
    :cond_11
    :goto_b
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
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->d:Landroid/content/Context;

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
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->c:Lv/e;

    .line 57
    .line 58
    invoke-static {v0, p2}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->c:Lv/e;

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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->d:Landroid/content/Context;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->G()V

    .line 74
    .line 75
    .line 76
    new-instance p2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 77
    .line 78
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateModuleCheckWorker;

    .line 79
    .line 80
    invoke-direct {p2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 84
    .line 85
    const-wide/16 v1, 0x3e8

    .line 86
    .line 87
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 88
    .line 89
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/work/WorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 94
    .line 95
    invoke-virtual {p2}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string v0, "OneTimeWorkRequestBuilde\u2026                ).build()"

    .line 100
    .line 101
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast p2, Landroidx/work/OneTimeWorkRequest;

    .line 105
    .line 106
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, p2}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->b:Landroid/widget/Button;

    .line 118
    .line 119
    new-instance p2, Lie/d;

    .line 120
    .line 121
    const/16 v0, 0x11

    .line 122
    .line 123
    invoke-direct {p2, v0, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
