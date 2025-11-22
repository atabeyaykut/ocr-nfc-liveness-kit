.class public final synthetic Lie/d;
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

    iput p1, p0, Lie/d;->a:I

    iput-object p2, p0, Lie/d;->b:Ljava/lang/Object;

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
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    iget v4, v0, Lie/d;->a:I

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    const-string v7, "this$0"

    .line 12
    .line 13
    iget-object v8, v0, Lie/d;->b:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v4, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :pswitch_0
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;

    .line 21
    .line 22
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->g:I

    .line 23
    .line 24
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    .line 32
    .line 33
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->r:I

    .line 34
    .line 35
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;

    .line 43
    .line 44
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->f:[Lda/m;

    .line 45
    .line 46
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-boolean v6, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->e:Z

    .line 50
    .line 51
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->F()Lth/d;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v4, v1, Lr0/z;->c:Lnc/a0;

    .line 56
    .line 57
    new-instance v6, Lth/e;

    .line 58
    .line 59
    invoke-direct {v6, v1, v5}, Lth/e;-><init>(Lth/d;Lp9/d;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v5, v3, v6, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 63
    .line 64
    .line 65
    new-instance v2, Lth/f;

    .line 66
    .line 67
    invoke-direct {v2, v1, v5}, Lth/f;-><init>(Lth/d;Lp9/d;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v1, Lr0/z;->c:Lnc/a0;

    .line 71
    .line 72
    iget-object v1, v1, Lth/d;->i:Lth/a;

    .line 73
    .line 74
    invoke-static {v3, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_3
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    .line 79
    .line 80
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->l:[Lda/m;

    .line 81
    .line 82
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->J()Lrh/d;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lrh/d;->d()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_4
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;

    .line 94
    .line 95
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->h:[Lda/m;

    .line 96
    .line 97
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->b:Ll9/e;

    .line 101
    .line 102
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lph/d;

    .line 107
    .line 108
    invoke-virtual {v1}, Lph/d;->d()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_5
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;

    .line 113
    .line 114
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->j:[Lda/m;

    .line 115
    .line 116
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/16 v2, 0x17

    .line 122
    .line 123
    if-lt v1, v2, :cond_1

    .line 124
    .line 125
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    sget-object v2, Lc5/e0;->d:[Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, [Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v1, v3}, Ltd/a;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_0

    .line 142
    .line 143
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->E()V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_0
    const/4 v1, 0x4

    .line 148
    invoke-virtual {v8, v2, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->E()V

    .line 153
    .line 154
    .line 155
    :goto_0
    return-void

    .line 156
    :pswitch_6
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;

    .line 157
    .line 158
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->l:[Lda/m;

    .line 159
    .line 160
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->b:Ll9/e;

    .line 164
    .line 165
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Llh/e;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    new-instance v4, Llh/f;

    .line 175
    .line 176
    invoke-direct {v4, v1, v5}, Llh/f;-><init>(Llh/e;Lp9/d;)V

    .line 177
    .line 178
    .line 179
    iget-object v6, v1, Lr0/z;->c:Lnc/a0;

    .line 180
    .line 181
    invoke-static {v6, v5, v3, v4, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 182
    .line 183
    .line 184
    new-instance v2, Llh/g;

    .line 185
    .line 186
    invoke-direct {v2, v1, v5}, Llh/g;-><init>(Llh/e;Lp9/d;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v1, Llh/e;->i:Llh/a;

    .line 190
    .line 191
    invoke-static {v6, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_7
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;

    .line 196
    .line 197
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->g:[Lda/m;

    .line 198
    .line 199
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/introduction/MobileAccidentIntroductionFragment;->b:Ll9/e;

    .line 203
    .line 204
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Ljh/c;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    new-instance v4, Ljh/d;

    .line 214
    .line 215
    invoke-direct {v4, v1, v5}, Ljh/d;-><init>(Ljh/c;Lp9/d;)V

    .line 216
    .line 217
    .line 218
    iget-object v6, v1, Lr0/z;->c:Lnc/a0;

    .line 219
    .line 220
    invoke-static {v6, v5, v3, v4, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 221
    .line 222
    .line 223
    new-instance v2, Ljh/e;

    .line 224
    .line 225
    invoke-direct {v2, v1, v5}, Ljh/e;-><init>(Ljh/c;Lp9/d;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v1, Ljh/c;->h:Ljh/f;

    .line 229
    .line 230
    invoke-static {v6, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :pswitch_8
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;

    .line 235
    .line 236
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->k:[Lda/m;

    .line 237
    .line 238
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iput-boolean v6, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->j:Z

    .line 242
    .line 243
    new-instance v1, Lorg/json/JSONObject;

    .line 244
    .line 245
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v4, "partyRole"

    .line 249
    .line 250
    iget-object v6, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->g:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    .line 254
    .line 255
    new-instance v4, Lorg/json/JSONObject;

    .line 256
    .line 257
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string v6, "latitude"

    .line 261
    .line 262
    iget-object v7, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->e:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    .line 266
    .line 267
    const-string v6, "longitude"

    .line 268
    .line 269
    iget-object v7, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->f:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    const-string v6, "deviceLocation"

    .line 275
    .line 276
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    .line 278
    .line 279
    new-instance v4, Lorg/json/JSONArray;

    .line 280
    .line 281
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 282
    .line 283
    .line 284
    iget-object v6, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->h:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    if-eqz v7, :cond_2

    .line 295
    .line 296
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionAnswer;

    .line 301
    .line 302
    new-instance v9, Lorg/json/JSONObject;

    .line 303
    .line 304
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionAnswer;->getQuestionCode()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    const-string v11, "questionCode"

    .line 312
    .line 313
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    .line 315
    .line 316
    const-string v10, "answer"

    .line 317
    .line 318
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionAnswer;->getAnswer()Z

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 326
    .line 327
    .line 328
    goto :goto_1

    .line 329
    :cond_2
    const-string v6, "answers"

    .line 330
    .line 331
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    .line 333
    .line 334
    iget-object v4, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->b:Ll9/e;

    .line 335
    .line 336
    invoke-interface {v4}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Lbh/c;

    .line 341
    .line 342
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    const-string v6, "rootObject.toString()"

    .line 347
    .line 348
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    new-instance v6, Lbh/d;

    .line 355
    .line 356
    invoke-direct {v6, v4, v1, v5}, Lbh/d;-><init>(Lbh/c;Ljava/lang/String;Lp9/d;)V

    .line 357
    .line 358
    .line 359
    iget-object v1, v4, Lr0/z;->c:Lnc/a0;

    .line 360
    .line 361
    invoke-static {v1, v5, v3, v6, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 362
    .line 363
    .line 364
    new-instance v2, Lbh/e;

    .line 365
    .line 366
    invoke-direct {v2, v4, v5}, Lbh/e;-><init>(Lbh/c;Lp9/d;)V

    .line 367
    .line 368
    .line 369
    iget-object v3, v4, Lbh/c;->i:Lbh/j;

    .line 370
    .line 371
    invoke-static {v1, v3, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :pswitch_9
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 376
    .line 377
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    .line 378
    .line 379
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    new-instance v4, Lzg/s;

    .line 390
    .line 391
    invoke-direct {v4, v1, v5}, Lzg/s;-><init>(Lzg/l;Lp9/d;)V

    .line 392
    .line 393
    .line 394
    iget-object v6, v1, Lr0/z;->c:Lnc/a0;

    .line 395
    .line 396
    invoke-static {v6, v5, v3, v4, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 397
    .line 398
    .line 399
    new-instance v2, Lzg/t;

    .line 400
    .line 401
    invoke-direct {v2, v1, v5}, Lzg/t;-><init>(Lzg/l;Lp9/d;)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v1, Lzg/l;->h:Lzg/u;

    .line 405
    .line 406
    invoke-static {v6, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :pswitch_a
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 411
    .line 412
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 413
    .line 414
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->m:Ljava/lang/String;

    .line 418
    .line 419
    if-eqz v1, :cond_3

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-nez v1, :cond_4

    .line 426
    .line 427
    :cond_3
    const/4 v3, 0x1

    .line 428
    :cond_4
    if-nez v3, :cond_5

    .line 429
    .line 430
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->e:Ll9/e;

    .line 431
    .line 432
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    check-cast v1, Lng/k;

    .line 437
    .line 438
    iget-object v2, v8, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->m:Ljava/lang/String;

    .line 439
    .line 440
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v2}, Lng/k;->d(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    goto :goto_2

    .line 447
    :cond_5
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->H()V

    .line 448
    .line 449
    .line 450
    :goto_2
    return-void

    .line 451
    :pswitch_b
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;

    .line 452
    .line 453
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->j:[Lda/m;

    .line 454
    .line 455
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->J()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    const-string v7, "mNetworkHelper"

    .line 463
    .line 464
    const-string v9, "tr.gov.turkiye.edevlet.kapisi"

    .line 465
    .line 466
    const-string v10, "Contact_Edit"

    .line 467
    .line 468
    const-string v11, "ContactEdit_Screen"

    .line 469
    .line 470
    const-string v12, "isFavMenuActive"

    .line 471
    .line 472
    const-string v13, "isEdkFolder"

    .line 473
    .line 474
    const-string v14, "isCustomPage"

    .line 475
    .line 476
    const-string v15, "serviceName"

    .line 477
    .line 478
    const-string v5, "folderUrl"

    .line 479
    .line 480
    const-string v2, "action.servicepage.open"

    .line 481
    .line 482
    const-string v3, "getString(R.string.profi\u2026phone_number_update_page)"

    .line 483
    .line 484
    const-string v4, "en"

    .line 485
    .line 486
    const-string v6, "tr"

    .line 487
    .line 488
    if-eqz v1, :cond_c

    .line 489
    .line 490
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->b:Lgf/b;

    .line 491
    .line 492
    if-eqz v1, :cond_b

    .line 493
    .line 494
    if-eqz v1, :cond_a

    .line 495
    .line 496
    invoke-virtual {v1}, Lgf/b;->a()Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-eqz v1, :cond_9

    .line 501
    .line 502
    const/4 v1, 0x1

    .line 503
    iput-boolean v1, v8, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->h:Z

    .line 504
    .line 505
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->I()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    if-eqz v6, :cond_6

    .line 514
    .line 515
    goto :goto_3

    .line 516
    :cond_6
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-eqz v1, :cond_7

    .line 521
    .line 522
    const-string v1, "edk-phone-number-operations-en"

    .line 523
    .line 524
    goto :goto_4

    .line 525
    :cond_7
    :goto_3
    const-string v1, "edk-phone-number-operations"

    .line 526
    .line 527
    :goto_4
    const v4, 0x7f130229

    .line 528
    .line 529
    .line 530
    invoke-virtual {v8, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-static {v4, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    new-instance v3, Landroid/content/Intent;

    .line 538
    .line 539
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v3, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    .line 547
    .line 548
    const/4 v1, 0x1

    .line 549
    invoke-virtual {v3, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 553
    .line 554
    .line 555
    const/4 v1, 0x0

    .line 556
    invoke-virtual {v3, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    .line 558
    .line 559
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 560
    .line 561
    const/16 v2, 0x22

    .line 562
    .line 563
    if-lt v1, v2, :cond_8

    .line 564
    .line 565
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    .line 567
    .line 568
    :cond_8
    invoke-virtual {v8, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v8, v11}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->L(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v8, v10}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->K(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    goto/16 :goto_7

    .line 578
    .line 579
    :cond_9
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->O()V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_7

    .line 583
    .line 584
    :cond_a
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    const/4 v1, 0x0

    .line 588
    throw v1

    .line 589
    :cond_b
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->N()V

    .line 590
    .line 591
    .line 592
    goto :goto_7

    .line 593
    :cond_c
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->b:Lgf/b;

    .line 594
    .line 595
    if-eqz v1, :cond_12

    .line 596
    .line 597
    if-eqz v1, :cond_11

    .line 598
    .line 599
    invoke-virtual {v1}, Lgf/b;->a()Z

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    if-eqz v1, :cond_10

    .line 604
    .line 605
    const/4 v1, 0x1

    .line 606
    iput-boolean v1, v8, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->h:Z

    .line 607
    .line 608
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->I()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v6

    .line 616
    if-eqz v6, :cond_d

    .line 617
    .line 618
    goto :goto_5

    .line 619
    :cond_d
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    if-eqz v1, :cond_e

    .line 624
    .line 625
    const-string v1, "edk-phone-number-operations-without-id-verification-en"

    .line 626
    .line 627
    goto :goto_6

    .line 628
    :cond_e
    :goto_5
    const-string v1, "edk-phone-number-operations-without-id-verification"

    .line 629
    .line 630
    :goto_6
    const v4, 0x7f130229

    .line 631
    .line 632
    .line 633
    invoke-virtual {v8, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    invoke-static {v4, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    new-instance v3, Landroid/content/Intent;

    .line 641
    .line 642
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    .line 650
    .line 651
    const/4 v1, 0x1

    .line 652
    invoke-virtual {v3, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    .line 657
    .line 658
    const/4 v1, 0x0

    .line 659
    invoke-virtual {v3, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    .line 661
    .line 662
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 663
    .line 664
    const/16 v2, 0x22

    .line 665
    .line 666
    if-lt v1, v2, :cond_f

    .line 667
    .line 668
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    .line 670
    .line 671
    :cond_f
    invoke-virtual {v8, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v8, v11}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->L(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v8, v10}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->K(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    goto :goto_7

    .line 681
    :cond_10
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->O()V

    .line 682
    .line 683
    .line 684
    goto :goto_7

    .line 685
    :cond_11
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    const/4 v1, 0x0

    .line 689
    throw v1

    .line 690
    :cond_12
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;->N()V

    .line 691
    .line 692
    .line 693
    :goto_7
    return-void

    .line 694
    :pswitch_c
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    .line 695
    .line 696
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->l:[Lda/m;

    .line 697
    .line 698
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 706
    .line 707
    new-instance v2, Lfg/a;

    .line 708
    .line 709
    invoke-direct {v2}, Lfg/a;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-static {v1, v2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->H()Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/FragmentProfileBackupBinding;->g:Lcom/google/android/material/card/MaterialCardView;

    .line 720
    .line 721
    const/16 v2, 0x8

    .line 722
    .line 723
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->I()Landroid/content/SharedPreferences;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    const-string v2, "editor"

    .line 735
    .line 736
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    const-string v2, "profileBannerShown"

    .line 740
    .line 741
    const/4 v3, 0x1

    .line 742
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 743
    .line 744
    .line 745
    const-string v2, "profileBannerShownDate"

    .line 746
    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 748
    .line 749
    .line 750
    move-result-wide v3

    .line 751
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 752
    .line 753
    .line 754
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 755
    .line 756
    .line 757
    return-void

    .line 758
    :pswitch_d
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;

    .line 759
    .line 760
    invoke-static {v8, v1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->c(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V

    .line 761
    .line 762
    .line 763
    return-void

    .line 764
    :pswitch_e
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/WonderListItemModel;

    .line 765
    .line 766
    invoke-static {v8, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/WonderListItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/WonderListItemModel;Landroid/view/View;)V

    .line 767
    .line 768
    .line 769
    return-void

    .line 770
    :pswitch_f
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ElectronicServiceListItemModel;

    .line 771
    .line 772
    invoke-static {v8, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ElectronicServiceListItemModel;->b(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ElectronicServiceListItemModel;Landroid/view/View;)V

    .line 773
    .line 774
    .line 775
    return-void

    .line 776
    :pswitch_10
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;

    .line 777
    .line 778
    invoke-static {v8, v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;Landroid/view/View;)V

    .line 779
    .line 780
    .line 781
    return-void

    .line 782
    :pswitch_11
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    .line 783
    .line 784
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 785
    .line 786
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->a:Ll9/e;

    .line 790
    .line 791
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    check-cast v1, Ltf/i;

    .line 796
    .line 797
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    .line 799
    .line 800
    new-instance v3, Ltf/j;

    .line 801
    .line 802
    const/16 v4, 0x5b

    .line 803
    .line 804
    const/4 v5, 0x0

    .line 805
    invoke-direct {v3, v1, v4, v5}, Ltf/j;-><init>(Ltf/i;ILp9/d;)V

    .line 806
    .line 807
    .line 808
    iget-object v4, v1, Lr0/z;->c:Lnc/a0;

    .line 809
    .line 810
    const/4 v6, 0x0

    .line 811
    invoke-static {v4, v5, v6, v3, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 812
    .line 813
    .line 814
    new-instance v2, Ltf/k;

    .line 815
    .line 816
    invoke-direct {v2, v1, v5}, Ltf/k;-><init>(Ltf/i;Lp9/d;)V

    .line 817
    .line 818
    .line 819
    iget-object v1, v1, Ltf/i;->h:Ltf/l;

    .line 820
    .line 821
    invoke-static {v4, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 822
    .line 823
    .line 824
    return-void

    .line 825
    :pswitch_12
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment;

    .line 826
    .line 827
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment;->h:[Lda/m;

    .line 828
    .line 829
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    iget-object v1, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment;->b:Ll9/e;

    .line 833
    .line 834
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    check-cast v1, Lqf/d;

    .line 839
    .line 840
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    new-instance v3, Lqf/g;

    .line 844
    .line 845
    const/4 v4, 0x0

    .line 846
    invoke-direct {v3, v1, v4}, Lqf/g;-><init>(Lqf/d;Lp9/d;)V

    .line 847
    .line 848
    .line 849
    iget-object v5, v1, Lr0/z;->c:Lnc/a0;

    .line 850
    .line 851
    const/4 v6, 0x0

    .line 852
    invoke-static {v5, v4, v6, v3, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 853
    .line 854
    .line 855
    new-instance v2, Lqf/h;

    .line 856
    .line 857
    invoke-direct {v2, v1, v4}, Lqf/h;-><init>(Lqf/d;Lp9/d;)V

    .line 858
    .line 859
    .line 860
    iget-object v1, v1, Lqf/d;->h:Lqf/l;

    .line 861
    .line 862
    invoke-static {v5, v1, v2}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 863
    .line 864
    .line 865
    return-void

    .line 866
    :pswitch_13
    check-cast v8, Lie/e;

    .line 867
    .line 868
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 872
    .line 873
    const-string v2, "android.settings.NFC_SETTINGS"

    .line 874
    .line 875
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .line 880
    .line 881
    :catch_0
    invoke-virtual {v8}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 882
    .line 883
    .line 884
    return-void

    .line 885
    :goto_8
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationErrorActivity;

    .line 886
    .line 887
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationErrorActivity;->d:I

    .line 888
    .line 889
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 893
    .line 894
    .line 895
    return-void

    .line 896
    nop

    .line 897
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
