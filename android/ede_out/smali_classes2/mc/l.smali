.class public final Lmc/l;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Ll9/g<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lmc/l;->a:Ljava/util/List;

    iput-boolean p2, p0, Lmc/l;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const-string v0, "$this$$receiver"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmc/l;->a:Ljava/util/List;

    .line 15
    .line 16
    move-object v6, v0

    .line 17
    check-cast v6, Ljava/util/Collection;

    .line 18
    .line 19
    iget-boolean v7, p0, Lmc/l;->b:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    if-nez v7, :cond_1

    .line 24
    .line 25
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    check-cast v6, Ljava/lang/Iterable;

    .line 33
    .line 34
    invoke-static {v6}, Lm9/t;->o1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    invoke-static {p1, v1, p2, v0, v2}, Lmc/n;->N(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-gez p1, :cond_0

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Ll9/g;

    .line 54
    .line 55
    invoke-direct {p2, p1, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_1
    new-instance v1, Lca/d;

    .line 61
    .line 62
    if-gez p2, :cond_2

    .line 63
    .line 64
    const/4 p2, 0x0

    .line 65
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-direct {v1, p2, v0}, Lca/d;-><init>(II)V

    .line 70
    .line 71
    .line 72
    instance-of v0, p1, Ljava/lang/String;

    .line 73
    .line 74
    iget v9, v1, Lca/b;->c:I

    .line 75
    .line 76
    iget v10, v1, Lca/b;->b:I

    .line 77
    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    if-lez v9, :cond_3

    .line 81
    .line 82
    if-le p2, v10, :cond_4

    .line 83
    .line 84
    :cond_3
    if-gez v9, :cond_e

    .line 85
    .line 86
    if-gt v10, p2, :cond_e

    .line 87
    .line 88
    :cond_4
    :goto_0
    move-object v0, v6

    .line 89
    check-cast v0, Ljava/lang/Iterable;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    move-object v0, v12

    .line 106
    check-cast v0, Ljava/lang/String;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    move-object v3, p1

    .line 110
    check-cast v3, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    move v2, v7

    .line 117
    move v4, p2

    .line 118
    invoke-static/range {v0 .. v5}, Lmc/j;->z(Ljava/lang/String;IZLjava/lang/String;II)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    move-object v12, v8

    .line 126
    :goto_1
    check-cast v12, Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v12, :cond_7

    .line 129
    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Ll9/g;

    .line 135
    .line 136
    invoke-direct {p2, p1, v12}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_7
    if-eq p2, v10, :cond_e

    .line 141
    .line 142
    add-int/2addr p2, v9

    .line 143
    goto :goto_0

    .line 144
    :cond_8
    if-lez v9, :cond_9

    .line 145
    .line 146
    if-le p2, v10, :cond_a

    .line 147
    .line 148
    :cond_9
    if-gez v9, :cond_e

    .line 149
    .line 150
    if-gt v10, p2, :cond_e

    .line 151
    .line 152
    :cond_a
    :goto_2
    move-object v0, v6

    .line 153
    check-cast v0, Ljava/lang/Iterable;

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    move-object v0, v12

    .line 170
    check-cast v0, Ljava/lang/String;

    .line 171
    .line 172
    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    move-object v2, p1

    .line 178
    move v3, p2

    .line 179
    move v5, v7

    .line 180
    invoke-static/range {v0 .. v5}, Lmc/n;->T(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_b

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_c
    move-object v12, v8

    .line 188
    :goto_3
    check-cast v12, Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v12, :cond_d

    .line 191
    .line 192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    new-instance p2, Ll9/g;

    .line 197
    .line 198
    invoke-direct {p2, p1, v12}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_d
    if-eq p2, v10, :cond_e

    .line 203
    .line 204
    add-int/2addr p2, v9

    .line 205
    goto :goto_2

    .line 206
    :cond_e
    :goto_4
    move-object p2, v8

    .line 207
    :goto_5
    if-eqz p2, :cond_f

    .line 208
    .line 209
    iget-object p1, p2, Ll9/g;->b:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast p1, Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    new-instance v8, Ll9/g;

    .line 222
    .line 223
    iget-object p2, p2, Ll9/g;->a:Ljava/lang/Object;

    .line 224
    .line 225
    invoke-direct {v8, p2, p1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_f
    return-object v8
.end method
