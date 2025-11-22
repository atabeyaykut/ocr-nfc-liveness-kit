.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lmh/b;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lmh/b;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lmh/b;->a:Lr0/b;

    .line 9
    .line 10
    instance-of v1, v0, Lr0/d1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v1, v0, Lr0/k;

    .line 18
    .line 19
    :goto_0
    const/4 v3, 0x0

    .line 20
    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-boolean p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->e:Z

    .line 25
    .line 26
    if-eqz p1, :cond_12

    .line 27
    .line 28
    iput-boolean v3, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->e:Z

    .line 29
    .line 30
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->c:Lv/e;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lv/e;->show()V

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 38
    .line 39
    const-string v0, "Loading QRScan"

    .line 40
    .line 41
    new-array v1, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_2
    instance-of v1, v0, Lr0/c1;

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    if-eqz v1, :cond_8

    .line 52
    .line 53
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->c:Lv/e;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 58
    .line 59
    .line 60
    :cond_3
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 61
    .line 62
    const-string v1, "Success QRScan"

    .line 63
    .line 64
    new-array v6, v3, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p1, Lmh/b;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRModel;

    .line 70
    .line 71
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRModel;->getScanQRData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRData;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRData;->getScanQRObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRObject;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRObject;->getScanQRMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRMap;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRMap;->getScanQRSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRSubData;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRSubData;->getScanQRInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    :cond_4
    if-eqz v5, :cond_5

    .line 100
    .line 101
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRInfo;->getParticipants()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipants;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipants;->getParticipantList()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    check-cast p1, Ljava/util/Collection;

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    xor-int/2addr p1, v2

    .line 120
    if-ne p1, v2, :cond_5

    .line 121
    .line 122
    const/4 p1, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    const/4 p1, 0x0

    .line 125
    :goto_1
    if-eqz p1, :cond_12

    .line 126
    .line 127
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRInfo;->getParticipants()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipants;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipants;->getParticipantList()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Ljava/lang/Iterable;

    .line 136
    .line 137
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantArray;

    .line 152
    .line 153
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantInfo;->getPartyRole()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const-string v5, "GUEST"

    .line 162
    .line 163
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantInfo;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantInfo;->getIdentityNumber()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iput-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->f:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRParticipantInfo;->getPlate()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->g:Ljava/lang/String;

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_7
    const/4 p1, 0x2

    .line 191
    new-array p1, p1, [Ll9/g;

    .line 192
    .line 193
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->f:Ljava/lang/String;

    .line 194
    .line 195
    new-instance v1, Ll9/g;

    .line 196
    .line 197
    const-string v5, "identityNumber"

    .line 198
    .line 199
    invoke-direct {v1, v5, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    aput-object v1, p1, v3

    .line 203
    .line 204
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->g:Ljava/lang/String;

    .line 205
    .line 206
    new-instance v1, Ll9/g;

    .line 207
    .line 208
    const-string v3, "plateNumber"

    .line 209
    .line 210
    invoke-direct {v1, v3, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    aput-object v1, p1, v2

    .line 214
    .line 215
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v4}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const v1, 0x7f0a0273

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_4

    .line 230
    .line 231
    :cond_8
    instance-of p1, v0, Lr0/i;

    .line 232
    .line 233
    if-eqz p1, :cond_12

    .line 234
    .line 235
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 236
    .line 237
    const-string v1, "Fail QRScan"

    .line 238
    .line 239
    new-array v6, v3, [Ljava/lang/Object;

    .line 240
    .line 241
    invoke-virtual {p1, v1, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->c:Lv/e;

    .line 245
    .line 246
    if-eqz p1, :cond_9

    .line 247
    .line 248
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 249
    .line 250
    .line 251
    :cond_9
    check-cast v0, Lr0/i;

    .line 252
    .line 253
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 254
    .line 255
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->c:Lv/e;

    .line 256
    .line 257
    if-eqz v0, :cond_a

    .line 258
    .line 259
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 260
    .line 261
    .line 262
    :cond_a
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 263
    .line 264
    if-eqz v0, :cond_c

    .line 265
    .line 266
    const-string p1, "action.login.open"

    .line 267
    .line 268
    const v0, 0x8000

    .line 269
    .line 270
    .line 271
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 276
    .line 277
    const/16 v1, 0x22

    .line 278
    .line 279
    if-lt v0, v1, :cond_b

    .line 280
    .line 281
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 282
    .line 283
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    :cond_b
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    if-eqz p1, :cond_12

    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :cond_c
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 301
    .line 302
    const-string v1, "mScanQrBinding.mktQrScanContainer"

    .line 303
    .line 304
    iget-object v6, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 305
    .line 306
    if-eqz v0, :cond_d

    .line 307
    .line 308
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->d:Landroid/content/Context;

    .line 309
    .line 310
    if-eqz p1, :cond_12

    .line 311
    .line 312
    sget v0, Lke/d;->a:I

    .line 313
    .line 314
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->j:[Lda/m;

    .line 315
    .line 316
    aget-object v0, v0, v3

    .line 317
    .line 318
    invoke-virtual {v6, v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentScanQrBinding;

    .line 323
    .line 324
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentScanQrBinding;->c:Landroidx/core/widget/NestedScrollView;

    .line 325
    .line 326
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const v1, 0x7f060025

    .line 330
    .line 331
    .line 332
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    const v2, 0x7f060097

    .line 337
    .line 338
    .line 339
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    const v2, 0x7f130066

    .line 344
    .line 345
    .line 346
    invoke-static {v0, v2, v5, v1, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    if-eqz p1, :cond_12

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 353
    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_d
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 357
    .line 358
    if-eqz v0, :cond_e

    .line 359
    .line 360
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 361
    .line 362
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    :cond_e
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->d:Landroid/content/Context;

    .line 367
    .line 368
    if-eqz p1, :cond_12

    .line 369
    .line 370
    if-eqz v5, :cond_10

    .line 371
    .line 372
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-nez v0, :cond_f

    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_f
    const/4 v2, 0x0

    .line 380
    :cond_10
    :goto_3
    if-eqz v2, :cond_11

    .line 381
    .line 382
    const v0, 0x7f130249

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    :cond_11
    const-string v0, "if (errorMessage.isNullO\u2026rrorMessage\n            }"

    .line 390
    .line 391
    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    sget v0, Lke/d;->a:I

    .line 395
    .line 396
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/host/MobileAccidentQRScanFragment;->j:[Lda/m;

    .line 397
    .line 398
    aget-object v0, v0, v3

    .line 399
    .line 400
    invoke-virtual {v6, v4, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentScanQrBinding;

    .line 405
    .line 406
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentScanQrBinding;->c:Landroidx/core/widget/NestedScrollView;

    .line 407
    .line 408
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const v1, 0x7f060088

    .line 412
    .line 413
    .line 414
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    invoke-static {v0, v5, p1}, Lke/d$a;->b(Landroid/view/ViewGroup;Ljava/lang/String;I)Lke/d;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    if-eqz p1, :cond_12

    .line 423
    .line 424
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 425
    .line 426
    .line 427
    :cond_12
    :goto_4
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 428
    .line 429
    return-object p1
.end method
