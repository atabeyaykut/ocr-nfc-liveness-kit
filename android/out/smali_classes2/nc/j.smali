.class public Lnc/j;
.super Lnc/i0;
.source "SourceFile"

# interfaces
.implements Lnc/i;
.implements Lr9/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnc/i0<",
        "TT;>;",
        "Lnc/i<",
        "TT;>;",
        "Lr9/d;"
    }
.end annotation


# static fields
.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field public final d:Lp9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lp9/f;

.field public f:Lnc/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "_decision"

    const-class v1, Lnc/j;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lnc/j;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lnc/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILp9/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lnc/i0;-><init>(I)V

    iput-object p2, p0, Lnc/j;->d:Lp9/d;

    invoke-interface {p2}, Lp9/d;->getContext()Lp9/f;

    move-result-object p1

    iput-object p1, p0, Lnc/j;->e:Lp9/f;

    const/4 p1, 0x0

    iput p1, p0, Lnc/j;->_decision:I

    sget-object p1, Lnc/b;->a:Lnc/b;

    iput-object p1, p0, Lnc/j;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static r(Lx9/l;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(Lnc/n1;Ljava/lang/Object;ILx9/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lnc/r;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    if-nez p3, :cond_5

    instance-of p2, p0, Lnc/g;

    if-eqz p2, :cond_4

    instance-of p2, p0, Lnc/c;

    if-eqz p2, :cond_5

    :cond_4
    if-eqz p4, :cond_7

    :cond_5
    new-instance p2, Lnc/q;

    instance-of v0, p0, Lnc/g;

    if-eqz v0, :cond_6

    check-cast p0, Lnc/g;

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    move-object v2, p0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lnc/q;-><init>(Ljava/lang/Object;Lnc/g;Lx9/l;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    move-object p1, p2

    :cond_7
    :goto_2
    return-object p1
.end method


# virtual methods
.method public final D(Lx9/l;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lnc/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnc/g;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lnc/y0;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lnc/y0;-><init>(Lx9/l;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    iget-object v8, p0, Lnc/j;->_state:Ljava/lang/Object;

    .line 15
    .line 16
    instance-of v1, v8, Lnc/b;

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    sget-object v1, Lnc/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 23
    .line 24
    :cond_2
    invoke-virtual {v1, p0, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eq v2, v8, :cond_2

    .line 37
    .line 38
    :goto_1
    if-eqz v9, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_4
    instance-of v1, v8, Lnc/g;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-nez v1, :cond_14

    .line 45
    .line 46
    instance-of v1, v8, Lnc/r;

    .line 47
    .line 48
    const-string v3, "Exception in invokeOnCancellation handler for "

    .line 49
    .line 50
    if-eqz v1, :cond_9

    .line 51
    .line 52
    move-object v0, v8

    .line 53
    check-cast v0, Lnc/r;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object v4, Lnc/r;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 59
    .line 60
    invoke-virtual {v4, v0, v9, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_8

    .line 65
    .line 66
    instance-of v4, v8, Lnc/k;

    .line 67
    .line 68
    if-eqz v4, :cond_7

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    move-object v0, v2

    .line 74
    :goto_2
    if-nez v0, :cond_6

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_6
    iget-object v2, v0, Lnc/r;->a:Ljava/lang/Throwable;

    .line 78
    .line 79
    :goto_3
    :try_start_0
    invoke-interface {p1, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    new-instance v0, Lnc/u;

    .line 85
    .line 86
    invoke-static {p0, v3}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1, p1}, Lnc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lnc/j;->e:Lp9/f;

    .line 94
    .line 95
    invoke-static {p1, v0}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    :goto_4
    return-void

    .line 99
    :cond_8
    invoke-static {p1, v8}, Lnc/j;->r(Lx9/l;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    throw v2

    .line 103
    :cond_9
    instance-of v1, v8, Lnc/q;

    .line 104
    .line 105
    if-eqz v1, :cond_10

    .line 106
    .line 107
    move-object v1, v8

    .line 108
    check-cast v1, Lnc/q;

    .line 109
    .line 110
    iget-object v4, v1, Lnc/q;->b:Lnc/g;

    .line 111
    .line 112
    if-nez v4, :cond_f

    .line 113
    .line 114
    instance-of v4, v0, Lnc/c;

    .line 115
    .line 116
    if-eqz v4, :cond_a

    .line 117
    .line 118
    return-void

    .line 119
    :cond_a
    iget-object v4, v1, Lnc/q;->e:Ljava/lang/Throwable;

    .line 120
    .line 121
    if-eqz v4, :cond_b

    .line 122
    .line 123
    const/4 v5, 0x1

    .line 124
    goto :goto_5

    .line 125
    :cond_b
    const/4 v5, 0x0

    .line 126
    :goto_5
    if-eqz v5, :cond_c

    .line 127
    .line 128
    :try_start_1
    invoke-interface {p1, v4}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    .line 131
    goto :goto_6

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    new-instance v0, Lnc/u;

    .line 134
    .line 135
    invoke-static {p0, v3}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v1, p1}, Lnc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lnc/j;->e:Lp9/f;

    .line 143
    .line 144
    invoke-static {p1, v0}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :goto_6
    return-void

    .line 148
    :cond_c
    const/16 v3, 0x1d

    .line 149
    .line 150
    invoke-static {v1, v0, v2, v3}, Lnc/q;->a(Lnc/q;Lnc/g;Ljava/util/concurrent/CancellationException;I)Lnc/q;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget-object v3, Lnc/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 155
    .line 156
    :cond_d
    invoke-virtual {v3, p0, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_e

    .line 161
    .line 162
    const/4 v9, 0x1

    .line 163
    goto :goto_7

    .line 164
    :cond_e
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-eq v2, v8, :cond_d

    .line 169
    .line 170
    :goto_7
    if-eqz v9, :cond_1

    .line 171
    .line 172
    return-void

    .line 173
    :cond_f
    invoke-static {p1, v8}, Lnc/j;->r(Lx9/l;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    throw v2

    .line 177
    :cond_10
    instance-of v1, v0, Lnc/c;

    .line 178
    .line 179
    if-eqz v1, :cond_11

    .line 180
    .line 181
    return-void

    .line 182
    :cond_11
    new-instance v11, Lnc/q;

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    const/4 v6, 0x0

    .line 187
    const/16 v7, 0x1c

    .line 188
    .line 189
    move-object v1, v11

    .line 190
    move-object v2, v8

    .line 191
    move-object v3, v0

    .line 192
    invoke-direct/range {v1 .. v7}, Lnc/q;-><init>(Ljava/lang/Object;Lnc/g;Lx9/l;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    .line 193
    .line 194
    .line 195
    sget-object v1, Lnc/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 196
    .line 197
    :cond_12
    invoke-virtual {v1, p0, v8, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_13

    .line 202
    .line 203
    const/4 v9, 0x1

    .line 204
    goto :goto_8

    .line 205
    :cond_13
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    if-eq v2, v8, :cond_12

    .line 210
    .line 211
    :goto_8
    if-eqz v9, :cond_1

    .line 212
    .line 213
    return-void

    .line 214
    :cond_14
    invoke-static {p1, v8}, Lnc/j;->r(Lx9/l;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    throw v2
.end method

.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 11

    .line 1
    :cond_0
    iget-object p1, p0, Lnc/j;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p1, Lnc/n1;

    .line 4
    .line 5
    if-nez v0, :cond_b

    .line 6
    .line 7
    instance-of v0, p1, Lnc/r;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    instance-of v0, p1, Lnc/q;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    if-eqz v0, :cond_8

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Lnc/q;

    .line 20
    .line 21
    iget-object v1, v0, Lnc/q;->e:Ljava/lang/Throwable;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 v1, 0x0

    .line 28
    :goto_0
    xor-int/2addr v1, v8

    .line 29
    if-eqz v1, :cond_7

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/16 v2, 0xf

    .line 33
    .line 34
    invoke-static {v0, v1, p2, v2}, Lnc/q;->a(Lnc/q;Lnc/g;Ljava/util/concurrent/CancellationException;I)Lnc/q;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lnc/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 39
    .line 40
    :cond_3
    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eq v3, p1, :cond_3

    .line 53
    .line 54
    :goto_1
    if-eqz v7, :cond_0

    .line 55
    .line 56
    iget-object p1, v0, Lnc/q;->b:Lnc/g;

    .line 57
    .line 58
    if-nez p1, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    :try_start_0
    invoke-virtual {p1, p2}, Lnc/h;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    new-instance v1, Lnc/u;

    .line 67
    .line 68
    const-string v2, "Exception in invokeOnCancellation handler for "

    .line 69
    .line 70
    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-direct {v1, v2, p1}, Lnc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lnc/j;->e:Lp9/f;

    .line 78
    .line 79
    invoke-static {p1, v1}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    iget-object p1, v0, Lnc/q;->c:Lx9/l;

    .line 83
    .line 84
    if-nez p1, :cond_6

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    :try_start_1
    invoke-interface {p1, p2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    new-instance p2, Lnc/u;

    .line 93
    .line 94
    const-string v0, "Exception in resume onCancellation handler for "

    .line 95
    .line 96
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p2, v0, p1}, Lnc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lnc/j;->e:Lp9/f;

    .line 104
    .line 105
    invoke-static {p1, p2}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :goto_3
    return-void

    .line 109
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string p2, "Must be called at most once"

    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_8
    sget-object v9, Lnc/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 122
    .line 123
    new-instance v10, Lnc/q;

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    const/16 v6, 0xe

    .line 129
    .line 130
    move-object v0, v10

    .line 131
    move-object v1, p1

    .line 132
    move-object v5, p2

    .line 133
    invoke-direct/range {v0 .. v6}, Lnc/q;-><init>(Ljava/lang/Object;Lnc/g;Lx9/l;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    .line 134
    .line 135
    .line 136
    :cond_9
    invoke-virtual {v9, p0, p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_a

    .line 141
    .line 142
    const/4 v7, 0x1

    .line 143
    goto :goto_4

    .line 144
    :cond_a
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eq v0, p1, :cond_9

    .line 149
    .line 150
    :goto_4
    if-eqz v7, :cond_0

    .line 151
    .line 152
    return-void

    .line 153
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    const-string p2, "Not completed"

    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1
.end method

.method public final b()Lp9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp9/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnc/j;->d:Lp9/d;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lnc/i0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/internal/u;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnc/j;->y(Ljava/lang/Object;Ljava/lang/Object;Lx9/l;)Lkotlinx/coroutines/internal/u;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lnc/q;

    if-eqz v0, :cond_0

    check-cast p1, Lnc/q;

    iget-object p1, p1, Lnc/q;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final g()V
    .locals 1

    iget v0, p0, Lnc/i0;->c:I

    invoke-virtual {p0, v0}, Lnc/j;->k(I)V

    return-void
.end method

.method public final getCallerFrame()Lr9/d;
    .locals 2

    iget-object v0, p0, Lnc/j;->d:Lp9/d;

    instance-of v1, v0, Lr9/d;

    if-eqz v1, :cond_0

    check-cast v0, Lr9/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getContext()Lp9/f;
    .locals 1

    iget-object v0, p0, Lnc/j;->e:Lp9/f;

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnc/j;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lnc/j;->f:Lnc/k0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lnc/k0;->dispose()V

    sget-object v0, Lnc/m1;->a:Lnc/m1;

    iput-object v0, p0, Lnc/j;->f:Lnc/k0;

    return-void
.end method

.method public final j(Lnc/y;Ll9/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnc/j;->d:Lp9/d;

    .line 2
    .line 3
    instance-of v1, v0, Lkotlinx/coroutines/internal/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/internal/g;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    move-object v0, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, v0, Lkotlinx/coroutines/internal/g;->d:Lnc/y;

    .line 17
    .line 18
    :goto_1
    if-ne v0, p1, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    iget p1, p0, Lnc/i0;->c:I

    .line 23
    .line 24
    :goto_2
    invoke-virtual {p0, p2, p1, v2}, Lnc/j;->u(Ljava/lang/Object;ILx9/l;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final k(I)V
    .locals 6

    .line 1
    :cond_0
    iget v0, p0, Lnc/j;->_decision:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-ne v0, v3, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Already resumed"

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_2
    sget-object v0, Lnc/j;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    :goto_0
    if-eqz v0, :cond_3

    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iget-object v0, p0, Lnc/j;->d:Lp9/d;

    .line 37
    .line 38
    const/4 v4, 0x4

    .line 39
    if-ne p1, v4, :cond_4

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_4
    const/4 v4, 0x0

    .line 44
    :goto_1
    if-nez v4, :cond_c

    .line 45
    .line 46
    instance-of v5, v0, Lkotlinx/coroutines/internal/g;

    .line 47
    .line 48
    if-eqz v5, :cond_c

    .line 49
    .line 50
    if-eq p1, v3, :cond_6

    .line 51
    .line 52
    if-ne p1, v1, :cond_5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    const/4 p1, 0x0

    .line 56
    goto :goto_3

    .line 57
    :cond_6
    :goto_2
    const/4 p1, 0x1

    .line 58
    :goto_3
    iget v5, p0, Lnc/i0;->c:I

    .line 59
    .line 60
    if-eq v5, v3, :cond_7

    .line 61
    .line 62
    if-ne v5, v1, :cond_8

    .line 63
    .line 64
    :cond_7
    const/4 v2, 0x1

    .line 65
    :cond_8
    if-ne p1, v2, :cond_c

    .line 66
    .line 67
    move-object p1, v0

    .line 68
    check-cast p1, Lkotlinx/coroutines/internal/g;

    .line 69
    .line 70
    iget-object p1, p1, Lkotlinx/coroutines/internal/g;->d:Lnc/y;

    .line 71
    .line 72
    invoke-interface {v0}, Lp9/d;->getContext()Lp9/f;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Lnc/y;->isDispatchNeeded(Lp9/f;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_9

    .line 81
    .line 82
    invoke-virtual {p1, v0, p0}, Lnc/y;->dispatch(Lp9/f;Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_9
    invoke-static {}, Lnc/w1;->a()Lnc/n0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lnc/n0;->k()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Lnc/n0;->g(Lnc/i0;)V

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_a
    invoke-virtual {p1, v3}, Lnc/n0;->j(Z)V

    .line 101
    .line 102
    .line 103
    :try_start_0
    iget-object v0, p0, Lnc/j;->d:Lp9/d;

    .line 104
    .line 105
    invoke-static {p0, v0, v3}, Lx5/a;->q(Lnc/i0;Lp9/d;Z)V

    .line 106
    .line 107
    .line 108
    :cond_b
    invoke-virtual {p1}, Lnc/n0;->m()Z

    .line 109
    .line 110
    .line 111
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-nez v0, :cond_b

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    const/4 v1, 0x0

    .line 117
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lnc/i0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .line 119
    .line 120
    :goto_4
    invoke-virtual {p1, v3}, Lnc/n0;->d(Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    invoke-virtual {p1, v3}, Lnc/n0;->d(Z)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_c
    invoke-static {p0, v0, v4}, Lx5/a;->q(Lnc/i0;Lp9/d;Z)V

    .line 130
    .line 131
    .line 132
    :goto_5
    return-void
.end method

.method public l(Lnc/g1;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p1}, Lnc/g1;->n()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final m()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnc/j;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    iget v1, p0, Lnc/j;->_decision:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Already suspended"

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_2
    sget-object v1, Lnc/j;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 29
    .line 30
    invoke-virtual {v1, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :goto_0
    const/4 v5, 0x0

    .line 38
    if-eqz v1, :cond_8

    .line 39
    .line 40
    iget-object v1, p0, Lnc/j;->f:Lnc/k0;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lnc/j;->o()Lnc/k0;

    .line 45
    .line 46
    .line 47
    :cond_3
    if-eqz v0, :cond_7

    .line 48
    .line 49
    iget-object v0, p0, Lnc/j;->d:Lp9/d;

    .line 50
    .line 51
    instance-of v1, v0, Lkotlinx/coroutines/internal/g;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    check-cast v0, Lkotlinx/coroutines/internal/g;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    move-object v0, v5

    .line 59
    :goto_1
    if-nez v0, :cond_5

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/g;->n(Lnc/i;)Ljava/lang/Throwable;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    :goto_2
    if-nez v5, :cond_6

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_6
    invoke-virtual {p0}, Lnc/j;->i()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v5}, Lnc/j;->x(Ljava/lang/Throwable;)Z

    .line 73
    .line 74
    .line 75
    :cond_7
    :goto_3
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_8
    if-eqz v0, :cond_c

    .line 79
    .line 80
    iget-object v0, p0, Lnc/j;->d:Lp9/d;

    .line 81
    .line 82
    instance-of v1, v0, Lkotlinx/coroutines/internal/g;

    .line 83
    .line 84
    if-eqz v1, :cond_9

    .line 85
    .line 86
    check-cast v0, Lkotlinx/coroutines/internal/g;

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_9
    move-object v0, v5

    .line 90
    :goto_4
    if-nez v0, :cond_a

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_a
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/g;->n(Lnc/i;)Ljava/lang/Throwable;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    :goto_5
    if-nez v5, :cond_b

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_b
    invoke-virtual {p0}, Lnc/j;->i()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v5}, Lnc/j;->x(Ljava/lang/Throwable;)Z

    .line 104
    .line 105
    .line 106
    :cond_c
    :goto_6
    iget-object v0, p0, Lnc/j;->_state:Ljava/lang/Object;

    .line 107
    .line 108
    instance-of v1, v0, Lnc/r;

    .line 109
    .line 110
    if-nez v1, :cond_11

    .line 111
    .line 112
    iget v1, p0, Lnc/i0;->c:I

    .line 113
    .line 114
    if-eq v1, v4, :cond_d

    .line 115
    .line 116
    if-ne v1, v2, :cond_e

    .line 117
    .line 118
    :cond_d
    const/4 v3, 0x1

    .line 119
    :cond_e
    if-eqz v3, :cond_10

    .line 120
    .line 121
    iget-object v1, p0, Lnc/j;->e:Lp9/f;

    .line 122
    .line 123
    sget-object v2, Lnc/b1$b;->a:Lnc/b1$b;

    .line 124
    .line 125
    invoke-interface {v1, v2}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lnc/b1;

    .line 130
    .line 131
    if-eqz v1, :cond_10

    .line 132
    .line 133
    invoke-interface {v1}, Lnc/b1;->b()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_f

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_f
    invoke-interface {v1}, Lnc/b1;->n()Ljava/util/concurrent/CancellationException;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p0, v0, v1}, Lnc/j;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 145
    .line 146
    .line 147
    throw v1

    .line 148
    :cond_10
    :goto_7
    invoke-virtual {p0, v0}, Lnc/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :cond_11
    check-cast v0, Lnc/r;

    .line 154
    .line 155
    iget-object v0, v0, Lnc/r;->a:Ljava/lang/Throwable;

    .line 156
    .line 157
    throw v0
.end method

.method public final n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc/j;->o()Lnc/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lnc/j;->_state:Ljava/lang/Object;

    .line 9
    .line 10
    instance-of v1, v1, Lnc/n1;

    .line 11
    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lnc/k0;->dispose()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lnc/m1;->a:Lnc/m1;

    .line 20
    .line 21
    iput-object v0, p0, Lnc/j;->f:Lnc/k0;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final o()Lnc/k0;
    .locals 4

    sget-object v0, Lnc/b1$b;->a:Lnc/b1$b;

    iget-object v1, p0, Lnc/j;->e:Lp9/f;

    invoke-interface {v1, v0}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object v0

    check-cast v0, Lnc/b1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lnc/l;

    invoke-direct {v1, p0}, Lnc/l;-><init>(Lnc/j;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lnc/b1$a;->a(Lnc/b1;ZLnc/f1;I)Lnc/k0;

    move-result-object v0

    iput-object v0, p0, Lnc/j;->f:Lnc/k0;

    return-object v0
.end method

.method public final p()Z
    .locals 4

    iget v0, p0, Lnc/i0;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lnc/j;->d:Lp9/d;

    check-cast v0, Lkotlinx/coroutines/internal/g;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final q(Ljava/lang/Throwable;)Lkotlinx/coroutines/internal/u;
    .locals 2

    .line 1
    new-instance v0, Lnc/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Lnc/r;-><init>(ZLjava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, v0, p1, p1}, Lnc/j;->y(Ljava/lang/Object;Ljava/lang/Object;Lx9/l;)Lkotlinx/coroutines/internal/u;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ll9/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lnc/r;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, Lnc/r;-><init>(ZLjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget v0, p0, Lnc/i0;->c:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lnc/j;->u(Ljava/lang/Object;ILx9/l;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final t()Z
    .locals 3

    iget-object v0, p0, Lnc/j;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lnc/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lnc/q;

    iget-object v0, v0, Lnc/q;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnc/j;->i()V

    return v2

    :cond_0
    iput v2, p0, Lnc/j;->_decision:I

    sget-object v0, Lnc/b;->a:Lnc/b;

    iput-object v0, p0, Lnc/j;->_state:Ljava/lang/Object;

    const/4 v0, 0x1

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
    invoke-virtual {p0}, Lnc/j;->s()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x28

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnc/j;->d:Lp9/d;

    .line 19
    .line 20
    invoke-static {v1}, Lnc/c0;->d(Lp9/d;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "){"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lnc/j;->_state:Ljava/lang/Object;

    .line 33
    .line 34
    instance-of v2, v1, Lnc/n1;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const-string v1, "Active"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    instance-of v1, v1, Lnc/k;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    const-string v1, "Cancelled"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v1, "Completed"

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "}@"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lnc/c0;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public final u(Ljava/lang/Object;ILx9/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lx9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lnc/j;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lnc/n1;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lnc/n1;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v1, p1, p2, p3, v4}, Lnc/j;->v(Lnc/n1;Ljava/lang/Object;ILx9/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v4, Lnc/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-eq v5, v0, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_1
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lnc/j;->p()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lnc/j;->i()V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0, p2}, Lnc/j;->k(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    instance-of p2, v0, Lnc/k;

    .line 50
    .line 51
    if-eqz p2, :cond_6

    .line 52
    .line 53
    check-cast v0, Lnc/k;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object p2, Lnc/k;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 59
    .line 60
    invoke-virtual {p2, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_6

    .line 65
    .line 66
    if-nez p3, :cond_5

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_5
    iget-object p1, v0, Lnc/r;->a:Ljava/lang/Throwable;

    .line 70
    .line 71
    :try_start_0
    invoke-interface {p3, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    new-instance p2, Lnc/u;

    .line 77
    .line 78
    const-string p3, "Exception in resume onCancellation handler for "

    .line 79
    .line 80
    invoke-static {p0, p3}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-direct {p2, p3, p1}, Lnc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lnc/j;->e:Lp9/f;

    .line 88
    .line 89
    invoke-static {p1, p2}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    return-void

    .line 93
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    const-string p3, "Already resumed, but proposed with update "

    .line 96
    .line 97
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p2
.end method

.method public final w(Ljava/lang/Object;Lkotlinx/coroutines/internal/j$a;Lx9/l;)Lkotlinx/coroutines/internal/u;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnc/j;->y(Ljava/lang/Object;Ljava/lang/Object;Lx9/l;)Lkotlinx/coroutines/internal/u;

    move-result-object p1

    return-object p1
.end method

.method public final x(Ljava/lang/Throwable;)Z
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lnc/j;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lnc/n1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    new-instance v1, Lnc/k;

    .line 10
    .line 11
    instance-of v3, v0, Lnc/g;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1, v3}, Lnc/k;-><init>(Lp9/d;Ljava/lang/Throwable;Z)V

    .line 14
    .line 15
    .line 16
    sget-object v4, Lnc/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    :cond_1
    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x1

    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eq v5, v0, :cond_1

    .line 32
    .line 33
    :goto_1
    if-nez v2, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    if-eqz v3, :cond_4

    .line 37
    .line 38
    check-cast v0, Lnc/g;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_4
    const/4 v0, 0x0

    .line 42
    :goto_2
    if-nez v0, :cond_5

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_5
    :try_start_0
    invoke-virtual {v0, p1}, Lnc/h;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    new-instance v0, Lnc/u;

    .line 51
    .line 52
    const-string v1, "Exception in invokeOnCancellation handler for "

    .line 53
    .line 54
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1, p1}, Lnc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lnc/j;->e:Lp9/f;

    .line 62
    .line 63
    invoke-static {p1, v0}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_3
    invoke-virtual {p0}, Lnc/j;->p()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_6

    .line 71
    .line 72
    invoke-virtual {p0}, Lnc/j;->i()V

    .line 73
    .line 74
    .line 75
    :cond_6
    iget p1, p0, Lnc/i0;->c:I

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lnc/j;->k(I)V

    .line 78
    .line 79
    .line 80
    return v6
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;Lx9/l;)Lkotlinx/coroutines/internal/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lx9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;)",
            "Lkotlinx/coroutines/internal/u;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lnc/j;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lnc/n1;

    .line 4
    .line 5
    sget-object v2, Lc5/w;->g:Lkotlinx/coroutines/internal/u;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lnc/n1;

    .line 11
    .line 12
    iget v3, p0, Lnc/i0;->c:I

    .line 13
    .line 14
    invoke-static {v1, p1, v3, p3, p2}, Lnc/j;->v(Lnc/n1;Ljava/lang/Object;ILx9/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v3, Lnc/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eq v4, v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_1
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lnc/j;->p()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lnc/j;->i()V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-object v2

    .line 48
    :cond_4
    instance-of p1, v0, Lnc/q;

    .line 49
    .line 50
    const/4 p3, 0x0

    .line 51
    if-eqz p1, :cond_6

    .line 52
    .line 53
    if-eqz p2, :cond_5

    .line 54
    .line 55
    check-cast v0, Lnc/q;

    .line 56
    .line 57
    iget-object p1, v0, Lnc/q;->d:Ljava/lang/Object;

    .line 58
    .line 59
    if-ne p1, p2, :cond_5

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    move-object v2, p3

    .line 63
    :goto_2
    return-object v2

    .line 64
    :cond_6
    return-object p3
.end method
