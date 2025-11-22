.class public final Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lfg/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lfg/e;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-boolean v0, p1, Lfg/e;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;

    .line 13
    .line 14
    iget-object v4, p1, Lfg/e;->d:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    :try_start_1
    iget-object p1, p1, Lfg/e;->b:Lr0/b;

    .line 19
    .line 20
    instance-of v0, p1, Lr0/d1;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    instance-of v0, p1, Lr0/k;

    .line 27
    .line 28
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    instance-of v0, p1, Lr0/c1;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-static {v3, v4}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->G(Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;)V

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    instance-of v0, p1, Lr0/i;

    .line 40
    .line 41
    if-eqz v0, :cond_7

    .line 42
    .line 43
    check-cast p1, Lr0/i;

    .line 44
    .line 45
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 46
    .line 47
    invoke-static {v3, p1, v2}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;Ljava/lang/Throwable;Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    iget-object p1, p1, Lfg/e;->a:Lr0/b;

    .line 52
    .line 53
    instance-of v0, p1, Lr0/d1;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    instance-of v2, p1, Lr0/k;

    .line 59
    .line 60
    :goto_1
    if-eqz v2, :cond_5

    .line 61
    .line 62
    :goto_2
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->g:[Lda/m;

    .line 63
    .line 64
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 69
    .line 70
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 71
    .line 72
    const/16 v0, 0x8

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->d:Landroidx/core/widget/NestedScrollView;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 91
    .line 92
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->I()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentPersonalInfoBinding;->e:Landroid/widget/ProgressBar;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    instance-of v0, p1, Lr0/c1;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    invoke-static {v3, v4}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    instance-of v0, p1, Lr0/i;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    check-cast p1, Lr0/i;

    .line 120
    .line 121
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 122
    .line 123
    invoke-static {v3, p1, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/profile/personal/PersonalInfoFragment;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .line 130
    .line 131
    :cond_7
    :goto_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 132
    .line 133
    return-object p1
.end method
