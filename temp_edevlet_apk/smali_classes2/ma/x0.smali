.class public final Lma/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcc/m0;Lma/h;I)Lp4/m9;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Lec/i;->f(Lma/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lma/h;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {p1}, Lma/h;->H()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-static {p1}, Lob/i;->o(Lma/j;)Z

    :cond_1
    new-instance v1, Lp4/m9;

    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Lp4/m9;-><init>(Lma/h;Ljava/util/List;Lp4/m9;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lp4/m9;

    invoke-interface {p1}, Lma/k;->b()Lma/j;

    move-result-object v3

    instance-of v4, v3, Lma/h;

    if-eqz v4, :cond_3

    move-object v0, v3

    check-cast v0, Lma/h;

    :cond_3
    invoke-static {p0, v0, v1}, Lma/x0;->a(Lcc/m0;Lma/h;I)Lp4/m9;

    move-result-object p0

    invoke-direct {v2, p1, p2, p0}, Lp4/m9;-><init>(Lma/h;Ljava/util/List;Lp4/m9;)V

    return-object v2

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static final b(Lma/h;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/h;",
            ")",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lma/h;->s()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "declaredTypeParameters"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lma/h;->H()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Lma/k;->b()Lma/j;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    instance-of v3, v3, Lma/a;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    sget v3, Lsb/b;->a:I

    .line 31
    .line 32
    sget-object v3, Lsb/d;->a:Lsb/d;

    .line 33
    .line 34
    invoke-static {v3, p0}, Llc/q;->R0(Lx9/l;Ljava/lang/Object;)Llc/h;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-static {v4, v5}, Llc/w;->U0(Llc/h;I)Llc/h;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget-object v6, Lma/x0$a;->a:Lma/x0$a;

    .line 44
    .line 45
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "predicate"

    .line 49
    .line 50
    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Llc/x;

    .line 54
    .line 55
    invoke-direct {v0, v4, v6}, Llc/x;-><init>(Llc/h;Lma/x0$a;)V

    .line 56
    .line 57
    .line 58
    sget-object v4, Lma/x0$b;->a:Lma/x0$b;

    .line 59
    .line 60
    invoke-static {v0, v4}, Llc/w;->V0(Llc/h;Lx9/l;)Llc/e;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v4, Lma/x0$c;->a:Lma/x0$c;

    .line 65
    .line 66
    invoke-static {v0, v4}, Llc/w;->Y0(Llc/h;Lx9/l;)Llc/f;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Llc/w;->c1(Llc/h;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lb8/f;->Z(Ljava/util/List;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v3, p0}, Llc/q;->R0(Lx9/l;Ljava/lang/Object;)Llc/h;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3, v5}, Llc/w;->U0(Llc/h;I)Llc/h;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-interface {v3}, Llc/h;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const/4 v5, 0x0

    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    instance-of v6, v4, Lma/e;

    .line 102
    .line 103
    if-eqz v6, :cond_1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    move-object v4, v5

    .line 107
    :goto_0
    check-cast v4, Lma/e;

    .line 108
    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    invoke-interface {v4}, Lma/g;->i()Lcc/c1;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    invoke-interface {v3}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    :cond_3
    if-nez v5, :cond_4

    .line 122
    .line 123
    sget-object v5, Lm9/v;->a:Lm9/v;

    .line 124
    .line 125
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    invoke-interface {p0}, Lma/h;->s()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_5
    check-cast v0, Ljava/util/Collection;

    .line 146
    .line 147
    check-cast v5, Ljava/lang/Iterable;

    .line 148
    .line 149
    invoke-static {v5, v0}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_6

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Lma/w0;

    .line 177
    .line 178
    const-string v4, "it"

    .line 179
    .line 180
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    new-instance v5, Lma/c;

    .line 188
    .line 189
    invoke-direct {v5, v3, p0, v4}, Lma/c;-><init>(Lma/w0;Lma/j;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_6
    check-cast v1, Ljava/util/Collection;

    .line 197
    .line 198
    invoke-static {v2, v1}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0
.end method
