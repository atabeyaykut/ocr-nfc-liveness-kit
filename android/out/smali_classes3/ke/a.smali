.class public final synthetic Lke/a;
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

    iput p1, p0, Lke/a;->a:I

    iput-object p2, p0, Lke/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lke/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lke/a;->a:I

    .line 3
    .line 4
    const-string v2, "this$0"

    .line 5
    .line 6
    iget-object v3, p0, Lke/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lke/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :pswitch_0
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    .line 16
    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->y:I

    .line 20
    .line 21
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "$connectionURL"

    .line 25
    .line 26
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->d:Lgf/b;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
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
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->y()V

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "eDevletMobil"

    .line 48
    .line 49
    const-string v1, "true"

    .line 50
    .line 51
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 59
    .line 60
    invoke-virtual {v0, v3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void

    .line 64
    :cond_1
    const-string p1, "mNetworkHelper"

    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :pswitch_1
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    .line 71
    .line 72
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 73
    .line 74
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 75
    .line 76
    invoke-static {v4, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "$item"

    .line 80
    .line 81
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->f:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Landroid/view/View;

    .line 99
    .line 100
    iget-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->g:Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    iput-boolean v2, v3, Lh8/b;->c:Z

    .line 118
    .line 119
    iget-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->h:Le8/b;

    .line 120
    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    invoke-virtual {v2}, Le8/b;->f()V

    .line 124
    .line 125
    .line 126
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-static {v0}, Lkotlin/jvm/internal/z;->a(Ljava/util/ArrayList;)Ljava/util/Collection;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_2
    const-string p1, "mCityListFastAdapter"

    .line 145
    .line 146
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :pswitch_2
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 151
    .line 152
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    .line 153
    .line 154
    const-string p1, "$customView"

    .line 155
    .line 156
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvAction()Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-interface {v4, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    :cond_3
    return-void

    .line 169
    :goto_0
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;

    .line 170
    .line 171
    check-cast v3, Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v4, v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;->e(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;Ljava/lang/String;Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
