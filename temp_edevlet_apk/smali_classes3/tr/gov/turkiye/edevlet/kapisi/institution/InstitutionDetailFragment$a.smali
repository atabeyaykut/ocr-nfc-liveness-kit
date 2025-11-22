.class public final Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lag/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lag/c;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lag/c;->d:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;

    .line 12
    .line 13
    iget-object v3, p1, Lag/c;->f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 14
    .line 15
    iget-object v4, p1, Lag/c;->c:Lr0/b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    instance-of p1, v4, Lr0/c1;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {v2, v3, v1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    instance-of p1, v4, Lr0/i;

    .line 29
    .line 30
    if-eqz p1, :cond_1d

    .line 31
    .line 32
    check-cast v4, Lr0/i;

    .line 33
    .line 34
    iget-object p1, v4, Lr0/i;->b:Ljava/lang/Throwable;

    .line 35
    .line 36
    invoke-static {v2, p1, v1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;Ljava/lang/Throwable;Z)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_1
    iget-boolean v0, p1, Lag/c;->e:Z

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    instance-of p1, v4, Lr0/c1;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-static {v2, v3, v5}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_2
    instance-of p1, v4, Lr0/i;

    .line 56
    .line 57
    if-eqz p1, :cond_1d

    .line 58
    .line 59
    check-cast v4, Lr0/i;

    .line 60
    .line 61
    iget-object p1, v4, Lr0/i;->b:Ljava/lang/Throwable;

    .line 62
    .line 63
    invoke-static {v2, p1, v5}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;Ljava/lang/Throwable;Z)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_3
    iget-object v0, p1, Lag/c;->a:Lr0/b;

    .line 69
    .line 70
    instance-of v3, v0, Lr0/d1;

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    instance-of v3, v0, Lr0/k;

    .line 77
    .line 78
    :goto_0
    const/16 v4, 0x8

    .line 79
    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->m:[Lda/m;

    .line 83
    .line 84
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->g:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 89
    .line 90
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 98
    .line 99
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 107
    .line 108
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 109
    .line 110
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 118
    .line 119
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 120
    .line 121
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->f:Landroid/widget/ProgressBar;

    .line 129
    .line 130
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_5

    .line 134
    .line 135
    :cond_5
    instance-of v3, v0, Lr0/c1;

    .line 136
    .line 137
    if-eqz v3, :cond_18

    .line 138
    .line 139
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->m:[Lda/m;

    .line 140
    .line 141
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->f:Landroid/widget/ProgressBar;

    .line 146
    .line 147
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 155
    .line 156
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 157
    .line 158
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 166
    .line 167
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 168
    .line 169
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->g:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 177
    .line 178
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 186
    .line 187
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    iget-object p1, p1, Lag/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 197
    .line 198
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getInstitutionName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-le v0, v1, :cond_6

    .line 210
    .line 211
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    new-array v1, v1, [Ljava/lang/Object;

    .line 218
    .line 219
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    aput-object v3, v1, v5

    .line 228
    .line 229
    const v3, 0x7f1301f4

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    goto :goto_1

    .line 237
    :cond_6
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    .line 243
    new-array v1, v1, [Ljava/lang/Object;

    .line 244
    .line 245
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    aput-object v3, v1, v5

    .line 254
    .line 255
    const v3, 0x7f130247

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->d:Landroid/widget/ImageView;

    .line 270
    .line 271
    const-string v1, "mInstitutionDetailFragme\u2026ing.institutionDetailLogo"

    .line 272
    .line 273
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getIconName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {v0, v1}, Lge/b;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 284
    .line 285
    const/4 v1, 0x0

    .line 286
    const-string v3, "serviceList"

    .line 287
    .line 288
    const-string v4, "serviceController"

    .line 289
    .line 290
    if-nez v0, :cond_a

    .line 291
    .line 292
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 293
    .line 294
    invoke-direct {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;)V

    .line 295
    .line 296
    .line 297
    iput-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 298
    .line 299
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceList()Lio/realm/q0;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iput-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 304
    .line 305
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->g:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 310
    .line 311
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 312
    .line 313
    if-eqz v0, :cond_9

    .line 314
    .line 315
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 316
    .line 317
    .line 318
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 319
    .line 320
    if-eqz p1, :cond_8

    .line 321
    .line 322
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 323
    .line 324
    if-eqz v0, :cond_7

    .line 325
    .line 326
    goto/16 :goto_4

    .line 327
    .line 328
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v1

    .line 332
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v1

    .line 336
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v1

    .line 340
    :cond_a
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 341
    .line 342
    if-eqz p1, :cond_14

    .line 343
    .line 344
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 349
    .line 350
    .line 351
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 358
    .line 359
    const-string v5, "mService"

    .line 360
    .line 361
    if-eqz v0, :cond_13

    .line 362
    .line 363
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    const-string v6, "serviceCode"

    .line 368
    .line 369
    invoke-virtual {p1, v0, v6}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 377
    .line 378
    if-eqz p1, :cond_f

    .line 379
    .line 380
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 381
    .line 382
    if-eqz v0, :cond_e

    .line 383
    .line 384
    new-instance v6, Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .line 392
    .line 393
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    if-eqz v7, :cond_d

    .line 402
    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 408
    .line 409
    iget-object v8, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 410
    .line 411
    if-eqz v8, :cond_c

    .line 412
    .line 413
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    if-eqz v8, :cond_b

    .line 418
    .line 419
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    invoke-static {v7, v8}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListDBModelKt;->convertNormalStatus(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    :cond_b
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    goto :goto_2

    .line 431
    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw v1

    .line 435
    :cond_d
    iput-object v6, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 436
    .line 437
    goto :goto_3

    .line 438
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    throw v1

    .line 442
    :cond_f
    :goto_3
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->g:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 447
    .line 448
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 449
    .line 450
    if-eqz v0, :cond_12

    .line 451
    .line 452
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 453
    .line 454
    .line 455
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 456
    .line 457
    if-eqz p1, :cond_11

    .line 458
    .line 459
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 460
    .line 461
    if-eqz v0, :cond_10

    .line 462
    .line 463
    goto :goto_4

    .line 464
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v1

    .line 468
    :cond_11
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw v1

    .line 472
    :cond_12
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw v1

    .line 476
    :cond_13
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    throw v1

    .line 480
    :cond_14
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 481
    .line 482
    invoke-direct {p1, v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;)V

    .line 483
    .line 484
    .line 485
    iput-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 486
    .line 487
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->g:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 492
    .line 493
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 494
    .line 495
    if-eqz v0, :cond_17

    .line 496
    .line 497
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 498
    .line 499
    .line 500
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 501
    .line 502
    if-eqz p1, :cond_16

    .line 503
    .line 504
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->f:Ljava/util/AbstractList;

    .line 505
    .line 506
    if-eqz v0, :cond_15

    .line 507
    .line 508
    :goto_4
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_5

    .line 512
    .line 513
    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v1

    .line 517
    :cond_16
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    throw v1

    .line 521
    :cond_17
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v1

    .line 525
    :cond_18
    instance-of p1, v0, Lr0/i;

    .line 526
    .line 527
    if-eqz p1, :cond_1d

    .line 528
    .line 529
    check-cast v0, Lr0/i;

    .line 530
    .line 531
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 532
    .line 533
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->m:[Lda/m;

    .line 534
    .line 535
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 539
    .line 540
    if-eqz v0, :cond_1a

    .line 541
    .line 542
    const-string p1, "action.login.open"

    .line 543
    .line 544
    const v0, 0x8000

    .line 545
    .line 546
    .line 547
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 552
    .line 553
    const/16 v1, 0x22

    .line 554
    .line 555
    if-lt v0, v1, :cond_19

    .line 556
    .line 557
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 558
    .line 559
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    .line 561
    .line 562
    :cond_19
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    if-eqz p1, :cond_1d

    .line 570
    .line 571
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_5

    .line 575
    .line 576
    :cond_1a
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 577
    .line 578
    if-eqz v0, :cond_1b

    .line 579
    .line 580
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->g:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 585
    .line 586
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 594
    .line 595
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->f:Landroid/widget/ProgressBar;

    .line 603
    .line 604
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 612
    .line 613
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 614
    .line 615
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 623
    .line 624
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 625
    .line 626
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 630
    .line 631
    .line 632
    move-result-object p1

    .line 633
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 634
    .line 635
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->d:Landroid/widget/TextView;

    .line 636
    .line 637
    const v0, 0x7f1301c7

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 652
    .line 653
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 654
    .line 655
    const v0, 0x7f1301c6

    .line 656
    .line 657
    .line 658
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 666
    .line 667
    .line 668
    move-result-object p1

    .line 669
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 670
    .line 671
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->b:Landroid/widget/ImageView;

    .line 672
    .line 673
    const-string v0, "mInstitutionDetailFragme\u2026ystemErrorView.iconSearch"

    .line 674
    .line 675
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    const v0, 0x7f0800c8

    .line 679
    .line 680
    .line 681
    invoke-static {p1, v0}, Lge/b;->a(Landroid/widget/ImageView;I)V

    .line 682
    .line 683
    .line 684
    goto :goto_5

    .line 685
    :cond_1b
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 686
    .line 687
    if-eqz p1, :cond_1c

    .line 688
    .line 689
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->g:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 694
    .line 695
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 703
    .line 704
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->f:Landroid/widget/ProgressBar;

    .line 712
    .line 713
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 721
    .line 722
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 723
    .line 724
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 732
    .line 733
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 734
    .line 735
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 743
    .line 744
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 745
    .line 746
    new-instance v0, Lzd/d;

    .line 747
    .line 748
    invoke-direct {v0, v4, v2}, Lzd/d;-><init>(ILjava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    .line 753
    .line 754
    goto :goto_5

    .line 755
    :cond_1c
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 756
    .line 757
    .line 758
    move-result-object p1

    .line 759
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->g:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 760
    .line 761
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 765
    .line 766
    .line 767
    move-result-object p1

    .line 768
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 769
    .line 770
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 774
    .line 775
    .line 776
    move-result-object p1

    .line 777
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->f:Landroid/widget/ProgressBar;

    .line 778
    .line 779
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 783
    .line 784
    .line 785
    move-result-object p1

    .line 786
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 787
    .line 788
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 789
    .line 790
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;->G()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 798
    .line 799
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 800
    .line 801
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 802
    .line 803
    .line 804
    :cond_1d
    :goto_5
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 805
    .line 806
    return-object p1
.end method
