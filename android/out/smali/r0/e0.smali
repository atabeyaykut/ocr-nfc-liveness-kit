.class public final Lr0/e0;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksViewModel$resolveSubscription$1"
    f = "MavericksViewModel.kt"
    l = {
        0x1b6,
        0x1b7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lkotlinx/coroutines/flow/f;

.field public final synthetic c:Lx9/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lx9/p;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/e0;->b:Lkotlinx/coroutines/flow/f;

    iput-object p2, p0, Lr0/e0;->c:Lx9/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lr0/e0;

    iget-object v0, p0, Lr0/e0;->b:Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lr0/e0;->c:Lx9/p;

    invoke-direct {p1, v0, v1, p2}, Lr0/e0;-><init>(Lkotlinx/coroutines/flow/f;Lx9/p;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/e0;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/e0;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/e0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lr0/e0;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v5, :cond_1

    .line 12
    .line 13
    if-ne v1, v4, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_d

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_a

    .line 32
    .line 33
    :cond_2
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput v5, p0, Lr0/e0;->a:I

    .line 37
    .line 38
    invoke-interface {p0}, Lp9/d;->getContext()Lp9/f;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lx5/a;->h(Lp9/f;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    instance-of v6, v1, Lkotlinx/coroutines/internal/g;

    .line 50
    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    check-cast v1, Lkotlinx/coroutines/internal/g;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move-object v1, v3

    .line 57
    :goto_0
    if-nez v1, :cond_4

    .line 58
    .line 59
    goto :goto_6

    .line 60
    :cond_4
    iget-object v6, v1, Lkotlinx/coroutines/internal/g;->d:Lnc/y;

    .line 61
    .line 62
    invoke-virtual {v6, p1}, Lnc/y;->isDispatchNeeded(Lp9/f;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_5

    .line 67
    .line 68
    sget-object v7, Ll9/m;->a:Ll9/m;

    .line 69
    .line 70
    iput-object v7, v1, Lkotlinx/coroutines/internal/g;->f:Ljava/lang/Object;

    .line 71
    .line 72
    iput v5, v1, Lnc/i0;->c:I

    .line 73
    .line 74
    invoke-virtual {v6, p1, v1}, Lnc/y;->dispatchYield(Lp9/f;Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_7

    .line 78
    :cond_5
    new-instance v7, Lnc/b2;

    .line 79
    .line 80
    invoke-direct {v7}, Lnc/b2;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v7}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-object v8, Ll9/m;->a:Ll9/m;

    .line 88
    .line 89
    iput-object v8, v1, Lkotlinx/coroutines/internal/g;->f:Ljava/lang/Object;

    .line 90
    .line 91
    iput v5, v1, Lnc/i0;->c:I

    .line 92
    .line 93
    invoke-virtual {v6, p1, v1}, Lnc/y;->dispatchYield(Lp9/f;Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    iget-boolean p1, v7, Lnc/b2;->a:Z

    .line 97
    .line 98
    if-eqz p1, :cond_c

    .line 99
    .line 100
    invoke-static {}, Lnc/w1;->a()Lnc/n0;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v6, p1, Lnc/n0;->c:Lkotlinx/coroutines/internal/a;

    .line 105
    .line 106
    if-nez v6, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    iget v7, v6, Lkotlinx/coroutines/internal/a;->b:I

    .line 110
    .line 111
    iget v6, v6, Lkotlinx/coroutines/internal/a;->c:I

    .line 112
    .line 113
    if-ne v7, v6, :cond_7

    .line 114
    .line 115
    :goto_1
    const/4 v6, 0x1

    .line 116
    goto :goto_2

    .line 117
    :cond_7
    const/4 v6, 0x0

    .line 118
    :goto_2
    if-eqz v6, :cond_8

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_8
    invoke-virtual {p1}, Lnc/n0;->k()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_9

    .line 126
    .line 127
    iput-object v8, v1, Lkotlinx/coroutines/internal/g;->f:Ljava/lang/Object;

    .line 128
    .line 129
    iput v5, v1, Lnc/i0;->c:I

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Lnc/n0;->g(Lnc/i0;)V

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_9
    invoke-virtual {p1, v5}, Lnc/n0;->j(Z)V

    .line 136
    .line 137
    .line 138
    :try_start_0
    invoke-virtual {v1}, Lnc/i0;->run()V

    .line 139
    .line 140
    .line 141
    :cond_a
    invoke-virtual {p1}, Lnc/n0;->m()Z

    .line 142
    .line 143
    .line 144
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-nez v6, :cond_a

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catchall_0
    move-exception v6

    .line 149
    :try_start_1
    invoke-virtual {v1, v6, v3}, Lnc/i0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .line 151
    .line 152
    :goto_3
    invoke-virtual {p1, v5}, Lnc/n0;->d(Z)V

    .line 153
    .line 154
    .line 155
    :goto_4
    const/4 v5, 0x0

    .line 156
    :goto_5
    if-eqz v5, :cond_b

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_b
    :goto_6
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :catchall_1
    move-exception v0

    .line 163
    invoke-virtual {p1, v5}, Lnc/n0;->d(Z)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_c
    :goto_7
    move-object p1, v0

    .line 168
    :goto_8
    if-ne p1, v0, :cond_d

    .line 169
    .line 170
    goto :goto_9

    .line 171
    :cond_d
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 172
    .line 173
    :goto_9
    if-ne p1, v0, :cond_e

    .line 174
    .line 175
    return-object v0

    .line 176
    :cond_e
    :goto_a
    iget-object v7, p0, Lr0/e0;->b:Lkotlinx/coroutines/flow/f;

    .line 177
    .line 178
    iput v4, p0, Lr0/e0;->a:I

    .line 179
    .line 180
    sget p1, Lkotlinx/coroutines/flow/t;->a:I

    .line 181
    .line 182
    new-instance v6, Lkotlinx/coroutines/flow/s;

    .line 183
    .line 184
    iget-object p1, p0, Lr0/e0;->c:Lx9/p;

    .line 185
    .line 186
    invoke-direct {v6, p1, v3}, Lkotlinx/coroutines/flow/s;-><init>(Lx9/p;Lp9/d;)V

    .line 187
    .line 188
    .line 189
    new-instance p1, Lqc/h;

    .line 190
    .line 191
    sget-object v1, Lp9/g;->a:Lp9/g;

    .line 192
    .line 193
    const/4 v9, -0x2

    .line 194
    sget-object v3, Lpc/f;->a:Lpc/f;

    .line 195
    .line 196
    move-object v5, p1

    .line 197
    move-object v8, v1

    .line 198
    move-object v10, v3

    .line 199
    invoke-direct/range {v5 .. v10}, Lqc/h;-><init>(Lx9/q;Lkotlinx/coroutines/flow/f;Lp9/f;ILpc/f;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v1, v2, v3}, Lqc/e;->e(Lp9/f;ILpc/f;)Lkotlinx/coroutines/flow/f;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    sget-object v1, Lqc/l;->a:Lqc/l;

    .line 207
    .line 208
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    if-ne p1, v0, :cond_f

    .line 213
    .line 214
    goto :goto_b

    .line 215
    :cond_f
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 216
    .line 217
    :goto_b
    if-ne p1, v0, :cond_10

    .line 218
    .line 219
    goto :goto_c

    .line 220
    :cond_10
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 221
    .line 222
    :goto_c
    if-ne p1, v0, :cond_11

    .line 223
    .line 224
    return-object v0

    .line 225
    :cond_11
    :goto_d
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 226
    .line 227
    return-object p1
.end method
