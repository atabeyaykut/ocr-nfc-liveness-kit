.class public abstract Lcom/airbnb/epoxy/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/airbnb/epoxy/x;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/airbnb/epoxy/q0;

.field public final c:Lcom/airbnb/epoxy/f;

.field public d:Lcom/airbnb/epoxy/p0;

.field public final e:Lcom/airbnb/epoxy/e$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/epoxy/e;->a:I

    new-instance v1, Lcom/airbnb/epoxy/q0;

    invoke-direct {v1}, Lcom/airbnb/epoxy/q0;-><init>()V

    iput-object v1, p0, Lcom/airbnb/epoxy/e;->b:Lcom/airbnb/epoxy/q0;

    new-instance v1, Lcom/airbnb/epoxy/f;

    invoke-direct {v1}, Lcom/airbnb/epoxy/f;-><init>()V

    iput-object v1, p0, Lcom/airbnb/epoxy/e;->c:Lcom/airbnb/epoxy/f;

    new-instance v1, Lcom/airbnb/epoxy/p0;

    invoke-direct {v1}, Lcom/airbnb/epoxy/p0;-><init>()V

    iput-object v1, p0, Lcom/airbnb/epoxy/e;->d:Lcom/airbnb/epoxy/p0;

    new-instance v1, Lcom/airbnb/epoxy/e$a;

    invoke-direct {v1, p0}, Lcom/airbnb/epoxy/e$a;-><init>(Lcom/airbnb/epoxy/e;)V

    iput-object v1, p0, Lcom/airbnb/epoxy/e;->e:Lcom/airbnb/epoxy/e$a;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;"
        }
    .end annotation
.end method

.method public b(I)Lcom/airbnb/epoxy/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/epoxy/u<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/epoxy/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/epoxy/u;

    return-object p1
.end method

.method public final c(Lcom/airbnb/epoxy/x;ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/x;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/airbnb/epoxy/e;->b(I)Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p0, Lcom/airbnb/epoxy/q;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/airbnb/epoxy/e;->getItemId(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_3

    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Lcom/airbnb/epoxy/l;

    .line 36
    .line 37
    iget-object v7, v6, Lcom/airbnb/epoxy/l;->a:Lcom/airbnb/epoxy/u;

    .line 38
    .line 39
    if-eqz v7, :cond_2

    .line 40
    .line 41
    invoke-virtual {v7}, Lcom/airbnb/epoxy/u;->id()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    cmp-long v9, v7, v3

    .line 46
    .line 47
    if-nez v9, :cond_1

    .line 48
    .line 49
    iget-object v3, v6, Lcom/airbnb/epoxy/l;->a:Lcom/airbnb/epoxy/u;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v6, v6, Lcom/airbnb/epoxy/l;->b:Landroidx/collection/LongSparseArray;

    .line 53
    .line 54
    invoke-virtual {v6, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lcom/airbnb/epoxy/u;

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    move-object v3, v6

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    move-object v3, v2

    .line 65
    :goto_1
    iput-object p3, p1, Lcom/airbnb/epoxy/x;->b:Ljava/util/List;

    .line 66
    .line 67
    iget-object v4, p1, Lcom/airbnb/epoxy/x;->c:Lcom/airbnb/epoxy/s;

    .line 68
    .line 69
    if-nez v4, :cond_4

    .line 70
    .line 71
    instance-of v4, v0, Lcom/airbnb/epoxy/v;

    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    move-object v4, v0

    .line 76
    check-cast v4, Lcom/airbnb/epoxy/v;

    .line 77
    .line 78
    iget-object v5, p1, Lcom/airbnb/epoxy/x;->e:Landroid/view/ViewParent;

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Lcom/airbnb/epoxy/v;->createNewHolder(Landroid/view/ViewParent;)Lcom/airbnb/epoxy/s;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iput-object v4, p1, Lcom/airbnb/epoxy/x;->c:Lcom/airbnb/epoxy/s;

    .line 85
    .line 86
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Lcom/airbnb/epoxy/s;->a(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    iput-object v2, p1, Lcom/airbnb/epoxy/x;->e:Landroid/view/ViewParent;

    .line 92
    .line 93
    instance-of v2, v0, Lcom/airbnb/epoxy/y;

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    move-object v2, v0

    .line 98
    check-cast v2, Lcom/airbnb/epoxy/y;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {v2, p1, v4, p2}, Lcom/airbnb/epoxy/y;->handlePreBind(Lcom/airbnb/epoxy/x;Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2, v3}, Lcom/airbnb/epoxy/u;->preBind(Ljava/lang/Object;Lcom/airbnb/epoxy/u;)V

    .line 112
    .line 113
    .line 114
    if-eqz v3, :cond_6

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v2, v3}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;Lcom/airbnb/epoxy/u;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_7

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v0, v2, p3}, Lcom/airbnb/epoxy/u;->bind(Ljava/lang/Object;Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    :goto_2
    instance-of v2, v0, Lcom/airbnb/epoxy/y;

    .line 146
    .line 147
    if-eqz v2, :cond_8

    .line 148
    .line 149
    move-object v2, v0

    .line 150
    check-cast v2, Lcom/airbnb/epoxy/y;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-interface {v2, v4, p2}, Lcom/airbnb/epoxy/y;->handlePostBind(Ljava/lang/Object;I)V

    .line 157
    .line 158
    .line 159
    :cond_8
    iput-object v0, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 160
    .line 161
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    if-eqz p3, :cond_d

    .line 166
    .line 167
    iget-object p3, p0, Lcom/airbnb/epoxy/e;->d:Lcom/airbnb/epoxy/p0;

    .line 168
    .line 169
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->a()V

    .line 173
    .line 174
    .line 175
    iget-object v2, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 176
    .line 177
    invoke-virtual {v2}, Lcom/airbnb/epoxy/u;->shouldSaveViewState()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_9

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 185
    .line 186
    .line 187
    move-result-wide v4

    .line 188
    invoke-virtual {p3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    check-cast p3, Lcom/airbnb/epoxy/p0$b;

    .line 193
    .line 194
    const v2, 0x7f0a0485

    .line 195
    .line 196
    .line 197
    const/4 v4, -0x1

    .line 198
    if-eqz p3, :cond_b

    .line 199
    .line 200
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    .line 202
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-ne v7, v4, :cond_a

    .line 211
    .line 212
    invoke-virtual {v5, v2}, Landroid/view/View;->setId(I)V

    .line 213
    .line 214
    .line 215
    :cond_a
    invoke-virtual {v5, p3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_b
    iget-object p3, p1, Lcom/airbnb/epoxy/x;->d:Lcom/airbnb/epoxy/p0$b;

    .line 223
    .line 224
    if-eqz p3, :cond_d

    .line 225
    .line 226
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 227
    .line 228
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-ne v7, v4, :cond_c

    .line 237
    .line 238
    invoke-virtual {v5, v2}, Landroid/view/View;->setId(I)V

    .line 239
    .line 240
    .line 241
    :cond_c
    invoke-virtual {v5, p3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 245
    .line 246
    .line 247
    :cond_d
    :goto_3
    iget-object p3, p0, Lcom/airbnb/epoxy/e;->c:Lcom/airbnb/epoxy/f;

    .line 248
    .line 249
    iget-object p3, p3, Lcom/airbnb/epoxy/f;->a:Landroidx/collection/LongSparseArray;

    .line 250
    .line 251
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 252
    .line 253
    .line 254
    move-result-wide v4

    .line 255
    invoke-virtual {p3, v4, v5, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    if-eqz v1, :cond_e

    .line 259
    .line 260
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/airbnb/epoxy/e;->e(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;ILcom/airbnb/epoxy/u;)V

    .line 261
    .line 262
    .line 263
    :cond_e
    return-void
.end method

.method public d(Ljava/lang/RuntimeException;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;ILcom/airbnb/epoxy/u;)V
    .locals 0
    .param p4    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/x;",
            "Lcom/airbnb/epoxy/u<",
            "*>;I",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public f(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/x;",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public g(Lcom/airbnb/epoxy/x;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/u;->onViewAttachedToWindow(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/epoxy/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/epoxy/u;

    invoke-virtual {p1}, Lcom/airbnb/epoxy/u;->id()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/e;->b(I)Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/airbnb/epoxy/e;->b:Lcom/airbnb/epoxy/q0;

    .line 6
    .line 7
    iput-object p1, v0, Lcom/airbnb/epoxy/q0;->a:Lcom/airbnb/epoxy/u;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/airbnb/epoxy/q0;->a(Lcom/airbnb/epoxy/u;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public h(Lcom/airbnb/epoxy/x;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/u;->onViewDetachedFromWindow(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/x;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/epoxy/e;->c(Lcom/airbnb/epoxy/x;ILjava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/airbnb/epoxy/x;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/epoxy/e;->c(Lcom/airbnb/epoxy/x;ILjava/util/List;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/e;->b:Lcom/airbnb/epoxy/q0;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airbnb/epoxy/q0;->a:Lcom/airbnb/epoxy/u;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Lcom/airbnb/epoxy/q0;->a(Lcom/airbnb/epoxy/u;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v1, p2, :cond_0

    .line 12
    .line 13
    iget-object p2, v0, Lcom/airbnb/epoxy/q0;->a:Lcom/airbnb/epoxy/u;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Last model did not match expected view type"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/e;->d(Ljava/lang/RuntimeException;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/airbnb/epoxy/e;->a()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/airbnb/epoxy/u;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/airbnb/epoxy/q0;->a(Lcom/airbnb/epoxy/u;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ne v2, p2, :cond_1

    .line 51
    .line 52
    move-object p2, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lcom/airbnb/epoxy/a0;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/airbnb/epoxy/a0;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/airbnb/epoxy/u;->getViewType()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ne p2, v1, :cond_3

    .line 64
    .line 65
    move-object p2, v0

    .line 66
    :goto_0
    invoke-virtual {p2, p1}, Lcom/airbnb/epoxy/u;->buildView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lcom/airbnb/epoxy/x;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/airbnb/epoxy/u;->shouldSaveViewState()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-direct {v1, p1, v0, p2}, Lcom/airbnb/epoxy/x;-><init>(Landroid/view/ViewParent;Landroid/view/View;Z)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v0, "Could not find model for view type: "

    .line 83
    .line 84
    invoke-static {v0, p2}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p1, p0, Lcom/airbnb/epoxy/e;->b:Lcom/airbnb/epoxy/q0;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/airbnb/epoxy/q0;->a:Lcom/airbnb/epoxy/u;

    return-void
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/x;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/u;->onFailedToRecycleView(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    check-cast p1, Lcom/airbnb/epoxy/x;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/e;->g(Lcom/airbnb/epoxy/x;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    check-cast p1, Lcom/airbnb/epoxy/x;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/e;->h(Lcom/airbnb/epoxy/x;)V

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/x;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/epoxy/e;->d:Lcom/airbnb/epoxy/p0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/p0;->b(Lcom/airbnb/epoxy/x;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/epoxy/e;->c:Lcom/airbnb/epoxy/f;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/airbnb/epoxy/f;->a:Landroidx/collection/LongSparseArray;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->a()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->a()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/airbnb/epoxy/x;->b()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/airbnb/epoxy/u;->unbind(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-object v1, p1, Lcom/airbnb/epoxy/x;->a:Lcom/airbnb/epoxy/u;

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/epoxy/e;->f(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
