.class public final Lmf/a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;)V
    .locals 0

    iput-object p1, p0, Lmf/a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    .line 2
    .line 3
    const-string v0, "aboutPage"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmf/a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;

    .line 9
    .line 10
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->a:Lgf/b;

    .line 11
    .line 12
    const-string v2, "mAboutPageBinding.dashboardContainer"

    .line 13
    .line 14
    const v3, 0x7f0a02dc

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v1}, Lgf/b;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->getUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, "folderUrl"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, "pageName"

    .line 40
    .line 41
    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Landroid/content/Intent;

    .line 45
    .line 46
    const-string v4, "action.servicepage.open"

    .line 47
    .line 48
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string v1, "serviceName"

    .line 55
    .line 56
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const-string p1, "isCustomPage"

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const-string p1, "isEdkFolder"

    .line 66
    .line 67
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string p1, "isFavMenuActive"

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v1, 0x22

    .line 79
    .line 80
    if-lt p1, v1, :cond_0

    .line 81
    .line 82
    const-string p1, "tr.gov.turkiye.edevlet.kapisi"

    .line 83
    .line 84
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->d:Landroid/content/Context;

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    :cond_2
    sget v1, Lke/d;->a:I

    .line 106
    .line 107
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 112
    .line 113
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const v1, 0x7f060025

    .line 117
    .line 118
    .line 119
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    const v2, 0x7f060097

    .line 124
    .line 125
    .line 126
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    const v2, 0x7f130066

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v2, v4, v1, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->d:Landroid/content/Context;

    .line 144
    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_4

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    :cond_4
    sget v1, Lke/d;->a:I

    .line 158
    .line 159
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 164
    .line 165
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const v1, 0x7f060088

    .line 169
    .line 170
    .line 171
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    const v1, 0x7f130249

    .line 176
    .line 177
    .line 178
    const v2, 0x7f08013e

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v1, v4, v2, p1}, Lke/d$a;->a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_5

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 188
    .line 189
    .line 190
    :cond_5
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 191
    .line 192
    return-object p1
.end method
