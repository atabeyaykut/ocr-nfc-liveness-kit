.class public final synthetic Ltf/c;
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

    iput p1, p0, Ltf/c;->a:I

    iput-object p2, p0, Ltf/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Ltf/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Ltf/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "this$0"

    .line 5
    .line 6
    iget-object v3, p0, Ltf/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Ltf/c;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 15
    .line 16
    check-cast v3, [B

    .line 17
    .line 18
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    .line 19
    .line 20
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "contentArray"

    .line 24
    .line 25
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->K([B)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    check-cast v4, Landroidx/camera/core/Camera;

    .line 33
    .line 34
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

    .line 35
    .line 36
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->k:I

    .line 37
    .line 38
    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v4}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-boolean v0, v3, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->f:Z

    .line 46
    .line 47
    xor-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    invoke-interface {p1, v0}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lm5/a;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_2
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    .line 54
    .line 55
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 56
    .line 57
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 58
    .line 59
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "$cityItem"

    .line 63
    .line 64
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->f:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/view/View;

    .line 82
    .line 83
    iget-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->g:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    iput-boolean v2, v3, Lh8/b;->c:Z

    .line 101
    .line 102
    iget-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->h:Le8/b;

    .line 103
    .line 104
    if-eqz v2, :cond_0

    .line 105
    .line 106
    invoke-virtual {v2}, Le8/b;->f()V

    .line 107
    .line 108
    .line 109
    iget-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-static {v1}, Lkotlin/jvm/internal/z;->a(Ljava/util/ArrayList;)Ljava/util/Collection;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_0
    const-string p1, "mCityListFastAdapter"

    .line 128
    .line 129
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v1

    .line 133
    :goto_0
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    .line 134
    .line 135
    check-cast v3, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 136
    .line 137
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->j:[Lda/m;

    .line 138
    .line 139
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string p1, "$birthPicker"

    .line 143
    .line 144
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :try_start_0
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->c:Landroidx/core/widget/NestedScrollView;

    .line 152
    .line 153
    const-string v0, "mCardInfoFragmentBinding.cardInfoContainer"

    .line 154
    .line 155
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->x(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    :catch_0
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-eqz p1, :cond_1

    .line 175
    .line 176
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v3, v1, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
