.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ltf/h;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Ltf/h;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Ltf/h;->a:Lr0/b;

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
    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 27
    .line 28
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 42
    .line 43
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 53
    .line 54
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 64
    .line 65
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 66
    .line 67
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->g:Landroid/widget/ProgressBar;

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_9

    .line 80
    .line 81
    :cond_1
    instance-of v1, v0, Lr0/c1;

    .line 82
    .line 83
    if-eqz v1, :cond_11

    .line 84
    .line 85
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 86
    .line 87
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->g:Landroid/widget/ProgressBar;

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 101
    .line 102
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 112
    .line 113
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 132
    .line 133
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 148
    .line 149
    iget-object p1, p1, Ltf/h;->b:Ljava/util/List;

    .line 150
    .line 151
    check-cast p1, Ljava/lang/Iterable;

    .line 152
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_3

    .line 171
    .line 172
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    .line 177
    .line 178
    const-string v7, "realm"

    .line 179
    .line 180
    invoke-static {v0, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-class v7, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 184
    .line 185
    invoke-virtual {v0, v7}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->getCityCode()I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    const-string v9, "cityId"

    .line 198
    .line 199
    invoke-virtual {v7, v8, v9}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 207
    .line 208
    new-instance v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 209
    .line 210
    invoke-direct {v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->getCityName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    const-string v10, "name"

    .line 218
    .line 219
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iput-object v9, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->e:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->getCityCode()I

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    iput-object v9, v8, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->f:Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {v6}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->getCityCode()I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    int-to-long v9, v6

    .line 239
    iput-wide v9, v8, Lh8/b;->a:J

    .line 240
    .line 241
    if-eqz v7, :cond_2

    .line 242
    .line 243
    iput-boolean v2, v8, Lh8/b;->c:Z

    .line 244
    .line 245
    iget-object v6, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    :cond_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_3
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 255
    .line 256
    if-eqz p1, :cond_5

    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_4

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_4
    const/4 p1, 0x0

    .line 266
    goto :goto_3

    .line 267
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 268
    :goto_3
    const/4 v6, 0x0

    .line 269
    if-eqz p1, :cond_6

    .line 270
    .line 271
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->c:Landroid/widget/HorizontalScrollView;

    .line 285
    .line 286
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_6
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->c:Landroid/widget/HorizontalScrollView;

    .line 304
    .line 305
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_7

    .line 319
    .line 320
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 325
    .line 326
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    const v8, 0x7f0d00b0

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, v8, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    const-string v8, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    .line 338
    .line 339
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    check-cast v7, Lcom/google/android/material/chip/Chip;

    .line 343
    .line 344
    iget-object v8, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->e:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    iget-object v8, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->f:Ljava/lang/Integer;

    .line 350
    .line 351
    invoke-static {v8}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 355
    .line 356
    .line 357
    move-result v8

    .line 358
    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v7, v2}, Landroid/view/View;->setClickable(Z)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7, v3}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    .line 365
    .line 366
    .line 367
    new-instance v8, Ltf/c;

    .line 368
    .line 369
    invoke-direct {v8, v3, v5, v4}, Ltf/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7, v8}, Lcom/google/android/material/chip/Chip;->setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    .line 374
    .line 375
    iget-object v8, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->f:Ljava/util/HashMap;

    .line 376
    .line 377
    iget-object v9, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->f:Ljava/lang/Integer;

    .line 378
    .line 379
    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    iget-object v8, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->g:Ljava/util/HashMap;

    .line 386
    .line 387
    iget-object v9, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->f:Ljava/lang/Integer;

    .line 388
    .line 389
    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->b:Lcom/google/android/material/chip/ChipGroup;

    .line 400
    .line 401
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 402
    .line 403
    .line 404
    goto :goto_4

    .line 405
    :cond_7
    :goto_5
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 410
    .line 411
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 412
    .line 413
    iget-object v7, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->c:Landroid/content/Context;

    .line 414
    .line 415
    invoke-direct {v4, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 426
    .line 427
    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 428
    .line 429
    invoke-direct {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 433
    .line 434
    .line 435
    new-instance p1, Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 436
    .line 437
    iget-object v4, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->c:Landroid/content/Context;

    .line 438
    .line 439
    invoke-direct {p1, v4, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    iget-object v4, v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 447
    .line 448
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 449
    .line 450
    .line 451
    new-instance p1, Lf8/a;

    .line 452
    .line 453
    invoke-direct {p1}, Lf8/a;-><init>()V

    .line 454
    .line 455
    .line 456
    sget-object v4, Le8/b;->o:Le8/b$a;

    .line 457
    .line 458
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    invoke-static {p1}, Le8/b$a;->c(Lf8/a;)Le8/b;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    iput-object v4, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->h:Le8/b;

    .line 466
    .line 467
    new-instance v7, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$a;

    .line 468
    .line 469
    invoke-direct {v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$a;-><init>()V

    .line 470
    .line 471
    .line 472
    iget-object v8, v4, Le8/b;->e:Ljava/util/LinkedList;

    .line 473
    .line 474
    if-eqz v8, :cond_8

    .line 475
    .line 476
    goto :goto_6

    .line 477
    :cond_8
    new-instance v8, Ljava/util/LinkedList;

    .line 478
    .line 479
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 480
    .line 481
    .line 482
    iput-object v8, v4, Le8/b;->e:Ljava/util/LinkedList;

    .line 483
    .line 484
    :goto_6
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    iget-object v4, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->h:Le8/b;

    .line 488
    .line 489
    const-string v7, "mCityListFastAdapter"

    .line 490
    .line 491
    if-eqz v4, :cond_10

    .line 492
    .line 493
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 494
    .line 495
    .line 496
    iget-object v4, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->h:Le8/b;

    .line 497
    .line 498
    if-eqz v4, :cond_f

    .line 499
    .line 500
    sget v8, Lj8/d;->g:I

    .line 501
    .line 502
    iget-object v8, v4, Le8/b;->f:Landroidx/collection/ArrayMap;

    .line 503
    .line 504
    const-class v9, Lj8/d;

    .line 505
    .line 506
    invoke-virtual {v8, v9}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v10

    .line 510
    if-eqz v10, :cond_a

    .line 511
    .line 512
    invoke-virtual {v8, v9}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    if-eqz v4, :cond_9

    .line 517
    .line 518
    check-cast v4, Le8/d;

    .line 519
    .line 520
    goto :goto_8

    .line 521
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    .line 522
    .line 523
    const-string v0, "null cannot be cast to non-null type T"

    .line 524
    .line 525
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    throw p1

    .line 529
    :cond_a
    sget-object v10, Lg8/b;->a:Ljava/util/LinkedHashMap;

    .line 530
    .line 531
    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v10

    .line 535
    check-cast v10, Lg8/a;

    .line 536
    .line 537
    if-eqz v10, :cond_b

    .line 538
    .line 539
    invoke-interface {v10, v4}, Lg8/a;->a(Le8/b;)Lj8/d;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    goto :goto_7

    .line 544
    :cond_b
    move-object v4, v6

    .line 545
    :goto_7
    instance-of v10, v4, Le8/d;

    .line 546
    .line 547
    if-nez v10, :cond_c

    .line 548
    .line 549
    move-object v4, v6

    .line 550
    :cond_c
    if-eqz v4, :cond_d

    .line 551
    .line 552
    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    goto :goto_8

    .line 556
    :cond_d
    move-object v4, v6

    .line 557
    :goto_8
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    check-cast v4, Lj8/d;

    .line 561
    .line 562
    iput-object v4, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->d:Lj8/d;

    .line 563
    .line 564
    iput-boolean v2, v4, Lj8/d;->d:Z

    .line 565
    .line 566
    iput-boolean v2, v4, Lj8/d;->a:Z

    .line 567
    .line 568
    iput-boolean v3, v4, Lj8/d;->b:Z

    .line 569
    .line 570
    new-instance v3, Ltf/e;

    .line 571
    .line 572
    invoke-direct {v3, v5}, Ltf/e;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;)V

    .line 573
    .line 574
    .line 575
    iput-object v3, v4, Lj8/d;->e:Le8/m;

    .line 576
    .line 577
    iget-object v3, p1, Lf8/c;->f:Lf8/b;

    .line 578
    .line 579
    iput-object v5, v3, Lf8/b;->b:Li8/d;

    .line 580
    .line 581
    sget-object v4, Ltf/f;->a:Ltf/f;

    .line 582
    .line 583
    iput-object v4, v3, Lf8/b;->c:Lx9/p;

    .line 584
    .line 585
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 590
    .line 591
    iget-object v4, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->h:Le8/b;

    .line 592
    .line 593
    if-eqz v4, :cond_e

    .line 594
    .line 595
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p1, v1}, Lf8/c;->e(Ljava/util/ArrayList;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 606
    .line 607
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 608
    .line 609
    const-string v3, "mMyCityBinding.searchView.searchText"

    .line 610
    .line 611
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    new-instance v3, Ltf/d;

    .line 615
    .line 616
    invoke-direct {v3, p1}, Ltf/d;-><init>(Lf8/a;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 627
    .line 628
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 629
    .line 630
    new-instance v3, Ltf/b;

    .line 631
    .line 632
    invoke-direct {v3, v5, p1}, Ltf/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;Lf8/a;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 639
    .line 640
    .line 641
    move-result-object p1

    .line 642
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->e:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 643
    .line 644
    new-instance v1, Lke/c;

    .line 645
    .line 646
    invoke-direct {v1, v2, v5, v0}, Lke/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_9

    .line 653
    .line 654
    :cond_e
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    throw v6

    .line 658
    :cond_f
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    throw v6

    .line 662
    :cond_10
    invoke-static {v7}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    throw v6

    .line 666
    :cond_11
    instance-of p1, v0, Lr0/i;

    .line 667
    .line 668
    if-eqz p1, :cond_16

    .line 669
    .line 670
    check-cast v0, Lr0/i;

    .line 671
    .line 672
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 673
    .line 674
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 675
    .line 676
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 680
    .line 681
    if-eqz v0, :cond_13

    .line 682
    .line 683
    const-string p1, "action.login.open"

    .line 684
    .line 685
    const v0, 0x8000

    .line 686
    .line 687
    .line 688
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 693
    .line 694
    const/16 v1, 0x22

    .line 695
    .line 696
    if-lt v0, v1, :cond_12

    .line 697
    .line 698
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 699
    .line 700
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    .line 702
    .line 703
    :cond_12
    invoke-virtual {v5, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 707
    .line 708
    .line 709
    move-result-object p1

    .line 710
    if-eqz p1, :cond_16

    .line 711
    .line 712
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 713
    .line 714
    .line 715
    goto/16 :goto_9

    .line 716
    .line 717
    :cond_13
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 718
    .line 719
    if-eqz v0, :cond_14

    .line 720
    .line 721
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 722
    .line 723
    .line 724
    move-result-object p1

    .line 725
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 726
    .line 727
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 731
    .line 732
    .line 733
    move-result-object p1

    .line 734
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 735
    .line 736
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 737
    .line 738
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->g:Landroid/widget/ProgressBar;

    .line 746
    .line 747
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 751
    .line 752
    .line 753
    move-result-object p1

    .line 754
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 755
    .line 756
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 757
    .line 758
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 762
    .line 763
    .line 764
    move-result-object p1

    .line 765
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 766
    .line 767
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 768
    .line 769
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 773
    .line 774
    .line 775
    move-result-object p1

    .line 776
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 777
    .line 778
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->d:Landroid/widget/TextView;

    .line 779
    .line 780
    const v0, 0x7f1301c7

    .line 781
    .line 782
    .line 783
    invoke-virtual {v5, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 791
    .line 792
    .line 793
    move-result-object p1

    .line 794
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 795
    .line 796
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 797
    .line 798
    const v0, 0x7f1301c6

    .line 799
    .line 800
    .line 801
    invoke-virtual {v5, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 809
    .line 810
    .line 811
    move-result-object p1

    .line 812
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 813
    .line 814
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->b:Landroid/widget/ImageView;

    .line 815
    .line 816
    const-string v0, "mMyCityBinding.systemErrorView.iconSearch"

    .line 817
    .line 818
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    const v0, 0x7f0800c8

    .line 822
    .line 823
    .line 824
    invoke-static {p1, v0}, Lge/b;->a(Landroid/widget/ImageView;I)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_9

    .line 828
    .line 829
    :cond_14
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 830
    .line 831
    if-eqz p1, :cond_15

    .line 832
    .line 833
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 834
    .line 835
    .line 836
    move-result-object p1

    .line 837
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 838
    .line 839
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 843
    .line 844
    .line 845
    move-result-object p1

    .line 846
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 847
    .line 848
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 849
    .line 850
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 854
    .line 855
    .line 856
    move-result-object p1

    .line 857
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->g:Landroid/widget/ProgressBar;

    .line 858
    .line 859
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 863
    .line 864
    .line 865
    move-result-object p1

    .line 866
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 867
    .line 868
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 869
    .line 870
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 874
    .line 875
    .line 876
    move-result-object p1

    .line 877
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 878
    .line 879
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 880
    .line 881
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 885
    .line 886
    .line 887
    move-result-object p1

    .line 888
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 889
    .line 890
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 891
    .line 892
    new-instance v0, Lie/d;

    .line 893
    .line 894
    const/4 v1, 0x2

    .line 895
    invoke-direct {v0, v1, v5}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    .line 900
    .line 901
    goto :goto_9

    .line 902
    :cond_15
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 903
    .line 904
    .line 905
    move-result-object p1

    .line 906
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 907
    .line 908
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 912
    .line 913
    .line 914
    move-result-object p1

    .line 915
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->i:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 916
    .line 917
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 918
    .line 919
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 923
    .line 924
    .line 925
    move-result-object p1

    .line 926
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->g:Landroid/widget/ProgressBar;

    .line 927
    .line 928
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 932
    .line 933
    .line 934
    move-result-object p1

    .line 935
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 936
    .line 937
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 938
    .line 939
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    .line 943
    .line 944
    .line 945
    move-result-object p1

    .line 946
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->j:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 947
    .line 948
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 949
    .line 950
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 951
    .line 952
    .line 953
    :cond_16
    :goto_9
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 954
    .line 955
    return-object p1
.end method
