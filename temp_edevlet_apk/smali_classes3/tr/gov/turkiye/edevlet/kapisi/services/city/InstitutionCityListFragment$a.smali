.class public final Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lqg/h;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lqg/h;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lqg/h;->a:Lr0/b;

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
    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->f:[Lda/m;

    .line 27
    .line 28
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 42
    .line 43
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 53
    .line 54
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 64
    .line 65
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 66
    .line 67
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->c:Landroid/widget/ProgressBar;

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_1
    instance-of v1, v0, Lr0/c1;

    .line 82
    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->f:[Lda/m;

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object p1, p1, Lqg/h;->b:Ljava/util/List;

    .line 91
    .line 92
    move-object v0, p1

    .line 93
    check-cast v0, Ljava/util/Collection;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const/4 v0, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 107
    :goto_2
    if-nez v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->c:Landroid/widget/ProgressBar;

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 123
    .line 124
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 134
    .line 135
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 136
    .line 137
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 145
    .line 146
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    check-cast p1, Ljava/lang/Iterable;

    .line 161
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_4

    .line 180
    .line 181
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;

    .line 186
    .line 187
    new-instance v3, Lqg/m;

    .line 188
    .line 189
    invoke-direct {v3}, Lqg/m;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->getCityName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    const-string v6, "name"

    .line 197
    .line 198
    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iput-object v4, v3, Lqg/m;->e:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->getCityCode()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iput-object v1, v3, Lqg/m;->f:Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_4
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    .line 223
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 224
    .line 225
    iget-object v3, v5, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->c:Landroid/content/Context;

    .line 226
    .line 227
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 240
    .line 241
    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 245
    .line 246
    .line 247
    new-instance p1, Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 248
    .line 249
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->c:Landroid/content/Context;

    .line 250
    .line 251
    invoke-direct {p1, v1, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    .line 260
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 261
    .line 262
    .line 263
    new-instance p1, Lf8/a;

    .line 264
    .line 265
    invoke-direct {p1}, Lf8/a;-><init>()V

    .line 266
    .line 267
    .line 268
    sget-object v1, Le8/b;->o:Le8/b$a;

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-static {p1}, Le8/b$a;->c(Lf8/a;)Le8/b;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iget-object v2, p1, Lf8/c;->f:Lf8/b;

    .line 278
    .line 279
    iput-object v5, v2, Lf8/b;->b:Li8/d;

    .line 280
    .line 281
    sget-object v3, Lqg/d;->a:Lqg/d;

    .line 282
    .line 283
    iput-object v3, v2, Lf8/b;->c:Lx9/p;

    .line 284
    .line 285
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 290
    .line 291
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v0}, Lf8/c;->e(Ljava/util/ArrayList;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 302
    .line 303
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 304
    .line 305
    const-string v2, "mInstitutionCityListFrag\u2026ing.searchView.searchText"

    .line 306
    .line 307
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    new-instance v2, Lqg/c;

    .line 311
    .line 312
    invoke-direct {v2, p1}, Lqg/c;-><init>(Lf8/a;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 323
    .line 324
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 325
    .line 326
    new-instance v2, Lqg/b;

    .line 327
    .line 328
    invoke-direct {v2, v5, p1}, Lqg/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;Lf8/a;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 332
    .line 333
    .line 334
    new-instance p1, Lqg/e;

    .line 335
    .line 336
    invoke-direct {p1, v5}, Lqg/e;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;)V

    .line 337
    .line 338
    .line 339
    iput-object p1, v1, Le8/b;->i:Lx9/r;

    .line 340
    .line 341
    goto/16 :goto_4

    .line 342
    .line 343
    :cond_5
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->F()V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_4

    .line 347
    .line 348
    :cond_6
    instance-of p1, v0, Lr0/i;

    .line 349
    .line 350
    if-eqz p1, :cond_b

    .line 351
    .line 352
    check-cast v0, Lr0/i;

    .line 353
    .line 354
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 355
    .line 356
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->f:[Lda/m;

    .line 357
    .line 358
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 362
    .line 363
    if-eqz v0, :cond_8

    .line 364
    .line 365
    const-string p1, "action.login.open"

    .line 366
    .line 367
    const v0, 0x8000

    .line 368
    .line 369
    .line 370
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 375
    .line 376
    const/16 v1, 0x22

    .line 377
    .line 378
    if-lt v0, v1, :cond_7

    .line 379
    .line 380
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 381
    .line 382
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    .line 384
    .line 385
    :cond_7
    invoke-virtual {v5, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    if-eqz p1, :cond_b

    .line 393
    .line 394
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_4

    .line 398
    .line 399
    :cond_8
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 400
    .line 401
    if-eqz v0, :cond_9

    .line 402
    .line 403
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->F()V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_4

    .line 407
    .line 408
    :cond_9
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 409
    .line 410
    if-eqz p1, :cond_a

    .line 411
    .line 412
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 417
    .line 418
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->c:Landroid/widget/ProgressBar;

    .line 426
    .line 427
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 435
    .line 436
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 437
    .line 438
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 446
    .line 447
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 448
    .line 449
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 457
    .line 458
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 459
    .line 460
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 468
    .line 469
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 470
    .line 471
    new-instance v0, Lxf/d;

    .line 472
    .line 473
    const/4 v1, 0x7

    .line 474
    invoke-direct {v0, v1, v5}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    .line 479
    .line 480
    goto :goto_4

    .line 481
    :cond_a
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 486
    .line 487
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->c:Landroid/widget/ProgressBar;

    .line 495
    .line 496
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 504
    .line 505
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 506
    .line 507
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;

    .line 515
    .line 516
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeCitySearchBarBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 517
    .line 518
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 526
    .line 527
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 528
    .line 529
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 530
    .line 531
    .line 532
    :cond_b
    :goto_4
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 533
    .line 534
    return-object p1
.end method
