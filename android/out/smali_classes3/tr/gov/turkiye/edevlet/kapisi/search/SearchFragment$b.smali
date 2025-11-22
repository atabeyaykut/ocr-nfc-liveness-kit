.class public final Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lng/i;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lng/i;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iget-boolean v1, p1, Lng/i;->e:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    const-string v4, "mSearchFragmentBinding"

    .line 15
    .line 16
    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 17
    .line 18
    if-eqz v1, :cond_20

    .line 19
    .line 20
    iget-object v1, p1, Lng/i;->a:Lr0/b;

    .line 21
    .line 22
    instance-of v6, v1, Lr0/d1;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    instance-of v6, v1, Lr0/k;

    .line 29
    .line 30
    :goto_0
    if-eqz v6, :cond_1

    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_1
    instance-of v6, v1, Lr0/c1;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    if-eqz v6, :cond_8

    .line 38
    .line 39
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->l:Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    iput-boolean v2, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->p:Z

    .line 44
    .line 45
    :cond_2
    iget-boolean v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->p:Z

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController;

    .line 50
    .line 51
    invoke-direct {v1, v5}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController$a;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->l:Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController;

    .line 55
    .line 56
    iget-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 63
    .line 64
    .line 65
    iput-boolean v7, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->p:Z

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_4
    :goto_1
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->l:Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController;

    .line 73
    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    iget-object p1, p1, Lng/i;->c:Ljava/util/List;

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    new-instance p1, Lkotlin/jvm/internal/t;

    .line 82
    .line 83
    invoke-direct {p1}, Lkotlin/jvm/internal/t;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 91
    .line 92
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 96
    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 100
    .line 101
    new-instance v1, Lng/d;

    .line 102
    .line 103
    invoke-direct {v1, p1, v5}, Lng/d;-><init>(Lkotlin/jvm/internal/t;Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    :goto_2
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->H()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->E()V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_5

    .line 125
    .line 126
    :cond_7
    const-string p1, "mServiceController"

    .line 127
    .line 128
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :cond_8
    instance-of p1, v1, Lr0/i;

    .line 133
    .line 134
    if-eqz p1, :cond_26

    .line 135
    .line 136
    check-cast v1, Lr0/i;

    .line 137
    .line 138
    iget-object p1, v1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 139
    .line 140
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 146
    .line 147
    if-eqz v1, :cond_a

    .line 148
    .line 149
    const-string p1, "action.login.open"

    .line 150
    .line 151
    const v0, 0x8000

    .line 152
    .line 153
    .line 154
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    const/16 v1, 0x22

    .line 161
    .line 162
    if-lt v0, v1, :cond_9

    .line 163
    .line 164
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual {v5, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-eqz p1, :cond_26

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_5

    .line 182
    .line 183
    :cond_a
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 184
    .line 185
    if-eqz v1, :cond_11

    .line 186
    .line 187
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 188
    .line 189
    if-eqz p1, :cond_10

    .line 190
    .line 191
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 192
    .line 193
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 197
    .line 198
    if-eqz p1, :cond_f

    .line 199
    .line 200
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->d:Landroid/widget/ProgressBar;

    .line 201
    .line 202
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 206
    .line 207
    if-eqz p1, :cond_e

    .line 208
    .line 209
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 210
    .line 211
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 212
    .line 213
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 217
    .line 218
    if-eqz p1, :cond_d

    .line 219
    .line 220
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 221
    .line 222
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 223
    .line 224
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 228
    .line 229
    if-eqz p1, :cond_c

    .line 230
    .line 231
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;

    .line 232
    .line 233
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 234
    .line 235
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 239
    .line 240
    if-eqz p1, :cond_b

    .line 241
    .line 242
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 243
    .line 244
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_5

    .line 248
    .line 249
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0

    .line 253
    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v0

    .line 257
    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v0

    .line 261
    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v0

    .line 269
    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v0

    .line 273
    :cond_11
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 274
    .line 275
    if-eqz p1, :cond_19

    .line 276
    .line 277
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 278
    .line 279
    if-eqz p1, :cond_18

    .line 280
    .line 281
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->d:Landroid/widget/ProgressBar;

    .line 282
    .line 283
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 287
    .line 288
    if-eqz p1, :cond_17

    .line 289
    .line 290
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 291
    .line 292
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 296
    .line 297
    if-eqz p1, :cond_16

    .line 298
    .line 299
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 300
    .line 301
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 305
    .line 306
    if-eqz p1, :cond_15

    .line 307
    .line 308
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 309
    .line 310
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 311
    .line 312
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 316
    .line 317
    if-eqz p1, :cond_14

    .line 318
    .line 319
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;

    .line 320
    .line 321
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 322
    .line 323
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 327
    .line 328
    if-eqz p1, :cond_13

    .line 329
    .line 330
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 331
    .line 332
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 333
    .line 334
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 338
    .line 339
    if-eqz p1, :cond_12

    .line 340
    .line 341
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 342
    .line 343
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 344
    .line 345
    new-instance v0, Lie/d;

    .line 346
    .line 347
    const/16 v1, 0x9

    .line 348
    .line 349
    invoke-direct {v0, v1, v5}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_5

    .line 356
    .line 357
    :cond_12
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw v0

    .line 361
    :cond_13
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v0

    .line 365
    :cond_14
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :cond_15
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0

    .line 373
    :cond_16
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v0

    .line 377
    :cond_17
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :cond_18
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v0

    .line 385
    :cond_19
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 386
    .line 387
    if-eqz p1, :cond_1f

    .line 388
    .line 389
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->d:Landroid/widget/ProgressBar;

    .line 390
    .line 391
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 395
    .line 396
    if-eqz p1, :cond_1e

    .line 397
    .line 398
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 399
    .line 400
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 404
    .line 405
    if-eqz p1, :cond_1d

    .line 406
    .line 407
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 408
    .line 409
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    .line 411
    .line 412
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 413
    .line 414
    if-eqz p1, :cond_1c

    .line 415
    .line 416
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 417
    .line 418
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 419
    .line 420
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 424
    .line 425
    if-eqz p1, :cond_1b

    .line 426
    .line 427
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;

    .line 428
    .line 429
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 430
    .line 431
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 435
    .line 436
    if-eqz p1, :cond_1a

    .line 437
    .line 438
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 439
    .line 440
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 441
    .line 442
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 443
    .line 444
    .line 445
    goto :goto_5

    .line 446
    :cond_1a
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw v0

    .line 450
    :cond_1b
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v0

    .line 454
    :cond_1c
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    throw v0

    .line 458
    :cond_1d
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw v0

    .line 462
    :cond_1e
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    throw v0

    .line 466
    :cond_1f
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v0

    .line 470
    :cond_20
    iget-object v1, p1, Lng/i;->b:Lr0/b;

    .line 471
    .line 472
    instance-of v6, v1, Lr0/d1;

    .line 473
    .line 474
    if-eqz v6, :cond_21

    .line 475
    .line 476
    goto :goto_3

    .line 477
    :cond_21
    instance-of v2, v1, Lr0/k;

    .line 478
    .line 479
    :goto_3
    if-eqz v2, :cond_22

    .line 480
    .line 481
    :goto_4
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 482
    .line 483
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->I()V

    .line 484
    .line 485
    .line 486
    goto :goto_5

    .line 487
    :cond_22
    instance-of v2, v1, Lr0/c1;

    .line 488
    .line 489
    if-eqz v2, :cond_24

    .line 490
    .line 491
    iget-object v1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 492
    .line 493
    if-eqz v1, :cond_23

    .line 494
    .line 495
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 496
    .line 497
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->b:Landroid/widget/ImageButton;

    .line 498
    .line 499
    new-instance v1, Lce/a;

    .line 500
    .line 501
    const/4 v2, 0x2

    .line 502
    iget-object p1, p1, Lng/i;->d:Ljava/util/List;

    .line 503
    .line 504
    invoke-direct {v1, v2, v5, p1}, Lce/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    .line 509
    .line 510
    iput-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->r:Ljava/util/List;

    .line 511
    .line 512
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->H()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v5, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->G(Ljava/util/List;)V

    .line 516
    .line 517
    .line 518
    goto :goto_5

    .line 519
    :cond_23
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw v0

    .line 523
    :cond_24
    instance-of p1, v1, Lr0/i;

    .line 524
    .line 525
    if-eqz p1, :cond_26

    .line 526
    .line 527
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 528
    .line 529
    if-eqz p1, :cond_25

    .line 530
    .line 531
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->d:Landroid/widget/ProgressBar;

    .line 532
    .line 533
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    goto :goto_5

    .line 537
    :cond_25
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    throw v0

    .line 541
    :cond_26
    :goto_5
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 542
    .line 543
    return-object p1
.end method
