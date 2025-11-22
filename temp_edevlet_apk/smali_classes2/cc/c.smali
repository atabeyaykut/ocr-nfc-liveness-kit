.class public final Lcc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcc/b1;Lfc/i;Lcc/b1$b;)Z
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "supertypesPolicy"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcc/b1;->c:Lfc/n;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lfc/n;->u(Lfc/i;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lfc/n;->k(Lfc/i;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-interface {v0, p1}, Lfc/n;->k0(Lfc/h;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    :cond_1
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_0
    if-eqz v1, :cond_3

    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Lcc/b1;->c()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcc/b1;->g:Ljava/util/ArrayDeque;

    .line 49
    .line 50
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Lcc/b1;->h:Lkc/d;

    .line 54
    .line 55
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    xor-int/2addr v5, v3

    .line 66
    if-eqz v5, :cond_d

    .line 67
    .line 68
    iget v5, v4, Lkc/d;->b:I

    .line 69
    .line 70
    const/16 v6, 0x3e8

    .line 71
    .line 72
    if-gt v5, v6, :cond_c

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lfc/i;

    .line 79
    .line 80
    const-string v6, "current"

    .line 81
    .line 82
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5}, Lkc/d;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    invoke-interface {v0, v5}, Lfc/n;->k(Lfc/i;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_5

    .line 96
    .line 97
    sget-object v6, Lcc/b1$b$c;->a:Lcc/b1$b$c;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    move-object v6, p2

    .line 101
    :goto_2
    sget-object v7, Lcc/b1$b$c;->a:Lcc/b1$b$c;

    .line 102
    .line 103
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    xor-int/2addr v7, v3

    .line 108
    if-eqz v7, :cond_6

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    const/4 v6, 0x0

    .line 112
    :goto_3
    if-nez v6, :cond_7

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    invoke-interface {v0, v5}, Lfc/n;->f(Lfc/i;)Lcc/c1;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-interface {v0, v5}, Lfc/n;->l0(Lfc/l;)Ljava/util/Collection;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_4

    .line 132
    .line 133
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Lfc/h;

    .line 138
    .line 139
    invoke-virtual {v6, p0, v7}, Lcc/b1$b;->a(Lcc/b1;Lfc/h;)Lfc/i;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-interface {v0, v7}, Lfc/n;->u(Lfc/i;)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_8

    .line 148
    .line 149
    invoke-interface {v0, v7}, Lfc/n;->k(Lfc/i;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_9

    .line 154
    .line 155
    :cond_8
    invoke-interface {v0, v7}, Lfc/n;->k0(Lfc/h;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_a

    .line 160
    .line 161
    :cond_9
    const/4 v8, 0x1

    .line 162
    goto :goto_5

    .line 163
    :cond_a
    const/4 v8, 0x0

    .line 164
    :goto_5
    if-eqz v8, :cond_b

    .line 165
    .line 166
    invoke-virtual {p0}, Lcc/b1;->a()V

    .line 167
    .line 168
    .line 169
    :goto_6
    const/4 v2, 0x1

    .line 170
    goto :goto_7

    .line 171
    :cond_b
    invoke-virtual {v1, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v0, "Too many supertypes for type: "

    .line 180
    .line 181
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p1, ". Supertypes = "

    .line 188
    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const/4 v5, 0x0

    .line 193
    const/4 v6, 0x0

    .line 194
    const/4 v7, 0x0

    .line 195
    const/4 v8, 0x0

    .line 196
    const/16 v9, 0x3f

    .line 197
    .line 198
    invoke-static/range {v4 .. v9}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p0

    .line 217
    :cond_d
    invoke-virtual {p0}, Lcc/b1;->a()V

    .line 218
    .line 219
    .line 220
    :goto_7
    return v2
.end method

.method public static b(Lcc/b1;Lfc/i;Lfc/l;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcc/b1;->c:Lfc/n;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lfc/n;->Y(Lfc/h;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-interface {v0, p1}, Lfc/n;->k(Lfc/i;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    iget-boolean p0, p0, Lcc/b1;->b:Z

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lfc/n;->r(Lfc/i;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    invoke-interface {v0, p1}, Lfc/n;->f(Lfc/i;)Lcc/c1;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {v0, p0, p2}, Lfc/n;->h(Lfc/l;Lfc/l;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method
