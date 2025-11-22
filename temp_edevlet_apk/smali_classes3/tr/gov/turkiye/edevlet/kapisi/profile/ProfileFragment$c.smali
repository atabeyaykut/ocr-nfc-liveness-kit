.class public final Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/h;->a(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    const-string v0, "menuItem"

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
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    const v1, 0x7f0a0265

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->h:Landroid/content/Context;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lv/e;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const v4, 0x7f13021d

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x6

    .line 32
    const v6, 0x7f13021e

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v1, v0, v5, v6}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v5, Lfg/b;

    .line 40
    .line 41
    invoke-direct {v5, p1, v3}, Lfg/b;-><init>(Landroid/content/Context;Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x2

    .line 45
    invoke-static {v1, v4, v0, v5, p1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f13021c

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v0, Lfg/c;->a:Lfg/c;

    .line 56
    .line 57
    invoke-static {v1, p1, v0}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lv/e;->show()V

    .line 61
    .line 62
    .line 63
    :cond_0
    const-string p1, "Logout"

    .line 64
    .line 65
    invoke-virtual {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->J(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    const v1, 0x7f0a0263

    .line 70
    .line 71
    .line 72
    if-ne p1, v1, :cond_5

    .line 73
    .line 74
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->l:[Lda/m;

    .line 75
    .line 76
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->d:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    const-string v0, "tr"

    .line 81
    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const-string v0, "en"

    .line 90
    .line 91
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    const-string p1, "edk-profil-yardim-en"

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    :goto_0
    const-string p1, "edk-profil-yardim"

    .line 101
    .line 102
    :goto_1
    const v0, 0x7f13022d

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "getString(R.string.profile_settings_help)"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0, p1, v2}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->M(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    const-string p1, "Help_Screen"

    .line 118
    .line 119
    invoke-virtual {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->K(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p1, "Help"

    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->J(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    const-string p1, "mLanguage"

    .line 129
    .line 130
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_5
    :goto_2
    return v2
.end method

.method public final synthetic onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/h;->b(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method
