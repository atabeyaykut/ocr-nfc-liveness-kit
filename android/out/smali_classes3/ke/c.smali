.class public final synthetic Lke/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lke/c;->a:I

    iput-object p2, p0, Lke/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lke/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Lke/c;->a:I

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lke/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lke/c;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :pswitch_0
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    .line 16
    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->E:I

    .line 20
    .line 21
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "$failingUrl"

    .line 25
    .line 26
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->y()Lgf/b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iput-boolean v2, v4, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->k:Z

    .line 40
    .line 41
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->H()V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v0, "eDevletMobil"

    .line 50
    .line 51
    const-string v1, "true"

    .line 52
    .line 53
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->x()Ltr/gov/turkiye/edevlet/kapisi/login/databinding/ActivityLoginBinding;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/login/databinding/ActivityLoginBinding;->f:Landroid/webkit/WebView;

    .line 61
    .line 62
    invoke-virtual {v0, v3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void

    .line 66
    :pswitch_1
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    .line 67
    .line 68
    check-cast v3, Lio/realm/g0;

    .line 69
    .line 70
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 71
    .line 72
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 p1, 0x0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 89
    :goto_1
    if-nez p1, :cond_3

    .line 90
    .line 91
    new-instance p1, Landroidx/camera/lifecycle/d;

    .line 92
    .line 93
    invoke-direct {p1, v3, v4}, Landroidx/camera/lifecycle/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    iget-boolean p1, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->j:Z

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->c:Landroid/content/Context;

    .line 105
    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    const v1, 0x7f0a02dc

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const/4 v0, 0x0

    .line 123
    :goto_2
    sget v1, Lke/d;->a:I

    .line 124
    .line 125
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 130
    .line 131
    const-string v2, "mMyCityBinding.cityContainer"

    .line 132
    .line 133
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const v2, 0x7f060025

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    const v3, 0x7f060154

    .line 144
    .line 145
    .line 146
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    const v3, 0x7f130103

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v3, v0, v2, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_6

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    new-instance p1, Landroidx/camera/camera2/interop/d;

    .line 164
    .line 165
    const/4 v0, 0x6

    .line 166
    invoke-direct {p1, v0, v3}, Landroidx/camera/camera2/interop/d;-><init>(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, p1}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v4}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const v0, 0x7f0a02d6

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0, v2}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    .line 180
    .line 181
    .line 182
    invoke-static {v4}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 187
    .line 188
    .line 189
    :cond_6
    :goto_3
    return-void

    .line 190
    :pswitch_2
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 191
    .line 192
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    .line 193
    .line 194
    const-string p1, "$customView"

    .line 195
    .line 196
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    if-eqz v4, :cond_7

    .line 200
    .line 201
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvAction()Landroid/widget/TextView;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-interface {v4, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 206
    .line 207
    .line 208
    :cond_7
    return-void

    .line 209
    :goto_4
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;

    .line 210
    .line 211
    check-cast v3, [B

    .line 212
    .line 213
    invoke-static {v4, v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;[BLandroid/view/View;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
