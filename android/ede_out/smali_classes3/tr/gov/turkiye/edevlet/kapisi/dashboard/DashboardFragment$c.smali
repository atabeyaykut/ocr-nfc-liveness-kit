.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->M(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lv/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lv/e;

    .line 2
    .line 3
    const-string v0, "dialog"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->k:[Lda/m;

    .line 12
    .line 13
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;

    .line 19
    .line 20
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->O(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getPopupType()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x3

    .line 28
    if-eq v1, v2, :cond_5

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    if-eq v1, v2, :cond_4

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    if-eq v1, v2, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    const/4 v2, 0x7

    .line 40
    if-eq v1, v2, :cond_0

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 45
    .line 46
    const-string v2, "android.intent.action.VIEW"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getUrl()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :catch_0
    nop

    .line 68
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->h:Landroid/content/Context;

    .line 69
    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    const v2, 0x7f0a02dc

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 87
    :goto_0
    sget v2, Lke/d;->a:I

    .line 88
    .line 89
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentDashboardBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    .line 95
    const-string v2, "mDashboardFragmentBinding.dashboardContainer"

    .line 96
    .line 97
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const v2, 0x7f060025

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const v3, 0x7f060097

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const v3, 0x7f1302be

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v3, v1, v2, v0}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const/4 v1, 0x1

    .line 128
    new-array v1, v1, [Ll9/g;

    .line 129
    .line 130
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getServiceCode()Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v2, Ll9/g;

    .line 135
    .line 136
    const-string v3, "serviceCode"

    .line 137
    .line 138
    invoke-direct {v2, v3, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    aput-object v2, v1, v0

    .line 143
    .line 144
    new-instance v2, Landroidx/work/Data$Builder;

    .line 145
    .line 146
    invoke-direct {v2}, Landroidx/work/Data$Builder;-><init>()V

    .line 147
    .line 148
    .line 149
    aget-object v0, v1, v0

    .line 150
    .line 151
    iget-object v1, v0, Ll9/g;->a:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v1, Ljava/lang/String;

    .line 154
    .line 155
    iget-object v0, v0, Ll9/g;->b:Ljava/lang/Object;

    .line 156
    .line 157
    invoke-virtual {v2, v1, v0}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "dataBuilder.build()"

    .line 165
    .line 166
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 170
    .line 171
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;

    .line 172
    .line 173
    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const-string v1, "OneTimeWorkRequestBuilde\u2026tData(workerData).build()"

    .line 187
    .line 188
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 192
    .line 193
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->h:Landroid/content/Context;

    .line 194
    .line 195
    if-eqz p1, :cond_6

    .line 196
    .line 197
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1, v0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    const v0, 0x7f1300c3

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->K(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_4
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getFolderTitle()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getFolder()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_5
    const v0, 0x7f1300ba

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->I(I)V

    .line 234
    .line 235
    .line 236
    :cond_6
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 237
    .line 238
    return-object p1
.end method
