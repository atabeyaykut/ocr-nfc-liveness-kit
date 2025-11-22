.class public final Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lvg/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lvg/c;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lvg/c;->a:Lr0/b;

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
    const/16 v4, 0x8

    .line 21
    .line 22
    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->k:[Lda/m;

    .line 27
    .line 28
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 42
    .line 43
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 53
    .line 54
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->d:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_1
    instance-of v1, v0, Lr0/c1;

    .line 71
    .line 72
    if-eqz v1, :cond_c

    .line 73
    .line 74
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->k:[Lda/m;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lvg/c;->b:Ljava/util/List;

    .line 80
    .line 81
    move-object v0, p1

    .line 82
    check-cast v0, Ljava/util/Collection;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const/4 v2, 0x0

    .line 94
    :cond_3
    :goto_1
    if-nez v2, :cond_b

    .line 95
    .line 96
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->d:Landroid/widget/ProgressBar;

    .line 101
    .line 102
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 110
    .line 111
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 121
    .line 122
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    const v0, 0x7f1301f5

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v1, "getString(R.string.plural_service_count_text)"

    .line 144
    .line 145
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const v1, 0x7f130248

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v2, "getString(R.string.service_count_text)"

    .line 156
    .line 157
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    const-string v4, "mInstitutionList"

    .line 164
    .line 165
    const-string v6, "mInstitutionListController"

    .line 166
    .line 167
    if-nez v2, :cond_7

    .line 168
    .line 169
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

    .line 170
    .line 171
    invoke-direct {v2, v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;)V

    .line 172
    .line 173
    .line 174
    iput-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

    .line 175
    .line 176
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 181
    .line 182
    iget-object v7, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

    .line 183
    .line 184
    if-eqz v7, :cond_6

    .line 185
    .line 186
    invoke-virtual {v2, v7}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 187
    .line 188
    .line 189
    iput-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->e:Ljava/util/List;

    .line 190
    .line 191
    iget-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

    .line 192
    .line 193
    if-eqz v2, :cond_5

    .line 194
    .line 195
    if-eqz p1, :cond_4

    .line 196
    .line 197
    invoke-virtual {v2, p1, v0, v1}, Lcom/airbnb/epoxy/Typed3EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v3

    .line 206
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v3

    .line 210
    :cond_6
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v3

    .line 214
    :cond_7
    iget-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->e:Ljava/util/List;

    .line 215
    .line 216
    if-eqz v2, :cond_11

    .line 217
    .line 218
    iput-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->e:Ljava/util/List;

    .line 219
    .line 220
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 225
    .line 226
    iget-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

    .line 227
    .line 228
    if-eqz v2, :cond_a

    .line 229
    .line 230
    invoke-virtual {p1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 231
    .line 232
    .line 233
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

    .line 234
    .line 235
    if-eqz p1, :cond_9

    .line 236
    .line 237
    iget-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->e:Ljava/util/List;

    .line 238
    .line 239
    if-eqz v2, :cond_8

    .line 240
    .line 241
    invoke-virtual {p1, v2, v0, v1}, Lcom/airbnb/epoxy/Typed3EpoxyController;->setData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v3

    .line 250
    :cond_9
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v3

    .line 254
    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v3

    .line 258
    :cond_b
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->G()V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :cond_c
    instance-of p1, v0, Lr0/i;

    .line 264
    .line 265
    if-eqz p1, :cond_11

    .line 266
    .line 267
    check-cast v0, Lr0/i;

    .line 268
    .line 269
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 270
    .line 271
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->k:[Lda/m;

    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 277
    .line 278
    if-eqz v0, :cond_e

    .line 279
    .line 280
    const-string p1, "action.login.open"

    .line 281
    .line 282
    const v0, 0x8000

    .line 283
    .line 284
    .line 285
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 290
    .line 291
    const/16 v1, 0x22

    .line 292
    .line 293
    if-lt v0, v1, :cond_d

    .line 294
    .line 295
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    :cond_d
    invoke-virtual {v5, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    if-eqz p1, :cond_11

    .line 308
    .line 309
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_e
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 314
    .line 315
    if-eqz v0, :cond_f

    .line 316
    .line 317
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->G()V

    .line 318
    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_f
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 322
    .line 323
    if-eqz p1, :cond_10

    .line 324
    .line 325
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 330
    .line 331
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->d:Landroid/widget/ProgressBar;

    .line 339
    .line 340
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 348
    .line 349
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 350
    .line 351
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 359
    .line 360
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 361
    .line 362
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 370
    .line 371
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 372
    .line 373
    new-instance v0, Lnf/a;

    .line 374
    .line 375
    const/16 v1, 0x9

    .line 376
    .line 377
    invoke-direct {v0, v1, v5}, Lnf/a;-><init>(ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_10
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 389
    .line 390
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->d:Landroid/widget/ProgressBar;

    .line 398
    .line 399
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 407
    .line 408
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 409
    .line 410
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 418
    .line 419
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 420
    .line 421
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    :cond_11
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 425
    .line 426
    return-object p1
.end method
