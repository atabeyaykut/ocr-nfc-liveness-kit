.class public final synthetic Lzd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lzd/d;->a:I

    iput-object p2, p0, Lzd/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v3, "mNetworkHelper"

    .line 6
    .line 7
    iget v7, v0, Lzd/d;->a:I

    .line 8
    .line 9
    const-string v8, "tr.gov.turkiye.edevlet.kapisi"

    .line 10
    .line 11
    const-string v9, "isFavMenuActive"

    .line 12
    .line 13
    const-string v10, "isEdkFolder"

    .line 14
    .line 15
    const-string v11, "isCustomPage"

    .line 16
    .line 17
    const-string v12, "serviceName"

    .line 18
    .line 19
    const-string v13, "folderUrl"

    .line 20
    .line 21
    const-string v14, "action.servicepage.open"

    .line 22
    .line 23
    const-string v15, "en"

    .line 24
    .line 25
    const-string v2, "tr"

    .line 26
    .line 27
    const-string v4, "editor"

    .line 28
    .line 29
    const-string v6, "this$0"

    .line 30
    .line 31
    iget-object v5, v0, Lzd/d;->b:Ljava/lang/Object;

    .line 32
    .line 33
    packed-switch v7, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto/16 :goto_b

    .line 37
    .line 38
    :pswitch_0
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;

    .line 39
    .line 40
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->c:I

    .line 41
    .line 42
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;

    .line 50
    .line 51
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->m:[Lda/m;

    .line 52
    .line 53
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    iput-boolean v1, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->k:Z

    .line 58
    .line 59
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->e:Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, "HOST"

    .line 62
    .line 63
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->b:Ll9/e;

    .line 70
    .line 71
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lnh/c;

    .line 76
    .line 77
    iget-object v2, v1, Lr0/z;->c:Lnc/a0;

    .line 78
    .line 79
    new-instance v3, Lnh/d;

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-direct {v3, v1, v4}, Lnh/d;-><init>(Lnh/c;Lp9/d;)V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x3

    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-static {v2, v4, v6, v3, v5}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 88
    .line 89
    .line 90
    new-instance v2, Lnh/e;

    .line 91
    .line 92
    invoke-direct {v2, v1, v4}, Lnh/e;-><init>(Lnh/c;Lp9/d;)V

    .line 93
    .line 94
    .line 95
    iget-object v3, v1, Lr0/z;->c:Lnc/a0;

    .line 96
    .line 97
    iget-object v1, v1, Lnh/c;->h:Lnh/f;

    .line 98
    .line 99
    invoke-static {v3, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    invoke-static {v5}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const v2, 0x7f0a0279

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroidx/navigation/NavController;->navigate(I)V

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void

    .line 114
    :pswitch_2
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;

    .line 115
    .line 116
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->l:[Lda/m;

    .line 117
    .line 118
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->b:Ll9/e;

    .line 122
    .line 123
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Llh/e;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    new-instance v2, Llh/h;

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    invoke-direct {v2, v1, v3}, Llh/h;-><init>(Llh/e;Lp9/d;)V

    .line 136
    .line 137
    .line 138
    iget-object v4, v1, Lr0/z;->c:Lnc/a0;

    .line 139
    .line 140
    const/4 v5, 0x3

    .line 141
    const/4 v6, 0x0

    .line 142
    invoke-static {v4, v3, v6, v2, v5}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 143
    .line 144
    .line 145
    new-instance v2, Llh/i;

    .line 146
    .line 147
    invoke-direct {v2, v1, v3}, Llh/i;-><init>(Llh/e;Lp9/d;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v1, Llh/e;->h:Llh/j;

    .line 151
    .line 152
    invoke-static {v4, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_3
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemModel;

    .line 157
    .line 158
    invoke-static {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemModel;->b(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemModel;Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_4
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;

    .line 163
    .line 164
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->e:[Lda/m;

    .line 165
    .line 166
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->b:Ll9/e;

    .line 170
    .line 171
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Lyg/d;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    new-instance v2, Lyg/g;

    .line 181
    .line 182
    const/4 v3, 0x0

    .line 183
    invoke-direct {v2, v1, v3}, Lyg/g;-><init>(Lyg/d;Lp9/d;)V

    .line 184
    .line 185
    .line 186
    iget-object v4, v1, Lr0/z;->c:Lnc/a0;

    .line 187
    .line 188
    const/4 v5, 0x3

    .line 189
    const/4 v6, 0x0

    .line 190
    invoke-static {v4, v3, v6, v2, v5}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 191
    .line 192
    .line 193
    new-instance v2, Lyg/h;

    .line 194
    .line 195
    invoke-direct {v2, v1, v3}, Lyg/h;-><init>(Lyg/d;Lp9/d;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v1, Lyg/d;->h:Lyg/i;

    .line 199
    .line 200
    invoke-static {v4, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_5
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;

    .line 205
    .line 206
    invoke-static {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;->b(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_6
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;

    .line 211
    .line 212
    invoke-static {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel;Landroid/view/View;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_7
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 217
    .line 218
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 219
    .line 220
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 224
    .line 225
    const-string v2, "mSearchFragmentBinding"

    .line 226
    .line 227
    if-eqz v1, :cond_6

    .line 228
    .line 229
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;

    .line 230
    .line 231
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 232
    .line 233
    const/16 v3, 0x8

    .line 234
    .line 235
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->c:Landroid/content/SharedPreferences;

    .line 239
    .line 240
    if-eqz v1, :cond_5

    .line 241
    .line 242
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v3, "recent_search_texts"

    .line 250
    .line 251
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    .line 253
    .line 254
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    .line 256
    .line 257
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->r:Ljava/util/List;

    .line 258
    .line 259
    if-eqz v1, :cond_4

    .line 260
    .line 261
    check-cast v1, Ljava/util/Collection;

    .line 262
    .line 263
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    const/4 v3, 0x1

    .line 268
    xor-int/2addr v1, v3

    .line 269
    if-eqz v1, :cond_2

    .line 270
    .line 271
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->r:Ljava/util/List;

    .line 272
    .line 273
    if-eqz v1, :cond_1

    .line 274
    .line 275
    invoke-virtual {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->G(Ljava/util/List;)V

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_1
    const-string v1, "mEditorChoiceList"

    .line 280
    .line 281
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const/4 v1, 0x0

    .line 285
    throw v1

    .line 286
    :cond_2
    const/4 v1, 0x0

    .line 287
    iget-object v3, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 288
    .line 289
    if-eqz v3, :cond_3

    .line 290
    .line 291
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 292
    .line 293
    invoke-virtual {v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->a()V

    .line 294
    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v1

    .line 301
    :cond_4
    :goto_1
    return-void

    .line 302
    :cond_5
    const/4 v1, 0x0

    .line 303
    const-string v2, "sharedPreferences"

    .line 304
    .line 305
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v1

    .line 309
    :cond_6
    const/4 v1, 0x0

    .line 310
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v1

    .line 314
    :pswitch_8
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;

    .line 315
    .line 316
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->j:[Lda/m;

    .line 317
    .line 318
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->b:Lgf/b;

    .line 322
    .line 323
    if-eqz v1, :cond_c

    .line 324
    .line 325
    if-eqz v1, :cond_b

    .line 326
    .line 327
    invoke-virtual {v1}, Lgf/b;->a()Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_a

    .line 332
    .line 333
    const/4 v1, 0x1

    .line 334
    iput-boolean v1, v5, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->h:Z

    .line 335
    .line 336
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->I()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_7

    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_7
    invoke-static {v1, v15}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_8

    .line 352
    .line 353
    const-string v1, "edk-eposta-islemleri-en"

    .line 354
    .line 355
    goto :goto_3

    .line 356
    :cond_8
    :goto_2
    const-string v1, "edk-eposta-islemleri"

    .line 357
    .line 358
    :goto_3
    const v2, 0x7f13020d

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    const-string v3, "getString(R.string.profile_email_update_page)"

    .line 366
    .line 367
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    new-instance v3, Landroid/content/Intent;

    .line 371
    .line 372
    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    .line 380
    .line 381
    const/4 v1, 0x1

    .line 382
    invoke-virtual {v3, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    .line 387
    .line 388
    const/4 v1, 0x0

    .line 389
    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    .line 391
    .line 392
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 393
    .line 394
    const/16 v2, 0x22

    .line 395
    .line 396
    if-lt v1, v2, :cond_9

    .line 397
    .line 398
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    .line 400
    .line 401
    :cond_9
    invoke-virtual {v5, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 402
    .line 403
    .line 404
    const-string v1, "ContactEdit_Screen"

    .line 405
    .line 406
    invoke-virtual {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->L(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string v1, "Contact_Edit"

    .line 410
    .line 411
    invoke-virtual {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->K(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    goto :goto_4

    .line 415
    :cond_a
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->O()V

    .line 416
    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    const/4 v1, 0x0

    .line 423
    throw v1

    .line 424
    :cond_c
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->N()V

    .line 425
    .line 426
    .line 427
    :goto_4
    return-void

    .line 428
    :pswitch_9
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    .line 429
    .line 430
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->l:[Lda/m;

    .line 431
    .line 432
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->I()Landroid/content/SharedPreferences;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string v2, "profileBannerDiscoveryClick"

    .line 447
    .line 448
    const/4 v3, 0x1

    .line 449
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    .line 451
    .line 452
    const-string v2, "profileBannerDiscoveryDate"

    .line 453
    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 455
    .line 456
    .line 457
    move-result-wide v3

    .line 458
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 459
    .line 460
    .line 461
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->L()V

    .line 465
    .line 466
    .line 467
    return-void

    .line 468
    :pswitch_a
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;

    .line 469
    .line 470
    invoke-static {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V

    .line 471
    .line 472
    .line 473
    return-void

    .line 474
    :pswitch_b
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;

    .line 475
    .line 476
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->m:[Lda/m;

    .line 477
    .line 478
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->j:Ljava/lang/Integer;

    .line 482
    .line 483
    if-eqz v1, :cond_d

    .line 484
    .line 485
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    iget-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->k:Ljava/lang/Integer;

    .line 490
    .line 491
    if-eqz v2, :cond_d

    .line 492
    .line 493
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    iget-object v3, v5, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->c:Ll9/e;

    .line 498
    .line 499
    invoke-interface {v3}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    check-cast v3, Lag/d;

    .line 504
    .line 505
    iget-object v4, v5, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->l:Ljava/lang/Integer;

    .line 506
    .line 507
    invoke-virtual {v3, v1, v2, v4}, Lag/d;->d(IILjava/lang/Integer;)V

    .line 508
    .line 509
    .line 510
    :cond_d
    return-void

    .line 511
    :pswitch_c
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;

    .line 512
    .line 513
    invoke-static {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;->c(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;Landroid/view/View;)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :pswitch_d
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ElectronicServiceListItemModel;

    .line 518
    .line 519
    invoke-static {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ElectronicServiceListItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ElectronicServiceListItemModel;Landroid/view/View;)V

    .line 520
    .line 521
    .line 522
    return-void

    .line 523
    :pswitch_e
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    .line 524
    .line 525
    invoke-static {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;Landroid/view/View;)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_f
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mostused/MostUsedServicesFragment;

    .line 530
    .line 531
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mostused/MostUsedServicesFragment;->h:[Lda/m;

    .line 532
    .line 533
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mostused/MostUsedServicesFragment;->b:Ll9/e;

    .line 537
    .line 538
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    check-cast v1, Lsf/d;

    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    new-instance v2, Lsf/g;

    .line 548
    .line 549
    const/4 v3, 0x0

    .line 550
    invoke-direct {v2, v1, v3}, Lsf/g;-><init>(Lsf/d;Lp9/d;)V

    .line 551
    .line 552
    .line 553
    iget-object v4, v1, Lr0/z;->c:Lnc/a0;

    .line 554
    .line 555
    const/4 v5, 0x3

    .line 556
    const/4 v6, 0x0

    .line 557
    invoke-static {v4, v3, v6, v2, v5}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 558
    .line 559
    .line 560
    new-instance v2, Lsf/h;

    .line 561
    .line 562
    invoke-direct {v2, v1, v3}, Lsf/h;-><init>(Lsf/d;Lp9/d;)V

    .line 563
    .line 564
    .line 565
    iget-object v1, v1, Lsf/d;->h:Lsf/m;

    .line 566
    .line 567
    invoke-static {v4, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 568
    .line 569
    .line 570
    return-void

    .line 571
    :pswitch_10
    check-cast v5, Lie/c;

    .line 572
    .line 573
    sget v1, Lie/c;->c:I

    .line 574
    .line 575
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 579
    .line 580
    .line 581
    return-void

    .line 582
    :pswitch_11
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;

    .line 583
    .line 584
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->j:I

    .line 585
    .line 586
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 590
    .line 591
    .line 592
    return-void

    .line 593
    :pswitch_12
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;

    .line 594
    .line 595
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;->e:[Lda/m;

    .line 596
    .line 597
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 605
    .line 606
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    const/4 v4, 0x1

    .line 619
    sub-int/2addr v2, v4

    .line 620
    const/4 v4, 0x0

    .line 621
    const/4 v6, 0x0

    .line 622
    :goto_5
    if-gt v4, v2, :cond_13

    .line 623
    .line 624
    if-nez v6, :cond_e

    .line 625
    .line 626
    move v7, v4

    .line 627
    goto :goto_6

    .line 628
    :cond_e
    move v7, v2

    .line 629
    :goto_6
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 630
    .line 631
    .line 632
    move-result v7

    .line 633
    const/16 v8, 0x20

    .line 634
    .line 635
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->h(II)I

    .line 636
    .line 637
    .line 638
    move-result v7

    .line 639
    if-gtz v7, :cond_f

    .line 640
    .line 641
    const/4 v7, 0x1

    .line 642
    goto :goto_7

    .line 643
    :cond_f
    const/4 v7, 0x0

    .line 644
    :goto_7
    if-nez v6, :cond_11

    .line 645
    .line 646
    if-nez v7, :cond_10

    .line 647
    .line 648
    const/4 v6, 0x1

    .line 649
    goto :goto_5

    .line 650
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 651
    .line 652
    goto :goto_5

    .line 653
    :cond_11
    if-nez v7, :cond_12

    .line 654
    .line 655
    goto :goto_8

    .line 656
    :cond_12
    add-int/lit8 v2, v2, -0x1

    .line 657
    .line 658
    goto :goto_5

    .line 659
    :cond_13
    :goto_8
    const/4 v6, 0x1

    .line 660
    add-int/2addr v2, v6

    .line 661
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    const-string v4, ""

    .line 670
    .line 671
    invoke-static {v2, v4}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 672
    .line 673
    .line 674
    move-result v2

    .line 675
    if-eqz v2, :cond_14

    .line 676
    .line 677
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;->e:Lcom/google/android/material/textfield/TextInputLayout;

    .line 682
    .line 683
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    const v3, 0x7f1302af

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_a

    .line 698
    .line 699
    :cond_14
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;->e:Lcom/google/android/material/textfield/TextInputLayout;

    .line 704
    .line 705
    const/4 v4, 0x0

    .line 706
    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 707
    .line 708
    .line 709
    iget-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;->b:Lgf/b;

    .line 710
    .line 711
    if-eqz v2, :cond_19

    .line 712
    .line 713
    invoke-virtual {v2}, Lgf/b;->a()Z

    .line 714
    .line 715
    .line 716
    move-result v2

    .line 717
    if-eqz v2, :cond_16

    .line 718
    .line 719
    iget-boolean v2, v5, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;->a:Z

    .line 720
    .line 721
    const-string v3, "barcodeNumber"

    .line 722
    .line 723
    if-eqz v2, :cond_15

    .line 724
    .line 725
    new-instance v2, Landroid/os/Bundle;

    .line 726
    .line 727
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 728
    .line 729
    .line 730
    const-string v4, "isFromLogin"

    .line 731
    .line 732
    const/4 v6, 0x1

    .line 733
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;

    .line 740
    .line 741
    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;-><init>()V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    if-eqz v2, :cond_18

    .line 752
    .line 753
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    if-eqz v2, :cond_18

    .line 758
    .line 759
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    const-string v3, "beginTransaction()"

    .line 764
    .line 765
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    const/4 v4, 0x1

    .line 769
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 770
    .line 771
    .line 772
    const v3, 0x7f0a0181

    .line 773
    .line 774
    .line 775
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 779
    .line 780
    .line 781
    goto :goto_a

    .line 782
    :cond_15
    const/4 v4, 0x1

    .line 783
    new-array v2, v4, [Ll9/g;

    .line 784
    .line 785
    new-instance v4, Ll9/g;

    .line 786
    .line 787
    invoke-direct {v4, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    const/4 v1, 0x0

    .line 791
    aput-object v4, v2, v1

    .line 792
    .line 793
    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    invoke-static {v5}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 798
    .line 799
    .line 800
    move-result-object v2

    .line 801
    const v3, 0x7f0a008a

    .line 802
    .line 803
    .line 804
    invoke-virtual {v2, v3, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 805
    .line 806
    .line 807
    goto :goto_a

    .line 808
    :cond_16
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;->d:Landroid/content/Context;

    .line 809
    .line 810
    if-eqz v1, :cond_18

    .line 811
    .line 812
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    if-eqz v2, :cond_17

    .line 817
    .line 818
    const v3, 0x7f0a02dc

    .line 819
    .line 820
    .line 821
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 822
    .line 823
    .line 824
    move-result-object v6

    .line 825
    goto :goto_9

    .line 826
    :cond_17
    const/4 v6, 0x0

    .line 827
    :goto_9
    sget v2, Lke/d;->a:I

    .line 828
    .line 829
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 834
    .line 835
    const-string v3, "manualBarcodeBinding.manualBarcodeContainer"

    .line 836
    .line 837
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    const v3, 0x7f060025

    .line 841
    .line 842
    .line 843
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 844
    .line 845
    .line 846
    move-result v3

    .line 847
    const v4, 0x7f060097

    .line 848
    .line 849
    .line 850
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    const v4, 0x7f130066

    .line 855
    .line 856
    .line 857
    invoke-static {v2, v4, v6, v3, v1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    if-eqz v1, :cond_18

    .line 862
    .line 863
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 864
    .line 865
    .line 866
    :cond_18
    :goto_a
    return-void

    .line 867
    :cond_19
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    const/4 v1, 0x0

    .line 871
    throw v1

    .line 872
    :pswitch_13
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyActivity;

    .line 873
    .line 874
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodeVerifyActivity;->d:I

    .line 875
    .line 876
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 880
    .line 881
    .line 882
    return-void

    .line 883
    :goto_b
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;

    .line 884
    .line 885
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->g:I

    .line 886
    .line 887
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->b:Ljava/lang/String;

    .line 891
    .line 892
    if-eqz v1, :cond_1d

    .line 893
    .line 894
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    if-eqz v2, :cond_1a

    .line 899
    .line 900
    goto :goto_c

    .line 901
    :cond_1a
    invoke-static {v1, v15}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    move-result v1

    .line 905
    if-eqz v1, :cond_1b

    .line 906
    .line 907
    const-string v1, "edk-what-is-2fa-en"

    .line 908
    .line 909
    goto :goto_d

    .line 910
    :cond_1b
    :goto_c
    const-string v1, "edk-what-is-2fa"

    .line 911
    .line 912
    :goto_d
    const v2, 0x7f1302b6

    .line 913
    .line 914
    .line 915
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    const-string v3, "getString(R.string.verif\u2026sult_two_factor_question)"

    .line 920
    .line 921
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    new-instance v3, Landroid/content/Intent;

    .line 925
    .line 926
    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v3, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    .line 931
    .line 932
    invoke-virtual {v3, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    .line 934
    .line 935
    const/4 v1, 0x1

    .line 936
    invoke-virtual {v3, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 940
    .line 941
    .line 942
    const/4 v1, 0x0

    .line 943
    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 944
    .line 945
    .line 946
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 947
    .line 948
    const/16 v2, 0x22

    .line 949
    .line 950
    if-lt v1, v2, :cond_1c

    .line 951
    .line 952
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    .line 954
    .line 955
    :cond_1c
    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 956
    .line 957
    .line 958
    return-void

    .line 959
    :cond_1d
    const-string v1, "mLanguage"

    .line 960
    .line 961
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    const/4 v1, 0x0

    .line 965
    throw v1

    .line 966
    nop

    .line 967
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
