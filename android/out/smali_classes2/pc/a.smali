.class public abstract Lpc/a;
.super Lpc/b;
.source "SourceFile"

# interfaces
.implements Lpc/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpc/a$g;,
        Lpc/a$f;,
        Lpc/a$a;,
        Lpc/a$b;,
        Lpc/a$c;,
        Lpc/a$d;,
        Lpc/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/b<",
        "TE;>;",
        "Lpc/g<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lx9/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-TE;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/b;-><init>(Lx9/l;)V

    return-void
.end method

.method public static final r(ILx9/p;Lpc/a;Lkotlinx/coroutines/selects/c;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :cond_0
    :goto_0
    invoke-interface {p3}, Lkotlinx/coroutines/selects/c;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    iget-object v0, p2, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lpc/x;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2}, Lpc/a;->w()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_1
    if-eqz v0, :cond_4

    .line 32
    .line 33
    new-instance v0, Lpc/a$e;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1, p2, p3}, Lpc/a$e;-><init>(ILx9/p;Lpc/a;Lkotlinx/coroutines/selects/c;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lpc/a;->t(Lpc/s;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-interface {p3, v0}, Lkotlinx/coroutines/selects/c;->m(Lnc/k0;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    if-eqz v1, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    invoke-virtual {p2, p3}, Lpc/a;->D(Lkotlinx/coroutines/selects/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v2, Lkotlinx/coroutines/selects/d;->b:Lkotlinx/coroutines/internal/u;

    .line 55
    .line 56
    if-ne v0, v2, :cond_5

    .line 57
    .line 58
    :goto_2
    return-void

    .line 59
    :cond_5
    sget-object v2, Lc5/y;->m:Lkotlinx/coroutines/internal/u;

    .line 60
    .line 61
    if-ne v0, v2, :cond_6

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    sget-object v2, Lb8/f;->e:Lkotlinx/coroutines/internal/u;

    .line 65
    .line 66
    if-ne v0, v2, :cond_7

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_7
    instance-of v2, v0, Lpc/k;

    .line 70
    .line 71
    if-eqz v2, :cond_b

    .line 72
    .line 73
    if-eqz p0, :cond_a

    .line 74
    .line 75
    if-eq p0, v1, :cond_8

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_8
    invoke-interface {p3}, Lkotlinx/coroutines/selects/c;->n()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_9

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_9
    check-cast v0, Lpc/k;

    .line 86
    .line 87
    iget-object v0, v0, Lpc/k;->d:Ljava/lang/Throwable;

    .line 88
    .line 89
    new-instance v1, Lpc/j$a;

    .line 90
    .line 91
    invoke-direct {v1, v0}, Lpc/j$a;-><init>(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lpc/j;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Lpc/j;-><init>(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_a
    check-cast v0, Lpc/k;

    .line 101
    .line 102
    invoke-virtual {v0}, Lpc/k;->O()Ljava/lang/Throwable;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    sget p1, Lkotlinx/coroutines/internal/t;->a:I

    .line 107
    .line 108
    throw p0

    .line 109
    :cond_b
    if-ne p0, v1, :cond_d

    .line 110
    .line 111
    if-eqz v2, :cond_c

    .line 112
    .line 113
    check-cast v0, Lpc/k;

    .line 114
    .line 115
    iget-object v0, v0, Lpc/k;->d:Ljava/lang/Throwable;

    .line 116
    .line 117
    new-instance v1, Lpc/j$a;

    .line 118
    .line 119
    invoke-direct {v1, v0}, Lpc/j$a;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    move-object v0, v1

    .line 123
    :cond_c
    new-instance v1, Lpc/j;

    .line 124
    .line 125
    invoke-direct {v1, v0}, Lpc/j;-><init>(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    move-object v0, v1

    .line 129
    :cond_d
    :goto_3
    invoke-interface {p3}, Lkotlinx/coroutines/selects/c;->r()Lp9/d;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/clearcut/d0;->A(Ljava/lang/Object;Lp9/d;Lx9/p;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0
.end method


# virtual methods
.method public B()Ljava/lang/Object;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lpc/b;->q()Lpc/x;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lc5/y;->m:Lkotlinx/coroutines/internal/u;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpc/x;->M(Lkotlinx/coroutines/internal/j$c;)Lkotlinx/coroutines/internal/u;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lpc/x;->J()V

    invoke-virtual {v0}, Lpc/x;->K()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lpc/x;->N()V

    goto :goto_0
.end method

.method public D(Lkotlinx/coroutines/selects/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/c<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lpc/a$g;

    .line 2
    .line 3
    iget-object v1, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lpc/a$g;-><init>(Lkotlinx/coroutines/internal/i;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/c;->e(Lpc/a$g;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j$d;->m()Lkotlinx/coroutines/internal/j;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lpc/x;

    .line 20
    .line 21
    invoke-virtual {p1}, Lpc/x;->J()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j$d;->m()Lkotlinx/coroutines/internal/j;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lpc/x;

    .line 29
    .line 30
    invoke-virtual {p1}, Lpc/x;->K()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpc/a;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, " was cancelled"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Lpc/b;->s(Ljava/lang/Throwable;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p0, p1}, Lpc/a;->y(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final h(Lp9/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Lpc/j<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lpc/a$j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lpc/a$j;

    .line 7
    .line 8
    iget v1, v0, Lpc/a$j;->c:I

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
    iput v1, v0, Lpc/a$j;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lpc/a$j;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lpc/a$j;-><init>(Lpc/a;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lpc/a$j;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lpc/a$j;->c:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lpc/a;->B()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v2, Lc5/y;->m:Lkotlinx/coroutines/internal/u;

    .line 57
    .line 58
    if-eq p1, v2, :cond_4

    .line 59
    .line 60
    instance-of v0, p1, Lpc/k;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    check-cast p1, Lpc/k;

    .line 65
    .line 66
    iget-object p1, p1, Lpc/k;->d:Ljava/lang/Throwable;

    .line 67
    .line 68
    new-instance v0, Lpc/j$a;

    .line 69
    .line 70
    invoke-direct {v0, p1}, Lpc/j$a;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    move-object p1, v0

    .line 74
    :cond_3
    return-object p1

    .line 75
    :cond_4
    iput v3, v0, Lpc/a$j;->c:I

    .line 76
    .line 77
    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->u(Lp9/d;)Lnc/j;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lpc/b;->a:Lx9/l;

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    new-instance v0, Lpc/a$b;

    .line 90
    .line 91
    invoke-direct {v0, p1}, Lpc/a$b;-><init>(Lnc/j;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    new-instance v4, Lpc/a$c;

    .line 96
    .line 97
    invoke-direct {v4, p1, v0}, Lpc/a$c;-><init>(Lnc/j;Lx9/l;)V

    .line 98
    .line 99
    .line 100
    move-object v0, v4

    .line 101
    :cond_6
    :goto_1
    invoke-virtual {p0, v0}, Lpc/a;->t(Lpc/s;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_7

    .line 106
    .line 107
    new-instance v2, Lpc/a$f;

    .line 108
    .line 109
    invoke-direct {v2, p0, v0}, Lpc/a$f;-><init>(Lpc/a;Lpc/s;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Lnc/j;->D(Lx9/l;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    invoke-virtual {p0}, Lpc/a;->B()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    instance-of v5, v4, Lpc/k;

    .line 121
    .line 122
    if-eqz v5, :cond_8

    .line 123
    .line 124
    check-cast v4, Lpc/k;

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Lpc/a$b;->K(Lpc/k;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    if-eq v4, v2, :cond_6

    .line 131
    .line 132
    iget v2, v0, Lpc/a$b;->e:I

    .line 133
    .line 134
    if-ne v2, v3, :cond_9

    .line 135
    .line 136
    new-instance v2, Lpc/j;

    .line 137
    .line 138
    invoke-direct {v2, v4}, Lpc/j;-><init>(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_9
    move-object v2, v4

    .line 143
    :goto_2
    invoke-virtual {v0, v4}, Lpc/s;->J(Ljava/lang/Object;)Lx9/l;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget v3, p1, Lnc/i0;->c:I

    .line 148
    .line 149
    invoke-virtual {p1, v2, v3, v0}, Lnc/j;->u(Ljava/lang/Object;ILx9/l;)V

    .line 150
    .line 151
    .line 152
    :goto_3
    invoke-virtual {p1}, Lnc/j;->m()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-ne p1, v1, :cond_a

    .line 157
    .line 158
    return-object v1

    .line 159
    :cond_a
    :goto_4
    check-cast p1, Lpc/j;

    .line 160
    .line 161
    iget-object p1, p1, Lpc/j;->a:Ljava/lang/Object;

    .line 162
    .line 163
    return-object p1
.end method

.method public final iterator()Lpc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpc/i<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lpc/a$a;

    invoke-direct {v0, p0}, Lpc/a$a;-><init>(Lpc/a;)V

    return-object v0
.end method

.method public final k()Lkotlinx/coroutines/selects/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/b<",
            "Lpc/j<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lpc/a$i;

    invoke-direct {v0, p0}, Lpc/a$i;-><init>(Lpc/a;)V

    return-object v0
.end method

.method public final l()Lkotlinx/coroutines/selects/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/b<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lpc/t;

    invoke-direct {v0, p0}, Lpc/t;-><init>(Lpc/u;)V

    return-object v0
.end method

.method public final o()Lpc/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpc/v<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lpc/b;->o()Lpc/v;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lpc/k;

    :cond_0
    return-object v0
.end method

.method public t(Lpc/s;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/s<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lpc/a;->v()Z

    move-result v0

    iget-object v1, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    move-result-object v0

    instance-of v3, v0, Lpc/x;

    xor-int/2addr v3, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/internal/j;->u(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_2
    new-instance v0, Lpc/a$h;

    invoke-direct {v0, p1, p0}, Lpc/a$h;-><init>(Lkotlinx/coroutines/internal/j;Lpc/a;)V

    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    move-result-object v3

    instance-of v4, v3, Lpc/x;

    xor-int/2addr v4, v2

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p1, v1, v0}, Lkotlinx/coroutines/internal/j;->I(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j$b;)I

    move-result v3

    if-eq v3, v2, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :cond_5
    :goto_2
    return v2
.end method

.method public abstract v()Z
.end method

.method public abstract w()Z
.end method

.method public x()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lpc/b;->b:Lkotlinx/coroutines/internal/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lpc/k;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lpc/k;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-static {v0}, Lpc/b;->g(Lpc/k;)V

    .line 20
    .line 21
    .line 22
    move-object v2, v0

    .line 23
    :goto_1
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lpc/a;->w()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    :goto_2
    return v0
.end method

.method public y(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lpc/b;->f()Lpc/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Lkotlinx/coroutines/internal/i;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lpc/a;->z(Ljava/lang/Object;Lpc/k;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->F()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lkotlinx/coroutines/internal/p;

    .line 31
    .line 32
    iget-object v1, v1, Lkotlinx/coroutines/internal/p;->a:Lkotlinx/coroutines/internal/j;

    .line 33
    .line 34
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/j;->C()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    check-cast v1, Lpc/x;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lc5/v;->G(Ljava/lang/Object;Lkotlinx/coroutines/internal/j;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "Cannot happen"

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public z(Ljava/lang/Object;Lpc/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lpc/k<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    check-cast p1, Lpc/x;

    invoke-virtual {p1, p2}, Lpc/x;->L(Lpc/k;)V

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc/x;

    invoke-virtual {v0, p2}, Lpc/x;->L(Lpc/k;)V

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
