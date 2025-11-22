.class public Lkotlinx/coroutines/flow/a0;
.super Lqc/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/z;
.implements Lkotlinx/coroutines/flow/g;
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lqc/a<",
        "Lkotlinx/coroutines/flow/c0;",
        ">;",
        "Lkotlinx/coroutines/flow/z;",
        "Lkotlinx/coroutines/flow/g;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:I

.field public final f:Lpc/f;

.field public g:[Ljava/lang/Object;

.field public h:J

.field public j:J

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    sget-object v0, Lpc/f;->a:Lpc/f;

    invoke-direct {p0}, Lqc/a;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lkotlinx/coroutines/flow/a0;->d:I

    iput p1, p0, Lkotlinx/coroutines/flow/a0;->e:I

    iput-object v0, p0, Lkotlinx/coroutines/flow/a0;->f:Lpc/f;

    return-void
.end method

.method public static h(Lkotlinx/coroutines/flow/a0;Lkotlinx/coroutines/flow/g;Lp9/d;)Lq9/a;
    .locals 8

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/flow/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/b0;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/flow/b0;->g:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/b0;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/b0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/b0;-><init>(Lkotlinx/coroutines/flow/a0;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/b0;->e:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lkotlinx/coroutines/flow/b0;->g:I

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    if-eq v2, v5, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_2
    :goto_1
    iget-object p0, v0, Lkotlinx/coroutines/flow/b0;->d:Lnc/b1;

    .line 52
    .line 53
    iget-object p1, v0, Lkotlinx/coroutines/flow/b0;->c:Lkotlinx/coroutines/flow/c0;

    .line 54
    .line 55
    iget-object v2, v0, Lkotlinx/coroutines/flow/b0;->b:Lkotlinx/coroutines/flow/g;

    .line 56
    .line 57
    iget-object v5, v0, Lkotlinx/coroutines/flow/b0;->a:Lkotlinx/coroutines/flow/a0;

    .line 58
    .line 59
    :try_start_0
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    :goto_2
    move-object p2, p1

    .line 65
    move-object p1, p0

    .line 66
    move-object p0, v5

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/flow/b0;->c:Lkotlinx/coroutines/flow/c0;

    .line 70
    .line 71
    iget-object p0, v0, Lkotlinx/coroutines/flow/b0;->b:Lkotlinx/coroutines/flow/g;

    .line 72
    .line 73
    iget-object v2, v0, Lkotlinx/coroutines/flow/b0;->a:Lkotlinx/coroutines/flow/a0;

    .line 74
    .line 75
    :try_start_1
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    move-object p2, p0

    .line 79
    move-object p0, v2

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    move-object p2, p1

    .line 83
    move-object p1, p0

    .line 84
    move-object p0, v2

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_4
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lqc/a;->b()Lqc/b;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lkotlinx/coroutines/flow/c0;

    .line 95
    .line 96
    :try_start_2
    instance-of v2, p1, Lkotlinx/coroutines/flow/h0;

    .line 97
    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    move-object v2, p1

    .line 101
    check-cast v2, Lkotlinx/coroutines/flow/h0;

    .line 102
    .line 103
    iput-object p0, v0, Lkotlinx/coroutines/flow/b0;->a:Lkotlinx/coroutines/flow/a0;

    .line 104
    .line 105
    iput-object p1, v0, Lkotlinx/coroutines/flow/b0;->b:Lkotlinx/coroutines/flow/g;

    .line 106
    .line 107
    iput-object p2, v0, Lkotlinx/coroutines/flow/b0;->c:Lkotlinx/coroutines/flow/c0;

    .line 108
    .line 109
    iput v5, v0, Lkotlinx/coroutines/flow/b0;->g:I

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/h0;->a(Lp9/d;)Ll9/m;

    .line 112
    .line 113
    .line 114
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 115
    if-ne v2, v1, :cond_5

    .line 116
    .line 117
    return-object v1

    .line 118
    :catchall_2
    move-exception p1

    .line 119
    goto :goto_6

    .line 120
    :cond_5
    move-object v7, p2

    .line 121
    move-object p2, p1

    .line 122
    move-object p1, v7

    .line 123
    :goto_3
    :try_start_3
    invoke-interface {v0}, Lp9/d;->getContext()Lp9/f;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    sget-object v5, Lnc/b1$b;->a:Lnc/b1$b;

    .line 128
    .line 129
    invoke-interface {v2, v5}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lnc/b1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 134
    .line 135
    move-object v5, p0

    .line 136
    move-object p0, v2

    .line 137
    move-object v2, p2

    .line 138
    :cond_6
    :goto_4
    :try_start_4
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/flow/a0;->q(Lkotlinx/coroutines/flow/c0;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    sget-object v6, Lc5/v;->c:Lkotlinx/coroutines/internal/u;

    .line 143
    .line 144
    if-eq p2, v6, :cond_9

    .line 145
    .line 146
    if-nez p0, :cond_7

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    invoke-interface {p0}, Lnc/b1;->b()Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_8

    .line 154
    .line 155
    :goto_5
    iput-object v5, v0, Lkotlinx/coroutines/flow/b0;->a:Lkotlinx/coroutines/flow/a0;

    .line 156
    .line 157
    iput-object v2, v0, Lkotlinx/coroutines/flow/b0;->b:Lkotlinx/coroutines/flow/g;

    .line 158
    .line 159
    iput-object p1, v0, Lkotlinx/coroutines/flow/b0;->c:Lkotlinx/coroutines/flow/c0;

    .line 160
    .line 161
    iput-object p0, v0, Lkotlinx/coroutines/flow/b0;->d:Lnc/b1;

    .line 162
    .line 163
    iput v3, v0, Lkotlinx/coroutines/flow/b0;->g:I

    .line 164
    .line 165
    invoke-interface {v2, p2, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-ne p2, v1, :cond_6

    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_8
    invoke-interface {p0}, Lnc/b1;->n()Ljava/util/concurrent/CancellationException;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    throw p0

    .line 177
    :cond_9
    iput-object v5, v0, Lkotlinx/coroutines/flow/b0;->a:Lkotlinx/coroutines/flow/a0;

    .line 178
    .line 179
    iput-object v2, v0, Lkotlinx/coroutines/flow/b0;->b:Lkotlinx/coroutines/flow/g;

    .line 180
    .line 181
    iput-object p1, v0, Lkotlinx/coroutines/flow/b0;->c:Lkotlinx/coroutines/flow/c0;

    .line 182
    .line 183
    iput-object p0, v0, Lkotlinx/coroutines/flow/b0;->d:Lnc/b1;

    .line 184
    .line 185
    iput v4, v0, Lkotlinx/coroutines/flow/b0;->g:I

    .line 186
    .line 187
    invoke-virtual {v5, p1, v0}, Lkotlinx/coroutines/flow/a0;->f(Lkotlinx/coroutines/flow/c0;Lkotlinx/coroutines/flow/b0;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    if-ne p2, v1, :cond_6

    .line 192
    .line 193
    return-object v1

    .line 194
    :catchall_3
    move-exception p2

    .line 195
    move-object v5, p0

    .line 196
    move-object p0, p2

    .line 197
    goto/16 :goto_2

    .line 198
    .line 199
    :goto_6
    invoke-virtual {p0, p2}, Lqc/a;->e(Lqc/b;)V

    .line 200
    .line 201
    .line 202
    throw p1
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lp9/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/a0;->h(Lkotlinx/coroutines/flow/a0;Lkotlinx/coroutines/flow/g;Lp9/d;)Lq9/a;

    sget-object p1, Lq9/a;->a:Lq9/a;

    return-object p1
.end method

.method public final c()Lqc/b;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/c0;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/c0;-><init>()V

    return-object v0
.end method

.method public final d()[Lqc/b;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/coroutines/flow/c0;

    return-object v0
.end method

.method public final emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/a0;->n(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lnc/j;

    .line 10
    .line 11
    invoke-static {p2}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v7, 0x1

    .line 16
    invoke-direct {v0, v7, p2}, Lnc/j;-><init>(ILp9/d;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lnc/j;->n()V

    .line 20
    .line 21
    .line 22
    sget-object p2, Lb8/f;->g:[Lp9/d;

    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/a0;->o(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lnc/j;->resumeWith(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/a0;->k([Lp9/d;)[Lp9/d;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p2, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v8, Lkotlinx/coroutines/flow/a0$a;

    .line 43
    .line 44
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    iget v3, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 49
    .line 50
    iget v4, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 51
    .line 52
    add-int/2addr v3, v4

    .line 53
    int-to-long v3, v3

    .line 54
    add-long/2addr v3, v1

    .line 55
    move-object v1, v8

    .line 56
    move-object v2, p0

    .line 57
    move-object v5, p1

    .line 58
    move-object v6, v0

    .line 59
    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/a0$a;-><init>(Lkotlinx/coroutines/flow/a0;JLjava/lang/Object;Lnc/j;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v8}, Lkotlinx/coroutines/flow/a0;->j(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget p1, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 66
    .line 67
    add-int/2addr p1, v7

    .line 68
    iput p1, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 69
    .line 70
    iget p1, p0, Lkotlinx/coroutines/flow/a0;->e:I

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/a0;->k([Lp9/d;)[Lp9/d;

    .line 75
    .line 76
    .line 77
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_2
    move-object p1, p2

    .line 79
    move-object p2, v8

    .line 80
    :goto_0
    monitor-exit p0

    .line 81
    if-nez p2, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    new-instance v1, Lnc/l0;

    .line 85
    .line 86
    invoke-direct {v1, p2}, Lnc/l0;-><init>(Lnc/k0;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lnc/j;->D(Lx9/l;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    array-length p2, p1

    .line 93
    const/4 v1, 0x0

    .line 94
    :goto_2
    if-ge v1, p2, :cond_5

    .line 95
    .line 96
    aget-object v2, p1, v1

    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    sget-object v3, Ll9/m;->a:Ll9/m;

    .line 104
    .line 105
    invoke-interface {v2, v3}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {v0}, Lnc/j;->m()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-object p2, Lq9/a;->a:Lq9/a;

    .line 114
    .line 115
    if-ne p1, p2, :cond_6

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 119
    .line 120
    :goto_3
    if-ne p1, p2, :cond_7

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_7
    :goto_4
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 124
    .line 125
    :goto_5
    return-object p1

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    monitor-exit p0

    .line 128
    throw p1
.end method

.method public final f(Lkotlinx/coroutines/flow/c0;Lkotlinx/coroutines/flow/b0;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lnc/j;

    .line 2
    .line 3
    invoke-static {p2}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p2}, Lnc/j;-><init>(ILp9/d;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnc/j;->n()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/a0;->p(Lkotlinx/coroutines/flow/c0;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long p2, v1, v3

    .line 22
    .line 23
    if-gez p2, :cond_0

    .line 24
    .line 25
    iput-object v0, p1, Lkotlinx/coroutines/flow/c0;->b:Lnc/j;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lnc/j;->resumeWith(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    invoke-virtual {v0}, Lnc/j;->m()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object p2, Lq9/a;->a:Lq9/a;

    .line 41
    .line 42
    if-ne p1, p2, :cond_1

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 46
    .line 47
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    .line 50
    throw p1
.end method

.method public final g()V
    .locals 7

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/a0;->g:[Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iget v3, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 25
    .line 26
    iget v4, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 27
    .line 28
    add-int/2addr v3, v4

    .line 29
    int-to-long v5, v3

    .line 30
    add-long/2addr v1, v5

    .line 31
    const-wide/16 v5, 0x1

    .line 32
    .line 33
    sub-long/2addr v1, v5

    .line 34
    long-to-int v2, v1

    .line 35
    array-length v1, v0

    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    and-int/2addr v1, v2

    .line 39
    aget-object v1, v0, v1

    .line 40
    .line 41
    sget-object v2, Lc5/v;->c:Lkotlinx/coroutines/internal/u;

    .line 42
    .line 43
    if-ne v1, v2, :cond_1

    .line 44
    .line 45
    add-int/lit8 v4, v4, -0x1

    .line 46
    .line 47
    iput v4, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 48
    .line 49
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    iget v3, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 54
    .line 55
    iget v4, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 56
    .line 57
    add-int/2addr v3, v4

    .line 58
    int-to-long v3, v3

    .line 59
    add-long/2addr v1, v3

    .line 60
    long-to-int v2, v1

    .line 61
    array-length v1, v0

    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 63
    .line 64
    and-int/2addr v1, v2

    .line 65
    const/4 v2, 0x0

    .line 66
    aput-object v2, v0, v1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/a0;->g:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    long-to-int v2, v1

    .line 11
    array-length v1, v0

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    and-int/2addr v1, v2

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    iput v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v2, 0x1

    .line 29
    .line 30
    add-long/2addr v0, v2

    .line 31
    iget-wide v2, p0, Lkotlinx/coroutines/flow/a0;->h:J

    .line 32
    .line 33
    cmp-long v4, v2, v0

    .line 34
    .line 35
    if-gez v4, :cond_0

    .line 36
    .line 37
    iput-wide v0, p0, Lkotlinx/coroutines/flow/a0;->h:J

    .line 38
    .line 39
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/a0;->j:J

    .line 40
    .line 41
    cmp-long v4, v2, v0

    .line 42
    .line 43
    if-gez v4, :cond_5

    .line 44
    .line 45
    iget v2, p0, Lqc/a;->b:I

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v2, p0, Lqc/a;->a:[Lqc/b;

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    array-length v3, v2

    .line 56
    const/4 v4, 0x0

    .line 57
    :cond_3
    :goto_0
    if-ge v4, v3, :cond_4

    .line 58
    .line 59
    aget-object v5, v2, v4

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    check-cast v5, Lkotlinx/coroutines/flow/c0;

    .line 66
    .line 67
    iget-wide v6, v5, Lkotlinx/coroutines/flow/c0;->a:J

    .line 68
    .line 69
    const-wide/16 v8, 0x0

    .line 70
    .line 71
    cmp-long v10, v6, v8

    .line 72
    .line 73
    if-ltz v10, :cond_3

    .line 74
    .line 75
    cmp-long v8, v6, v0

    .line 76
    .line 77
    if-gez v8, :cond_3

    .line 78
    .line 79
    iput-wide v0, v5, Lkotlinx/coroutines/flow/c0;->a:J

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    :goto_1
    iput-wide v0, p0, Lkotlinx/coroutines/flow/a0;->j:J

    .line 83
    .line 84
    :cond_5
    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/flow/a0;->g:[Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v1, v3, v2}, Lkotlinx/coroutines/flow/a0;->m([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    array-length v3, v1

    .line 19
    if-lt v0, v3, :cond_1

    .line 20
    .line 21
    array-length v3, v1

    .line 22
    mul-int/lit8 v3, v3, 0x2

    .line 23
    .line 24
    invoke-virtual {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/a0;->m([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    int-to-long v4, v0

    .line 33
    add-long/2addr v2, v4

    .line 34
    long-to-int v0, v2

    .line 35
    array-length v2, v1

    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 37
    .line 38
    and-int/2addr v0, v2

    .line 39
    aput-object p1, v1, v0

    .line 40
    .line 41
    return-void
.end method

.method public final k([Lp9/d;)[Lp9/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lp9/d<",
            "Ll9/m;",
            ">;)[",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lqc/a;->b:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lqc/a;->a:[Lqc/b;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    :cond_2
    :goto_0
    if-ge v3, v2, :cond_6

    .line 15
    .line 16
    aget-object v4, v1, v3

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    check-cast v4, Lkotlinx/coroutines/flow/c0;

    .line 23
    .line 24
    iget-object v5, v4, Lkotlinx/coroutines/flow/c0;->b:Lnc/j;

    .line 25
    .line 26
    if-nez v5, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/flow/a0;->p(Lkotlinx/coroutines/flow/c0;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    const-wide/16 v8, 0x0

    .line 34
    .line 35
    cmp-long v10, v6, v8

    .line 36
    .line 37
    if-gez v10, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    array-length v6, p1

    .line 41
    if-lt v0, v6, :cond_5

    .line 42
    .line 43
    array-length v6, p1

    .line 44
    const/4 v7, 0x2

    .line 45
    mul-int/lit8 v6, v6, 0x2

    .line 46
    .line 47
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v6, "copyOf(this, newSize)"

    .line 56
    .line 57
    invoke-static {p1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_5
    move-object v6, p1

    .line 61
    check-cast v6, [Lp9/d;

    .line 62
    .line 63
    add-int/lit8 v7, v0, 0x1

    .line 64
    .line 65
    aput-object v5, v6, v0

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, v4, Lkotlinx/coroutines/flow/c0;->b:Lnc/j;

    .line 69
    .line 70
    move v0, v7

    .line 71
    goto :goto_0

    .line 72
    :cond_6
    :goto_1
    check-cast p1, [Lp9/d;

    .line 73
    .line 74
    return-object p1
.end method

.method public final l()J
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/flow/a0;->j:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/a0;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p3, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-eqz v1, :cond_3

    .line 8
    .line 9
    new-array v1, p3, [Ljava/lang/Object;

    .line 10
    .line 11
    iput-object v1, p0, Lkotlinx/coroutines/flow/a0;->g:[Ljava/lang/Object;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    :goto_1
    if-ge v0, p2, :cond_2

    .line 21
    .line 22
    add-int/lit8 v4, v0, 0x1

    .line 23
    .line 24
    int-to-long v5, v0

    .line 25
    add-long/2addr v5, v2

    .line 26
    long-to-int v0, v5

    .line 27
    array-length v5, p1

    .line 28
    add-int/lit8 v5, v5, -0x1

    .line 29
    .line 30
    and-int/2addr v5, v0

    .line 31
    aget-object v5, p1, v5

    .line 32
    .line 33
    add-int/lit8 v6, p3, -0x1

    .line 34
    .line 35
    and-int/2addr v0, v6

    .line 36
    aput-object v5, v1, v0

    .line 37
    .line 38
    move v0, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    return-object v1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string p2, "Buffer size overflow"

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public final n(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    sget-object v0, Lb8/f;->g:[Lp9/d;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/a0;->o(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/a0;->k([Lp9/d;)[Lp9/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Ll9/m;->a:Ll9/m;

    invoke-interface {v3, v4}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final o(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lqc/a;->b:I

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/flow/a0;->d:I

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/a0;->j(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 15
    .line 16
    add-int/2addr v0, v9

    .line 17
    iput v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 18
    .line 19
    if-le v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->i()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget v2, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 29
    .line 30
    int-to-long v2, v2

    .line 31
    add-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Lkotlinx/coroutines/flow/a0;->j:J

    .line 33
    .line 34
    :goto_0
    return v9

    .line 35
    :cond_2
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 36
    .line 37
    iget v2, p0, Lkotlinx/coroutines/flow/a0;->e:I

    .line 38
    .line 39
    if-lt v0, v2, :cond_5

    .line 40
    .line 41
    iget-wide v3, p0, Lkotlinx/coroutines/flow/a0;->j:J

    .line 42
    .line 43
    iget-wide v5, p0, Lkotlinx/coroutines/flow/a0;->h:J

    .line 44
    .line 45
    cmp-long v0, v3, v5

    .line 46
    .line 47
    if-gtz v0, :cond_5

    .line 48
    .line 49
    iget-object v0, p0, Lkotlinx/coroutines/flow/a0;->f:Lpc/f;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    if-eq v0, v3, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    return v9

    .line 62
    :cond_4
    const/4 v0, 0x0

    .line 63
    return v0

    .line 64
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/a0;->j(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 68
    .line 69
    add-int/2addr v0, v9

    .line 70
    iput v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 71
    .line 72
    if-le v0, v2, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->i()V

    .line 75
    .line 76
    .line 77
    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 82
    .line 83
    int-to-long v4, v0

    .line 84
    add-long/2addr v2, v4

    .line 85
    iget-wide v4, p0, Lkotlinx/coroutines/flow/a0;->h:J

    .line 86
    .line 87
    sub-long/2addr v2, v4

    .line 88
    long-to-int v0, v2

    .line 89
    if-le v0, v1, :cond_7

    .line 90
    .line 91
    const-wide/16 v0, 0x1

    .line 92
    .line 93
    add-long v1, v4, v0

    .line 94
    .line 95
    iget-wide v3, p0, Lkotlinx/coroutines/flow/a0;->j:J

    .line 96
    .line 97
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 102
    .line 103
    int-to-long v7, v0

    .line 104
    add-long/2addr v5, v7

    .line 105
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 106
    .line 107
    .line 108
    move-result-wide v7

    .line 109
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 110
    .line 111
    int-to-long v10, v0

    .line 112
    add-long/2addr v7, v10

    .line 113
    iget v0, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 114
    .line 115
    int-to-long v10, v0

    .line 116
    add-long/2addr v7, v10

    .line 117
    move-object v0, p0

    .line 118
    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/a0;->r(JJJJ)V

    .line 119
    .line 120
    .line 121
    :cond_7
    return v9
.end method

.method public final p(Lkotlinx/coroutines/flow/c0;)J
    .locals 6

    .line 1
    iget-wide v0, p1, Lkotlinx/coroutines/flow/c0;->a:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget p1, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 8
    .line 9
    int-to-long v4, p1

    .line 10
    add-long/2addr v2, v4

    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget p1, p0, Lkotlinx/coroutines/flow/a0;->e:I

    .line 17
    .line 18
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    if-lez p1, :cond_1

    .line 21
    .line 22
    return-wide v2

    .line 23
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    cmp-long p1, v0, v4

    .line 28
    .line 29
    if-lez p1, :cond_2

    .line 30
    .line 31
    return-wide v2

    .line 32
    :cond_2
    iget p1, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 33
    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    return-wide v2

    .line 37
    :cond_3
    return-wide v0
.end method

.method public final q(Lkotlinx/coroutines/flow/c0;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lb8/f;->g:[Lp9/d;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/a0;->p(Lkotlinx/coroutines/flow/c0;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-gez v5, :cond_0

    .line 13
    .line 14
    sget-object p1, Lc5/v;->c:Lkotlinx/coroutines/internal/u;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v3, p1, Lkotlinx/coroutines/flow/c0;->a:J

    .line 18
    .line 19
    iget-object v0, p0, Lkotlinx/coroutines/flow/a0;->g:[Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    long-to-int v5, v1

    .line 25
    array-length v6, v0

    .line 26
    add-int/lit8 v6, v6, -0x1

    .line 27
    .line 28
    and-int/2addr v5, v6

    .line 29
    aget-object v0, v0, v5

    .line 30
    .line 31
    instance-of v5, v0, Lkotlinx/coroutines/flow/a0$a;

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    check-cast v0, Lkotlinx/coroutines/flow/a0$a;

    .line 36
    .line 37
    iget-object v0, v0, Lkotlinx/coroutines/flow/a0$a;->c:Ljava/lang/Object;

    .line 38
    .line 39
    :cond_1
    const-wide/16 v5, 0x1

    .line 40
    .line 41
    add-long/2addr v1, v5

    .line 42
    iput-wide v1, p1, Lkotlinx/coroutines/flow/c0;->a:J

    .line 43
    .line 44
    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/a0;->s(J)[Lp9/d;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    move-object v7, v0

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v7

    .line 51
    :goto_0
    monitor-exit p0

    .line 52
    array-length v1, v0

    .line 53
    const/4 v2, 0x0

    .line 54
    :goto_1
    if-ge v2, v1, :cond_3

    .line 55
    .line 56
    aget-object v3, v0, v2

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    sget-object v4, Ll9/m;->a:Ll9/m;

    .line 64
    .line 65
    invoke-interface {v3, v4}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    return-object p1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    monitor-exit p0

    .line 72
    throw p1
.end method

.method public final r(JJJJ)V
    .locals 7

    .line 1
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :goto_0
    cmp-long v4, v2, v0

    .line 10
    .line 11
    if-gez v4, :cond_0

    .line 12
    .line 13
    const-wide/16 v4, 0x1

    .line 14
    .line 15
    add-long/2addr v4, v2

    .line 16
    iget-object v6, p0, Lkotlinx/coroutines/flow/a0;->g:[Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v6}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    long-to-int v3, v2

    .line 22
    array-length v2, v6

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    and-int/2addr v2, v3

    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v3, v6, v2

    .line 28
    .line 29
    move-wide v2, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-wide p1, p0, Lkotlinx/coroutines/flow/a0;->h:J

    .line 32
    .line 33
    iput-wide p3, p0, Lkotlinx/coroutines/flow/a0;->j:J

    .line 34
    .line 35
    sub-long p1, p5, v0

    .line 36
    .line 37
    long-to-int p2, p1

    .line 38
    iput p2, p0, Lkotlinx/coroutines/flow/a0;->k:I

    .line 39
    .line 40
    sub-long/2addr p7, p5

    .line 41
    long-to-int p1, p7

    .line 42
    iput p1, p0, Lkotlinx/coroutines/flow/a0;->l:I

    .line 43
    .line 44
    return-void
.end method

.method public final s(J)[Lp9/d;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget-wide v0, v9, Lkotlinx/coroutines/flow/a0;->j:J

    .line 4
    .line 5
    sget-object v2, Lb8/f;->g:[Lp9/d;

    .line 6
    .line 7
    cmp-long v3, p1, v0

    .line 8
    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget v3, v9, Lkotlinx/coroutines/flow/a0;->k:I

    .line 17
    .line 18
    int-to-long v3, v3

    .line 19
    add-long/2addr v3, v0

    .line 20
    const-wide/16 v5, 0x1

    .line 21
    .line 22
    iget v7, v9, Lkotlinx/coroutines/flow/a0;->e:I

    .line 23
    .line 24
    if-nez v7, :cond_1

    .line 25
    .line 26
    iget v8, v9, Lkotlinx/coroutines/flow/a0;->l:I

    .line 27
    .line 28
    if-lez v8, :cond_1

    .line 29
    .line 30
    add-long/2addr v3, v5

    .line 31
    :cond_1
    iget v8, v9, Lqc/a;->b:I

    .line 32
    .line 33
    if-nez v8, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object v8, v9, Lqc/a;->a:[Lqc/b;

    .line 37
    .line 38
    if-nez v8, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    array-length v11, v8

    .line 42
    const/4 v12, 0x0

    .line 43
    :cond_4
    :goto_0
    if-ge v12, v11, :cond_5

    .line 44
    .line 45
    aget-object v13, v8, v12

    .line 46
    .line 47
    add-int/lit8 v12, v12, 0x1

    .line 48
    .line 49
    if-eqz v13, :cond_4

    .line 50
    .line 51
    check-cast v13, Lkotlinx/coroutines/flow/c0;

    .line 52
    .line 53
    iget-wide v13, v13, Lkotlinx/coroutines/flow/c0;->a:J

    .line 54
    .line 55
    const-wide/16 v15, 0x0

    .line 56
    .line 57
    cmp-long v17, v13, v15

    .line 58
    .line 59
    if-ltz v17, :cond_4

    .line 60
    .line 61
    cmp-long v15, v13, v3

    .line 62
    .line 63
    if-gez v15, :cond_4

    .line 64
    .line 65
    move-wide v3, v13

    .line 66
    goto :goto_0

    .line 67
    :cond_5
    :goto_1
    iget-wide v11, v9, Lkotlinx/coroutines/flow/a0;->j:J

    .line 68
    .line 69
    cmp-long v8, v3, v11

    .line 70
    .line 71
    if-gtz v8, :cond_6

    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 75
    .line 76
    .line 77
    move-result-wide v11

    .line 78
    iget v8, v9, Lkotlinx/coroutines/flow/a0;->k:I

    .line 79
    .line 80
    int-to-long v13, v8

    .line 81
    add-long/2addr v11, v13

    .line 82
    iget v8, v9, Lqc/a;->b:I

    .line 83
    .line 84
    if-lez v8, :cond_7

    .line 85
    .line 86
    sub-long v13, v11, v3

    .line 87
    .line 88
    long-to-int v8, v13

    .line 89
    iget v13, v9, Lkotlinx/coroutines/flow/a0;->l:I

    .line 90
    .line 91
    sub-int v8, v7, v8

    .line 92
    .line 93
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    goto :goto_2

    .line 98
    :cond_7
    iget v8, v9, Lkotlinx/coroutines/flow/a0;->l:I

    .line 99
    .line 100
    :goto_2
    iget v13, v9, Lkotlinx/coroutines/flow/a0;->l:I

    .line 101
    .line 102
    int-to-long v13, v13

    .line 103
    add-long/2addr v13, v11

    .line 104
    sget-object v15, Lc5/v;->c:Lkotlinx/coroutines/internal/u;

    .line 105
    .line 106
    if-lez v8, :cond_c

    .line 107
    .line 108
    new-array v2, v8, [Lp9/d;

    .line 109
    .line 110
    iget-object v10, v9, Lkotlinx/coroutines/flow/a0;->g:[Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {v10}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    move-wide/from16 v18, v11

    .line 116
    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    :goto_3
    cmp-long v17, v11, v13

    .line 120
    .line 121
    if-gez v17, :cond_b

    .line 122
    .line 123
    add-long v20, v11, v5

    .line 124
    .line 125
    long-to-int v12, v11

    .line 126
    array-length v11, v10

    .line 127
    add-int/lit8 v11, v11, -0x1

    .line 128
    .line 129
    and-int/2addr v11, v12

    .line 130
    aget-object v11, v10, v11

    .line 131
    .line 132
    if-eq v11, v15, :cond_a

    .line 133
    .line 134
    if-eqz v11, :cond_9

    .line 135
    .line 136
    check-cast v11, Lkotlinx/coroutines/flow/a0$a;

    .line 137
    .line 138
    add-int/lit8 v5, v16, 0x1

    .line 139
    .line 140
    iget-object v6, v11, Lkotlinx/coroutines/flow/a0$a;->d:Lp9/d;

    .line 141
    .line 142
    aput-object v6, v2, v16

    .line 143
    .line 144
    array-length v6, v10

    .line 145
    add-int/lit8 v6, v6, -0x1

    .line 146
    .line 147
    and-int/2addr v6, v12

    .line 148
    aput-object v15, v10, v6

    .line 149
    .line 150
    move-wide/from16 v22, v3

    .line 151
    .line 152
    move-object v4, v2

    .line 153
    move-wide/from16 v2, v18

    .line 154
    .line 155
    long-to-int v6, v2

    .line 156
    array-length v12, v10

    .line 157
    add-int/lit8 v12, v12, -0x1

    .line 158
    .line 159
    and-int/2addr v6, v12

    .line 160
    iget-object v11, v11, Lkotlinx/coroutines/flow/a0$a;->c:Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v11, v10, v6

    .line 163
    .line 164
    const-wide/16 v11, 0x1

    .line 165
    .line 166
    add-long v18, v2, v11

    .line 167
    .line 168
    if-lt v5, v8, :cond_8

    .line 169
    .line 170
    move-object v10, v4

    .line 171
    move-wide/from16 v11, v18

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_8
    move-object v2, v4

    .line 175
    move/from16 v16, v5

    .line 176
    .line 177
    move-wide/from16 v11, v20

    .line 178
    .line 179
    move-wide/from16 v3, v22

    .line 180
    .line 181
    const-wide/16 v5, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 185
    .line 186
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    .line 187
    .line 188
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_a
    move-wide/from16 v22, v3

    .line 193
    .line 194
    move-object v4, v2

    .line 195
    move-wide/from16 v2, v18

    .line 196
    .line 197
    move-object v2, v4

    .line 198
    move-wide/from16 v11, v20

    .line 199
    .line 200
    move-wide/from16 v3, v22

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_b
    move-wide/from16 v22, v3

    .line 204
    .line 205
    move-object v4, v2

    .line 206
    move-wide/from16 v2, v18

    .line 207
    .line 208
    move-wide v11, v2

    .line 209
    move-object v10, v4

    .line 210
    goto :goto_4

    .line 211
    :cond_c
    move-wide/from16 v22, v3

    .line 212
    .line 213
    move-object v10, v2

    .line 214
    :goto_4
    sub-long v0, v11, v0

    .line 215
    .line 216
    long-to-int v1, v0

    .line 217
    iget v0, v9, Lqc/a;->b:I

    .line 218
    .line 219
    if-nez v0, :cond_d

    .line 220
    .line 221
    move-wide v3, v11

    .line 222
    goto :goto_5

    .line 223
    :cond_d
    move-wide/from16 v3, v22

    .line 224
    .line 225
    :goto_5
    iget-wide v5, v9, Lkotlinx/coroutines/flow/a0;->h:J

    .line 226
    .line 227
    iget v0, v9, Lkotlinx/coroutines/flow/a0;->d:I

    .line 228
    .line 229
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    int-to-long v0, v0

    .line 234
    sub-long v0, v11, v0

    .line 235
    .line 236
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 237
    .line 238
    .line 239
    move-result-wide v0

    .line 240
    if-nez v7, :cond_e

    .line 241
    .line 242
    cmp-long v2, v0, v13

    .line 243
    .line 244
    if-gez v2, :cond_e

    .line 245
    .line 246
    iget-object v2, v9, Lkotlinx/coroutines/flow/a0;->g:[Ljava/lang/Object;

    .line 247
    .line 248
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    long-to-int v5, v0

    .line 252
    array-length v6, v2

    .line 253
    add-int/lit8 v6, v6, -0x1

    .line 254
    .line 255
    and-int/2addr v5, v6

    .line 256
    aget-object v2, v2, v5

    .line 257
    .line 258
    invoke-static {v2, v15}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_e

    .line 263
    .line 264
    const-wide/16 v5, 0x1

    .line 265
    .line 266
    add-long/2addr v11, v5

    .line 267
    add-long/2addr v0, v5

    .line 268
    :cond_e
    move-wide v1, v0

    .line 269
    move-wide v5, v11

    .line 270
    move-object/from16 v0, p0

    .line 271
    .line 272
    move-wide v7, v13

    .line 273
    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/a0;->r(JJJJ)V

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/a0;->g()V

    .line 277
    .line 278
    .line 279
    array-length v0, v10

    .line 280
    const/4 v1, 0x1

    .line 281
    if-nez v0, :cond_f

    .line 282
    .line 283
    const/4 v0, 0x1

    .line 284
    goto :goto_6

    .line 285
    :cond_f
    const/4 v0, 0x0

    .line 286
    :goto_6
    xor-int/2addr v0, v1

    .line 287
    if-eqz v0, :cond_10

    .line 288
    .line 289
    invoke-virtual {v9, v10}, Lkotlinx/coroutines/flow/a0;->k([Lp9/d;)[Lp9/d;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    :cond_10
    return-object v10
.end method
