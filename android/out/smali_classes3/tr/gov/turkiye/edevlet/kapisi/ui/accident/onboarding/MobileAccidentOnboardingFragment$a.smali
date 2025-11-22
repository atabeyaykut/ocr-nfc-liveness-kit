.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lth/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lth/c;

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
    iget-boolean v1, p1, Lth/c;->b:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;

    .line 15
    .line 16
    if-eqz v1, :cond_a

    .line 17
    .line 18
    iget-object v1, p1, Lth/c;->a:Lr0/b;

    .line 19
    .line 20
    instance-of v5, v1, Lr0/d1;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    instance-of v5, v1, Lr0/k;

    .line 27
    .line 28
    :goto_0
    if-eqz v5, :cond_1

    .line 29
    .line 30
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->f:[Lda/m;

    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_1
    instance-of v5, v1, Lr0/c1;

    .line 35
    .line 36
    if-eqz v5, :cond_9

    .line 37
    .line 38
    iget-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->c:Lv/e;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lv/e;->dismiss()V

    .line 43
    .line 44
    .line 45
    :cond_2
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 46
    .line 47
    const-string v5, "status 2fa"

    .line 48
    .line 49
    new-array v6, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v1, v5, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Lth/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    .line 55
    .line 56
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;->getTwoFactorData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->getTwoFactorEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-ne v1, v3, :cond_3

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 v1, 0x0

    .line 71
    :goto_1
    if-eqz v1, :cond_4

    .line 72
    .line 73
    goto/16 :goto_7

    .line 74
    .line 75
    :cond_4
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;->getTwoFactorData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;->getTwoFactorWarningText()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    const/4 p1, 0x0

    .line 87
    :goto_2
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 101
    .line 102
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 112
    .line 113
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 123
    .line 124
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 134
    .line 135
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->d:Landroid/widget/TextView;

    .line 136
    .line 137
    const v1, 0x7f130153

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 152
    .line 153
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 154
    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_7

    .line 162
    .line 163
    :cond_6
    const/4 v2, 0x1

    .line 164
    :cond_7
    if-nez v2, :cond_8

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    const p1, 0x7f130152

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_9

    .line 178
    .line 179
    :cond_9
    instance-of p1, v1, Lr0/i;

    .line 180
    .line 181
    if-eqz p1, :cond_19

    .line 182
    .line 183
    goto/16 :goto_8

    .line 184
    .line 185
    :cond_a
    iget-object v1, p1, Lth/c;->d:Lr0/b;

    .line 186
    .line 187
    instance-of v5, v1, Lr0/d1;

    .line 188
    .line 189
    if-eqz v5, :cond_b

    .line 190
    .line 191
    const/4 v5, 0x1

    .line 192
    goto :goto_4

    .line 193
    :cond_b
    instance-of v5, v1, Lr0/k;

    .line 194
    .line 195
    :goto_4
    if-eqz v5, :cond_c

    .line 196
    .line 197
    iget-boolean p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->e:Z

    .line 198
    .line 199
    if-eqz p1, :cond_19

    .line 200
    .line 201
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 202
    .line 203
    const-string v0, "status clarification v2"

    .line 204
    .line 205
    new-array v1, v2, [Ljava/lang/Object;

    .line 206
    .line 207
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :goto_5
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->G()V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_9

    .line 214
    .line 215
    :cond_c
    instance-of v5, v1, Lr0/c1;

    .line 216
    .line 217
    if-eqz v5, :cond_11

    .line 218
    .line 219
    iget-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->c:Lv/e;

    .line 220
    .line 221
    if-eqz v1, :cond_d

    .line 222
    .line 223
    invoke-virtual {v1}, Lv/e;->dismiss()V

    .line 224
    .line 225
    .line 226
    :cond_d
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 227
    .line 228
    const-string v5, "status clarification"

    .line 229
    .line 230
    new-array v6, v2, [Ljava/lang/Object;

    .line 231
    .line 232
    invoke-virtual {v1, v5, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-boolean v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->e:Z

    .line 236
    .line 237
    if-eqz v1, :cond_10

    .line 238
    .line 239
    iput-boolean v2, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->e:Z

    .line 240
    .line 241
    iget-object p1, p1, Lth/c;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    .line 242
    .line 243
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;->getClarificationControl()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ClarificationControlData;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    if-eqz p1, :cond_e

    .line 248
    .line 249
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ClarificationControlData;->getSendConfirmationRequestObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SendConfirmationRequestObject;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_e

    .line 254
    .line 255
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SendConfirmationRequestObject;->getClarificationControlMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ClarificationControlMapObject;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-eqz p1, :cond_e

    .line 260
    .line 261
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ClarificationControlMapObject;->getStatus()Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-ne p1, v3, :cond_e

    .line 266
    .line 267
    const/4 v2, 0x1

    .line 268
    :cond_e
    invoke-static {v4}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    if-eqz v2, :cond_f

    .line 273
    .line 274
    const v0, 0x7f0a0271

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_f
    const v0, 0x7f0a0269

    .line 279
    .line 280
    .line 281
    :goto_6
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_9

    .line 285
    .line 286
    :cond_10
    :goto_7
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->f:[Lda/m;

    .line 287
    .line 288
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 293
    .line 294
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 302
    .line 303
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 313
    .line 314
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 315
    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 324
    .line 325
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 326
    .line 327
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_9

    .line 331
    .line 332
    :cond_11
    instance-of p1, v1, Lr0/i;

    .line 333
    .line 334
    if-eqz p1, :cond_19

    .line 335
    .line 336
    :goto_8
    check-cast v1, Lr0/i;

    .line 337
    .line 338
    iget-object p1, v1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 339
    .line 340
    iget-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->c:Lv/e;

    .line 341
    .line 342
    if-eqz v1, :cond_12

    .line 343
    .line 344
    invoke-virtual {v1}, Lv/e;->dismiss()V

    .line 345
    .line 346
    .line 347
    :cond_12
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 348
    .line 349
    if-eqz v1, :cond_14

    .line 350
    .line 351
    const-string p1, "action.login.open"

    .line 352
    .line 353
    const v0, 0x8000

    .line 354
    .line 355
    .line 356
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 361
    .line 362
    const/16 v1, 0x22

    .line 363
    .line 364
    if-lt v0, v1, :cond_13

    .line 365
    .line 366
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    .line 370
    .line 371
    :cond_13
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    if-eqz p1, :cond_19

    .line 379
    .line 380
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_9

    .line 384
    .line 385
    :cond_14
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 386
    .line 387
    if-eqz v1, :cond_15

    .line 388
    .line 389
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 394
    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 403
    .line 404
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 405
    .line 406
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 414
    .line 415
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 416
    .line 417
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 425
    .line 426
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 427
    .line 428
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 436
    .line 437
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 438
    .line 439
    new-instance v0, Lzd/e;

    .line 440
    .line 441
    const/16 v1, 0xf

    .line 442
    .line 443
    invoke-direct {v0, v1, v4}, Lzd/e;-><init>(ILjava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_15
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 451
    .line 452
    if-eqz v1, :cond_18

    .line 453
    .line 454
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 455
    .line 456
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 465
    .line 466
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 474
    .line 475
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 476
    .line 477
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 485
    .line 486
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 487
    .line 488
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 496
    .line 497
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 498
    .line 499
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 500
    .line 501
    .line 502
    if-eqz p1, :cond_16

    .line 503
    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-nez v0, :cond_17

    .line 509
    .line 510
    :cond_16
    const/4 v2, 0x1

    .line 511
    :cond_17
    if-nez v2, :cond_19

    .line 512
    .line 513
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 518
    .line 519
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 520
    .line 521
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .line 523
    .line 524
    goto :goto_9

    .line 525
    :cond_18
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 530
    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 539
    .line 540
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 541
    .line 542
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;

    .line 550
    .line 551
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeUpdateModuleBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 552
    .line 553
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 561
    .line 562
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 563
    .line 564
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 565
    .line 566
    .line 567
    :cond_19
    :goto_9
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 568
    .line 569
    return-object p1
.end method
