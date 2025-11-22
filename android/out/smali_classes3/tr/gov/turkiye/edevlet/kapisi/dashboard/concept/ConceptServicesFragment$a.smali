.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lof/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lof/c;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lof/c;->a:Lr0/b;

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
    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->h:[Lda/m;

    .line 27
    .line 28
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 42
    .line 43
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 53
    .line 54
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_1
    instance-of v1, v0, Lr0/c1;

    .line 71
    .line 72
    if-eqz v1, :cond_9

    .line 73
    .line 74
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->h:[Lda/m;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lof/c;->b:Ljava/util/List;

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
    if-nez v2, :cond_8

    .line 95
    .line 96
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 101
    .line 102
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 110
    .line 111
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 121
    .line 122
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    if-nez v0, :cond_6

    .line 140
    .line 141
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;

    .line 142
    .line 143
    invoke-direct {v0, v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;

    .line 147
    .line 148
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 153
    .line 154
    iget-object v2, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;

    .line 155
    .line 156
    const-string v3, "mServiceController"

    .line 157
    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lcom/airbnb/epoxy/p;)V

    .line 161
    .line 162
    .line 163
    iput-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->f:Ljava/util/List;

    .line 164
    .line 165
    iget-object v0, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;

    .line 166
    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v1

    .line 178
    :cond_6
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 179
    .line 180
    if-eqz p1, :cond_e

    .line 181
    .line 182
    iget-object p1, v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->f:Ljava/util/List;

    .line 183
    .line 184
    if-eqz p1, :cond_7

    .line 185
    .line 186
    :goto_2
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :cond_7
    const-string p1, "mServiceList"

    .line 192
    .line 193
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v1

    .line 197
    :cond_8
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->F()V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_3

    .line 201
    .line 202
    :cond_9
    instance-of p1, v0, Lr0/i;

    .line 203
    .line 204
    if-eqz p1, :cond_e

    .line 205
    .line 206
    check-cast v0, Lr0/i;

    .line 207
    .line 208
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 209
    .line 210
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->h:[Lda/m;

    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 216
    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    const-string p1, "action.login.open"

    .line 220
    .line 221
    const v0, 0x8000

    .line 222
    .line 223
    .line 224
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 229
    .line 230
    const/16 v1, 0x22

    .line 231
    .line 232
    if-lt v0, v1, :cond_a

    .line 233
    .line 234
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    :cond_a
    invoke-virtual {v5, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_e

    .line 247
    .line 248
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_b
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 253
    .line 254
    if-eqz v0, :cond_c

    .line 255
    .line 256
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->F()V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_c
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 261
    .line 262
    if-eqz p1, :cond_d

    .line 263
    .line 264
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 269
    .line 270
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 278
    .line 279
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 287
    .line 288
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 289
    .line 290
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 298
    .line 299
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 300
    .line 301
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 309
    .line 310
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 311
    .line 312
    new-instance v0, Lbe/d;

    .line 313
    .line 314
    invoke-direct {v0, v2, v5}, Lbe/d;-><init>(ILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_d
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 326
    .line 327
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->d:Landroid/widget/ProgressBar;

    .line 335
    .line 336
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 344
    .line 345
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 346
    .line 347
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/concept/ConceptServicesFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 355
    .line 356
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 357
    .line 358
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    :cond_e
    :goto_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 362
    .line 363
    return-object p1
.end method
