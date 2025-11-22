.class public final Lza/n$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/n;-><init>(Lp4/g7;Lcb/t;Lza/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lza/n$a;",
        "Lma/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/n;

.field public final synthetic b:Lp4/g7;


# direct methods
.method public constructor <init>(Lp4/g7;Lza/n;)V
    .locals 0

    iput-object p2, p0, Lza/n$c;->a:Lza/n;

    iput-object p1, p0, Lza/n$c;->b:Lp4/g7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lza/n$a;

    .line 2
    .line 3
    const-string v0, "request"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Llb/b;

    .line 9
    .line 10
    iget-object v1, p0, Lza/n$c;->a:Lza/n;

    .line 11
    .line 12
    iget-object v2, v1, Lza/n;->o:Lza/m;

    .line 13
    .line 14
    iget-object v2, v2, Lpa/i0;->e:Llb/c;

    .line 15
    .line 16
    iget-object v3, p1, Lza/n$a;->a:Llb/f;

    .line 17
    .line 18
    invoke-direct {v0, v2, v3}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lza/n$c;->b:Lp4/g7;

    .line 22
    .line 23
    iget-object p1, p1, Lza/n$a;->b:Lcb/g;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v3, v2, Lp4/g7;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lya/c;

    .line 30
    .line 31
    iget-object v3, v3, Lya/c;->c:Leb/q;

    .line 32
    .line 33
    invoke-interface {v3, p1}, Leb/q;->b(Lcb/g;)Leb/q$a$b;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v3, v2, Lp4/g7;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Lya/c;

    .line 41
    .line 42
    iget-object v3, v3, Lya/c;->c:Leb/q;

    .line 43
    .line 44
    invoke-interface {v3, v0}, Leb/q;->a(Llb/b;)Leb/q$a$b;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :goto_0
    const/4 v4, 0x0

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iget-object v5, v3, Leb/q$a$b;->a:Leb/s;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v5, v4

    .line 55
    :goto_1
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-interface {v5}, Leb/s;->c()Llb/b;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move-object v6, v4

    .line 63
    :goto_2
    if-eqz v6, :cond_3

    .line 64
    .line 65
    invoke-virtual {v6}, Llb/b;->k()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-nez v7, :cond_10

    .line 70
    .line 71
    iget-boolean v6, v6, Llb/b;->c:Z

    .line 72
    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_3
    if-nez v5, :cond_4

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    invoke-interface {v5}, Leb/s;->a()Lfb/a;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iget-object v6, v6, Lfb/a;->a:Lfb/a$a;

    .line 85
    .line 86
    sget-object v7, Lfb/a$a;->d:Lfb/a$a;

    .line 87
    .line 88
    if-ne v6, v7, :cond_7

    .line 89
    .line 90
    iget-object v6, v1, Lza/o;->b:Lp4/g7;

    .line 91
    .line 92
    iget-object v6, v6, Lp4/g7;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v6, Lya/c;

    .line 95
    .line 96
    iget-object v6, v6, Lya/c;->d:Leb/k;

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v5}, Leb/k;->f(Leb/s;)Lyb/h;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    if-nez v7, :cond_5

    .line 106
    .line 107
    move-object v5, v4

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    invoke-virtual {v6}, Leb/k;->c()Lyb/l;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-interface {v5}, Leb/s;->c()Llb/b;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object v6, v6, Lyb/l;->t:Lyb/j;

    .line 118
    .line 119
    invoke-virtual {v6, v5, v7}, Lyb/j;->a(Llb/b;Lyb/h;)Lma/e;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    :goto_3
    if-eqz v5, :cond_6

    .line 124
    .line 125
    new-instance v6, Lza/n$b$a;

    .line 126
    .line 127
    invoke-direct {v6, v5}, Lza/n$b$a;-><init>(Lma/e;)V

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_6
    :goto_4
    sget-object v6, Lza/n$b$b;->a:Lza/n$b$b;

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_7
    sget-object v6, Lza/n$b$c;->a:Lza/n$b$c;

    .line 135
    .line 136
    :goto_5
    instance-of v5, v6, Lza/n$b$a;

    .line 137
    .line 138
    if-eqz v5, :cond_8

    .line 139
    .line 140
    check-cast v6, Lza/n$b$a;

    .line 141
    .line 142
    iget-object v4, v6, Lza/n$b$a;->a:Lma/e;

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_8
    instance-of v5, v6, Lza/n$b$c;

    .line 146
    .line 147
    if-eqz v5, :cond_9

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_9
    instance-of v5, v6, Lza/n$b$b;

    .line 151
    .line 152
    if-eqz v5, :cond_11

    .line 153
    .line 154
    if-nez p1, :cond_c

    .line 155
    .line 156
    iget-object p1, v2, Lp4/g7;->a:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Lya/c;

    .line 159
    .line 160
    iget-object p1, p1, Lya/c;->b:Lva/l;

    .line 161
    .line 162
    new-instance v5, Lva/l$a;

    .line 163
    .line 164
    if-eqz v3, :cond_b

    .line 165
    .line 166
    instance-of v6, v3, Leb/q$a$a;

    .line 167
    .line 168
    if-nez v6, :cond_a

    .line 169
    .line 170
    move-object v3, v4

    .line 171
    :cond_a
    check-cast v3, Leb/q$a$a;

    .line 172
    .line 173
    :cond_b
    const/4 v3, 0x4

    .line 174
    invoke-direct {v5, v0, v4, v3}, Lva/l$a;-><init>(Llb/b;Lcb/g;I)V

    .line 175
    .line 176
    .line 177
    invoke-interface {p1, v5}, Lva/l;->c(Lva/l$a;)Lsa/r;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    :cond_c
    if-eqz p1, :cond_d

    .line 182
    .line 183
    invoke-interface {p1}, Lcb/g;->G()V

    .line 184
    .line 185
    .line 186
    :cond_d
    if-eqz p1, :cond_e

    .line 187
    .line 188
    invoke-interface {p1}, Lcb/g;->d()Llb/c;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    goto :goto_6

    .line 193
    :cond_e
    move-object v0, v4

    .line 194
    :goto_6
    if-eqz v0, :cond_10

    .line 195
    .line 196
    invoke-virtual {v0}, Llb/c;->d()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_10

    .line 201
    .line 202
    invoke-virtual {v0}, Llb/c;->e()Llb/c;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object v1, v1, Lza/n;->o:Lza/m;

    .line 207
    .line 208
    iget-object v3, v1, Lpa/i0;->e:Llb/c;

    .line 209
    .line 210
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_f

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_f
    new-instance v0, Lza/e;

    .line 218
    .line 219
    invoke-direct {v0, v2, v1, p1, v4}, Lza/e;-><init>(Lp4/g7;Lma/j;Lcb/g;Lma/e;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, v2, Lp4/g7;->a:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p1, Lya/c;

    .line 225
    .line 226
    iget-object p1, p1, Lya/c;->s:Lva/m;

    .line 227
    .line 228
    invoke-interface {p1, v0}, Lva/m;->a(Lza/e;)V

    .line 229
    .line 230
    .line 231
    move-object v4, v0

    .line 232
    :cond_10
    :goto_7
    return-object v4

    .line 233
    :cond_11
    new-instance p1, Lj7/p;

    .line 234
    .line 235
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 236
    .line 237
    .line 238
    throw p1
.end method
