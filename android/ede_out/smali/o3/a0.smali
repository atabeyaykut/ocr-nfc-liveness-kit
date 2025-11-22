.class public final Lo3/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/d$a;
.implements Ln3/d$b;


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:Ln3/a$e;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public final c:Lo3/a;

.field public final d:Lo3/q;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/HashMap;

.field public final g:I

.field public final h:Lo3/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public k:Lm3/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:I

.field public final synthetic m:Lo3/d;


# direct methods
.method public constructor <init>(Lo3/d;Ln3/c;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lo3/a0;->a:Ljava/util/LinkedList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lo3/a0;->e:Ljava/util/HashSet;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lo3/a0;->f:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lo3/a0;->j:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lo3/a0;->k:Lm3/b;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lo3/a0;->l:I

    .line 39
    .line 40
    iget-object v1, p1, Lo3/d;->n:Lh4/i;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p2}, Ln3/c;->a()Lr3/e$a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v5, Lr3/e;

    .line 51
    .line 52
    iget-object v2, v1, Lr3/e$a;->a:Landroid/accounts/Account;

    .line 53
    .line 54
    iget-object v3, v1, Lr3/e$a;->b:Landroidx/collection/ArraySet;

    .line 55
    .line 56
    iget-object v6, v1, Lr3/e$a;->c:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, v1, Lr3/e$a;->d:Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {v5, v2, v3, v6, v1}, Lr3/e;-><init>(Landroid/accounts/Account;Landroidx/collection/ArraySet;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p2, Ln3/c;->c:Ln3/a;

    .line 64
    .line 65
    iget-object v2, v1, Ln3/a;->a:Ln3/a$a;

    .line 66
    .line 67
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p2, Ln3/c;->a:Landroid/content/Context;

    .line 71
    .line 72
    iget-object v6, p2, Ln3/c;->d:Ln3/a$c;

    .line 73
    .line 74
    move-object v7, p0

    .line 75
    move-object v8, p0

    .line 76
    invoke-virtual/range {v2 .. v8}, Ln3/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Ln3/a$c;Ln3/d$a;Ln3/d$b;)Ln3/a$e;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p2, Ln3/c;->b:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    instance-of v3, v1, Lr3/c;

    .line 85
    .line 86
    if-eqz v3, :cond_0

    .line 87
    .line 88
    move-object v3, v1

    .line 89
    check-cast v3, Lr3/c;

    .line 90
    .line 91
    iput-object v2, v3, Lr3/c;->s:Ljava/lang/String;

    .line 92
    .line 93
    :cond_0
    if-eqz v2, :cond_1

    .line 94
    .line 95
    instance-of v2, v1, Lo3/i;

    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    move-object v2, v1

    .line 100
    check-cast v2, Lo3/i;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    :cond_1
    iput-object v1, p0, Lo3/a0;->b:Ln3/a$e;

    .line 106
    .line 107
    iget-object v2, p2, Ln3/c;->e:Lo3/a;

    .line 108
    .line 109
    iput-object v2, p0, Lo3/a0;->c:Lo3/a;

    .line 110
    .line 111
    new-instance v2, Lo3/q;

    .line 112
    .line 113
    invoke-direct {v2}, Lo3/q;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Lo3/a0;->d:Lo3/q;

    .line 117
    .line 118
    iget v2, p2, Ln3/c;->g:I

    .line 119
    .line 120
    iput v2, p0, Lo3/a0;->g:I

    .line 121
    .line 122
    invoke-interface {v1}, Ln3/a$e;->o()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    iget-object v0, p1, Lo3/d;->e:Landroid/content/Context;

    .line 129
    .line 130
    iget-object p1, p1, Lo3/d;->n:Lh4/i;

    .line 131
    .line 132
    new-instance v1, Lo3/p0;

    .line 133
    .line 134
    invoke-virtual {p2}, Ln3/c;->a()Lr3/e$a;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    new-instance v2, Lr3/e;

    .line 139
    .line 140
    iget-object v3, p2, Lr3/e$a;->a:Landroid/accounts/Account;

    .line 141
    .line 142
    iget-object v4, p2, Lr3/e$a;->b:Landroidx/collection/ArraySet;

    .line 143
    .line 144
    iget-object v5, p2, Lr3/e$a;->c:Ljava/lang/String;

    .line 145
    .line 146
    iget-object p2, p2, Lr3/e$a;->d:Ljava/lang/String;

    .line 147
    .line 148
    invoke-direct {v2, v3, v4, v5, p2}, Lr3/e;-><init>(Landroid/accounts/Account;Landroidx/collection/ArraySet;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v0, p1, v2}, Lo3/p0;-><init>(Landroid/content/Context;Lh4/i;Lr3/e;)V

    .line 152
    .line 153
    .line 154
    iput-object v1, p0, Lo3/a0;->h:Lo3/p0;

    .line 155
    .line 156
    return-void

    .line 157
    :cond_2
    iput-object v0, p0, Lo3/a0;->h:Lo3/p0;

    .line 158
    .line 159
    return-void
.end method


# virtual methods
.method public final a(Lm3/b;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->e:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lo3/x0;

    .line 18
    .line 19
    sget-object v1, Lm3/b;->e:Lm3/b;

    .line 20
    .line 21
    invoke-static {p1, v1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lo3/a0;->b:Ln3/a$e;

    .line 28
    .line 29
    invoke-interface {p1}, Ln3/a$e;->f()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    invoke-static {v0}, Lr3/r;->d(Lh4/i;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lo3/a0;->c(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/RuntimeException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    invoke-static {v0}, Lr3/r;->d(Lh4/i;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    :goto_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_1
    if-eq v2, v0, :cond_6

    .line 19
    .line 20
    iget-object v0, p0, Lo3/a0;->a:Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lo3/w0;

    .line 37
    .line 38
    if-eqz p3, :cond_3

    .line 39
    .line 40
    iget v2, v1, Lo3/w0;->a:I

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    :cond_3
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lo3/w0;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    invoke-virtual {v1, p2}, Lo3/w0;->b(Ljava/lang/RuntimeException;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    return-void

    .line 59
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "Status XOR exception should be null"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final d()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo3/a0;->a:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo3/w0;

    iget-object v5, p0, Lo3/a0;->b:Ln3/a$e;

    invoke-interface {v5}, Ln3/a$e;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lo3/a0;->h(Lo3/w0;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v1, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    invoke-static {v1}, Lr3/r;->d(Lh4/i;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lo3/a0;->k:Lm3/b;

    .line 10
    .line 11
    sget-object v2, Lm3/b;->e:Lm3/b;

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lo3/a0;->a(Lm3/b;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v2, p0, Lo3/a0;->i:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Lo3/d;->n:Lh4/i;

    .line 21
    .line 22
    const/16 v3, 0xb

    .line 23
    .line 24
    iget-object v4, p0, Lo3/a0;->c:Lo3/a;

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 30
    .line 31
    const/16 v2, 0x9

    .line 32
    .line 33
    invoke-virtual {v0, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lo3/a0;->i:Z

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lo3/a0;->f:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lo3/a0;->d()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lo3/a0;->g()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lo3/m0;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    throw v1
.end method

.method public final f(I)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v1, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    invoke-static {v1}, Lr3/r;->d(Lh4/i;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lo3/a0;->k:Lm3/b;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lo3/a0;->i:Z

    .line 13
    .line 14
    iget-object v3, p0, Lo3/a0;->b:Ln3/a$e;

    .line 15
    .line 16
    invoke-interface {v3}, Ln3/a$e;->n()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lo3/a0;->d:Lo3/q;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v6, "The connection to Google Play services was lost"

    .line 28
    .line 29
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-ne p1, v2, :cond_0

    .line 33
    .line 34
    const-string p1, " due to service disconnection."

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v6, 0x3

    .line 38
    if-ne p1, v6, :cond_1

    .line 39
    .line 40
    const-string p1, " due to dead object exception."

    .line 41
    .line 42
    :goto_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const-string p1, " Last reason for disconnect: "

    .line 48
    .line 49
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 56
    .line 57
    const/16 v3, 0x14

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-direct {p1, v3, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v2, p1}, Lo3/q;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, v0, Lo3/d;->n:Lh4/i;

    .line 70
    .line 71
    const/16 v2, 0x9

    .line 72
    .line 73
    iget-object v3, p0, Lo3/a0;->c:Lo3/a;

    .line 74
    .line 75
    invoke-static {p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-wide/16 v4, 0x1388

    .line 80
    .line 81
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    .line 83
    .line 84
    iget-object p1, v0, Lo3/d;->n:Lh4/i;

    .line 85
    .line 86
    const/16 v2, 0xb

    .line 87
    .line 88
    invoke-static {p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-wide/32 v3, 0x1d4c0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 96
    .line 97
    .line 98
    iget-object p1, v0, Lo3/d;->g:Lr3/g0;

    .line 99
    .line 100
    iget-object p1, p1, Lr3/g0;->a:Landroid/util/SparseIntArray;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lo3/a0;->f:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_3

    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lo3/m0;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    throw v1
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v1, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    iget-object v3, p0, Lo3/a0;->c:Lo3/a;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lo3/d;->n:Lh4/i;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-wide v3, v0, Lo3/d;->a:J

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final h(Lo3/w0;)Z
    .locals 17
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lo3/g0;

    .line 6
    .line 7
    const-string v3, "DeadObjectException thrown while running ApiCallRunner."

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, v0, Lo3/a0;->b:Ln3/a$e;

    .line 13
    .line 14
    invoke-interface {v2}, Ln3/a$e;->o()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    iget-object v6, v0, Lo3/a0;->d:Lo3/q;

    .line 19
    .line 20
    invoke-virtual {v1, v6, v5}, Lo3/w0;->d(Lo3/q;Z)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v1, v0}, Lo3/w0;->c(Lo3/a0;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    invoke-virtual {v0, v4}, Lo3/a0;->onConnectionSuspended(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3}, Ln3/a$e;->d(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return v4

    .line 34
    :cond_0
    move-object v2, v1

    .line 35
    check-cast v2, Lo3/g0;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Lo3/g0;->g(Lo3/a0;)[Lm3/d;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v5, :cond_5

    .line 44
    .line 45
    array-length v8, v5

    .line 46
    if-nez v8, :cond_1

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_1
    iget-object v8, v0, Lo3/a0;->b:Ln3/a$e;

    .line 50
    .line 51
    invoke-interface {v8}, Ln3/a$e;->m()[Lm3/d;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    if-nez v8, :cond_2

    .line 56
    .line 57
    new-array v8, v7, [Lm3/d;

    .line 58
    .line 59
    :cond_2
    array-length v9, v8

    .line 60
    new-instance v10, Landroidx/collection/ArrayMap;

    .line 61
    .line 62
    invoke-direct {v10, v9}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 63
    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    :goto_1
    if-ge v11, v9, :cond_3

    .line 67
    .line 68
    aget-object v12, v8, v11

    .line 69
    .line 70
    iget-object v13, v12, Lm3/d;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v12}, Lm3/d;->E()J

    .line 73
    .line 74
    .line 75
    move-result-wide v14

    .line 76
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-interface {v10, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v11, v11, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    array-length v8, v5

    .line 87
    const/4 v9, 0x0

    .line 88
    :goto_2
    if-ge v9, v8, :cond_5

    .line 89
    .line 90
    aget-object v11, v5, v9

    .line 91
    .line 92
    iget-object v12, v11, Lm3/d;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    check-cast v12, Ljava/lang/Long;

    .line 99
    .line 100
    if-eqz v12, :cond_6

    .line 101
    .line 102
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v12

    .line 106
    invoke-virtual {v11}, Lm3/d;->E()J

    .line 107
    .line 108
    .line 109
    move-result-wide v14

    .line 110
    cmp-long v16, v12, v14

    .line 111
    .line 112
    if-gez v16, :cond_4

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    :goto_3
    move-object v11, v6

    .line 119
    :cond_6
    :goto_4
    if-nez v11, :cond_7

    .line 120
    .line 121
    iget-object v2, v0, Lo3/a0;->b:Ln3/a$e;

    .line 122
    .line 123
    invoke-interface {v2}, Ln3/a$e;->o()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    iget-object v6, v0, Lo3/a0;->d:Lo3/q;

    .line 128
    .line 129
    invoke-virtual {v1, v6, v5}, Lo3/w0;->d(Lo3/q;Z)V

    .line 130
    .line 131
    .line 132
    :try_start_1
    invoke-virtual {v1, v0}, Lo3/w0;->c(Lo3/a0;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :catch_1
    invoke-virtual {v0, v4}, Lo3/a0;->onConnectionSuspended(I)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v2, v3}, Ln3/a$e;->d(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_5
    return v4

    .line 143
    :cond_7
    iget-object v1, v0, Lo3/a0;->b:Ln3/a$e;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v3, v11, Lm3/d;->a:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v11}, Lm3/d;->E()J

    .line 156
    .line 157
    .line 158
    move-result-wide v8

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, " could not execute call because it requires feature ("

    .line 168
    .line 169
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ", "

    .line 176
    .line 177
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ")."

    .line 184
    .line 185
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, "GoogleApiManager"

    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lo3/a0;->m:Lo3/d;

    .line 198
    .line 199
    iget-boolean v1, v1, Lo3/d;->o:Z

    .line 200
    .line 201
    if-eqz v1, :cond_a

    .line 202
    .line 203
    invoke-virtual {v2, v0}, Lo3/g0;->f(Lo3/a0;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_a

    .line 208
    .line 209
    new-instance v1, Lo3/b0;

    .line 210
    .line 211
    iget-object v2, v0, Lo3/a0;->c:Lo3/a;

    .line 212
    .line 213
    invoke-direct {v1, v2, v11}, Lo3/b0;-><init>(Lo3/a;Lm3/d;)V

    .line 214
    .line 215
    .line 216
    iget-object v2, v0, Lo3/a0;->j:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    const-wide/16 v3, 0x1388

    .line 223
    .line 224
    const/16 v5, 0xf

    .line 225
    .line 226
    if-ltz v2, :cond_8

    .line 227
    .line 228
    iget-object v1, v0, Lo3/a0;->j:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Lo3/b0;

    .line 235
    .line 236
    iget-object v2, v0, Lo3/a0;->m:Lo3/d;

    .line 237
    .line 238
    iget-object v2, v2, Lo3/d;->n:Lh4/i;

    .line 239
    .line 240
    invoke-virtual {v2, v5, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    iget-object v2, v0, Lo3/a0;->m:Lo3/d;

    .line 244
    .line 245
    iget-object v2, v2, Lo3/d;->n:Lh4/i;

    .line 246
    .line 247
    invoke-static {v2, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iget-object v5, v0, Lo3/a0;->m:Lo3/d;

    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_8
    iget-object v2, v0, Lo3/a0;->j:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    iget-object v2, v0, Lo3/a0;->m:Lo3/d;

    .line 266
    .line 267
    iget-object v2, v2, Lo3/d;->n:Lh4/i;

    .line 268
    .line 269
    invoke-static {v2, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    iget-object v8, v0, Lo3/a0;->m:Lo3/d;

    .line 274
    .line 275
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 279
    .line 280
    .line 281
    iget-object v2, v0, Lo3/a0;->m:Lo3/d;

    .line 282
    .line 283
    iget-object v2, v2, Lo3/d;->n:Lh4/i;

    .line 284
    .line 285
    const/16 v3, 0x10

    .line 286
    .line 287
    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget-object v3, v0, Lo3/a0;->m:Lo3/d;

    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    const-wide/32 v3, 0x1d4c0

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 300
    .line 301
    .line 302
    new-instance v1, Lm3/b;

    .line 303
    .line 304
    const/4 v2, 0x2

    .line 305
    invoke-direct {v1, v2, v6}, Lm3/b;-><init>(ILandroid/app/PendingIntent;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1}, Lo3/a0;->i(Lm3/b;)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-nez v2, :cond_9

    .line 313
    .line 314
    iget-object v2, v0, Lo3/a0;->m:Lo3/d;

    .line 315
    .line 316
    iget v3, v0, Lo3/a0;->g:I

    .line 317
    .line 318
    invoke-virtual {v2, v1, v3}, Lo3/d;->b(Lm3/b;I)Z

    .line 319
    .line 320
    .line 321
    :cond_9
    :goto_6
    return v7

    .line 322
    :cond_a
    new-instance v1, Ln3/j;

    .line 323
    .line 324
    invoke-direct {v1, v11}, Ln3/j;-><init>(Lm3/d;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v1}, Lo3/w0;->b(Ljava/lang/RuntimeException;)V

    .line 328
    .line 329
    .line 330
    return v4
.end method

.method public final i(Lm3/b;)Z
    .locals 6
    .param p1    # Lm3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lo3/d;->r:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lo3/a0;->m:Lo3/d;

    .line 5
    .line 6
    iget-object v2, v1, Lo3/d;->k:Lo3/r;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    iget-object v1, v1, Lo3/d;->l:Landroidx/collection/ArraySet;

    .line 12
    .line 13
    iget-object v2, p0, Lo3/a0;->c:Lo3/a;

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lo3/a0;->m:Lo3/d;

    .line 22
    .line 23
    iget-object v1, v1, Lo3/d;->k:Lo3/r;

    .line 24
    .line 25
    iget v2, p0, Lo3/a0;->g:I

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v4, Lo3/y0;

    .line 31
    .line 32
    invoke-direct {v4, p1, v2}, Lo3/y0;-><init>(Lm3/b;I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v1, Lo3/a1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    :cond_0
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v5, 0x1

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    :goto_0
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object p1, v1, Lo3/a1;->d:Lh4/i;

    .line 57
    .line 58
    new-instance v2, Lo3/z0;

    .line 59
    .line 60
    invoke-direct {v2, v1, v4}, Lo3/z0;-><init>(Lo3/r;Lo3/y0;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    :goto_1
    monitor-exit v0

    .line 76
    return v5

    .line 77
    :cond_3
    monitor-exit v0

    .line 78
    return v3

    .line 79
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p1
.end method

.method public final j(Z)Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    invoke-static {v0}, Lr3/r;->d(Lh4/i;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lo3/a0;->b:Ln3/a$e;

    .line 9
    .line 10
    invoke-interface {v0}, Ln3/a$e;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    iget-object v1, p0, Lo3/a0;->f:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    iget-object v1, p0, Lo3/a0;->d:Lo3/q;

    .line 26
    .line 27
    iget-object v3, v1, Lo3/q;->a:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget-object v1, v1, Lo3/q;->b:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 48
    :goto_1
    if-eqz v1, :cond_3

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lo3/a0;->g()V

    .line 53
    .line 54
    .line 55
    :cond_2
    return v2

    .line 56
    :cond_3
    const-string p1, "Timing out service connection."

    .line 57
    .line 58
    invoke-interface {v0, p1}, Ln3/a$e;->d(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v4

    .line 62
    :cond_4
    return v2
.end method

.method public final k()V
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v1, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    invoke-static {v1}, Lr3/r;->d(Lh4/i;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lo3/a0;->b:Ln3/a$e;

    .line 9
    .line 10
    invoke-interface {v1}, Ln3/a$e;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_b

    .line 15
    .line 16
    invoke-interface {v1}, Ln3/a$e;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_0
    const/16 v2, 0xa

    .line 25
    .line 26
    :try_start_0
    iget-object v3, v0, Lo3/d;->g:Lr3/g0;

    .line 27
    .line 28
    iget-object v4, v0, Lo3/d;->e:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v4}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ln3/a$e;->k()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/4 v6, 0x0

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-interface {v1}, Ln3/a$e;->l()I

    .line 45
    .line 46
    .line 47
    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object v7, v3, Lr3/g0;->a:Landroid/util/SparseIntArray;

    .line 49
    .line 50
    const/4 v8, -0x1

    .line 51
    :try_start_1
    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->get(II)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eq v9, v8, :cond_2

    .line 56
    .line 57
    move v6, v9

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v9, 0x0

    .line 60
    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-ge v9, v10, :cond_4

    .line 65
    .line 66
    invoke-virtual {v7, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-le v10, v5, :cond_3

    .line 71
    .line 72
    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->get(I)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-nez v10, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const/4 v6, -0x1

    .line 83
    :goto_1
    if-ne v6, v8, :cond_5

    .line 84
    .line 85
    iget-object v3, v3, Lr3/g0;->b:Lm3/f;

    .line 86
    .line 87
    invoke-virtual {v3, v5, v4}, Lm3/f;->c(ILandroid/content/Context;)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    move v6, v3

    .line 92
    :cond_5
    invoke-virtual {v7, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    .line 94
    .line 95
    :goto_2
    if-eqz v6, :cond_6

    .line 96
    .line 97
    new-instance v0, Lm3/b;

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-direct {v0, v6, v3}, Lm3/b;-><init>(ILandroid/app/PendingIntent;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0}, Lm3/b;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v6, "The service for "

    .line 121
    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, " is not available: "

    .line 129
    .line 130
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, "GoogleApiManager"

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0, v3}, Lo3/a0;->m(Lm3/b;Ljava/lang/RuntimeException;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    goto :goto_5

    .line 151
    :cond_6
    new-instance v3, Lo3/d0;

    .line 152
    .line 153
    iget-object v4, p0, Lo3/a0;->c:Lo3/a;

    .line 154
    .line 155
    invoke-direct {v3, v0, v1, v4}, Lo3/d0;-><init>(Lo3/d;Ln3/a$e;Lo3/a;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v1}, Ln3/a$e;->o()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_a

    .line 163
    .line 164
    iget-object v0, p0, Lo3/a0;->h:Lo3/p0;

    .line 165
    .line 166
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v4, v0, Lo3/p0;->f:Le5/f;

    .line 170
    .line 171
    if-eqz v4, :cond_7

    .line 172
    .line 173
    invoke-interface {v4}, Ln3/a$e;->h()V

    .line 174
    .line 175
    .line 176
    :cond_7
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    iget-object v7, v0, Lo3/p0;->e:Lr3/e;

    .line 185
    .line 186
    iput-object v4, v7, Lr3/e;->h:Ljava/lang/Integer;

    .line 187
    .line 188
    iget-object v4, v0, Lo3/p0;->c:Le5/b;

    .line 189
    .line 190
    iget-object v5, v0, Lo3/p0;->a:Landroid/content/Context;

    .line 191
    .line 192
    iget-object v11, v0, Lo3/p0;->b:Landroid/os/Handler;

    .line 193
    .line 194
    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    iget-object v8, v7, Lr3/e;->g:Le5/a;

    .line 199
    .line 200
    move-object v9, v0

    .line 201
    move-object v10, v0

    .line 202
    invoke-virtual/range {v4 .. v10}, Le5/b;->a(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Ln3/a$c;Ln3/d$a;Ln3/d$b;)Ln3/a$e;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    iput-object v4, v0, Lo3/p0;->f:Le5/f;

    .line 207
    .line 208
    iput-object v3, v0, Lo3/p0;->g:Lo3/o0;

    .line 209
    .line 210
    iget-object v4, v0, Lo3/p0;->d:Ljava/util/Set;

    .line 211
    .line 212
    if-eqz v4, :cond_9

    .line 213
    .line 214
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_8

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_8
    iget-object v0, v0, Lo3/p0;->f:Le5/f;

    .line 222
    .line 223
    invoke-interface {v0}, Le5/f;->a()V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_9
    :goto_3
    new-instance v4, Ll3/l;

    .line 228
    .line 229
    const/4 v5, 0x1

    .line 230
    invoke-direct {v4, v5, v0}, Ll3/l;-><init>(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    .line 235
    .line 236
    :cond_a
    :goto_4
    :try_start_2
    invoke-interface {v1, v3}, Ln3/a$e;->c(Lr3/c$c;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :catch_1
    move-exception v0

    .line 241
    new-instance v1, Lm3/b;

    .line 242
    .line 243
    invoke-direct {v1, v2}, Lm3/b;-><init>(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_6

    .line 247
    :goto_5
    new-instance v1, Lm3/b;

    .line 248
    .line 249
    invoke-direct {v1, v2}, Lm3/b;-><init>(I)V

    .line 250
    .line 251
    .line 252
    :goto_6
    invoke-virtual {p0, v1, v0}, Lo3/a0;->m(Lm3/b;Ljava/lang/RuntimeException;)V

    .line 253
    .line 254
    .line 255
    :cond_b
    :goto_7
    return-void
.end method

.method public final l(Lo3/w0;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    invoke-static {v0}, Lr3/r;->d(Lh4/i;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lo3/a0;->b:Ln3/a$e;

    .line 9
    .line 10
    invoke-interface {v0}, Ln3/a$e;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lo3/a0;->a:Ljava/util/LinkedList;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lo3/a0;->h(Lo3/w0;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lo3/a0;->g()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lo3/a0;->k:Lm3/b;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget v0, p1, Lm3/b;->b:I

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p1, Lm3/b;->c:Landroid/app/PendingIntent;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_0
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Lo3/a0;->m(Lm3/b;Ljava/lang/RuntimeException;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-virtual {p0}, Lo3/a0;->k()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final m(Lm3/b;Ljava/lang/RuntimeException;)V
    .locals 6
    .param p1    # Lm3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/RuntimeException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    invoke-static {v0}, Lr3/r;->d(Lh4/i;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lo3/a0;->h:Lo3/p0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lo3/p0;->f:Le5/f;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ln3/a$e;->h()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 20
    .line 21
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 22
    .line 23
    invoke-static {v0}, Lr3/r;->d(Lh4/i;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lo3/a0;->k:Lm3/b;

    .line 28
    .line 29
    iget-object v1, p0, Lo3/a0;->m:Lo3/d;

    .line 30
    .line 31
    iget-object v1, v1, Lo3/d;->g:Lr3/g0;

    .line 32
    .line 33
    iget-object v1, v1, Lr3/g0;->a:Landroid/util/SparseIntArray;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lo3/a0;->a(Lm3/b;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lo3/a0;->b:Ln3/a$e;

    .line 42
    .line 43
    instance-of v1, v1, Lt3/d;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget v1, p1, Lm3/b;->b:I

    .line 49
    .line 50
    const/16 v3, 0x18

    .line 51
    .line 52
    if-eq v1, v3, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lo3/a0;->m:Lo3/d;

    .line 55
    .line 56
    iput-boolean v2, v1, Lo3/d;->b:Z

    .line 57
    .line 58
    iget-object v1, v1, Lo3/d;->n:Lh4/i;

    .line 59
    .line 60
    const/16 v3, 0x13

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-wide/32 v4, 0x493e0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    iget v1, p1, Lm3/b;->b:I

    .line 73
    .line 74
    const/4 v3, 0x4

    .line 75
    if-ne v1, v3, :cond_2

    .line 76
    .line 77
    sget-object p1, Lo3/d;->q:Lcom/google/android/gms/common/api/Status;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lo3/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    iget-object v1, p0, Lo3/a0;->a:Ljava/util/LinkedList;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iput-object p1, p0, Lo3/a0;->k:Lm3/b;

    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    if-eqz p2, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lo3/a0;->m:Lo3/d;

    .line 97
    .line 98
    iget-object p1, p1, Lo3/d;->n:Lh4/i;

    .line 99
    .line 100
    invoke-static {p1}, Lr3/r;->d(Lh4/i;)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, v0, p2, p1}, Lo3/a0;->c(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    iget-object p2, p0, Lo3/a0;->m:Lo3/d;

    .line 109
    .line 110
    iget-boolean p2, p2, Lo3/d;->o:Z

    .line 111
    .line 112
    if-eqz p2, :cond_a

    .line 113
    .line 114
    iget-object p2, p0, Lo3/a0;->c:Lo3/a;

    .line 115
    .line 116
    invoke-static {p2, p1}, Lo3/d;->c(Lo3/a;Lm3/b;)Lcom/google/android/gms/common/api/Status;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p0, p2, v0, v2}, Lo3/a0;->c(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lo3/a0;->a:Ljava/util/LinkedList;

    .line 124
    .line 125
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_5

    .line 130
    .line 131
    return-void

    .line 132
    :cond_5
    invoke-virtual {p0, p1}, Lo3/a0;->i(Lm3/b;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_6

    .line 137
    .line 138
    return-void

    .line 139
    :cond_6
    iget-object p2, p0, Lo3/a0;->m:Lo3/d;

    .line 140
    .line 141
    iget v0, p0, Lo3/a0;->g:I

    .line 142
    .line 143
    invoke-virtual {p2, p1, v0}, Lo3/d;->b(Lm3/b;I)Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-nez p2, :cond_9

    .line 148
    .line 149
    iget p2, p1, Lm3/b;->b:I

    .line 150
    .line 151
    const/16 v0, 0x12

    .line 152
    .line 153
    if-ne p2, v0, :cond_7

    .line 154
    .line 155
    iput-boolean v2, p0, Lo3/a0;->i:Z

    .line 156
    .line 157
    :cond_7
    iget-boolean p2, p0, Lo3/a0;->i:Z

    .line 158
    .line 159
    if-eqz p2, :cond_8

    .line 160
    .line 161
    iget-object p1, p0, Lo3/a0;->m:Lo3/d;

    .line 162
    .line 163
    iget-object p1, p1, Lo3/d;->n:Lh4/i;

    .line 164
    .line 165
    const/16 p2, 0x9

    .line 166
    .line 167
    iget-object v0, p0, Lo3/a0;->c:Lo3/a;

    .line 168
    .line 169
    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    const-wide/16 v0, 0x1388

    .line 179
    .line 180
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_8
    iget-object p2, p0, Lo3/a0;->c:Lo3/a;

    .line 185
    .line 186
    invoke-static {p2, p1}, Lo3/d;->c(Lo3/a;Lm3/b;)Lcom/google/android/gms/common/api/Status;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Lo3/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    return-void

    .line 194
    :cond_a
    iget-object p2, p0, Lo3/a0;->c:Lo3/a;

    .line 195
    .line 196
    invoke-static {p2, p1}, Lo3/d;->c(Lo3/a;Lm3/b;)Lcom/google/android/gms/common/api/Status;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lo3/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final n()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    invoke-static {v0}, Lr3/r;->d(Lh4/i;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lo3/d;->p:Lcom/google/android/gms/common/api/Status;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lo3/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lo3/a0;->d:Lo3/q;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2, v0}, Lo3/q;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lo3/a0;->f:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-array v1, v2, [Lo3/h$a;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, [Lo3/h$a;

    .line 35
    .line 36
    array-length v1, v0

    .line 37
    :goto_0
    if-ge v2, v1, :cond_0

    .line 38
    .line 39
    aget-object v3, v0, v2

    .line 40
    .line 41
    new-instance v4, Lo3/v0;

    .line 42
    .line 43
    new-instance v5, Lh5/l;

    .line 44
    .line 45
    invoke-direct {v5}, Lh5/l;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v3, v5}, Lo3/v0;-><init>(Lo3/h$a;Lh5/l;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v4}, Lo3/a0;->l(Lo3/w0;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lm3/b;

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-direct {v0, v1}, Lm3/b;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lo3/a0;->a(Lm3/b;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lo3/a0;->b:Ln3/a$e;

    .line 67
    .line 68
    invoke-interface {v0}, Ln3/a$e;->isConnected()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    new-instance v1, Lo3/z;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lo3/z;-><init>(Lo3/a0;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ln3/a$e;->g(Lo3/z;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lo3/a0;->m:Lo3/d;

    .line 6
    .line 7
    iget-object v1, v0, Lo3/d;->n:Lh4/i;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lo3/a0;->e()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, v0, Lo3/d;->n:Lh4/i;

    .line 20
    .line 21
    new-instance v0, Lo3/w;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1, p0}, Lo3/w;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onConnectionFailed(Lm3/b;)V
    .locals 1
    .param p1    # Lm3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo3/a0;->m(Lm3/b;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lo3/a0;->m:Lo3/d;

    .line 6
    .line 7
    iget-object v2, v1, Lo3/d;->n:Lh4/i;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lo3/a0;->f(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, v1, Lo3/d;->n:Lh4/i;

    .line 20
    .line 21
    new-instance v1, Lo3/x;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lo3/x;-><init>(Lo3/a0;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
