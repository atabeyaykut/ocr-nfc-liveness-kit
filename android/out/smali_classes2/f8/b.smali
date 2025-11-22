.class public final Lf8/b;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Le8/j<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Li8/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li8/d<",
            "TItem;>;"
        }
    .end annotation
.end field

.field public c:Lx9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/p<",
            "-TItem;-",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf8/c<",
            "TModel;TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf8/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/c<",
            "TModel;TItem;>;)V"
        }
    .end annotation

    const-string v0, "itemAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Lf8/b;->d:Lf8/c;

    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lf8/b;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 24
    :goto_1
    if-eqz v1, :cond_2

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    iget-object v1, p0, Lf8/b;->d:Lf8/c;

    .line 28
    .line 29
    iget-object v4, v1, Le8/a;->a:Le8/b;

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    iget-object v4, v4, Le8/b;->f:Landroidx/collection/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "extensionsCache.values"

    .line 40
    .line 41
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast v4, Ljava/lang/Iterable;

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Le8/d;

    .line 61
    .line 62
    invoke-interface {v5}, Le8/d;->h()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iget-object v4, p0, Lf8/b;->a:Ljava/util/ArrayList;

    .line 67
    .line 68
    iget-object v1, v1, Lf8/c;->g:Le8/k;

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-interface {v1}, Le8/k;->c()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ljava/util/Collection;

    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    iput-object v4, p0, Lf8/b;->a:Ljava/util/ArrayList;

    .line 85
    .line 86
    :goto_3
    if-eqz p1, :cond_6

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_5

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_5
    const/4 v2, 0x0

    .line 96
    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 97
    .line 98
    iput-object v4, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lf8/b;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    iget-object p1, p0, Lf8/b;->b:Li8/d;

    .line 110
    .line 111
    if-eqz p1, :cond_b

    .line 112
    .line 113
    invoke-interface {p1}, Li8/d;->r()V

    .line 114
    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_7
    iget-object v2, p0, Lf8/b;->c:Lx9/p;

    .line 118
    .line 119
    if-eqz v2, :cond_9

    .line 120
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_a

    .line 135
    .line 136
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    move-object v5, v4

    .line 141
    check-cast v5, Le8/j;

    .line 142
    .line 143
    invoke-interface {v2, v5, p1}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_8

    .line 154
    .line 155
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    invoke-interface {v1}, Le8/k;->c()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    :cond_a
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 170
    .line 171
    :cond_b
    :goto_6
    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .line 1
    const-string p1, "results"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    iget-object v0, p0, Lf8/b;->d:Lf8/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-boolean v1, v0, Lf8/c;->e:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lf8/c;->d:Lk8/b;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lk8/b;->a(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, v0, Le8/a;->a:Le8/b;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v1, Le8/b;->f:Landroidx/collection/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "extensionsCache.values"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast v1, Ljava/lang/Iterable;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Le8/d;

    .line 58
    .line 59
    invoke-interface {v2, p1}, Le8/d;->a(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, v0, Le8/a;->a:Le8/b;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget v2, v0, Le8/a;->b:I

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Le8/b;->d(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v1, 0x0

    .line 75
    :goto_1
    iget-object v0, v0, Lf8/c;->g:Le8/k;

    .line 76
    .line 77
    invoke-interface {v0, p1, v1}, Le8/k;->a(Ljava/util/List;I)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lf8/b;->a:Ljava/util/ArrayList;

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    iget-object p1, p0, Lf8/b;->b:Li8/d;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 89
    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    check-cast p2, Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {p1}, Li8/d;->y()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 99
    .line 100
    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<Item>"

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_5
    :goto_2
    return-void
.end method
