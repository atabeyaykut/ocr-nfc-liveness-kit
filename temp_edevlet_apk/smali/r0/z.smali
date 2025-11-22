.class public abstract Lr0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lr0/p;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr0/k0;

.field public final b:Lr0/j0;

.field public final c:Lnc/a0;

.field public final d:Lr0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/r<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr0/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/w0<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr0/p;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    const-string v0, "initialState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/clearcut/d0;->f:Lr0/k0;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iput-object v0, p0, Lr0/z;->a:Lr0/k0;

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/d0;->a()Lnc/u1;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 20
    .line 21
    sget-object v2, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 22
    .line 23
    invoke-virtual {v2}, Lnc/k1;->d()Lnc/k1;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lnc/g1;->plus(Lp9/f;)Lp9/f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, v0, Lr0/k0;->c:Lp9/f;

    .line 32
    .line 33
    invoke-interface {v1, v2}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lb8/f;->f(Lp9/f;)Lkotlinx/coroutines/internal/f;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    new-instance v1, Lr0/j0;

    .line 42
    .line 43
    iget-boolean v5, v0, Lr0/k0;->b:Z

    .line 44
    .line 45
    new-instance v6, Lr0/c;

    .line 46
    .line 47
    iget-object v2, v0, Lr0/k0;->d:Lp9/f;

    .line 48
    .line 49
    invoke-direct {v6, p1, v7, v2}, Lr0/c;-><init>(Lr0/p;Lkotlinx/coroutines/internal/f;Lp9/f;)V

    .line 50
    .line 51
    .line 52
    move-object v2, v1

    .line 53
    move-object v3, p1

    .line 54
    move-object v4, v7

    .line 55
    invoke-direct/range {v2 .. v7}, Lr0/j0;-><init>(Lr0/p;Lkotlinx/coroutines/internal/f;ZLr0/c;Lkotlinx/coroutines/internal/f;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Lr0/k0;->a:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lx9/p;

    .line 75
    .line 76
    invoke-interface {v2, p0, v1}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iput-object v1, p0, Lr0/z;->b:Lr0/j0;

    .line 81
    .line 82
    iget-object v0, v1, Lr0/i0;->c:Lnc/a0;

    .line 83
    .line 84
    iput-object v0, p0, Lr0/z;->c:Lnc/a0;

    .line 85
    .line 86
    iget-object v2, v1, Lr0/i0;->b:Lr0/r;

    .line 87
    .line 88
    iput-object v2, p0, Lr0/z;->d:Lr0/r;

    .line 89
    .line 90
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lr0/z;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    .line 97
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iput-object v2, p0, Lr0/z;->f:Ljava/util/Set;

    .line 107
    .line 108
    new-instance v2, Lr0/z$c;

    .line 109
    .line 110
    invoke-direct {v2, p0}, Lr0/z$c;-><init>(Lr0/z;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Lc5/y;->w(Lx9/a;)Ll9/j;

    .line 114
    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    iget-boolean v1, v1, Lr0/i0;->a:Z

    .line 118
    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    new-instance v3, Lr0/w0;

    .line 122
    .line 123
    invoke-direct {v3, p1}, Lr0/w0;-><init>(Lr0/p;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    move-object v3, v2

    .line 128
    :goto_1
    iput-object v3, p0, Lr0/z;->g:Lr0/w0;

    .line 129
    .line 130
    if-eqz v1, :cond_2

    .line 131
    .line 132
    sget-object v1, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 133
    .line 134
    new-instance v3, Lr0/z$a;

    .line 135
    .line 136
    invoke-direct {v3, p0, p1, v2}, Lr0/z$a;-><init>(Lr0/z;Lr0/p;Lp9/d;)V

    .line 137
    .line 138
    .line 139
    const/4 p1, 0x2

    .line 140
    const/4 v2, 0x0

    .line 141
    invoke-static {v0, v1, v2, v3, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 142
    .line 143
    .line 144
    :cond_2
    return-void

    .line 145
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    const-string v0, "You must initialize Mavericks. Add Mavericks.initialize(...) to your Application.onCreate()."

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
.end method

.method public static a(Laf/c;Lkotlinx/coroutines/flow/f;Lx9/p;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "$this$execute"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "reducer"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lr0/z;->b:Lr0/j0;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lr0/c0;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p2, v1}, Lr0/c0;-><init>(Lx9/p;Lda/l;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lr0/z;->c(Lx9/l;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lr0/d0;

    .line 29
    .line 30
    invoke-direct {v0, p0, p2, v1, v1}, Lr0/d0;-><init>(Lr0/z;Lx9/p;Lda/l;Lp9/d;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lkotlinx/coroutines/flow/n;

    .line 34
    .line 35
    invoke-direct {v2, p1, v0}, Lkotlinx/coroutines/flow/n;-><init>(Lkotlinx/coroutines/flow/f;Lr0/d0;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lr0/b0;

    .line 39
    .line 40
    invoke-direct {p1, p0, p2, v1}, Lr0/b0;-><init>(Lr0/z;Lx9/p;Lp9/d;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lkotlinx/coroutines/flow/u;

    .line 44
    .line 45
    invoke-direct {p2, v2, p1}, Lkotlinx/coroutines/flow/u;-><init>(Lkotlinx/coroutines/flow/f;Lx9/p;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lp9/g;->a:Lp9/g;

    .line 49
    .line 50
    new-instance v0, Lkotlinx/coroutines/internal/f;

    .line 51
    .line 52
    iget-object p0, p0, Lr0/z;->c:Lnc/a0;

    .line 53
    .line 54
    invoke-interface {p0}, Lnc/a0;->getCoroutineContext()Lp9/f;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p0, p1}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/f;-><init>(Lp9/f;)V

    .line 63
    .line 64
    .line 65
    new-instance p0, Lkotlinx/coroutines/flow/j;

    .line 66
    .line 67
    invoke-direct {p0, p2, v1}, Lkotlinx/coroutines/flow/j;-><init>(Lkotlinx/coroutines/flow/f;Lp9/d;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x3

    .line 71
    const/4 p2, 0x0

    .line 72
    invoke-static {v0, v1, p2, p0, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final b(Lkotlinx/coroutines/flow/f;Landroidx/lifecycle/LifecycleOwner;Lr0/h;Lx9/p;)Lnc/t1;
    .locals 9

    .line 1
    const-string v0, "$this$resolveSubscription"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "deliveryMode"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    sget-object v1, Lr0/s;->a:Ljava/lang/Boolean;

    .line 15
    .line 16
    const-string v2, "MavericksTestOverrides.F\u2026_LIFECYCLE_AWARE_OBSERVER"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    instance-of v1, p3, Lr0/e1;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move-object v4, p3

    .line 33
    check-cast v4, Lr0/e1;

    .line 34
    .line 35
    iget-object v1, p0, Lr0/z;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    iget-object v2, v4, Lr0/e1;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v6, Lcom/airbnb/mvrx/MavericksViewModel$assertOneActiveSubscription$observer$1;

    .line 44
    .line 45
    invoke-direct {v6, p0, v4}, Lcom/airbnb/mvrx/MavericksViewModel$assertOneActiveSubscription$observer$1;-><init>(Lr0/z;Lr0/e1;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v6}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 53
    .line 54
    .line 55
    new-instance v8, Lr0/a0;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    move-object v2, v8

    .line 59
    move-object v3, p0

    .line 60
    move-object v5, p2

    .line 61
    invoke-direct/range {v2 .. v7}, Lr0/a0;-><init>(Lr0/z;Lr0/e1;Landroidx/lifecycle/LifecycleOwner;Lcom/airbnb/mvrx/MavericksViewModel$assertOneActiveSubscription$observer$1;Lp9/d;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lkotlinx/coroutines/flow/m;

    .line 65
    .line 66
    invoke-direct {v2, p1, v8}, Lkotlinx/coroutines/flow/m;-><init>(Lkotlinx/coroutines/flow/f;Lr0/a0;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lr0/f0;

    .line 70
    .line 71
    invoke-direct {p1, v1, v0}, Lr0/f0;-><init>(Ljava/lang/Object;Lp9/d;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lkotlinx/coroutines/flow/q;

    .line 75
    .line 76
    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/flow/q;-><init>(Lkotlinx/coroutines/flow/m;Lr0/f0;)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Lr0/m;

    .line 80
    .line 81
    invoke-direct {p1, v1, p2, v0}, Lr0/m;-><init>(Lkotlinx/coroutines/flow/f;Landroidx/lifecycle/LifecycleOwner;Lp9/d;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lkotlinx/coroutines/flow/y;

    .line 85
    .line 86
    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/y;-><init>(Lx9/p;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lb8/f;->z(Lkotlinx/coroutines/flow/f;)Lkotlinx/coroutines/flow/f;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v1, Lr0/g0;

    .line 94
    .line 95
    invoke-direct {v1, p0, p3, v0}, Lr0/g0;-><init>(Lr0/z;Lr0/h;Lp9/d;)V

    .line 96
    .line 97
    .line 98
    new-instance p3, Lkotlinx/coroutines/flow/u;

    .line 99
    .line 100
    invoke-direct {p3, p1, v1}, Lkotlinx/coroutines/flow/u;-><init>(Lkotlinx/coroutines/flow/f;Lx9/p;)V

    .line 101
    .line 102
    .line 103
    move-object p1, p3

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    new-instance p3, Lr0/m;

    .line 106
    .line 107
    invoke-direct {p3, p1, p2, v0}, Lr0/m;-><init>(Lkotlinx/coroutines/flow/f;Landroidx/lifecycle/LifecycleOwner;Lp9/d;)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lkotlinx/coroutines/flow/y;

    .line 111
    .line 112
    invoke-direct {p1, p3}, Lkotlinx/coroutines/flow/y;-><init>(Lx9/p;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 116
    .line 117
    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-eqz p2, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    iget-object p2, p0, Lr0/z;->c:Lnc/a0;

    .line 125
    .line 126
    :goto_1
    iget-object p3, p0, Lr0/z;->a:Lr0/k0;

    .line 127
    .line 128
    iget-object p3, p3, Lr0/k0;->e:Lp9/f;

    .line 129
    .line 130
    new-instance v1, Lkotlinx/coroutines/internal/f;

    .line 131
    .line 132
    invoke-interface {p2}, Lnc/a0;->getCoroutineContext()Lp9/f;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-interface {p2, p3}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-direct {v1, p2}, Lkotlinx/coroutines/internal/f;-><init>(Lp9/f;)V

    .line 141
    .line 142
    .line 143
    new-instance p2, Lr0/e0;

    .line 144
    .line 145
    invoke-direct {p2, p1, p4, v0}, Lr0/e0;-><init>(Lkotlinx/coroutines/flow/f;Lx9/p;Lp9/d;)V

    .line 146
    .line 147
    .line 148
    const/4 p1, 0x1

    .line 149
    const/4 p3, 0x4

    .line 150
    invoke-static {v1, v0, p3, p2, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1
.end method

.method public final c(Lx9/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-TS;+TS;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "reducer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr0/z;->b:Lr0/j0;

    .line 7
    .line 8
    iget-boolean v0, v0, Lr0/i0;->a:Z

    .line 9
    .line 10
    iget-object v1, p0, Lr0/z;->d:Lr0/r;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lr0/z$b;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lr0/z$b;-><init>(Lr0/z;Lx9/l;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Lr0/r;->b(Lx9/l;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v1, p1}, Lr0/r;->b(Lx9/l;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lr0/z;->d:Lr0/r;

    .line 23
    .line 24
    invoke-interface {v1}, Lr0/r;->c()Lr0/p;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
