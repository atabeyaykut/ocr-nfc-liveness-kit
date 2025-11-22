.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lbh/b;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lbh/b;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lbh/b;->d:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    const-string v4, "tr.gov.turkiye.edevlet.kapisi"

    .line 14
    .line 15
    const/16 v5, 0x22

    .line 16
    .line 17
    const v6, 0x8000

    .line 18
    .line 19
    .line 20
    const-string v7, "action.login.open"

    .line 21
    .line 22
    iget-object v8, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;

    .line 23
    .line 24
    if-eqz v0, :cond_12

    .line 25
    .line 26
    iget-object v0, p1, Lbh/b;->a:Lr0/b;

    .line 27
    .line 28
    instance-of v9, v0, Lr0/d1;

    .line 29
    .line 30
    if-eqz v9, :cond_0

    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v9, v0, Lr0/k;

    .line 35
    .line 36
    :goto_0
    const/16 v10, 0x8

    .line 37
    .line 38
    if-eqz v9, :cond_1

    .line 39
    .line 40
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->k:[Lda/m;

    .line 41
    .line 42
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 56
    .line 57
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 58
    .line 59
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 67
    .line 68
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 69
    .line 70
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->c:Lv/e;

    .line 74
    .line 75
    if-eqz p1, :cond_21

    .line 76
    .line 77
    invoke-virtual {p1}, Lv/e;->show()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_8

    .line 81
    .line 82
    :cond_1
    instance-of v9, v0, Lr0/c1;

    .line 83
    .line 84
    if-eqz v9, :cond_a

    .line 85
    .line 86
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 87
    .line 88
    const-string v4, "Success"

    .line 89
    .line 90
    new-array v5, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {v0, v4, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->c:Lv/e;

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p1, Lbh/b;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetModel;

    .line 103
    .line 104
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetModel;->getQuestionSetData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetData;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_9

    .line 109
    .line 110
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetData;->getQuestionsObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionsMapObject;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionsMapObject;->getBaseDataMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionsDataMapObject;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionsDataMapObject;->getBaseData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionArrayList;->getMyArrayList()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    check-cast v0, Ljava/util/Collection;

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    xor-int/2addr v0, v3

    .line 141
    if-ne v0, v3, :cond_3

    .line 142
    .line 143
    const/4 v0, 0x1

    .line 144
    goto :goto_1

    .line 145
    :cond_3
    const/4 v0, 0x0

    .line 146
    :goto_1
    if-eqz v0, :cond_9

    .line 147
    .line 148
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetData;->getQuestionsObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionsMapObject;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionsMapObject;->getBaseDataMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionsDataMapObject;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionsDataMapObject;->getBaseData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionArrayList;->getMyArrayList()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    goto :goto_2

    .line 171
    :cond_4
    move-object p1, v1

    .line 172
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v4, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v4, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->h:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 189
    .line 190
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 198
    .line 199
    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 200
    .line 201
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 209
    .line 210
    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 211
    .line 212
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    if-eqz p1, :cond_5

    .line 216
    .line 217
    check-cast p1, Ljava/lang/Iterable;

    .line 218
    .line 219
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_5

    .line 228
    .line 229
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionArray;

    .line 234
    .line 235
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionArray;->getQuestionMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Question;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Question;->getText()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    iget-object v5, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->h:Ljava/util/ArrayList;

    .line 247
    .line 248
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionAnswer;

    .line 249
    .line 250
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionArray;->getQuestionMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Question;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Question;->getCode()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-direct {v6, v4, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionAnswer;-><init>(Ljava/lang/String;Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 266
    .line 267
    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    const/4 v4, 0x0

    .line 275
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_8

    .line 280
    .line 281
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    add-int/lit8 v6, v4, 0x1

    .line 286
    .line 287
    if-ltz v4, :cond_7

    .line 288
    .line 289
    check-cast v5, Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v5}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    add-int/lit8 v7, v7, -0x1

    .line 300
    .line 301
    if-ge v4, v7, :cond_6

    .line 302
    .line 303
    const-string v4, "\n"

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_6
    const-string v4, ""

    .line 307
    .line 308
    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    new-instance v5, Landroid/text/SpannableString;

    .line 316
    .line 317
    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    new-instance v4, Landroid/text/style/BulletSpan;

    .line 321
    .line 322
    const/16 v7, 0xf

    .line 323
    .line 324
    const v9, -0x777778

    .line 325
    .line 326
    .line 327
    invoke-direct {v4, v7, v9}, Landroid/text/style/BulletSpan;-><init>(II)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    const/16 v9, 0x11

    .line 335
    .line 336
    invoke-virtual {v5, v4, v2, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 340
    .line 341
    .line 342
    move v4, v6

    .line 343
    goto :goto_4

    .line 344
    :cond_7
    invoke-static {}, Lb8/f;->k0()V

    .line 345
    .line 346
    .line 347
    throw v1

    .line 348
    :cond_8
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 353
    .line 354
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_8

    .line 358
    .line 359
    :cond_9
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 364
    .line 365
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 373
    .line 374
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 375
    .line 376
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 384
    .line 385
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 386
    .line 387
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_8

    .line 391
    .line 392
    :cond_a
    instance-of p1, v0, Lr0/i;

    .line 393
    .line 394
    if-eqz p1, :cond_21

    .line 395
    .line 396
    check-cast v0, Lr0/i;

    .line 397
    .line 398
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 399
    .line 400
    iget-object v0, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->c:Lv/e;

    .line 401
    .line 402
    if-eqz v0, :cond_b

    .line 403
    .line 404
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 405
    .line 406
    .line 407
    :cond_b
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 408
    .line 409
    if-eqz v0, :cond_d

    .line 410
    .line 411
    invoke-static {v7, v6}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 416
    .line 417
    if-lt v0, v5, :cond_c

    .line 418
    .line 419
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    .line 421
    .line 422
    :cond_c
    invoke-virtual {v8, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    if-eqz p1, :cond_21

    .line 430
    .line 431
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_8

    .line 435
    .line 436
    :cond_d
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 437
    .line 438
    if-eqz v0, :cond_e

    .line 439
    .line 440
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 445
    .line 446
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 454
    .line 455
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 456
    .line 457
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 465
    .line 466
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 467
    .line 468
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 476
    .line 477
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 478
    .line 479
    new-instance v0, Lxf/d;

    .line 480
    .line 481
    const/16 v1, 0xa

    .line 482
    .line 483
    invoke-direct {v0, v1, v8}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_8

    .line 490
    .line 491
    :cond_e
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 492
    .line 493
    if-eqz v0, :cond_11

    .line 494
    .line 495
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 496
    .line 497
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 506
    .line 507
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 515
    .line 516
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 517
    .line 518
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 526
    .line 527
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 528
    .line 529
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 530
    .line 531
    .line 532
    if-eqz p1, :cond_f

    .line 533
    .line 534
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-nez v0, :cond_10

    .line 539
    .line 540
    :cond_f
    const/4 v2, 0x1

    .line 541
    :cond_10
    if-nez v2, :cond_21

    .line 542
    .line 543
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 548
    .line 549
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 550
    .line 551
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_8

    .line 555
    .line 556
    :cond_11
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 561
    .line 562
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 570
    .line 571
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 572
    .line 573
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 581
    .line 582
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 583
    .line 584
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_8

    .line 588
    .line 589
    :cond_12
    iget-object v0, p1, Lbh/b;->b:Lr0/b;

    .line 590
    .line 591
    instance-of v9, v0, Lr0/d1;

    .line 592
    .line 593
    if-eqz v9, :cond_13

    .line 594
    .line 595
    const/4 v9, 0x1

    .line 596
    goto :goto_6

    .line 597
    :cond_13
    instance-of v9, v0, Lr0/k;

    .line 598
    .line 599
    :goto_6
    if-eqz v9, :cond_14

    .line 600
    .line 601
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->c:Lv/e;

    .line 602
    .line 603
    if-eqz p1, :cond_21

    .line 604
    .line 605
    invoke-virtual {p1}, Lv/e;->show()V

    .line 606
    .line 607
    .line 608
    goto/16 :goto_8

    .line 609
    .line 610
    :cond_14
    instance-of v9, v0, Lr0/c1;

    .line 611
    .line 612
    if-eqz v9, :cond_18

    .line 613
    .line 614
    iget-object v0, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->c:Lv/e;

    .line 615
    .line 616
    if-eqz v0, :cond_15

    .line 617
    .line 618
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 619
    .line 620
    .line 621
    :cond_15
    iget-object p1, p1, Lbh/b;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;

    .line 622
    .line 623
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->getInitializeData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    if-eqz v0, :cond_16

    .line 628
    .line 629
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;->getInitialiseObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseMapObject;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    if-eqz v0, :cond_16

    .line 634
    .line 635
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseMapObject;->getBaseDataMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseDataMapObject;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    if-eqz v0, :cond_16

    .line 640
    .line 641
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseDataMapObject;->getBaseData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseData;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    if-eqz v0, :cond_16

    .line 646
    .line 647
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseData;->getInitializeData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    if-eqz v0, :cond_16

    .line 652
    .line 653
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->getNameSurname()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    goto :goto_7

    .line 658
    :cond_16
    move-object v0, v1

    .line 659
    :goto_7
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;->getInitializeData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    if-eqz p1, :cond_17

    .line 664
    .line 665
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeModel;->getInitialiseObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseMapObject;

    .line 666
    .line 667
    .line 668
    move-result-object p1

    .line 669
    if-eqz p1, :cond_17

    .line 670
    .line 671
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseMapObject;->getBaseDataMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseDataMapObject;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    if-eqz p1, :cond_17

    .line 676
    .line 677
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseDataMapObject;->getBaseData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseData;

    .line 678
    .line 679
    .line 680
    move-result-object p1

    .line 681
    if-eqz p1, :cond_17

    .line 682
    .line 683
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/BaseData;->getInitializeData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    if-eqz p1, :cond_17

    .line 688
    .line 689
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;->getPhoneNumber()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    :cond_17
    const/4 p1, 0x2

    .line 694
    new-array p1, p1, [Ll9/g;

    .line 695
    .line 696
    new-instance v4, Ll9/g;

    .line 697
    .line 698
    const-string v5, "nameSurname"

    .line 699
    .line 700
    invoke-direct {v4, v5, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    aput-object v4, p1, v2

    .line 704
    .line 705
    new-instance v0, Ll9/g;

    .line 706
    .line 707
    const-string v4, "phoneNumber"

    .line 708
    .line 709
    invoke-direct {v0, v4, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    aput-object v0, p1, v3

    .line 713
    .line 714
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 715
    .line 716
    .line 717
    move-result-object p1

    .line 718
    iget-boolean v0, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->j:Z

    .line 719
    .line 720
    if-eqz v0, :cond_21

    .line 721
    .line 722
    iput-boolean v2, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->j:Z

    .line 723
    .line 724
    invoke-static {v8}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    new-instance v1, Landroidx/navigation/NavOptions$Builder;

    .line 729
    .line 730
    invoke-direct {v1}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 731
    .line 732
    .line 733
    const v3, 0x7f0a0271

    .line 734
    .line 735
    .line 736
    invoke-virtual {v1, v3, v2}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-virtual {v1}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    const v2, 0x7f0a026e

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v2, p1, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 748
    .line 749
    .line 750
    goto/16 :goto_8

    .line 751
    .line 752
    :cond_18
    instance-of p1, v0, Lr0/i;

    .line 753
    .line 754
    if-eqz p1, :cond_21

    .line 755
    .line 756
    check-cast v0, Lr0/i;

    .line 757
    .line 758
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 759
    .line 760
    iget-object v0, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->c:Lv/e;

    .line 761
    .line 762
    if-eqz v0, :cond_19

    .line 763
    .line 764
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 765
    .line 766
    .line 767
    :cond_19
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 768
    .line 769
    if-eqz v0, :cond_1b

    .line 770
    .line 771
    invoke-static {v7, v6}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    .line 773
    .line 774
    move-result-object p1

    .line 775
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 776
    .line 777
    if-lt v0, v5, :cond_1a

    .line 778
    .line 779
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    .line 781
    .line 782
    :cond_1a
    invoke-virtual {v8, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    if-eqz p1, :cond_21

    .line 790
    .line 791
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 792
    .line 793
    .line 794
    goto :goto_8

    .line 795
    :cond_1b
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 796
    .line 797
    const-string v3, "mConditionListBinding.mktConditionContainer"

    .line 798
    .line 799
    if-eqz v0, :cond_1c

    .line 800
    .line 801
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->d:Landroid/content/Context;

    .line 802
    .line 803
    if-eqz p1, :cond_21

    .line 804
    .line 805
    sget v0, Lke/d;->a:I

    .line 806
    .line 807
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->e:Landroidx/core/widget/NestedScrollView;

    .line 812
    .line 813
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    const v2, 0x7f060025

    .line 817
    .line 818
    .line 819
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    const v3, 0x7f060097

    .line 824
    .line 825
    .line 826
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 827
    .line 828
    .line 829
    move-result p1

    .line 830
    const v3, 0x7f130066

    .line 831
    .line 832
    .line 833
    invoke-static {v0, v3, v1, v2, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 834
    .line 835
    .line 836
    move-result-object p1

    .line 837
    if-eqz p1, :cond_21

    .line 838
    .line 839
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 840
    .line 841
    .line 842
    goto :goto_8

    .line 843
    :cond_1c
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 844
    .line 845
    if-eqz v0, :cond_1d

    .line 846
    .line 847
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 848
    .line 849
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    :cond_1d
    iget-object p1, v8, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->d:Landroid/content/Context;

    .line 854
    .line 855
    if-eqz p1, :cond_21

    .line 856
    .line 857
    if-eqz v1, :cond_1e

    .line 858
    .line 859
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    if-nez v0, :cond_1f

    .line 864
    .line 865
    :cond_1e
    const/4 v2, 0x1

    .line 866
    :cond_1f
    if-eqz v2, :cond_20

    .line 867
    .line 868
    const v0, 0x7f130249

    .line 869
    .line 870
    .line 871
    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    :cond_20
    const-string v0, "if (errorMessage.isNullO\u2026rrorMessage\n            }"

    .line 876
    .line 877
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    sget v0, Lke/d;->a:I

    .line 881
    .line 882
    invoke-virtual {v8}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;->e:Landroidx/core/widget/NestedScrollView;

    .line 887
    .line 888
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    const v2, 0x7f060088

    .line 892
    .line 893
    .line 894
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 895
    .line 896
    .line 897
    move-result p1

    .line 898
    invoke-static {v0, v1, p1}, Lke/d$a;->b(Landroid/view/ViewGroup;Ljava/lang/String;I)Lke/d;

    .line 899
    .line 900
    .line 901
    move-result-object p1

    .line 902
    if-eqz p1, :cond_21

    .line 903
    .line 904
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 905
    .line 906
    .line 907
    :cond_21
    :goto_8
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 908
    .line 909
    return-object p1
.end method
