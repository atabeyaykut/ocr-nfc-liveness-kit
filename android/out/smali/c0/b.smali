.class public final Lc0/b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;"
    }
.end annotation


# instance fields
.field public a:Lca/d;

.field public b:Lca/b;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/16 v0, 0x4b

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-le p2, v0, :cond_1

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p2, 0x0

    .line 24
    :goto_0
    if-nez p2, :cond_14

    .line 25
    .line 26
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-le p2, v0, :cond_2

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 p2, 0x0

    .line 35
    :goto_1
    if-eqz p2, :cond_3

    .line 36
    .line 37
    goto/16 :goto_e

    .line 38
    .line 39
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    goto :goto_2

    .line 50
    :cond_4
    const/4 p2, 0x0

    .line 51
    :goto_2
    iput p2, p0, Lc0/b;->c:I

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_13

    .line 58
    .line 59
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 p3, -0x1

    .line 70
    if-eq p2, p3, :cond_6

    .line 71
    .line 72
    iget v0, p0, Lc0/b;->c:I

    .line 73
    .line 74
    if-lt p2, v0, :cond_5

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_5
    const/4 v0, 0x0

    .line 78
    goto :goto_4

    .line 79
    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 80
    :goto_4
    if-nez v0, :cond_12

    .line 81
    .line 82
    if-eq p1, p3, :cond_8

    .line 83
    .line 84
    iget v0, p0, Lc0/b;->c:I

    .line 85
    .line 86
    if-lt p1, v0, :cond_7

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_7
    const/4 v0, 0x0

    .line 90
    goto :goto_6

    .line 91
    :cond_8
    :goto_5
    const/4 v0, 0x1

    .line 92
    :goto_6
    if-eqz v0, :cond_9

    .line 93
    .line 94
    goto/16 :goto_d

    .line 95
    .line 96
    :cond_9
    new-instance v0, Lca/d;

    .line 97
    .line 98
    invoke-direct {v0, p2, p1}, Lca/d;-><init>(II)V

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lc0/b;->a:Lca/d;

    .line 102
    .line 103
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_a

    .line 108
    .line 109
    return-void

    .line 110
    :cond_a
    iget-object v3, p0, Lc0/b;->a:Lca/d;

    .line 111
    .line 112
    iget v4, v3, Lca/b;->a:I

    .line 113
    .line 114
    if-gt p2, v4, :cond_c

    .line 115
    .line 116
    iget v3, v3, Lca/b;->b:I

    .line 117
    .line 118
    iget v4, v0, Lca/b;->b:I

    .line 119
    .line 120
    if-le v4, v3, :cond_b

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_b
    const/4 v3, 0x0

    .line 124
    goto :goto_8

    .line 125
    :cond_c
    :goto_7
    const/4 v3, 0x1

    .line 126
    :goto_8
    if-eqz v3, :cond_d

    .line 127
    .line 128
    add-int/2addr p1, v1

    .line 129
    goto :goto_9

    .line 130
    :cond_d
    add-int/lit8 p1, p2, -0x1

    .line 131
    .line 132
    :goto_9
    if-eqz v3, :cond_e

    .line 133
    .line 134
    const/4 p2, -0x1

    .line 135
    goto :goto_a

    .line 136
    :cond_e
    const/4 p2, 0x1

    .line 137
    :goto_a
    add-int/2addr p2, p1

    .line 138
    iget v4, p0, Lc0/b;->c:I

    .line 139
    .line 140
    add-int/2addr v4, p3

    .line 141
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iget v4, p0, Lc0/b;->c:I

    .line 150
    .line 151
    add-int/2addr v4, p3

    .line 152
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz v3, :cond_f

    .line 161
    .line 162
    goto :goto_b

    .line 163
    :cond_f
    const/4 v1, -0x1

    .line 164
    :goto_b
    new-instance p3, Lca/b;

    .line 165
    .line 166
    invoke-direct {p3, p1, p2, v1}, Lca/b;-><init>(III)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lc0/b;->b:Lca/b;

    .line 170
    .line 171
    const-string p2, "other"

    .line 172
    .line 173
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p3}, Lm9/t;->x1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    instance-of v1, p1, Ljava/util/Collection;

    .line 181
    .line 182
    if-eqz v1, :cond_10

    .line 183
    .line 184
    goto :goto_c

    .line 185
    :cond_10
    invoke-static {p1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    :goto_c
    check-cast p1, Ljava/util/Collection;

    .line 190
    .line 191
    invoke-interface {p2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 192
    .line 193
    .line 194
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-nez p2, :cond_11

    .line 203
    .line 204
    iput-object v0, p0, Lc0/b;->a:Lca/d;

    .line 205
    .line 206
    iput-object p3, p0, Lc0/b;->b:Lca/b;

    .line 207
    .line 208
    return-void

    .line 209
    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Ljava/lang/Number;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 216
    .line 217
    .line 218
    const-string p1, "$this$getModelForPositionInternal"

    .line 219
    .line 220
    const/4 p2, 0x0

    .line 221
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p2

    .line 225
    :cond_12
    :goto_d
    sget-object p1, Lca/d;->d:Lca/d;

    .line 226
    .line 227
    iput-object p1, p0, Lc0/b;->a:Lca/d;

    .line 228
    .line 229
    iput-object p1, p0, Lc0/b;->b:Lca/b;

    .line 230
    .line 231
    return-void

    .line 232
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    .line 233
    .line 234
    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 235
    .line 236
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_14
    :goto_e
    return-void
.end method
