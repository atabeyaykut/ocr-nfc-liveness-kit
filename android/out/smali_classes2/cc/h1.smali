.class public final Lcc/h1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcc/f1$a;",
        "Lcc/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/f1;


# direct methods
.method public constructor <init>(Lcc/f1;)V
    .locals 0

    iput-object p1, p0, Lcc/h1;->a:Lcc/f1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcc/f1$a;

    .line 2
    .line 3
    iget-object v0, p1, Lcc/f1$a;->a:Lma/w0;

    .line 4
    .line 5
    iget-object v1, p0, Lcc/h1;->a:Lcc/f1;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcc/f1$a;->b:Lcc/x;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcc/x;->c()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lma/w0;->a()Lma/w0;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    invoke-interface {v0}, Lma/g;->q()Lcc/m0;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "typeParameter.defaultType"

    .line 35
    .line 36
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v3, v4, v2}, Lc5/y;->m(Lcc/e0;Lcc/m0;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v3}, Lb8/f;->V(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/16 v5, 0x10

    .line 56
    .line 57
    if-ge v3, v5, :cond_1

    .line 58
    .line 59
    const/16 v3, 0x10

    .line 60
    .line 61
    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lma/w0;

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-static {v4, p1}, Lcc/q1;->n(Lma/w0;Lcc/x;)Lcc/j1;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Lcc/x;->d(Lma/w0;)Lcc/x;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v1, v4, v6}, Lcc/f1;->a(Lma/w0;Lcc/x;)Lcc/e0;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    iget-object v7, v1, Lcc/f1;->a:Lc5/v;

    .line 105
    .line 106
    invoke-virtual {v7, v4, p1, v1, v6}, Lc5/v;->q(Lma/w0;Lcc/x;Lcc/f1;Lcc/e0;)Lcc/i1;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    :goto_2
    invoke-interface {v4}, Lma/w0;->i()Lcc/c1;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    sget-object v2, Lcc/e1;->b:Lcc/e1$a;

    .line 119
    .line 120
    new-instance v2, Lcc/d1;

    .line 121
    .line 122
    const/4 v3, 0x0

    .line 123
    invoke-direct {v2, v5, v3}, Lcc/d1;-><init>(Ljava/util/Map;Z)V

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lcc/p1;->e(Lcc/l1;)Lcc/p1;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v0}, Lma/w0;->getUpperBounds()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v4, "typeParameter.upperBounds"

    .line 135
    .line 136
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2, v0, p1}, Lcc/f1;->b(Lcc/p1;Ljava/util/List;Lcc/x;)Ln9/f;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ln9/f;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    const/4 v4, 0x1

    .line 148
    xor-int/2addr v2, v4

    .line 149
    if-eqz v2, :cond_7

    .line 150
    .line 151
    iget-object p1, v1, Lcc/f1;->b:Lx5/a;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lm9/e;->l()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-ne p1, v4, :cond_5

    .line 161
    .line 162
    const/4 v3, 0x1

    .line 163
    :cond_5
    if-eqz v3, :cond_6

    .line 164
    .line 165
    invoke-static {v0}, Lm9/t;->o1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Lcc/e0;

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    const-string v0, "Should only be one computed upper bound if no need to intersect all bounds"

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcc/x;->a()Lcc/m0;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_8

    .line 189
    .line 190
    invoke-static {p1}, Lc5/y;->A(Lcc/e0;)Lcc/s1;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-nez p1, :cond_9

    .line 195
    .line 196
    :cond_8
    iget-object p1, v1, Lcc/f1;->c:Ll9/j;

    .line 197
    .line 198
    invoke-virtual {p1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lec/f;

    .line 203
    .line 204
    :cond_9
    :goto_4
    return-object p1
.end method
