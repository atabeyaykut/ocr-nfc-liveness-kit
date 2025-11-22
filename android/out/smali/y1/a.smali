.class public final Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly1/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ld2/b;Landroid/widget/ImageView;Ly1/c;)V
    .locals 5

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "imageView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p1, Ld2/b;->d:Landroid/net/Uri;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, La2/b;->k(Ld2/b;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 33
    .line 34
    :goto_0
    iget-wide v2, p1, Ld2/b;->a:J

    .line 35
    .line 36
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p1, Ld2/b;->d:Landroid/net/Uri;

    .line 41
    .line 42
    const-string p1, "withAppendedId(contentUr\u2026er = it\n                }"

    .line 43
    .line 44
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/bumptech/glide/n;

    .line 51
    .line 52
    iget-object v2, v0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/b;

    .line 53
    .line 54
    iget-object v3, v0, Lcom/bumptech/glide/o;->b:Landroid/content/Context;

    .line 55
    .line 56
    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    invoke-direct {p1, v2, v0, v4, v3}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/n;->A(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v0, Ly1/c;->a:Ly1/c;

    .line 66
    .line 67
    const v1, 0x7f0800a6

    .line 68
    .line 69
    .line 70
    if-ne p3, v0, :cond_2

    .line 71
    .line 72
    const v2, 0x7f0800a1

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const v2, 0x7f0800a6

    .line 77
    .line 78
    .line 79
    :goto_1
    new-instance v3, Lm1/g;

    .line 80
    .line 81
    invoke-direct {v3}, Lm1/g;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Lm1/a;->j(I)Lm1/a;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lm1/g;

    .line 89
    .line 90
    if-ne p3, v0, :cond_3

    .line 91
    .line 92
    const v1, 0x7f0800a1

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {v2, v1}, Lm1/a;->f(I)Lm1/a;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/n;->v(Lm1/a;)Lcom/bumptech/glide/n;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance p3, Lg1/d;

    .line 104
    .line 105
    invoke-direct {p3}, Lg1/d;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lo1/a;

    .line 109
    .line 110
    const/16 v1, 0x12c

    .line 111
    .line 112
    invoke-direct {v0, v1}, Lo1/a;-><init>(I)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p3, Lcom/bumptech/glide/p;->a:Lo1/e;

    .line 116
    .line 117
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/n;->C(Lg1/d;)Lcom/bumptech/glide/n;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lq1/m;->a()V

    .line 125
    .line 126
    .line 127
    iget p3, p1, Lm1/a;->a:I

    .line 128
    .line 129
    const/16 v0, 0x800

    .line 130
    .line 131
    invoke-static {p3, v0}, Lm1/a;->g(II)Z

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-nez p3, :cond_4

    .line 136
    .line 137
    iget-boolean p3, p1, Lm1/a;->p:Z

    .line 138
    .line 139
    if-eqz p3, :cond_4

    .line 140
    .line 141
    invoke-virtual {p2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    if-eqz p3, :cond_4

    .line 146
    .line 147
    sget-object p3, Lcom/bumptech/glide/n$a;->a:[I

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    aget p3, p3, v0

    .line 158
    .line 159
    const/4 v0, 0x1

    .line 160
    packed-switch p3, :pswitch_data_0

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :pswitch_0
    invoke-virtual {p1}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    sget-object v1, Le1/l;->a:Le1/l$e;

    .line 169
    .line 170
    new-instance v2, Le1/q;

    .line 171
    .line 172
    invoke-direct {v2}, Le1/q;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, v1, v2}, Lm1/a;->h(Le1/l;Le1/f;)Lm1/a;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    iput-boolean v0, p3, Lm1/a;->B:Z

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :pswitch_1
    invoke-virtual {p1}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    sget-object v1, Le1/l;->b:Le1/l$c;

    .line 187
    .line 188
    new-instance v2, Le1/j;

    .line 189
    .line 190
    invoke-direct {v2}, Le1/j;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3, v1, v2}, Lm1/a;->h(Le1/l;Le1/f;)Lm1/a;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    iput-boolean v0, p3, Lm1/a;->B:Z

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :pswitch_2
    invoke-virtual {p1}, Lcom/bumptech/glide/n;->x()Lcom/bumptech/glide/n;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    sget-object v0, Le1/l;->c:Le1/l$d;

    .line 205
    .line 206
    new-instance v1, Le1/i;

    .line 207
    .line 208
    invoke-direct {v1}, Le1/i;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3, v0, v1}, Lm1/a;->h(Le1/l;Le1/f;)Lm1/a;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    goto :goto_3

    .line 216
    :cond_4
    :goto_2
    move-object p3, p1

    .line 217
    :goto_3
    iget-object v0, p1, Lcom/bumptech/glide/n;->G:Lcom/bumptech/glide/h;

    .line 218
    .line 219
    iget-object v0, v0, Lcom/bumptech/glide/h;->c:La2/b;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    const-class v0, Landroid/graphics/Bitmap;

    .line 225
    .line 226
    iget-object v1, p1, Lcom/bumptech/glide/n;->F:Ljava/lang/Class;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_5

    .line 233
    .line 234
    new-instance v0, Ln1/b;

    .line 235
    .line 236
    invoke-direct {v0, p2}, Ln1/b;-><init>(Landroid/widget/ImageView;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_6

    .line 245
    .line 246
    new-instance v0, Ln1/d;

    .line 247
    .line 248
    invoke-direct {v0, p2}, Ln1/d;-><init>(Landroid/widget/ImageView;)V

    .line 249
    .line 250
    .line 251
    :goto_4
    invoke-virtual {p1, v0, p3}, Lcom/bumptech/glide/n;->z(Ln1/g;Lm1/a;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 256
    .line 257
    const-string p2, "Unhandled class: "

    .line 258
    .line 259
    const-string p3, ", try .as*(Class).transcode(ResourceTranscoder)"

    .line 260
    .line 261
    invoke-static {p2, v1, p3}, Landroidx/camera/camera2/internal/c;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
