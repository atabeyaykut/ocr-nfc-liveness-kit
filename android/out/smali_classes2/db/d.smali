.class public final Ldb/d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ldb/a$a;",
        "Ljava/lang/Iterable<",
        "+",
        "Ldb/a$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ldb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldb/a;)V
    .locals 0

    iput-object p1, p0, Ldb/d;->a:Ldb/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ldb/a$a;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ldb/d;->a:Ldb/a;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Ldb/v;

    .line 12
    .line 13
    iget-boolean v1, v1, Ldb/v;->e:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iget-object v3, p1, Ldb/a$a;->a:Lfc/h;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-static {v3}, Ldc/b$a;->g(Lfc/h;)Lcc/y;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {v1}, Ldc/b$a;->h(Lcc/y;)Lcc/l0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v1, v2

    .line 34
    :goto_0
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    if-eqz v3, :cond_6

    .line 39
    .line 40
    invoke-static {v3}, Ldc/b$a;->i(Lfc/h;)Lcc/m0;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v4, "<this>"

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    invoke-static {v3}, Ldc/b$a;->g(Lfc/h;)Lcc/y;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-static {v1}, Ldc/b$a;->W(Lfc/f;)Lcc/m0;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    :cond_2
    invoke-static {v3}, Ldc/b$a;->i(Lfc/h;)Lcc/m0;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-static {v1}, Ldc/b$a;->f0(Lfc/i;)Lcc/c1;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    invoke-static {v1}, Ldc/b$a;->r(Lcc/c1;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Iterable;

    .line 78
    .line 79
    invoke-static {v3}, Ldc/b$a;->o(Lfc/h;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Ljava/lang/Iterable;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    new-instance v7, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lfc/k;

    .line 131
    .line 132
    check-cast v1, Lfc/m;

    .line 133
    .line 134
    invoke-static {v3}, Ldc/b$a;->S(Lfc/k;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    iget-object v9, p1, Ldb/a$a;->b:Lva/t;

    .line 139
    .line 140
    if-eqz v8, :cond_4

    .line 141
    .line 142
    new-instance v3, Ldb/a$a;

    .line 143
    .line 144
    invoke-direct {v3, v2, v9, v1}, Ldb/a$a;-><init>(Lfc/h;Lva/t;Lfc/m;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    invoke-static {v3}, Ldc/b$a;->v(Lfc/k;)Lcc/s1;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    new-instance v8, Ldb/a$a;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-object v10, v0

    .line 158
    check-cast v10, Ldb/v;

    .line 159
    .line 160
    iget-object v10, v10, Ldb/v;->c:Lp4/g7;

    .line 161
    .line 162
    iget-object v10, v10, Lp4/g7;->a:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v10, Lya/c;

    .line 165
    .line 166
    iget-object v10, v10, Lya/c;->q:Lva/e;

    .line 167
    .line 168
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Lcc/e0;->getAnnotations()Lna/h;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-virtual {v10, v9, v11}, Lva/b;->b(Lva/t;Ljava/lang/Iterable;)Lva/t;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-direct {v8, v3, v9, v1}, Ldb/a$a;-><init>(Lfc/h;Lva/t;Lfc/m;)V

    .line 180
    .line 181
    .line 182
    move-object v3, v8

    .line 183
    :goto_2
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    move-object v2, v7

    .line 188
    :cond_6
    :goto_3
    return-object v2
.end method
