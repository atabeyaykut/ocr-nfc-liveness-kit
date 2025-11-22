.class public final Lv/e;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Z

.field public final c:Landroid/graphics/Typeface;

.field public final d:Landroid/graphics/Typeface;

.field public final e:Landroid/graphics/Typeface;

.field public final f:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Landroid/content/Context;

.field public final m:Lv/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    sget-object v0, Lv/f;->a:Lv/f;

    .line 2
    .line 3
    const-string v1, "windowContext"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lv/g;->a(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    xor-int/2addr v1, v2

    .line 14
    invoke-virtual {v0, v1}, Lv/f;->e(Z)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lv/e;->l:Landroid/content/Context;

    .line 22
    .line 23
    iput-object v0, p0, Lv/e;->m:Lv/a;

    .line 24
    .line 25
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lv/e;->a:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    iput-boolean v2, p0, Lv/e;->b:Z

    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lv/e;->g:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 62
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lv/e;->j:Ljava/util/ArrayList;

    .line 69
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lv/e;->k:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/4 v4, 0x0

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    const-string v5, "layoutInflater"

    .line 89
    .line 90
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1, v3, v1, p0}, Lv/f;->d(Landroid/content/Context;Landroid/view/Window;Landroid/view/LayoutInflater;Lv/e;)Landroid/view/ViewGroup;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    check-cast v1, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    .line 101
    .line 102
    iget-object v3, v1, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->h:Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;

    .line 103
    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    invoke-virtual {v3, p0}, Lz/a;->setDialog(Lv/e;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v1, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->k:Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    .line 110
    .line 111
    if-eqz v3, :cond_0

    .line 112
    .line 113
    invoke-virtual {v3, p0}, Lz/a;->setDialog(Lv/e;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    iput-object v1, p0, Lv/e;->f:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    .line 117
    .line 118
    const v3, 0x7f0402c4

    .line 119
    .line 120
    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {p0, v3}, Lb0/a;->e(Lv/e;Ljava/lang/Integer;)Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iput-object v3, p0, Lv/e;->c:Landroid/graphics/Typeface;

    .line 130
    .line 131
    const v3, 0x7f0402c2

    .line 132
    .line 133
    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {p0, v3}, Lb0/a;->e(Lv/e;Ljava/lang/Integer;)Landroid/graphics/Typeface;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iput-object v3, p0, Lv/e;->d:Landroid/graphics/Typeface;

    .line 143
    .line 144
    const v3, 0x7f0402c3

    .line 145
    .line 146
    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {p0, v3}, Lb0/a;->e(Lv/e;Ljava/lang/Integer;)Landroid/graphics/Typeface;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    iput-object v3, p0, Lv/e;->e:Landroid/graphics/Typeface;

    .line 156
    .line 157
    const v3, 0x7f0402b7

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    new-instance v4, Lv/d;

    .line 165
    .line 166
    invoke-direct {v4, p0}, Lv/d;-><init>(Lv/e;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p0, v3, v4, v2}, La0/b;->q(Lv/e;Ljava/lang/Integer;Lv/d;I)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const/4 v5, 0x0

    .line 178
    if-eqz v4, :cond_1

    .line 179
    .line 180
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 181
    .line 182
    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    .line 187
    .line 188
    :cond_1
    new-instance v4, Lv/c;

    .line 189
    .line 190
    invoke-direct {v4, p0}, Lv/c;-><init>(Lv/e;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    new-array v2, v2, [I

    .line 198
    .line 199
    const v6, 0x7f0402c0

    .line 200
    .line 201
    .line 202
    aput v6, v2, v5

    .line 203
    .line 204
    invoke-virtual {p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :try_start_0
    invoke-virtual {v4}, Lv/c;->invoke()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Ljava/lang/Float;

    .line 213
    .line 214
    if-eqz v2, :cond_2

    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    goto :goto_0

    .line 221
    :cond_2
    const/4 v2, 0x0

    .line 222
    :goto_0
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 223
    .line 224
    .line 225
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1, v3, v2}, Lv/f;->f(Lcom/afollestad/materialdialogs/internal/main/DialogLayout;IF)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :catchall_0
    move-exception v0

    .line 234
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :cond_3
    const-string p1, "titleLayout"

    .line 239
    .line 240
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v4

    .line 244
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/h;->l()V

    .line 245
    .line 246
    .line 247
    throw v4
.end method

.method public static c(Lv/e;Ljava/lang/Integer;Ljava/lang/CharSequence;I)V
    .locals 5

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    move-object p3, p2

    .line 13
    check-cast p3, Ljava/lang/CharSequence;

    .line 14
    .line 15
    if-nez p1, :cond_3

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p1, ": You must specify a resource ID or literal value"

    .line 23
    .line 24
    const-string p2, "message"

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_3
    :goto_0
    iget-object p3, p0, Lv/e;->f:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p3, v0}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->a(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p3, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->b:Landroid/widget/TextView;

    .line 48
    .line 49
    if-nez v2, :cond_6

    .line 50
    .line 51
    iget-object v2, p3, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->a:Landroid/view/ViewGroup;

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    const v3, 0x7f0d00c4

    .line 56
    .line 57
    .line 58
    invoke-static {p3, v3, v2}, Lb0/d;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object v3, p3, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->a:Landroid/view/ViewGroup;

    .line 65
    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p3, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->b:Landroid/widget/TextView;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/h;->l()V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/h;->l()V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_6
    :goto_1
    iget-object v2, p3, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->b:Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v2, :cond_b

    .line 85
    .line 86
    iget-object p3, p3, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->b:Landroid/widget/TextView;

    .line 87
    .line 88
    if-eqz p3, :cond_a

    .line 89
    .line 90
    iget-object v3, p0, Lv/e;->d:Landroid/graphics/Typeface;

    .line 91
    .line 92
    if-eqz v3, :cond_7

    .line 93
    .line 94
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    .line 96
    .line 97
    :cond_7
    const v3, 0x7f0402bb

    .line 98
    .line 99
    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v4, p0, Lv/e;->l:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {p3, v4, v3}, Lb0/c;->b(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Integer;)V

    .line 107
    .line 108
    .line 109
    const-string p3, "context"

    .line 110
    .line 111
    invoke-static {v4, p3}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    const/4 v3, 0x1

    .line 119
    new-array v3, v3, [I

    .line 120
    .line 121
    const v4, 0x7f0402c6

    .line 122
    .line 123
    .line 124
    aput v4, v3, v0

    .line 125
    .line 126
    invoke-virtual {p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    const v3, 0x3f8ccccd    # 1.1f

    .line 131
    .line 132
    .line 133
    :try_start_0
    invoke-virtual {p3, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 134
    .line 135
    .line 136
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    .line 139
    .line 140
    const/4 p3, 0x0

    .line 141
    invoke-virtual {v2, p3, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 142
    .line 143
    .line 144
    if-nez p2, :cond_8

    .line 145
    .line 146
    move-object p2, v1

    .line 147
    :cond_8
    if-eqz p2, :cond_9

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_9
    const/4 p2, 0x4

    .line 151
    invoke-static {p0, p1, v1, p2}, Lb0/c;->d(Lv/e;Ljava/lang/Integer;Ljava/lang/Integer;I)Ljava/lang/CharSequence;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    :goto_2
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception p0

    .line 160
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_a
    :goto_3
    return-void

    .line 165
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/h;->l()V

    .line 166
    .line 167
    .line 168
    throw v1
.end method

.method public static d(Lv/e;Ljava/lang/Integer;Lx9/l;)V
    .locals 8

    .line 1
    const/4 v3, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lv/e;->j:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    const/4 p2, 0x2

    .line 10
    invoke-static {p0, p2}, Lx5/a;->j(Lv/e;I)Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-static {v1}, Lb0/d;->c(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/high16 v4, 0x1040000

    .line 24
    .line 25
    iget-object v5, p0, Lv/e;->e:Landroid/graphics/Typeface;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/16 v7, 0x20

    .line 29
    .line 30
    move-object v0, p0

    .line 31
    move-object v2, p1

    .line 32
    invoke-static/range {v0 .. v7}, La2/b;->l(Lv/e;Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/graphics/Typeface;Ljava/lang/Integer;I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public static e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V
    .locals 10

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v4, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v4, p1

    .line 9
    :goto_0
    and-int/lit8 p1, p4, 0x2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move-object v5, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v5, p2

    .line 16
    :goto_1
    and-int/lit8 p1, p4, 0x4

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    move-object p3, v1

    .line 21
    :cond_2
    if-eqz p3, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, Lv/e;->h:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_3
    const/4 p1, 0x1

    .line 29
    invoke-static {p0, p1}, Lx5/a;->j(Lv/e;I)Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v4, :cond_4

    .line 34
    .line 35
    if-nez v5, :cond_4

    .line 36
    .line 37
    invoke-static {v3}, Lb0/d;->c(Landroid/view/View;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_4
    const v6, 0x104000a

    .line 45
    .line 46
    .line 47
    iget-object v7, p0, Lv/e;->e:Landroid/graphics/Typeface;

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    const/16 v9, 0x20

    .line 51
    .line 52
    move-object v2, p0

    .line 53
    invoke-static/range {v2 .. v9}, La2/b;->l(Lv/e;Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/graphics/Typeface;Ljava/lang/Integer;I)V

    .line 54
    .line 55
    .line 56
    :goto_2
    return-void
.end method

.method public static f(Lv/e;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 10

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v4, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v4, p1

    .line 9
    :goto_0
    and-int/lit8 p1, p3, 0x2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move-object v5, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v5, p2

    .line 16
    :goto_1
    if-nez v4, :cond_3

    .line 17
    .line 18
    if-eqz v5, :cond_2

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p1, ": You must specify a resource ID or literal value"

    .line 24
    .line 25
    const-string p2, "title"

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_3
    :goto_2
    iget-object p1, p0, Lv/e;->f:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getTitleLayout()Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->getTitleView$core()Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v6, 0x0

    .line 46
    iget-object v7, p0, Lv/e;->c:Landroid/graphics/Typeface;

    .line 47
    .line 48
    const p1, 0x7f0402bd

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const/16 v9, 0x8

    .line 56
    .line 57
    move-object v2, p0

    .line 58
    invoke-static/range {v2 .. v9}, La2/b;->l(Lv/e;Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/graphics/Typeface;Ljava/lang/Integer;I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv/e;->m:Lv/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lv/a;->onDismiss()V

    .line 4
    .line 5
    .line 6
    const-string v0, "input_method"

    .line 7
    .line 8
    iget-object v1, p0, Lv/e;->l:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lv/e;->f:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 33
    .line 34
    .line 35
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Ll9/l;

    .line 40
    .line 41
    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ll9/l;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public final setCancelable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public final show()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_7

    .line 8
    .line 9
    iget-object v3, p0, Lv/e;->l:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v4, p0, Lv/e;->m:Lv/a;

    .line 12
    .line 13
    iget-object v5, p0, Lv/e;->f:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    .line 14
    .line 15
    invoke-interface {v4, v3, v1, v5, v0}, Lv/a;->a(Landroid/content/Context;Landroid/view/Window;Lcom/afollestad/materialdialogs/internal/main/DialogLayout;Ljava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lv/e;->a:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    const-string v1, "md.custom_view_no_vertical_padding"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v2, v0

    .line 32
    :goto_0
    check-cast v2, Ljava/lang/Boolean;

    .line 33
    .line 34
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lv/e;->g:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v1, p0}, Lc5/w;->y(Ljava/util/ArrayList;Lv/e;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getTitleLayout()Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->b()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getFrameMarginVertical$core()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getFrameMarginVertical$core()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->c(II)V

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getButtonsLayout()Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getCheckBoxPrompt()Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    invoke-static {v0}, Lb0/d;->c(Landroid/view/View;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v1, -0x1

    .line 89
    const/4 v2, 0x0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget-object v3, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->h:[Lda/m;

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->c(II)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/4 v3, 0x1

    .line 111
    if-le v0, v3, :cond_3

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    :cond_3
    if-eqz v2, :cond_5

    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getFrameMarginVerticalLess$core()I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    iget-object v2, v0, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->e:Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    move-object v6, v2

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->f:Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;

    .line 131
    .line 132
    move-object v6, v0

    .line 133
    :goto_1
    if-eq v10, v1, :cond_5

    .line 134
    .line 135
    const/4 v7, 0x0

    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    const/4 v11, 0x7

    .line 139
    invoke-static/range {v6 .. v11}, Lb0/c;->e(Landroid/view/View;IIIII)V

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_2
    invoke-interface {v4, p0}, Lv/a;->b(Lv/e;)V

    .line 143
    .line 144
    .line 145
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 146
    .line 147
    .line 148
    invoke-interface {v4, p0}, Lv/a;->c(Lv/e;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    const-string v1, "The dialog does not have an attached buttons layout."

    .line 155
    .line 156
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/h;->l()V

    .line 161
    .line 162
    .line 163
    throw v2
.end method
