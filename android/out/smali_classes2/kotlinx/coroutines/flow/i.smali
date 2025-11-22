.class public final synthetic Lkotlinx/coroutines/flow/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/g;Lpc/u;ZLp9/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lpc/u<",
            "+TT;>;Z",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lkotlinx/coroutines/flow/i$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/i$a;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/flow/i$a;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkotlinx/coroutines/flow/i$a;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/i$a;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/i$a;-><init>(Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/flow/i$a;->d:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lkotlinx/coroutines/flow/i$a;->e:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    if-eq v2, v3, :cond_3

    .line 37
    .line 38
    if-ne v2, v4, :cond_2

    .line 39
    .line 40
    iget-boolean p0, v0, Lkotlinx/coroutines/flow/i$a;->c:Z

    .line 41
    .line 42
    iget-object p1, v0, Lkotlinx/coroutines/flow/i$a;->b:Lpc/u;

    .line 43
    .line 44
    iget-object p2, v0, Lkotlinx/coroutines/flow/i$a;->a:Lkotlinx/coroutines/flow/g;

    .line 45
    .line 46
    :try_start_0
    invoke-static {p3}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_1
    move-object v6, p2

    .line 50
    move p2, p0

    .line 51
    move-object p0, v6

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    iget-boolean p0, v0, Lkotlinx/coroutines/flow/i$a;->c:Z

    .line 62
    .line 63
    iget-object p1, v0, Lkotlinx/coroutines/flow/i$a;->b:Lpc/u;

    .line 64
    .line 65
    iget-object p2, v0, Lkotlinx/coroutines/flow/i$a;->a:Lkotlinx/coroutines/flow/g;

    .line 66
    .line 67
    :try_start_1
    invoke-static {p3}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    check-cast p3, Lpc/j;

    .line 71
    .line 72
    iget-object p3, p3, Lpc/j;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-static {p3}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    instance-of p3, p0, Lkotlinx/coroutines/flow/i0;

    .line 79
    .line 80
    if-nez p3, :cond_10

    .line 81
    .line 82
    :goto_1
    :try_start_2
    iput-object p0, v0, Lkotlinx/coroutines/flow/i$a;->a:Lkotlinx/coroutines/flow/g;

    .line 83
    .line 84
    iput-object p1, v0, Lkotlinx/coroutines/flow/i$a;->b:Lpc/u;

    .line 85
    .line 86
    iput-boolean p2, v0, Lkotlinx/coroutines/flow/i$a;->c:Z

    .line 87
    .line 88
    iput v3, v0, Lkotlinx/coroutines/flow/i$a;->e:I

    .line 89
    .line 90
    invoke-interface {p1, v0}, Lpc/u;->h(Lp9/d;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    if-ne p3, v1, :cond_5

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_5
    move v6, p2

    .line 98
    move-object p2, p0

    .line 99
    move p0, v6

    .line 100
    :goto_2
    :try_start_3
    instance-of v2, p3, Lpc/j$a;

    .line 101
    .line 102
    if-eqz v2, :cond_a

    .line 103
    .line 104
    instance-of p2, p3, Lpc/j$a;

    .line 105
    .line 106
    if-eqz p2, :cond_6

    .line 107
    .line 108
    check-cast p3, Lpc/j$a;

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    move-object p3, v5

    .line 112
    :goto_3
    if-nez p3, :cond_7

    .line 113
    .line 114
    move-object p2, v5

    .line 115
    goto :goto_4

    .line 116
    :cond_7
    iget-object p2, p3, Lpc/j$a;->a:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    :goto_4
    if-nez p2, :cond_9

    .line 119
    .line 120
    if-eqz p0, :cond_8

    .line 121
    .line 122
    invoke-interface {p1, v5}, Lpc/u;->a(Ljava/util/concurrent/CancellationException;)V

    .line 123
    .line 124
    .line 125
    :cond_8
    sget-object p0, Ll9/m;->a:Ll9/m;

    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_9
    :try_start_4
    throw p2

    .line 129
    :catchall_0
    move-exception p2

    .line 130
    goto :goto_5

    .line 131
    :cond_a
    instance-of v2, p3, Lpc/j$b;

    .line 132
    .line 133
    if-nez v2, :cond_b

    .line 134
    .line 135
    iput-object p2, v0, Lkotlinx/coroutines/flow/i$a;->a:Lkotlinx/coroutines/flow/g;

    .line 136
    .line 137
    iput-object p1, v0, Lkotlinx/coroutines/flow/i$a;->b:Lpc/u;

    .line 138
    .line 139
    iput-boolean p0, v0, Lkotlinx/coroutines/flow/i$a;->c:Z

    .line 140
    .line 141
    iput v4, v0, Lkotlinx/coroutines/flow/i$a;->e:I

    .line 142
    .line 143
    invoke-interface {p2, p3, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    if-ne p3, v1, :cond_1

    .line 148
    .line 149
    return-object v1

    .line 150
    :cond_b
    instance-of p2, p3, Lpc/j$a;

    .line 151
    .line 152
    if-eqz p2, :cond_c

    .line 153
    .line 154
    move-object p2, p3

    .line 155
    check-cast p2, Lpc/j$a;

    .line 156
    .line 157
    iget-object p2, p2, Lpc/j$a;->a:Ljava/lang/Throwable;

    .line 158
    .line 159
    if-eqz p2, :cond_c

    .line 160
    .line 161
    throw p2

    .line 162
    :cond_c
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    const-string v0, "Trying to call \'getOrThrow\' on a failed channel result: "

    .line 165
    .line 166
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    :catchall_1
    move-exception p0

    .line 179
    move v6, p2

    .line 180
    move-object p2, p0

    .line 181
    move p0, v6

    .line 182
    :goto_5
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    :catchall_2
    move-exception p3

    .line 184
    if-eqz p0, :cond_f

    .line 185
    .line 186
    instance-of p0, p2, Ljava/util/concurrent/CancellationException;

    .line 187
    .line 188
    if-eqz p0, :cond_d

    .line 189
    .line 190
    move-object v5, p2

    .line 191
    check-cast v5, Ljava/util/concurrent/CancellationException;

    .line 192
    .line 193
    :cond_d
    if-nez v5, :cond_e

    .line 194
    .line 195
    new-instance v5, Ljava/util/concurrent/CancellationException;

    .line 196
    .line 197
    const-string p0, "Channel was consumed, consumer had failed"

    .line 198
    .line 199
    invoke-direct {v5, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    .line 204
    .line 205
    :cond_e
    invoke-interface {p1, v5}, Lpc/u;->a(Ljava/util/concurrent/CancellationException;)V

    .line 206
    .line 207
    .line 208
    :cond_f
    throw p3

    .line 209
    :cond_10
    check-cast p0, Lkotlinx/coroutines/flow/i0;

    .line 210
    .line 211
    iget-object p0, p0, Lkotlinx/coroutines/flow/i0;->a:Ljava/lang/Throwable;

    .line 212
    .line 213
    throw p0
.end method
