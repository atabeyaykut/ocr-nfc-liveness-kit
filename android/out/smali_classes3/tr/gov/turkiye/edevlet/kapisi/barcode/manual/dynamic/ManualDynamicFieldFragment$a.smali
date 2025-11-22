.class public final Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lbe/h;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lbe/h;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iget-boolean v2, p1, Lbe/h;->e:Z

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    iget-object p1, p1, Lbe/h;->c:Lr0/b;

    .line 19
    .line 20
    instance-of v2, p1, Lr0/d1;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v3, p1, Lr0/k;

    .line 26
    .line 27
    :goto_0
    if-eqz v3, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    instance-of v0, p1, Lr0/c1;

    .line 31
    .line 32
    if-nez v0, :cond_11

    .line 33
    .line 34
    instance-of p1, p1, Lr0/i;

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_2
    iget-object v2, p1, Lbe/h;->a:Lr0/b;

    .line 39
    .line 40
    instance-of v5, v2, Lr0/d1;

    .line 41
    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    instance-of v5, v2, Lr0/k;

    .line 47
    .line 48
    :goto_1
    if-eqz v5, :cond_4

    .line 49
    .line 50
    :goto_2
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->g:[Lda/m;

    .line 51
    .line 52
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->g:Landroid/widget/ScrollView;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 66
    .line 67
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 77
    .line 78
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->f:Landroid/widget/ProgressBar;

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_8

    .line 93
    .line 94
    :cond_4
    instance-of v5, v2, Lr0/c1;

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    if-eqz v5, :cond_a

    .line 98
    .line 99
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->g:[Lda/m;

    .line 100
    .line 101
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->F()V

    .line 102
    .line 103
    .line 104
    iget-object p1, p1, Lbe/h;->b:Ljava/util/List;

    .line 105
    .line 106
    move-object v0, p1

    .line 107
    check-cast v0, Ljava/util/Collection;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    const/4 v0, 0x0

    .line 119
    goto :goto_4

    .line 120
    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 121
    :goto_4
    if-nez v0, :cond_11

    .line 122
    .line 123
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->d:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 130
    .line 131
    .line 132
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->c:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    move-object v2, p1

    .line 138
    check-cast v2, Ljava/lang/Iterable;

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_11

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    add-int/lit8 v7, v1, 0x1

    .line 155
    .line 156
    if-ltz v1, :cond_9

    .line 157
    .line 158
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;

    .line 159
    .line 160
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    if-eqz v8, :cond_7

    .line 165
    .line 166
    const-string v9, "layout_inflater"

    .line 167
    .line 168
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    goto :goto_6

    .line 173
    :cond_7
    move-object v8, v6

    .line 174
    :goto_6
    const-string v9, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 175
    .line 176
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    check-cast v8, Landroid/view/LayoutInflater;

    .line 180
    .line 181
    const v9, 0x7f0d0096

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    const-string v9, "inflater.inflate(R.layou\u2026item_dynamic_field, null)"

    .line 189
    .line 190
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const v9, 0x7f0a043a

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    .line 201
    .line 202
    const v10, 0x7f0a0143

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    .line 210
    .line 211
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;->getFieldName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    invoke-virtual {v9, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    sub-int/2addr v11, v3

    .line 223
    if-ne v1, v11, :cond_8

    .line 224
    .line 225
    const/4 v1, 0x6

    .line 226
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 227
    .line 228
    .line 229
    new-instance v1, Lbe/c;

    .line 230
    .line 231
    invoke-direct {v1, v4}, Lbe/c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 235
    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_8
    const/4 v1, 0x5

    .line 239
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 240
    .line 241
    .line 242
    :goto_7
    new-instance v1, Lbe/i;

    .line 243
    .line 244
    const-string v11, "editView"

    .line 245
    .line 246
    invoke-static {v10, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-direct {v1, v9, v10, v5}, Lbe/i;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->d:Landroid/widget/LinearLayout;

    .line 260
    .line 261
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    move v1, v7

    .line 265
    goto :goto_5

    .line 266
    :cond_9
    invoke-static {}, Lb8/f;->k0()V

    .line 267
    .line 268
    .line 269
    throw v6

    .line 270
    :cond_a
    instance-of p1, v2, Lr0/i;

    .line 271
    .line 272
    if-eqz p1, :cond_11

    .line 273
    .line 274
    check-cast v2, Lr0/i;

    .line 275
    .line 276
    iget-object p1, v2, Lr0/i;->b:Ljava/lang/Throwable;

    .line 277
    .line 278
    sget-object v2, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->g:[Lda/m;

    .line 279
    .line 280
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 284
    .line 285
    if-eqz v2, :cond_c

    .line 286
    .line 287
    const-string p1, "action.login.open"

    .line 288
    .line 289
    const v0, 0x8000

    .line 290
    .line 291
    .line 292
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 297
    .line 298
    const/16 v1, 0x22

    .line 299
    .line 300
    if-lt v0, v1, :cond_b

    .line 301
    .line 302
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    .line 306
    .line 307
    :cond_b
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    if-eqz p1, :cond_11

    .line 315
    .line 316
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_8

    .line 320
    .line 321
    :cond_c
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 322
    .line 323
    if-eqz v2, :cond_d

    .line 324
    .line 325
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->g:Landroid/widget/ScrollView;

    .line 330
    .line 331
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->f:Landroid/widget/ProgressBar;

    .line 339
    .line 340
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 348
    .line 349
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 350
    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 359
    .line 360
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 361
    .line 362
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 370
    .line 371
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 372
    .line 373
    new-instance v0, Lbe/d;

    .line 374
    .line 375
    invoke-direct {v0, v1, v4}, Lbe/d;-><init>(ILjava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    goto :goto_8

    .line 382
    :cond_d
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 383
    .line 384
    if-eqz v2, :cond_e

    .line 385
    .line 386
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 387
    .line 388
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    :cond_e
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->g:Landroid/widget/ScrollView;

    .line 397
    .line 398
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->f:Landroid/widget/ProgressBar;

    .line 406
    .line 407
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 415
    .line 416
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 417
    .line 418
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 426
    .line 427
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 428
    .line 429
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    .line 431
    .line 432
    if-eqz v6, :cond_f

    .line 433
    .line 434
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    if-nez p1, :cond_10

    .line 439
    .line 440
    :cond_f
    const/4 v1, 0x1

    .line 441
    :cond_10
    if-nez v1, :cond_11

    .line 442
    .line 443
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 448
    .line 449
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 450
    .line 451
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    :cond_11
    :goto_8
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 455
    .line 456
    return-object p1
.end method
