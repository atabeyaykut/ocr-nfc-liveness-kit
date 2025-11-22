.class public final synthetic Lch/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V
    .locals 0

    iput p2, p0, Lch/b;->a:I

    iput-object p1, p0, Lch/b;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget v1, p0, Lch/b;->a:I

    .line 4
    .line 5
    const v2, 0x7f080086

    .line 6
    .line 7
    .line 8
    const v3, 0x7f080087

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Lch/b;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;

    .line 12
    .line 13
    const-string v5, "this$0"

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :pswitch_0
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->j:[Lda/m;

    .line 21
    .line 22
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->h:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v5, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lch/a;

    .line 51
    .line 52
    iget v7, v6, Lch/a;->a:I

    .line 53
    .line 54
    const v8, 0x7f0a01cf

    .line 55
    .line 56
    .line 57
    if-ne v7, v8, :cond_0

    .line 58
    .line 59
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object v7, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 64
    .line 65
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v0}, Lch/a;->a(Lch/a;Z)Lch/a;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iput-object v6, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->e:Lch/a;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iget-object v7, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    .line 81
    iget v8, v6, Lch/a;->a:I

    .line 82
    .line 83
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v6, p1}, Lch/a;->a(Lch/a;Z)Lch/a;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    :goto_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v5}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->h:Ljava/util/ArrayList;

    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_1
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->j:[Lda/m;

    .line 106
    .line 107
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iput-boolean v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->f:Z

    .line 111
    .line 112
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->e:Lch/a;

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    iget-object v2, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->b:Ll9/e;

    .line 118
    .line 119
    invoke-interface {v2}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lch/l;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    const-string v3, "dashPoint"

    .line 129
    .line 130
    iget-object v0, v0, Lch/a;->b:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v3, Lch/m;

    .line 136
    .line 137
    invoke-direct {v3, v2, v0, v1}, Lch/m;-><init>(Lch/l;Ljava/lang/String;Lp9/d;)V

    .line 138
    .line 139
    .line 140
    const/4 v0, 0x3

    .line 141
    iget-object v4, v2, Lr0/z;->c:Lnc/a0;

    .line 142
    .line 143
    invoke-static {v4, v1, p1, v3, v0}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 144
    .line 145
    .line 146
    new-instance p1, Lch/n;

    .line 147
    .line 148
    invoke-direct {p1, v2, v1}, Lch/n;-><init>(Lch/l;Lp9/d;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, v2, Lch/l;->h:Lch/o;

    .line 152
    .line 153
    invoke-static {v4, v0, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_2
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->d:Landroid/content/Context;

    .line 158
    .line 159
    if-eqz p1, :cond_3

    .line 160
    .line 161
    sget v0, Lke/d;->a:I

    .line 162
    .line 163
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->t:Landroidx/core/widget/NestedScrollView;

    .line 168
    .line 169
    const-string v2, "mDashPointBinding.mktDashPointParentContainer"

    .line 170
    .line 171
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const v2, 0x7f060025

    .line 175
    .line 176
    .line 177
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    const v3, 0x7f060097

    .line 182
    .line 183
    .line 184
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    const v3, 0x7f130114

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v3, v1, v2, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-eqz p1, :cond_3

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 198
    .line 199
    .line 200
    :cond_3
    :goto_2
    return-void

    .line 201
    :goto_3
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->j:[Lda/m;

    .line 202
    .line 203
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->h:Ljava/util/ArrayList;

    .line 207
    .line 208
    new-instance v5, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_5

    .line 226
    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    check-cast v6, Lch/a;

    .line 232
    .line 233
    iget v7, v6, Lch/a;->a:I

    .line 234
    .line 235
    const v8, 0x7f0a01c7

    .line 236
    .line 237
    .line 238
    if-ne v7, v8, :cond_4

    .line 239
    .line 240
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    iget-object v7, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 245
    .line 246
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 247
    .line 248
    .line 249
    invoke-static {v6, v0}, Lch/a;->a(Lch/a;Z)Lch/a;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    iput-object v6, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->e:Lch/a;

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_4
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    iget-object v7, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 261
    .line 262
    iget v8, v6, Lch/a;->a:I

    .line 263
    .line 264
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 269
    .line 270
    .line 271
    invoke-static {v6, p1}, Lch/a;->a(Lch/a;Z)Lch/a;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    :goto_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_5
    invoke-static {v5}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iput-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->h:Ljava/util/ArrayList;

    .line 284
    .line 285
    return-void

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
