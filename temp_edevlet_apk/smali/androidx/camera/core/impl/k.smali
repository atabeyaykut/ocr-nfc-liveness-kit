.class public final synthetic Landroidx/camera/core/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lio/realm/g0$a;
.implements Lh5/e;
.implements Lh5/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/core/impl/k;->a:I

    iput-object p2, p0, Landroidx/camera/core/impl/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/CameraRepository;

    invoke-static {v0, p1}, Landroidx/camera/core/impl/CameraRepository;->a(Landroidx/camera/core/impl/CameraRepository;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lh5/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/k;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    .line 4
    .line 5
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->E:I

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
    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->t:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final d(Lio/realm/g0;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/k;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/impl/k;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Ljava/util/List;

    .line 10
    .line 11
    const-string v0, "$resultList"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Ljava/util/Collection;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-virtual {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/k;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;

    .line 4
    .line 5
    const-string v1, "this$0"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "e"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 22
    .line 23
    const-string v3, "Text detection failed. "

    .line 24
    .line 25
    invoke-static {v3, p1}, Landroid/support/v4/media/a;->e(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v1, p1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;

    .line 35
    .line 36
    invoke-interface {p1}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;->a()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/k;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    const-string v4, "result"

    .line 7
    .line 8
    const-string v5, "this$0"

    .line 9
    .line 10
    iget-object v6, p0, Landroidx/camera/core/impl/k;->b:Ljava/lang/Object;

    .line 11
    .line 12
    sparse-switch v0, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :sswitch_0
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 18
    .line 19
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 20
    .line 21
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->s0:I

    .line 22
    .line 23
    invoke-static {v6, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ne v0, v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object p1, v1

    .line 47
    :goto_0
    const-string v0, "{\'barkodNo\':\'"

    .line 48
    .line 49
    const-string v2, "\',\'type\':\'barkod\'}"

    .line 50
    .line 51
    invoke-static {v0, p1, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->v()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "sendWebData("

    .line 69
    .line 70
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v0, 0x29

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void

    .line 89
    :sswitch_1
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;

    .line 90
    .line 91
    check-cast p1, Ljava/lang/Boolean;

    .line 92
    .line 93
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->f:I

    .line 94
    .line 95
    invoke-static {v6, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "it"

    .line 99
    .line 100
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->s()V

    .line 110
    .line 111
    .line 112
    :cond_2
    return-void

    .line 113
    :sswitch_2
    check-cast v6, Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    .line 114
    .line 115
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 116
    .line 117
    sget v0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->h:I

    .line 118
    .line 119
    invoke-static {v6, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget-object v1, v6, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->a:Lu1/a;

    .line 130
    .line 131
    if-nez v0, :cond_3

    .line 132
    .line 133
    invoke-interface {v1, v6}, Lu1/a;->b(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v2}, Landroid/app/Activity;->setResult(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    if-ne v0, v3, :cond_4

    .line 144
    .line 145
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    new-instance p1, Lcom/esafirm/imagepicker/features/ImagePickerActivity$d;

    .line 149
    .line 150
    invoke-direct {p1, v6}, Lcom/esafirm/imagepicker/features/ImagePickerActivity$d;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v1, v6, p1}, Lu1/a;->c(Landroid/content/Context;Lx9/l;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    :goto_1
    return-void

    .line 157
    :goto_2
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;

    .line 158
    .line 159
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 160
    .line 161
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->m:[Lda/m;

    .line 162
    .line 163
    invoke-static {v6, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-ne v0, v3, :cond_c

    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_5

    .line 180
    .line 181
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    move-object v0, v1

    .line 187
    :goto_3
    if-eqz p1, :cond_6

    .line 188
    .line 189
    const-string v3, "scenarioId"

    .line 190
    .line 191
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    goto :goto_4

    .line 196
    :cond_6
    move-object v3, v1

    .line 197
    :goto_4
    sget-object v4, Lyd/a;->a:Lyd/a$a;

    .line 198
    .line 199
    const-string v5, "Scenario "

    .line 200
    .line 201
    invoke-static {v5, v3}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    new-array v7, v2, [Ljava/lang/Object;

    .line 206
    .line 207
    invoke-virtual {v4, v5, v7}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    const-string v4, "true"

    .line 211
    .line 212
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_a

    .line 217
    .line 218
    if-eqz v3, :cond_7

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_8

    .line 225
    .line 226
    :cond_7
    const/4 v2, 0x1

    .line 227
    :cond_8
    if-nez v2, :cond_9

    .line 228
    .line 229
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 234
    .line 235
    .line 236
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 247
    .line 248
    if-eqz v0, :cond_d

    .line 249
    .line 250
    new-instance v1, La3/h;

    .line 251
    .line 252
    invoke-direct {v1, v0, v3}, La3/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v1}, Lio/realm/g0;->s(Lio/realm/g0$a;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v6}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    const v0, 0x7f0a026a

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_9
    const-string p1, "Scenario Id Emmpty"

    .line 270
    .line 271
    invoke-virtual {v6, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->F(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_a
    if-eqz p1, :cond_b

    .line 276
    .line 277
    const-string v0, "errorMessage"

    .line 278
    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    :cond_b
    invoke-virtual {v6, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->F(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_c
    iget-object p1, v6, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->d:Landroid/content/Context;

    .line 288
    .line 289
    if-eqz p1, :cond_d

    .line 290
    .line 291
    const v0, 0x7f130173

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {v6, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->F(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :cond_d
    :goto_5
    return-void

    .line 302
    nop

    .line 303
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
