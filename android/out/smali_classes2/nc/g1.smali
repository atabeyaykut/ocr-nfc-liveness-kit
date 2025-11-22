.class public Lnc/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc/b1;
.implements Lnc/o;
.implements Lnc/o1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnc/g1$c;,
        Lnc/g1$b;,
        Lnc/g1$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lnc/g1;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lc5/e0;->l:Lnc/m0;

    goto :goto_0

    :cond_0
    sget-object p1, Lc5/e0;->k:Lnc/m0;

    :goto_0
    iput-object p1, p0, Lnc/g1;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lnc/g1;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public static Z(Lkotlinx/coroutines/internal/j;)Lnc/n;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lnc/n;

    if-eqz v0, :cond_2

    check-cast p0, Lnc/n;

    return-object p0

    :cond_2
    instance-of v0, p0, Lnc/l1;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lnc/g1$c;

    if-eqz v0, :cond_1

    check-cast p0, Lnc/g1$c;

    invoke-virtual {p0}, Lnc/g1$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnc/g1$c;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Completing"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lnc/v0;

    if-eqz v0, :cond_4

    check-cast p0, Lnc/v0;

    invoke-interface {p0}, Lnc/v0;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "Active"

    goto :goto_0

    :cond_3
    const-string p0, "New"

    goto :goto_0

    :cond_4
    instance-of p0, p0, Lnc/r;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    goto :goto_0

    :cond_5
    const-string p0, "Completed"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final B()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnc/g1$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnc/g1$c;

    invoke-virtual {v1}, Lnc/g1$c;->c()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lnc/r;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lnc/r;

    iget-object v1, v1, Lnc/r;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnc/v0;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lnc/c1;

    invoke-static {v0}, Lnc/g1;->f0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lnc/c1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnc/b1;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public F(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final G(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    sget-object v0, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnc/g1;->P()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lnc/v0;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    instance-of v1, v0, Lnc/g1$c;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Lnc/g1$c;

    .line 25
    .line 26
    invoke-virtual {v1}, Lnc/g1$c;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Lnc/r;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lnc/g1;->M(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {v1, v2, v4}, Lnc/r;-><init>(ZLjava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Lnc/g1;->g0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lc5/e0;->g:Lkotlinx/coroutines/internal/u;

    .line 47
    .line 48
    if-eq v0, v1, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    sget-object v0, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 52
    .line 53
    :goto_1
    sget-object v1, Lc5/e0;->f:Lkotlinx/coroutines/internal/u;

    .line 54
    .line 55
    if-ne v0, v1, :cond_3

    .line 56
    .line 57
    return v3

    .line 58
    :cond_3
    sget-object v1, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 59
    .line 60
    if-ne v0, v1, :cond_15

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    move-object v1, v0

    .line 64
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    instance-of v5, v4, Lnc/g1$c;

    .line 69
    .line 70
    if-eqz v5, :cond_b

    .line 71
    .line 72
    monitor-enter v4

    .line 73
    :try_start_0
    move-object v5, v4

    .line 74
    check-cast v5, Lnc/g1$c;

    .line 75
    .line 76
    invoke-virtual {v5}, Lnc/g1$c;->f()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    sget-object p1, Lc5/e0;->h:Lkotlinx/coroutines/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    monitor-exit v4

    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :cond_5
    :try_start_1
    move-object v5, v4

    .line 88
    check-cast v5, Lnc/g1$c;

    .line 89
    .line 90
    invoke-virtual {v5}, Lnc/g1$c;->d()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez p1, :cond_6

    .line 95
    .line 96
    if-nez v5, :cond_8

    .line 97
    .line 98
    :cond_6
    if-nez v1, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lnc/g1;->M(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :cond_7
    move-object p1, v4

    .line 105
    check-cast p1, Lnc/g1$c;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Lnc/g1$c;->a(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :cond_8
    move-object p1, v4

    .line 111
    check-cast p1, Lnc/g1$c;

    .line 112
    .line 113
    invoke-virtual {p1}, Lnc/g1$c;->c()Ljava/lang/Throwable;

    .line 114
    .line 115
    .line 116
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    xor-int/lit8 v1, v5, 0x1

    .line 118
    .line 119
    if-eqz v1, :cond_9

    .line 120
    .line 121
    move-object v0, p1

    .line 122
    :cond_9
    monitor-exit v4

    .line 123
    if-nez v0, :cond_a

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_a
    check-cast v4, Lnc/g1$c;

    .line 127
    .line 128
    iget-object p1, v4, Lnc/g1$c;->a:Lnc/l1;

    .line 129
    .line 130
    invoke-virtual {p0, p1, v0}, Lnc/g1;->a0(Lnc/l1;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    monitor-exit v4

    .line 136
    throw p1

    .line 137
    :cond_b
    instance-of v5, v4, Lnc/v0;

    .line 138
    .line 139
    if-eqz v5, :cond_14

    .line 140
    .line 141
    if-nez v1, :cond_c

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lnc/g1;->M(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :cond_c
    move-object v5, v4

    .line 148
    check-cast v5, Lnc/v0;

    .line 149
    .line 150
    invoke-interface {v5}, Lnc/v0;->b()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_11

    .line 155
    .line 156
    invoke-virtual {p0, v5}, Lnc/g1;->Q(Lnc/v0;)Lnc/l1;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    if-nez v6, :cond_d

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_d
    new-instance v7, Lnc/g1$c;

    .line 164
    .line 165
    invoke-direct {v7, v6, v1}, Lnc/g1$c;-><init>(Lnc/l1;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    :cond_e
    sget-object v4, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 169
    .line 170
    invoke-virtual {v4, p0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_f

    .line 175
    .line 176
    const/4 v4, 0x1

    .line 177
    goto :goto_3

    .line 178
    :cond_f
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    if-eq v4, v5, :cond_e

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    :goto_3
    if-nez v4, :cond_10

    .line 186
    .line 187
    :goto_4
    const/4 v4, 0x0

    .line 188
    goto :goto_5

    .line 189
    :cond_10
    invoke-virtual {p0, v6, v1}, Lnc/g1;->a0(Lnc/l1;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    const/4 v4, 0x1

    .line 193
    :goto_5
    if-eqz v4, :cond_4

    .line 194
    .line 195
    :goto_6
    sget-object p1, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_11
    new-instance v5, Lnc/r;

    .line 199
    .line 200
    invoke-direct {v5, v2, v1}, Lnc/r;-><init>(ZLjava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v4, v5}, Lnc/g1;->g0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    sget-object v6, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 208
    .line 209
    if-eq v5, v6, :cond_13

    .line 210
    .line 211
    sget-object v4, Lc5/e0;->g:Lkotlinx/coroutines/internal/u;

    .line 212
    .line 213
    if-ne v5, v4, :cond_12

    .line 214
    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :cond_12
    move-object v0, v5

    .line 218
    goto :goto_8

    .line 219
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 220
    .line 221
    const-string v0, "Cannot happen in "

    .line 222
    .line 223
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_14
    sget-object p1, Lc5/e0;->h:Lkotlinx/coroutines/internal/u;

    .line 236
    .line 237
    :goto_7
    move-object v0, p1

    .line 238
    :cond_15
    :goto_8
    sget-object p1, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 239
    .line 240
    if-ne v0, p1, :cond_16

    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_16
    sget-object p1, Lc5/e0;->f:Lkotlinx/coroutines/internal/u;

    .line 244
    .line 245
    if-ne v0, p1, :cond_17

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_17
    sget-object p1, Lc5/e0;->h:Lkotlinx/coroutines/internal/u;

    .line 249
    .line 250
    if-ne v0, p1, :cond_18

    .line 251
    .line 252
    goto :goto_a

    .line 253
    :cond_18
    invoke-virtual {p0, v0}, Lnc/g1;->F(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :goto_9
    const/4 v2, 0x1

    .line 257
    :goto_a
    return v2
.end method

.method public H(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnc/g1;->G(Ljava/lang/Object;)Z

    return-void
.end method

.method public final I(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnc/g1;->W()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 10
    .line 11
    iget-object v2, p0, Lnc/g1;->_parentHandle:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lnc/m;

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    sget-object v3, Lnc/m1;->a:Lnc/m1;

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {v2, p1}, Lnc/m;->o(Ljava/lang/Throwable;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    :cond_3
    :goto_0
    return v1

    .line 33
    :cond_4
    :goto_1
    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public K(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lnc/g1;->G(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnc/g1;->O()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final L(Lnc/v0;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lnc/g1;->_parentHandle:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnc/m;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Lnc/k0;->dispose()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lnc/m1;->a:Lnc/m1;

    .line 12
    .line 13
    iput-object v0, p0, Lnc/g1;->_parentHandle:Ljava/lang/Object;

    .line 14
    .line 15
    :goto_0
    instance-of v0, p2, Lnc/r;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p2, Lnc/r;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object p2, v1

    .line 24
    :goto_1
    if-nez p2, :cond_2

    .line 25
    .line 26
    move-object p2, v1

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object p2, p2, Lnc/r;->a:Ljava/lang/Throwable;

    .line 29
    .line 30
    :goto_2
    instance-of v0, p1, Lnc/f1;

    .line 31
    .line 32
    const-string v2, " for "

    .line 33
    .line 34
    const-string v3, "Exception in completion handler "

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    :try_start_0
    move-object v0, p1

    .line 39
    check-cast v0, Lnc/f1;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lnc/t;->J(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :catchall_0
    move-exception p2

    .line 47
    new-instance v0, Lnc/u;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, p1, p2}, Lnc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lnc/g1;->U(Lnc/u;)V

    .line 71
    .line 72
    .line 73
    goto :goto_6

    .line 74
    :cond_3
    invoke-interface {p1}, Lnc/v0;->p()Lnc/l1;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    goto :goto_6

    .line 81
    :cond_4
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lkotlinx/coroutines/internal/j;

    .line 86
    .line 87
    move-object v4, v1

    .line 88
    :goto_3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_7

    .line 93
    .line 94
    instance-of v5, v0, Lnc/f1;

    .line 95
    .line 96
    if-eqz v5, :cond_6

    .line 97
    .line 98
    move-object v5, v0

    .line 99
    check-cast v5, Lnc/f1;

    .line 100
    .line 101
    :try_start_1
    invoke-virtual {v5, p2}, Lnc/t;->J(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :catchall_1
    move-exception v6

    .line 106
    if-nez v4, :cond_5

    .line 107
    .line 108
    move-object v7, v1

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    invoke-static {v4, v6}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    move-object v7, v4

    .line 114
    :goto_4
    if-nez v7, :cond_6

    .line 115
    .line 116
    new-instance v4, Lnc/u;

    .line 117
    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-direct {v4, v5, v6}, Lnc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_3

    .line 144
    :cond_7
    if-nez v4, :cond_8

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_8
    invoke-virtual {p0, v4}, Lnc/g1;->U(Lnc/u;)V

    .line 148
    .line 149
    .line 150
    :goto_6
    return-void
.end method

.method public final M(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    :goto_0
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Throwable;

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    new-instance p1, Lnc/c1;

    .line 14
    .line 15
    invoke-virtual {p0}, Lnc/g1;->J()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v0, v1, p0}, Lnc/c1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnc/b1;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    if-eqz p1, :cond_3

    .line 25
    .line 26
    check-cast p1, Lnc/o1;

    .line 27
    .line 28
    invoke-interface {p1}, Lnc/o1;->B()Ljava/util/concurrent/CancellationException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_2
    :goto_1
    return-object p1

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 34
    .line 35
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final N(Lnc/g1$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lnc/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Lnc/r;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    move-object v0, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, v0, Lnc/r;->a:Ljava/lang/Throwable;

    .line 16
    .line 17
    :goto_1
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lnc/g1$c;->d()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lnc/g1$c;->g(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lnc/g1$c;->d()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_6

    .line 38
    .line 39
    new-instance v3, Lnc/c1;

    .line 40
    .line 41
    invoke-virtual {p0}, Lnc/g1;->J()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-direct {v3, v6, v1, p0}, Lnc/c1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnc/b1;)V

    .line 46
    .line 47
    .line 48
    move-object v1, v3

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    move-object v7, v6

    .line 65
    check-cast v7, Ljava/lang/Throwable;

    .line 66
    .line 67
    instance-of v7, v7, Ljava/util/concurrent/CancellationException;

    .line 68
    .line 69
    xor-int/2addr v7, v4

    .line 70
    if-eqz v7, :cond_3

    .line 71
    .line 72
    move-object v1, v6

    .line 73
    :cond_4
    check-cast v1, Ljava/lang/Throwable;

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/Throwable;

    .line 83
    .line 84
    :cond_6
    :goto_2
    if-eqz v1, :cond_9

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-gt v3, v4, :cond_7

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    new-instance v6, Ljava/util/IdentityHashMap;

    .line 98
    .line 99
    invoke-direct {v6, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_9

    .line 115
    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Ljava/lang/Throwable;

    .line 121
    .line 122
    if-eq v6, v1, :cond_8

    .line 123
    .line 124
    if-eq v6, v1, :cond_8

    .line 125
    .line 126
    instance-of v7, v6, Ljava/util/concurrent/CancellationException;

    .line 127
    .line 128
    if-nez v7, :cond_8

    .line 129
    .line 130
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_8

    .line 135
    .line 136
    invoke-static {v1, v6}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_9
    :goto_4
    monitor-exit p1

    .line 141
    if-nez v1, :cond_a

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_a
    if-ne v1, v0, :cond_b

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_b
    new-instance p2, Lnc/r;

    .line 148
    .line 149
    invoke-direct {p2, v5, v1}, Lnc/r;-><init>(ZLjava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :goto_5
    if-eqz v1, :cond_f

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Lnc/g1;->I(Ljava/lang/Throwable;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_d

    .line 159
    .line 160
    invoke-virtual {p0, v1}, Lnc/g1;->T(Ljava/lang/Throwable;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_c

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_c
    const/4 v0, 0x0

    .line 168
    goto :goto_7

    .line 169
    :cond_d
    :goto_6
    const/4 v0, 0x1

    .line 170
    :goto_7
    if-eqz v0, :cond_f

    .line 171
    .line 172
    if-eqz p2, :cond_e

    .line 173
    .line 174
    move-object v0, p2

    .line 175
    check-cast v0, Lnc/r;

    .line 176
    .line 177
    sget-object v1, Lnc/r;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 178
    .line 179
    invoke-virtual {v1, v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 180
    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 184
    .line 185
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_f
    :goto_8
    invoke-virtual {p0, p2}, Lnc/g1;->b0(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    sget-object v0, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 195
    .line 196
    instance-of v1, p2, Lnc/v0;

    .line 197
    .line 198
    if-eqz v1, :cond_10

    .line 199
    .line 200
    new-instance v1, Lnc/w0;

    .line 201
    .line 202
    move-object v2, p2

    .line 203
    check-cast v2, Lnc/v0;

    .line 204
    .line 205
    invoke-direct {v1, v2}, Lnc/w0;-><init>(Lnc/v0;)V

    .line 206
    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_10
    move-object v1, p2

    .line 210
    :cond_11
    :goto_9
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_12

    .line 215
    .line 216
    goto :goto_a

    .line 217
    :cond_12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    if-eq v2, p1, :cond_11

    .line 222
    .line 223
    :goto_a
    invoke-virtual {p0, p1, p2}, Lnc/g1;->L(Lnc/v0;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    return-object p2

    .line 227
    :catchall_0
    move-exception p2

    .line 228
    monitor-exit p1

    .line 229
    throw p2
.end method

.method public O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Q(Lnc/v0;)Lnc/l1;
    .locals 2

    invoke-interface {p1}, Lnc/v0;->p()Lnc/l1;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lnc/m0;

    if-eqz v0, :cond_0

    new-instance v0, Lnc/l1;

    invoke-direct {v0}, Lnc/l1;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lnc/f1;

    if-eqz v0, :cond_1

    check-cast p1, Lnc/f1;

    invoke-virtual {p0, p1}, Lnc/g1;->d0(Lnc/f1;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State should have list: "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final R()Lnc/m;
    .locals 1

    iget-object v0, p0, Lnc/g1;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lnc/m;

    return-object v0
.end method

.method public final S()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Lnc/g1;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/o;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/o;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public T(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public U(Lnc/u;)V
    .locals 0

    throw p1
.end method

.method public final V(Lnc/b1;)V
    .locals 2

    .line 1
    sget-object v0, Lnc/m1;->a:Lnc/m1;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iput-object v0, p0, Lnc/g1;->_parentHandle:Ljava/lang/Object;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Lnc/b1;->start()Z

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0}, Lnc/b1;->i(Lnc/g1;)Lnc/m;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lnc/g1;->_parentHandle:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v1, v1, Lnc/v0;

    .line 22
    .line 23
    xor-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Lnc/k0;->dispose()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lnc/g1;->_parentHandle:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public W()Z
    .locals 0

    instance-of p0, p0, Lnc/d;

    return p0
.end method

.method public final X(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lnc/g1;->g0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Job "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " is already complete or completing, but is being completed with "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    instance-of v2, p1, Lnc/r;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    check-cast p1, Lnc/r;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move-object p1, v3

    .line 46
    :goto_1
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget-object v3, p1, Lnc/r;->a:Ljava/lang/Throwable;

    .line 50
    .line 51
    :goto_2
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    sget-object v1, Lc5/e0;->g:Lkotlinx/coroutines/internal/u;

    .line 56
    .line 57
    if-ne v0, v1, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lnc/c1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lnc/g1;->J()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1, p0}, Lnc/c1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnc/b1;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lnc/g1;->H(Ljava/util/concurrent/CancellationException;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final a0(Lnc/l1;Ljava/lang/Throwable;)V
    .locals 7

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/j;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v0, Lnc/d1;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lnc/f1;

    :try_start_0
    invoke-virtual {v3, p2}, Lnc/t;->J(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-static {v2, v4}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_1
    if-nez v5, :cond_1

    new-instance v2, Lnc/u;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception in completion handler "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lnc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Lnc/g1;->U(Lnc/u;)V

    :goto_3
    invoke-virtual {p0, p2}, Lnc/g1;->I(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public b()Z
    .locals 2

    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnc/v0;

    if-eqz v1, :cond_0

    check-cast v0, Lnc/v0;

    invoke-interface {v0}, Lnc/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c0()V
    .locals 0

    return-void
.end method

.method public final d0(Lnc/f1;)V
    .locals 3

    .line 1
    new-instance v0, Lnc/l1;

    .line 2
    .line 3
    invoke-direct {v0}, Lnc/l1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lkotlinx/coroutines/internal/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->z()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eq v2, p1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eq v2, p1, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/j;->y(Lkotlinx/coroutines/internal/j;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->A()Lkotlinx/coroutines/internal/j;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_3
    sget-object v0, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    .line 52
    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eq v0, p1, :cond_3

    .line 64
    .line 65
    :goto_2
    return-void
.end method

.method public final e(Lnc/g1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnc/g1;->G(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e0(Ljava/lang/Object;)I
    .locals 6

    .line 1
    instance-of v0, p1, Lnc/m0;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    sget-object v2, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lnc/m0;

    .line 12
    .line 13
    iget-boolean v0, v0, Lnc/m0;->a:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    sget-object v0, Lc5/e0;->l:Lnc/m0;

    .line 19
    .line 20
    :cond_1
    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eq v5, p1, :cond_1

    .line 33
    .line 34
    :goto_0
    if-nez v4, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    invoke-virtual {p0}, Lnc/g1;->c0()V

    .line 38
    .line 39
    .line 40
    return v3

    .line 41
    :cond_4
    instance-of v0, p1, Lnc/u0;

    .line 42
    .line 43
    if-eqz v0, :cond_8

    .line 44
    .line 45
    move-object v0, p1

    .line 46
    check-cast v0, Lnc/u0;

    .line 47
    .line 48
    iget-object v0, v0, Lnc/u0;->a:Lnc/l1;

    .line 49
    .line 50
    :cond_5
    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_6

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_6
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-eq v5, p1, :cond_5

    .line 63
    .line 64
    :goto_1
    if-nez v4, :cond_7

    .line 65
    .line 66
    return v1

    .line 67
    :cond_7
    invoke-virtual {p0}, Lnc/g1;->c0()V

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_8
    return v4
.end method

.method public final f(ZZLx9/l;)Lnc/k0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lx9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;)",
            "Lnc/k0;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v1, p3, Lnc/d1;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v1, p3

    .line 9
    check-cast v1, Lnc/d1;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    :goto_0
    if-nez v1, :cond_4

    .line 14
    .line 15
    new-instance v1, Lnc/z0;

    .line 16
    .line 17
    invoke-direct {v1, p3}, Lnc/z0;-><init>(Lx9/l;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    instance-of v1, p3, Lnc/f1;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move-object v1, p3

    .line 26
    check-cast v1, Lnc/f1;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move-object v1, v0

    .line 30
    :goto_1
    if-nez v1, :cond_3

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    :cond_3
    if-nez v1, :cond_4

    .line 34
    .line 35
    new-instance v1, Lnc/a1;

    .line 36
    .line 37
    invoke-direct {v1, p3}, Lnc/a1;-><init>(Lx9/l;)V

    .line 38
    .line 39
    .line 40
    :cond_4
    :goto_2
    iput-object p0, v1, Lnc/f1;->d:Lnc/g1;

    .line 41
    .line 42
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    instance-of v3, v2, Lnc/m0;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x1

    .line 50
    if-eqz v3, :cond_c

    .line 51
    .line 52
    move-object v3, v2

    .line 53
    check-cast v3, Lnc/m0;

    .line 54
    .line 55
    iget-boolean v6, v3, Lnc/m0;->a:Z

    .line 56
    .line 57
    if-eqz v6, :cond_8

    .line 58
    .line 59
    sget-object v6, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 60
    .line 61
    :cond_6
    invoke-virtual {v6, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_7

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    goto :goto_4

    .line 69
    :cond_7
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eq v3, v2, :cond_6

    .line 74
    .line 75
    :goto_4
    if-eqz v4, :cond_5

    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_8
    new-instance v2, Lnc/l1;

    .line 79
    .line 80
    invoke-direct {v2}, Lnc/l1;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-boolean v4, v3, Lnc/m0;->a:Z

    .line 84
    .line 85
    if-eqz v4, :cond_9

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_9
    new-instance v4, Lnc/u0;

    .line 89
    .line 90
    invoke-direct {v4, v2}, Lnc/u0;-><init>(Lnc/l1;)V

    .line 91
    .line 92
    .line 93
    move-object v2, v4

    .line 94
    :cond_a
    :goto_5
    sget-object v4, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 95
    .line 96
    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_b

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_b
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-eq v4, v3, :cond_a

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_c
    instance-of v3, v2, Lnc/v0;

    .line 111
    .line 112
    if-eqz v3, :cond_1a

    .line 113
    .line 114
    move-object v3, v2

    .line 115
    check-cast v3, Lnc/v0;

    .line 116
    .line 117
    invoke-interface {v3}, Lnc/v0;->p()Lnc/l1;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-nez v3, :cond_e

    .line 122
    .line 123
    if-eqz v2, :cond_d

    .line 124
    .line 125
    check-cast v2, Lnc/f1;

    .line 126
    .line 127
    invoke-virtual {p0, v2}, Lnc/g1;->d0(Lnc/f1;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    .line 132
    .line 133
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 134
    .line 135
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_e
    sget-object v6, Lnc/m1;->a:Lnc/m1;

    .line 140
    .line 141
    const/4 v7, 0x2

    .line 142
    if-eqz p1, :cond_15

    .line 143
    .line 144
    instance-of v8, v2, Lnc/g1$c;

    .line 145
    .line 146
    if-eqz v8, :cond_15

    .line 147
    .line 148
    monitor-enter v2

    .line 149
    :try_start_0
    move-object v8, v2

    .line 150
    check-cast v8, Lnc/g1$c;

    .line 151
    .line 152
    invoke-virtual {v8}, Lnc/g1$c;->c()Ljava/lang/Throwable;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    if-eqz v8, :cond_f

    .line 157
    .line 158
    instance-of v9, p3, Lnc/n;

    .line 159
    .line 160
    if-eqz v9, :cond_14

    .line 161
    .line 162
    move-object v9, v2

    .line 163
    check-cast v9, Lnc/g1$c;

    .line 164
    .line 165
    invoke-virtual {v9}, Lnc/g1$c;->e()Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-nez v9, :cond_14

    .line 170
    .line 171
    :cond_f
    new-instance v6, Lnc/h1;

    .line 172
    .line 173
    invoke-direct {v6, v1, p0, v2}, Lnc/h1;-><init>(Lkotlinx/coroutines/internal/j;Lnc/g1;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :goto_6
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v9, v1, v3, v6}, Lkotlinx/coroutines/internal/j;->I(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j$b;)I

    .line 181
    .line 182
    .line 183
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    if-eq v9, v5, :cond_11

    .line 185
    .line 186
    if-eq v9, v7, :cond_10

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_10
    const/4 v6, 0x0

    .line 190
    goto :goto_7

    .line 191
    :cond_11
    const/4 v6, 0x1

    .line 192
    :goto_7
    if-nez v6, :cond_12

    .line 193
    .line 194
    monitor-exit v2

    .line 195
    goto/16 :goto_3

    .line 196
    .line 197
    :cond_12
    if-nez v8, :cond_13

    .line 198
    .line 199
    monitor-exit v2

    .line 200
    return-object v1

    .line 201
    :cond_13
    move-object v6, v1

    .line 202
    :cond_14
    :try_start_1
    sget-object v9, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .line 204
    monitor-exit v2

    .line 205
    goto :goto_8

    .line 206
    :catchall_0
    move-exception p1

    .line 207
    monitor-exit v2

    .line 208
    throw p1

    .line 209
    :cond_15
    move-object v8, v0

    .line 210
    :goto_8
    if-eqz v8, :cond_17

    .line 211
    .line 212
    if-eqz p2, :cond_16

    .line 213
    .line 214
    invoke-interface {p3, v8}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    :cond_16
    return-object v6

    .line 218
    :cond_17
    new-instance v6, Lnc/h1;

    .line 219
    .line 220
    invoke-direct {v6, v1, p0, v2}, Lnc/h1;-><init>(Lkotlinx/coroutines/internal/j;Lnc/g1;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :goto_9
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/j;->B()Lkotlinx/coroutines/internal/j;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2, v1, v3, v6}, Lkotlinx/coroutines/internal/j;->I(Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j;Lkotlinx/coroutines/internal/j$b;)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eq v2, v5, :cond_18

    .line 232
    .line 233
    if-eq v2, v7, :cond_19

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_18
    const/4 v4, 0x1

    .line 237
    :cond_19
    if-eqz v4, :cond_5

    .line 238
    .line 239
    return-object v1

    .line 240
    :cond_1a
    if-eqz p2, :cond_1d

    .line 241
    .line 242
    instance-of p1, v2, Lnc/r;

    .line 243
    .line 244
    if-eqz p1, :cond_1b

    .line 245
    .line 246
    check-cast v2, Lnc/r;

    .line 247
    .line 248
    goto :goto_a

    .line 249
    :cond_1b
    move-object v2, v0

    .line 250
    :goto_a
    if-nez v2, :cond_1c

    .line 251
    .line 252
    goto :goto_b

    .line 253
    :cond_1c
    iget-object v0, v2, Lnc/r;->a:Ljava/lang/Throwable;

    .line 254
    .line 255
    :goto_b
    invoke-interface {p3, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    :cond_1d
    sget-object p1, Lnc/m1;->a:Lnc/m1;

    .line 259
    .line 260
    return-object p1
.end method

.method public final fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lx9/p<",
            "-TR;-",
            "Lp9/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p1, p0}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final g0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lnc/v0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    instance-of v0, p1, Lnc/m0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    instance-of v0, p1, Lnc/f1;

    .line 15
    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    :cond_1
    instance-of v0, p1, Lnc/n;

    .line 19
    .line 20
    if-nez v0, :cond_7

    .line 21
    .line 22
    instance-of v0, p2, Lnc/r;

    .line 23
    .line 24
    if-nez v0, :cond_7

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    check-cast v0, Lnc/v0;

    .line 28
    .line 29
    instance-of p1, p2, Lnc/v0;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    new-instance p1, Lnc/w0;

    .line 34
    .line 35
    move-object v3, p2

    .line 36
    check-cast v3, Lnc/v0;

    .line 37
    .line 38
    invoke-direct {p1, v3}, Lnc/w0;-><init>(Lnc/v0;)V

    .line 39
    .line 40
    .line 41
    move-object v3, p1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v3, p2

    .line 44
    :cond_3
    :goto_0
    sget-object p1, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 45
    .line 46
    invoke-virtual {p1, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eq p1, v0, :cond_3

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    :goto_1
    if-nez p1, :cond_5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    invoke-virtual {p0, p2}, Lnc/g1;->b0(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, p2}, Lnc/g1;->L(Lnc/v0;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    :goto_2
    if-eqz v1, :cond_6

    .line 72
    .line 73
    return-object p2

    .line 74
    :cond_6
    sget-object p1, Lc5/e0;->g:Lkotlinx/coroutines/internal/u;

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_7
    check-cast p1, Lnc/v0;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lnc/g1;->Q(Lnc/v0;)Lnc/l1;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    sget-object p1, Lc5/e0;->g:Lkotlinx/coroutines/internal/u;

    .line 86
    .line 87
    goto/16 :goto_c

    .line 88
    .line 89
    :cond_8
    instance-of v3, p1, Lnc/g1$c;

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    if-eqz v3, :cond_9

    .line 93
    .line 94
    move-object v3, p1

    .line 95
    check-cast v3, Lnc/g1$c;

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_9
    move-object v3, v4

    .line 99
    :goto_3
    if-nez v3, :cond_a

    .line 100
    .line 101
    new-instance v3, Lnc/g1$c;

    .line 102
    .line 103
    invoke-direct {v3, v0, v4}, Lnc/g1$c;-><init>(Lnc/l1;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_a
    monitor-enter v3

    .line 107
    :try_start_0
    invoke-virtual {v3}, Lnc/g1$c;->e()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_b

    .line 112
    .line 113
    sget-object p1, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_b
    invoke-virtual {v3}, Lnc/g1$c;->h()V

    .line 117
    .line 118
    .line 119
    if-eq v3, p1, :cond_e

    .line 120
    .line 121
    sget-object v5, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 122
    .line 123
    :cond_c
    invoke-virtual {v5, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_d

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    goto :goto_4

    .line 131
    :cond_d
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-eq v6, p1, :cond_c

    .line 136
    .line 137
    :goto_4
    if-nez v1, :cond_e

    .line 138
    .line 139
    sget-object p1, Lc5/e0;->g:Lkotlinx/coroutines/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    :goto_5
    monitor-exit v3

    .line 142
    goto :goto_c

    .line 143
    :cond_e
    :try_start_1
    invoke-virtual {v3}, Lnc/g1$c;->d()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    instance-of v5, p2, Lnc/r;

    .line 148
    .line 149
    if-eqz v5, :cond_f

    .line 150
    .line 151
    move-object v5, p2

    .line 152
    check-cast v5, Lnc/r;

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_f
    move-object v5, v4

    .line 156
    :goto_6
    if-nez v5, :cond_10

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_10
    iget-object v5, v5, Lnc/r;->a:Ljava/lang/Throwable;

    .line 160
    .line 161
    invoke-virtual {v3, v5}, Lnc/g1$c;->a(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :goto_7
    invoke-virtual {v3}, Lnc/g1$c;->c()Ljava/lang/Throwable;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    xor-int/2addr v1, v2

    .line 169
    if-eqz v1, :cond_11

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_11
    move-object v5, v4

    .line 173
    :goto_8
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    monitor-exit v3

    .line 176
    if-nez v5, :cond_12

    .line 177
    .line 178
    goto :goto_9

    .line 179
    :cond_12
    invoke-virtual {p0, v0, v5}, Lnc/g1;->a0(Lnc/l1;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    :goto_9
    instance-of v0, p1, Lnc/n;

    .line 183
    .line 184
    if-eqz v0, :cond_13

    .line 185
    .line 186
    move-object v0, p1

    .line 187
    check-cast v0, Lnc/n;

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_13
    move-object v0, v4

    .line 191
    :goto_a
    if-nez v0, :cond_15

    .line 192
    .line 193
    invoke-interface {p1}, Lnc/v0;->p()Lnc/l1;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    if-nez p1, :cond_14

    .line 198
    .line 199
    goto :goto_b

    .line 200
    :cond_14
    invoke-static {p1}, Lnc/g1;->Z(Lkotlinx/coroutines/internal/j;)Lnc/n;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    goto :goto_b

    .line 205
    :cond_15
    move-object v4, v0

    .line 206
    :goto_b
    if-eqz v4, :cond_16

    .line 207
    .line 208
    invoke-virtual {p0, v3, v4, p2}, Lnc/g1;->h0(Lnc/g1$c;Lnc/n;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_16

    .line 213
    .line 214
    sget-object p1, Lc5/e0;->f:Lkotlinx/coroutines/internal/u;

    .line 215
    .line 216
    goto :goto_c

    .line 217
    :cond_16
    invoke-virtual {p0, v3, p2}, Lnc/g1;->N(Lnc/g1$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    :goto_c
    return-object p1

    .line 222
    :catchall_0
    move-exception p1

    .line 223
    monitor-exit v3

    .line 224
    throw p1
.end method

.method public final get(Lp9/f$c;)Lp9/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lp9/f$b;",
            ">(",
            "Lp9/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lp9/f$b$a;->a(Lp9/f$b;Lp9/f$c;)Lp9/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lp9/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp9/f$c<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lnc/b1$b;->a:Lnc/b1$b;

    return-object v0
.end method

.method public final h0(Lnc/g1$c;Lnc/n;Ljava/lang/Object;)Z
    .locals 4

    :cond_0
    new-instance v0, Lnc/g1$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lnc/g1$b;-><init>(Lnc/g1;Lnc/g1$c;Lnc/n;Ljava/lang/Object;)V

    iget-object v1, p2, Lnc/n;->e:Lnc/o;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lnc/b1$a;->a(Lnc/b1;ZLnc/f1;I)Lnc/k0;

    move-result-object v0

    sget-object v1, Lnc/m1;->a:Lnc/m1;

    if-eq v0, v1, :cond_1

    return v3

    :cond_1
    invoke-static {p2}, Lnc/g1;->Z(Lkotlinx/coroutines/internal/j;)Lnc/n;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method public final i(Lnc/g1;)Lnc/m;
    .locals 2

    new-instance v0, Lnc/n;

    invoke-direct {v0, p1}, Lnc/n;-><init>(Lnc/g1;)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v1, v0, p1}, Lnc/b1$a;->a(Lnc/b1;ZLnc/f1;I)Lnc/k0;

    move-result-object p1

    check-cast p1, Lnc/m;

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 2

    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnc/r;

    if-nez v1, :cond_1

    instance-of v1, v0, Lnc/g1$c;

    if-eqz v1, :cond_0

    check-cast v0, Lnc/g1$c;

    invoke-virtual {v0}, Lnc/g1$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final minusKey(Lp9/f$c;)Lp9/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f$c<",
            "*>;)",
            "Lp9/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Lp9/f$b$a;->b(Lp9/f$b;Lp9/f$c;)Lp9/f;

    move-result-object p1

    return-object p1
.end method

.method public final n()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lnc/g1$c;

    .line 6
    .line 7
    const-string v2, "Job is still new or active: "

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    check-cast v0, Lnc/g1$c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lnc/g1$c;->c()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v4, " is cancelling"

    .line 30
    .line 31
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    move-object v3, v0

    .line 40
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 41
    .line 42
    :cond_1
    if-nez v3, :cond_3

    .line 43
    .line 44
    new-instance v3, Lnc/c1;

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lnc/g1;->J()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_2
    invoke-direct {v3, v1, v0, p0}, Lnc/c1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnc/b1;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_5
    instance-of v1, v0, Lnc/v0;

    .line 73
    .line 74
    if-nez v1, :cond_9

    .line 75
    .line 76
    instance-of v1, v0, Lnc/r;

    .line 77
    .line 78
    if-eqz v1, :cond_7

    .line 79
    .line 80
    check-cast v0, Lnc/r;

    .line 81
    .line 82
    iget-object v0, v0, Lnc/r;->a:Ljava/lang/Throwable;

    .line 83
    .line 84
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 85
    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    move-object v3, v0

    .line 89
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 90
    .line 91
    :cond_6
    if-nez v3, :cond_8

    .line 92
    .line 93
    new-instance v1, Lnc/c1;

    .line 94
    .line 95
    invoke-virtual {p0}, Lnc/g1;->J()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-direct {v1, v2, v0, p0}, Lnc/c1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnc/b1;)V

    .line 100
    .line 101
    .line 102
    move-object v3, v1

    .line 103
    goto :goto_1

    .line 104
    :cond_7
    new-instance v0, Lnc/c1;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, " has completed normally"

    .line 115
    .line 116
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1, v3, p0}, Lnc/c1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnc/b1;)V

    .line 121
    .line 122
    .line 123
    move-object v3, v0

    .line 124
    :cond_8
    :goto_1
    return-object v3

    .line 125
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0
.end method

.method public final o(Lx9/l;)Lnc/k0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;)",
            "Lnc/k0;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lnc/g1;->f(ZZLx9/l;)Lnc/k0;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lp9/f;)Lp9/f;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lp9/f$a;->a(Lp9/f;Lp9/f;)Lp9/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final r(Lqc/h$a$a$b;)Ljava/lang/Object;
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lnc/v0;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lnc/g1;->e0(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :goto_0
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-interface {p1}, Lp9/d;->getContext()Lp9/f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lx5/a;->h(Lp9/f;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance v0, Lnc/j;

    .line 32
    .line 33
    invoke-static {p1}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, v2, p1}, Lnc/j;-><init>(ILp9/d;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lnc/j;->n()V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lnc/r1;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lnc/r1;-><init>(Lnc/j;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lnc/g1;->o(Lx9/l;)Lnc/k0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v1, Lnc/l0;

    .line 53
    .line 54
    invoke-direct {v1, p1}, Lnc/l0;-><init>(Lnc/k0;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lnc/j;->D(Lx9/l;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lnc/j;->m()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 65
    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 70
    .line 71
    :goto_1
    if-ne p1, v0, :cond_4

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_4
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 75
    .line 76
    return-object p1
.end method

.method public final start()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnc/g1;->e0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lnc/g1;->Y()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x7b

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lnc/g1;->S()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lnc/g1;->f0(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v2, 0x7d

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x40

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lnc/c0;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
