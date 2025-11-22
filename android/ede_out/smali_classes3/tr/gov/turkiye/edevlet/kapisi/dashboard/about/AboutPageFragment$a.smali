.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lmf/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lmf/e;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lmf/e;->a:Lr0/b;

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
    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->e:[Lda/m;

    .line 27
    .line 28
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 42
    .line 43
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 53
    .line 54
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->d:Landroid/widget/ProgressBar;

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
    if-eqz v1, :cond_5

    .line 73
    .line 74
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->e:[Lda/m;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lmf/e;->b:Ljava/util/List;

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
    if-nez v2, :cond_4

    .line 95
    .line 96
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 101
    .line 102
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 112
    .line 113
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->d:Landroid/widget/ProgressBar;

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 141
    .line 142
    new-instance v1, Lmf/b;

    .line 143
    .line 144
    invoke-direct {v1, p1, v5}, Lmf/b;-><init>(Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h(Lx9/l;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_4
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->F()V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_2

    .line 156
    .line 157
    :cond_5
    instance-of p1, v0, Lr0/i;

    .line 158
    .line 159
    if-eqz p1, :cond_a

    .line 160
    .line 161
    check-cast v0, Lr0/i;

    .line 162
    .line 163
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 164
    .line 165
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->e:[Lda/m;

    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 171
    .line 172
    if-eqz v0, :cond_7

    .line 173
    .line 174
    const-string p1, "action.login.open"

    .line 175
    .line 176
    const v0, 0x8000

    .line 177
    .line 178
    .line 179
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    const/16 v1, 0x22

    .line 186
    .line 187
    if-lt v0, v1, :cond_6

    .line 188
    .line 189
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    :cond_6
    invoke-virtual {v5, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-eqz p1, :cond_a

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_7
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    .line 208
    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->F()V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_8
    instance-of p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 216
    .line 217
    if-eqz p1, :cond_9

    .line 218
    .line 219
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 224
    .line 225
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->d:Landroid/widget/ProgressBar;

    .line 233
    .line 234
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 242
    .line 243
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 244
    .line 245
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 253
    .line 254
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 255
    .line 256
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 264
    .line 265
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 266
    .line 267
    new-instance v0, Lzd/a;

    .line 268
    .line 269
    invoke-direct {v0, v2, v5}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_9
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 281
    .line 282
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->d:Landroid/widget/ProgressBar;

    .line 290
    .line 291
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->c:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 299
    .line 300
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 301
    .line 302
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 310
    .line 311
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 312
    .line 313
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    :cond_a
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 317
    .line 318
    return-object p1
.end method
