.class public final Lcom/airbnb/epoxy/t;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airbnb/epoxy/t;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 p4, -0x1

    .line 9
    if-ne p2, p4, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_0
    iput-boolean v2, p0, Lcom/airbnb/epoxy/t;->d:Z

    .line 32
    .line 33
    sub-int/2addr p3, v0

    .line 34
    if-ne p2, p3, :cond_2

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v2, 0x0

    .line 39
    :goto_1
    iput-boolean v2, p0, Lcom/airbnb/epoxy/t;->e:Z

    .line 40
    .line 41
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput-boolean v2, p0, Lcom/airbnb/epoxy/t;->c:Z

    .line 46
    .line 47
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iput-boolean v2, p0, Lcom/airbnb/epoxy/t;->b:Z

    .line 52
    .line 53
    instance-of v2, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/airbnb/epoxy/t;->f:Z

    .line 56
    .line 57
    if-eqz v2, :cond_a

    .line 58
    .line 59
    move-object v2, p4

    .line 60
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v3, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_3

    .line 79
    .line 80
    const/4 v6, 0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const/4 v6, 0x0

    .line 83
    :goto_2
    iput-boolean v6, p0, Lcom/airbnb/epoxy/t;->g:Z

    .line 84
    .line 85
    add-int/2addr v5, v4

    .line 86
    if-ne v5, v2, :cond_4

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    const/4 v4, 0x0

    .line 91
    :goto_3
    iput-boolean v4, p0, Lcom/airbnb/epoxy/t;->h:Z

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    :goto_4
    if-gt v4, p2, :cond_6

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    add-int/2addr v5, v6

    .line 102
    if-le v5, v2, :cond_5

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    goto :goto_5

    .line 106
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    const/4 v4, 0x1

    .line 110
    :goto_5
    iput-boolean v4, p0, Lcom/airbnb/epoxy/t;->i:Z

    .line 111
    .line 112
    if-nez v4, :cond_9

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    :goto_6
    if-lt p3, p2, :cond_8

    .line 116
    .line 117
    invoke-virtual {v3, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    add-int/2addr v4, v5

    .line 122
    if-le v4, v2, :cond_7

    .line 123
    .line 124
    const/4 p2, 0x0

    .line 125
    goto :goto_7

    .line 126
    :cond_7
    add-int/lit8 p3, p3, -0x1

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_8
    const/4 p2, 0x1

    .line 130
    :goto_7
    if-eqz p2, :cond_9

    .line 131
    .line 132
    const/4 p2, 0x1

    .line 133
    goto :goto_8

    .line 134
    :cond_9
    const/4 p2, 0x0

    .line 135
    :goto_8
    iput-boolean p2, p0, Lcom/airbnb/epoxy/t;->j:Z

    .line 136
    .line 137
    :cond_a
    iget-boolean p2, p0, Lcom/airbnb/epoxy/t;->f:Z

    .line 138
    .line 139
    iget-boolean p3, p0, Lcom/airbnb/epoxy/t;->c:Z

    .line 140
    .line 141
    if-eqz p2, :cond_e

    .line 142
    .line 143
    if-eqz p3, :cond_b

    .line 144
    .line 145
    iget-boolean p3, p0, Lcom/airbnb/epoxy/t;->i:Z

    .line 146
    .line 147
    if-eqz p3, :cond_c

    .line 148
    .line 149
    :cond_b
    iget-boolean p3, p0, Lcom/airbnb/epoxy/t;->b:Z

    .line 150
    .line 151
    if-eqz p3, :cond_d

    .line 152
    .line 153
    iget-boolean p3, p0, Lcom/airbnb/epoxy/t;->g:Z

    .line 154
    .line 155
    if-nez p3, :cond_d

    .line 156
    .line 157
    :cond_c
    :goto_9
    const/4 p3, 0x1

    .line 158
    goto :goto_a

    .line 159
    :cond_d
    const/4 p3, 0x0

    .line 160
    goto :goto_a

    .line 161
    :cond_e
    if-eqz p3, :cond_d

    .line 162
    .line 163
    iget-boolean p3, p0, Lcom/airbnb/epoxy/t;->d:Z

    .line 164
    .line 165
    if-nez p3, :cond_d

    .line 166
    .line 167
    goto :goto_9

    .line 168
    :goto_a
    iget-boolean v2, p0, Lcom/airbnb/epoxy/t;->c:Z

    .line 169
    .line 170
    if-eqz p2, :cond_12

    .line 171
    .line 172
    if-eqz v2, :cond_f

    .line 173
    .line 174
    iget-boolean v2, p0, Lcom/airbnb/epoxy/t;->j:Z

    .line 175
    .line 176
    if-eqz v2, :cond_10

    .line 177
    .line 178
    :cond_f
    iget-boolean v2, p0, Lcom/airbnb/epoxy/t;->b:Z

    .line 179
    .line 180
    if-eqz v2, :cond_11

    .line 181
    .line 182
    iget-boolean v2, p0, Lcom/airbnb/epoxy/t;->h:Z

    .line 183
    .line 184
    if-nez v2, :cond_11

    .line 185
    .line 186
    :cond_10
    :goto_b
    const/4 v2, 0x1

    .line 187
    goto :goto_c

    .line 188
    :cond_11
    const/4 v2, 0x0

    .line 189
    goto :goto_c

    .line 190
    :cond_12
    if-eqz v2, :cond_11

    .line 191
    .line 192
    iget-boolean v2, p0, Lcom/airbnb/epoxy/t;->e:Z

    .line 193
    .line 194
    if-nez v2, :cond_11

    .line 195
    .line 196
    goto :goto_b

    .line 197
    :goto_c
    if-eqz p2, :cond_16

    .line 198
    .line 199
    iget-boolean v3, p0, Lcom/airbnb/epoxy/t;->c:Z

    .line 200
    .line 201
    if-eqz v3, :cond_13

    .line 202
    .line 203
    iget-boolean v3, p0, Lcom/airbnb/epoxy/t;->g:Z

    .line 204
    .line 205
    if-eqz v3, :cond_14

    .line 206
    .line 207
    :cond_13
    iget-boolean v3, p0, Lcom/airbnb/epoxy/t;->b:Z

    .line 208
    .line 209
    if-eqz v3, :cond_15

    .line 210
    .line 211
    iget-boolean v3, p0, Lcom/airbnb/epoxy/t;->i:Z

    .line 212
    .line 213
    if-nez v3, :cond_15

    .line 214
    .line 215
    :cond_14
    :goto_d
    const/4 v3, 0x1

    .line 216
    goto :goto_e

    .line 217
    :cond_15
    const/4 v3, 0x0

    .line 218
    goto :goto_e

    .line 219
    :cond_16
    iget-boolean v3, p0, Lcom/airbnb/epoxy/t;->b:Z

    .line 220
    .line 221
    if-eqz v3, :cond_15

    .line 222
    .line 223
    iget-boolean v3, p0, Lcom/airbnb/epoxy/t;->d:Z

    .line 224
    .line 225
    if-nez v3, :cond_15

    .line 226
    .line 227
    goto :goto_d

    .line 228
    :goto_e
    if-eqz p2, :cond_1a

    .line 229
    .line 230
    iget-boolean p2, p0, Lcom/airbnb/epoxy/t;->c:Z

    .line 231
    .line 232
    if-eqz p2, :cond_17

    .line 233
    .line 234
    iget-boolean p2, p0, Lcom/airbnb/epoxy/t;->h:Z

    .line 235
    .line 236
    if-eqz p2, :cond_18

    .line 237
    .line 238
    :cond_17
    iget-boolean p2, p0, Lcom/airbnb/epoxy/t;->b:Z

    .line 239
    .line 240
    if-eqz p2, :cond_19

    .line 241
    .line 242
    iget-boolean p2, p0, Lcom/airbnb/epoxy/t;->j:Z

    .line 243
    .line 244
    if-nez p2, :cond_19

    .line 245
    .line 246
    :cond_18
    :goto_f
    const/4 p2, 0x1

    .line 247
    goto :goto_10

    .line 248
    :cond_19
    const/4 p2, 0x0

    .line 249
    goto :goto_10

    .line 250
    :cond_1a
    iget-boolean p2, p0, Lcom/airbnb/epoxy/t;->b:Z

    .line 251
    .line 252
    if-eqz p2, :cond_19

    .line 253
    .line 254
    iget-boolean p2, p0, Lcom/airbnb/epoxy/t;->e:Z

    .line 255
    .line 256
    if-nez p2, :cond_19

    .line 257
    .line 258
    goto :goto_f

    .line 259
    :goto_10
    iget-boolean v4, p0, Lcom/airbnb/epoxy/t;->c:Z

    .line 260
    .line 261
    instance-of v5, p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 262
    .line 263
    if-eqz v5, :cond_1b

    .line 264
    .line 265
    move-object v5, p4

    .line 266
    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 267
    .line 268
    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-eqz v5, :cond_1b

    .line 273
    .line 274
    const/4 v5, 0x1

    .line 275
    goto :goto_11

    .line 276
    :cond_1b
    const/4 v5, 0x0

    .line 277
    :goto_11
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 278
    .line 279
    .line 280
    move-result p4

    .line 281
    if-ne p4, v0, :cond_1c

    .line 282
    .line 283
    goto :goto_12

    .line 284
    :cond_1c
    const/4 v0, 0x0

    .line 285
    :goto_12
    if-eqz v4, :cond_1d

    .line 286
    .line 287
    if-eqz v0, :cond_1d

    .line 288
    .line 289
    xor-int/lit8 v5, v5, 0x1

    .line 290
    .line 291
    :cond_1d
    if-eqz v5, :cond_1f

    .line 292
    .line 293
    iget-boolean p4, p0, Lcom/airbnb/epoxy/t;->c:Z

    .line 294
    .line 295
    if-eqz p4, :cond_1e

    .line 296
    .line 297
    goto :goto_13

    .line 298
    :cond_1e
    move v7, v3

    .line 299
    move v3, p2

    .line 300
    move p2, v7

    .line 301
    move v8, v2

    .line 302
    move v2, p3

    .line 303
    move p3, v8

    .line 304
    goto :goto_13

    .line 305
    :cond_1f
    move v7, v2

    .line 306
    move v2, p3

    .line 307
    move p3, v7

    .line 308
    :goto_13
    iget p4, p0, Lcom/airbnb/epoxy/t;->a:I

    .line 309
    .line 310
    div-int/lit8 p4, p4, 0x2

    .line 311
    .line 312
    if-eqz p3, :cond_20

    .line 313
    .line 314
    move p3, p4

    .line 315
    goto :goto_14

    .line 316
    :cond_20
    const/4 p3, 0x0

    .line 317
    :goto_14
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 318
    .line 319
    if-eqz v2, :cond_21

    .line 320
    .line 321
    move p3, p4

    .line 322
    goto :goto_15

    .line 323
    :cond_21
    const/4 p3, 0x0

    .line 324
    :goto_15
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 325
    .line 326
    if-eqz v3, :cond_22

    .line 327
    .line 328
    move p3, p4

    .line 329
    goto :goto_16

    .line 330
    :cond_22
    const/4 p3, 0x0

    .line 331
    :goto_16
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 332
    .line 333
    if-eqz p2, :cond_23

    .line 334
    .line 335
    move v1, p4

    .line 336
    :cond_23
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 337
    .line 338
    return-void
.end method
