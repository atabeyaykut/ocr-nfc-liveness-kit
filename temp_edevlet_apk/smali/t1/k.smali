.class public final Lt1/k;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lt1/w;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lt1/g;


# direct methods
.method public constructor <init>(Lt1/g;)V
    .locals 0

    iput-object p1, p0, Lt1/k;->a:Lt1/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lt1/w;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lt1/k;->a:Lt1/g;

    .line 9
    .line 10
    iget-object v1, v0, Lt1/g;->a:Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    iget-boolean v4, p1, Lt1/w;->d:Z

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v5, 0x8

    .line 24
    .line 25
    :goto_0
    iget-object v6, v1, Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;->c:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    const/16 v5, 0x8

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v5, 0x0

    .line 36
    :goto_1
    iget-object v6, v1, Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v1, Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;->e:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/4 v1, 0x1

    .line 47
    const/4 v5, 0x0

    .line 48
    iget-object v6, p1, Lt1/w;->e:Lc2/c;

    .line 49
    .line 50
    if-eqz v6, :cond_4

    .line 51
    .line 52
    iget-boolean v7, v6, Lc2/c;->b:Z

    .line 53
    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    iput-boolean v1, v6, Lc2/c;->b:Z

    .line 58
    .line 59
    iget-object v6, v6, Lc2/c;->a:Ljava/lang/Object;

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    :goto_2
    move-object v6, v5

    .line 63
    :goto_3
    if-eqz v6, :cond_6

    .line 64
    .line 65
    check-cast v6, Ljava/lang/Throwable;

    .line 66
    .line 67
    instance-of v6, v6, Ljava/lang/NullPointerException;

    .line 68
    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    const-string v6, "Images do not exist"

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    const-string v6, "Unknown Error"

    .line 75
    .line 76
    :goto_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-static {v7, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 85
    .line 86
    .line 87
    :cond_6
    iget-object v6, p1, Lt1/w;->a:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_7

    .line 94
    .line 95
    if-nez v4, :cond_7

    .line 96
    .line 97
    iget-object p1, v0, Lt1/g;->a:Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;

    .line 98
    .line 99
    if-eqz p1, :cond_14

    .line 100
    .line 101
    iget-object v0, p1, Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;->c:Landroid/widget/ProgressBar;

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p1, Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p1, Lcom/esafirm/imagepicker/databinding/EfFragmentImagePickerBinding;->e:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_c

    .line 117
    .line 118
    :cond_7
    iget-object v2, p1, Lt1/w;->c:Lc2/c;

    .line 119
    .line 120
    if-eqz v2, :cond_9

    .line 121
    .line 122
    iget-boolean v3, v2, Lc2/c;->b:Z

    .line 123
    .line 124
    if-eqz v3, :cond_8

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    iput-boolean v1, v2, Lc2/c;->b:Z

    .line 128
    .line 129
    iget-object v2, v2, Lc2/c;->a:Ljava/lang/Object;

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_9
    :goto_5
    move-object v2, v5

    .line 133
    :goto_6
    if-eqz v2, :cond_d

    .line 134
    .line 135
    check-cast v2, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    const-string v3, "recyclerViewManager"

    .line 142
    .line 143
    if-eqz v2, :cond_b

    .line 144
    .line 145
    iget-object v2, v0, Lt1/g;->b:Lz1/b;

    .line 146
    .line 147
    if-eqz v2, :cond_a

    .line 148
    .line 149
    iget-object v3, p1, Lt1/w;->b:Ljava/util/List;

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Lz1/b;->e(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lt1/g;->E()V

    .line 155
    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v5

    .line 162
    :cond_b
    iget-object v2, v0, Lt1/g;->b:Lz1/b;

    .line 163
    .line 164
    if-eqz v2, :cond_c

    .line 165
    .line 166
    invoke-virtual {v2, v6}, Lz1/b;->f(Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lt1/g;->E()V

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v5

    .line 177
    :cond_d
    :goto_7
    iget-object v2, p1, Lt1/w;->f:Lc2/c;

    .line 178
    .line 179
    if-eqz v2, :cond_f

    .line 180
    .line 181
    iget-boolean v3, v2, Lc2/c;->b:Z

    .line 182
    .line 183
    if-eqz v3, :cond_e

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_e
    iput-boolean v1, v2, Lc2/c;->b:Z

    .line 187
    .line 188
    iget-object v2, v2, Lc2/c;->a:Ljava/lang/Object;

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_f
    :goto_8
    move-object v2, v5

    .line 192
    :goto_9
    if-eqz v2, :cond_11

    .line 193
    .line 194
    check-cast v2, Ljava/util/List;

    .line 195
    .line 196
    iget-object v3, v0, Lt1/g;->h:Lt1/l;

    .line 197
    .line 198
    if-eqz v3, :cond_10

    .line 199
    .line 200
    new-instance v4, Landroid/content/Intent;

    .line 201
    .line 202
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v6, Ljava/util/ArrayList;

    .line 206
    .line 207
    check-cast v2, Ljava/util/Collection;

    .line 208
    .line 209
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    .line 211
    .line 212
    const-string v2, "selectedImages"

    .line 213
    .line 214
    invoke-virtual {v4, v2, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    invoke-interface {v3, v4}, Lt1/l;->k(Landroid/content/Intent;)V

    .line 218
    .line 219
    .line 220
    goto :goto_a

    .line 221
    :cond_10
    const-string p1, "interactionListener"

    .line 222
    .line 223
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v5

    .line 227
    :cond_11
    :goto_a
    iget-object p1, p1, Lt1/w;->g:Lc2/c;

    .line 228
    .line 229
    if-eqz p1, :cond_13

    .line 230
    .line 231
    iget-boolean v2, p1, Lc2/c;->b:Z

    .line 232
    .line 233
    if-eqz v2, :cond_12

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_12
    iput-boolean v1, p1, Lc2/c;->b:Z

    .line 237
    .line 238
    iget-object p1, p1, Lc2/c;->a:Ljava/lang/Object;

    .line 239
    .line 240
    move-object v5, p1

    .line 241
    :cond_13
    :goto_b
    if-eqz v5, :cond_14

    .line 242
    .line 243
    check-cast v5, Ll9/m;

    .line 244
    .line 245
    invoke-virtual {v0}, Lt1/g;->C()V

    .line 246
    .line 247
    .line 248
    :cond_14
    :goto_c
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 249
    .line 250
    return-object p1
.end method
