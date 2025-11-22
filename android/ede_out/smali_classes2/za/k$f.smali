.class public final Lza/k$f;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/k;-><init>(Lp4/g7;Lma/e;Lcb/g;ZLza/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llb/f;",
        "Lma/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/k;

.field public final synthetic b:Lp4/g7;


# direct methods
.method public constructor <init>(Lp4/g7;Lza/k;)V
    .locals 0

    iput-object p2, p0, Lza/k$f;->a:Lza/k;

    iput-object p1, p0, Lza/k$f;->b:Lp4/g7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v2, p1

    .line 2
    check-cast v2, Llb/f;

    .line 3
    .line 4
    const-string p1, "name"

    .line 5
    .line 6
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lza/k$f;->a:Lza/k;

    .line 10
    .line 11
    iget-object v0, p1, Lza/k;->r:Lbc/i;

    .line 12
    .line 13
    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    iget-object v3, p1, Lza/k;->n:Lma/e;

    .line 25
    .line 26
    iget-object v4, p0, Lza/k$f;->b:Lp4/g7;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, v4, Lp4/g7;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lya/c;

    .line 33
    .line 34
    iget-object v0, v0, Lya/c;->b:Lva/l;

    .line 35
    .line 36
    new-instance v5, Lva/l$a;

    .line 37
    .line 38
    invoke-static {v3}, Lsb/b;->f(Lma/g;)Llb/b;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v2}, Llb/b;->d(Llb/f;)Llb/b;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object p1, p1, Lza/k;->o:Lcb/g;

    .line 50
    .line 51
    const/4 v6, 0x2

    .line 52
    invoke-direct {v5, v2, p1, v6}, Lva/l$a;-><init>(Llb/b;Lcb/g;I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v5}, Lva/l;->c(Lva/l$a;)Lsa/r;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    new-instance v0, Lza/e;

    .line 62
    .line 63
    invoke-direct {v0, v4, v3, p1, v1}, Lza/e;-><init>(Lp4/g7;Lma/j;Lcb/g;Lma/e;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v4, Lp4/g7;->a:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lya/c;

    .line 69
    .line 70
    iget-object p1, p1, Lya/c;->s:Lva/m;

    .line 71
    .line 72
    invoke-interface {p1, v0}, Lva/m;->a(Lza/e;)V

    .line 73
    .line 74
    .line 75
    move-object v1, v0

    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_0
    iget-object v0, p1, Lza/k;->s:Lbc/i;

    .line 79
    .line 80
    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/util/Set;

    .line 85
    .line 86
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    new-instance p1, Ln9/a;

    .line 93
    .line 94
    invoke-direct {p1}, Ln9/a;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v0, v4, Lp4/g7;->a:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lya/c;

    .line 100
    .line 101
    iget-object v0, v0, Lya/c;->x:Ltb/d;

    .line 102
    .line 103
    invoke-interface {v0, v4, v3, v2, p1}, Ltb/d;->d(Lp4/g7;Lma/e;Llb/f;Ln9/a;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p1, Ln9/a;->e:Ln9/a;

    .line 107
    .line 108
    if-nez v0, :cond_2

    .line 109
    .line 110
    invoke-virtual {p1}, Ln9/a;->w()V

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p1, Ln9/a;->d:Z

    .line 115
    .line 116
    invoke-virtual {p1}, Lm9/d;->l()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    if-ne v2, v0, :cond_1

    .line 123
    .line 124
    invoke-static {p1}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    move-object v1, p1

    .line 129
    check-cast v1, Lma/e;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v2, "Multiple classes with same name are generated: "

    .line 137
    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_3
    iget-object v0, p1, Lza/k;->t:Lbc/i;

    .line 163
    .line 164
    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Ljava/util/Map;

    .line 169
    .line 170
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Lcb/n;

    .line 175
    .line 176
    if-eqz v0, :cond_4

    .line 177
    .line 178
    invoke-virtual {v4}, Lp4/g7;->b()Lbc/l;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-instance v3, Lza/l;

    .line 183
    .line 184
    invoke-direct {v3, p1}, Lza/l;-><init>(Lza/k;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v1, v3}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v4}, Lp4/g7;->b()Lbc/l;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object p1, p1, Lza/k;->n:Lma/e;

    .line 196
    .line 197
    invoke-static {v4, v0}, La6/a;->v(Lp4/g7;Lcb/d;)Lya/e;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    iget-object v4, v4, Lp4/g7;->a:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v4, Lya/c;

    .line 204
    .line 205
    iget-object v4, v4, Lya/c;->j:Lbb/b;

    .line 206
    .line 207
    invoke-interface {v4, v0}, Lbb/b;->a(Lcb/l;)Lra/i$a;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    move-object v0, v1

    .line 212
    move-object v1, p1

    .line 213
    move-object v4, v5

    .line 214
    move-object v5, v6

    .line 215
    invoke-static/range {v0 .. v5}, Lpa/s;->K0(Lbc/l;Lma/e;Llb/f;Lbc/i;Lna/h;Lma/r0;)Lpa/s;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    :cond_4
    :goto_0
    return-object v1
.end method
