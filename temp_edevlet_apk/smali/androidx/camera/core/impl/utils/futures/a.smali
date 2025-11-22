.class public final synthetic Landroidx/camera/core/impl/utils/futures/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lc3/b$a;
.implements Lb3/r$a;
.implements Lio/realm/g0$a;
.implements Lh5/e;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lh5/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/core/impl/utils/futures/a;->a:I

    iput-object p2, p0, Landroidx/camera/core/impl/utils/futures/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    check-cast p1, Landroid/database/Cursor;

    .line 6
    .line 7
    sget-object v1, Lb3/r;->f:Lr2/b;

    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/Set;

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    new-instance v3, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    new-instance v1, Lb3/r$b;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v4, 0x2

    .line 52
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-direct {v1, v2, v4}, Lb3/r$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 p1, 0x0

    .line 64
    return-object p1
.end method

.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/a;->b:Ljava/lang/Object;

    check-cast v0, Lm5/a;

    invoke-static {v0, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lm5/a;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lh5/k;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;

    .line 4
    .line 5
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->f:I

    .line 6
    .line 7
    const-string v1, "this$0"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "task"

    .line 13
    .line 14
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lh5/k;->m()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lh5/k;->i()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :try_start_0
    new-array v1, v1, [Ll9/g;

    .line 32
    .line 33
    const-string v2, "token"

    .line 34
    .line 35
    new-instance v3, Ll9/g;

    .line 36
    .line 37
    invoke-direct {v3, v2, p1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    aput-object v3, v1, p1

    .line 42
    .line 43
    new-instance v2, Landroidx/work/Data$Builder;

    .line 44
    .line 45
    invoke-direct {v2}, Landroidx/work/Data$Builder;-><init>()V

    .line 46
    .line 47
    .line 48
    aget-object p1, v1, p1

    .line 49
    .line 50
    iget-object v1, p1, Ll9/g;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p1, Ll9/g;->b:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {v2, v1, p1}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "dataBuilder.build()"

    .line 64
    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 69
    .line 70
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;

    .line 71
    .line 72
    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v1, "OneTimeWorkRequestBuilde\u2026tData(workerData).build()"

    .line 86
    .line 87
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 91
    .line 92
    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :catch_0
    :goto_0
    return-void
.end method

.method public final d(Lio/realm/g0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/camera/core/impl/utils/futures/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/a;->b:Ljava/lang/Object;

    check-cast v0, Lb3/d;

    invoke-interface {v0}, Lb3/d;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Landroidx/camera/core/impl/utils/futures/a;->a:I

    .line 3
    .line 4
    const-string v2, "QR Content "

    .line 5
    .line 6
    const-string v3, "content"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, -0x1

    .line 10
    const-string v6, "result"

    .line 11
    .line 12
    const-string v7, "this$0"

    .line 13
    .line 14
    iget-object v8, p0, Landroidx/camera/core/impl/utils/futures/a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x1

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :pswitch_0
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;

    .line 24
    .line 25
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 26
    .line 27
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->g:[Lda/m;

    .line 28
    .line 29
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v1, v5, :cond_7

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :cond_0
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 52
    .line 53
    invoke-static {v2, v4}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-array v2, v9, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {p1, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 p1, 0x0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 74
    :goto_1
    if-nez p1, :cond_7

    .line 75
    .line 76
    const-string p1, "-"

    .line 77
    .line 78
    filled-new-array {p1}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v4, p1}, Lmc/n;->Y(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Ljava/lang/Iterable;

    .line 87
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object v3, v2

    .line 108
    check-cast v3, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-le v3, v10, :cond_4

    .line 115
    .line 116
    const/4 v3, 0x1

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    const/4 v3, 0x0

    .line 119
    :goto_3
    if-eqz v3, :cond_3

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-ne p1, v0, :cond_7

    .line 130
    .line 131
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->d:Landroid/content/Context;

    .line 132
    .line 133
    if-eqz p1, :cond_6

    .line 134
    .line 135
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->h:Landroid/widget/TextView;

    .line 140
    .line 141
    const-string v2, "mDifferentCarBinding.headerCardFormTitle"

    .line 142
    .line 143
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const v2, 0x7f08012c

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v0, p1}, Lge/a;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 161
    .line 162
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 170
    .line 171
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Ljava/lang/CharSequence;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 185
    .line 186
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Ljava/lang/CharSequence;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 200
    .line 201
    const/4 v0, 0x2

    .line 202
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Ljava/lang/CharSequence;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    :cond_7
    return-void

    .line 212
    :goto_4
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;

    .line 213
    .line 214
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 215
    .line 216
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->j:[Lda/m;

    .line 217
    .line 218
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p1, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-ne v1, v5, :cond_b

    .line 229
    .line 230
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    if-eqz p1, :cond_8

    .line 235
    .line 236
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    goto :goto_5

    .line 241
    :cond_8
    move-object p1, v4

    .line 242
    :goto_5
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 243
    .line 244
    invoke-static {v2, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    new-array v3, v9, [Ljava/lang/Object;

    .line 249
    .line 250
    invoke-virtual {v1, v2, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    if-eqz p1, :cond_a

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_9

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_9
    const/4 v1, 0x0

    .line 263
    goto :goto_7

    .line 264
    :cond_a
    :goto_6
    const/4 v1, 0x1

    .line 265
    :goto_7
    if-nez v1, :cond_b

    .line 266
    .line 267
    iput-boolean v10, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->e:Z

    .line 268
    .line 269
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->b:Ll9/e;

    .line 270
    .line 271
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Lmh/c;

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    const-string v2, "qrContent"

    .line 281
    .line 282
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v2, Lmh/d;

    .line 286
    .line 287
    invoke-direct {v2, v1, p1, v4}, Lmh/d;-><init>(Lmh/c;Ljava/lang/String;Lp9/d;)V

    .line 288
    .line 289
    .line 290
    iget-object p1, v1, Lr0/z;->c:Lnc/a0;

    .line 291
    .line 292
    invoke-static {p1, v4, v9, v2, v0}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 293
    .line 294
    .line 295
    new-instance v0, Lmh/e;

    .line 296
    .line 297
    invoke-direct {v0, v1, v4}, Lmh/e;-><init>(Lmh/c;Lp9/d;)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v1, Lmh/c;->h:Lmh/f;

    .line 301
    .line 302
    invoke-static {p1, v1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 303
    .line 304
    .line 305
    :cond_b
    return-void

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx9/l;

    .line 4
    .line 5
    const-string v1, "$tmp0"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
