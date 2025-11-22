.class public Lbc/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbc/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lbc/c;

.field public final b:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbc/c;Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbc/c;",
            "Lx9/a<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbc/c$l;->a:Lbc/c$l;

    iput-object v0, p0, Lbc/c$f;->c:Ljava/lang/Object;

    iput-object p1, p0, Lbc/c$f;->a:Lbc/c;

    iput-object p2, p0, Lbc/c$f;->b:Lx9/a;

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lbc/c$f;->a(I)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Lbc/c$f;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    const-string v7, "storageManager"

    aput-object v7, v3, v5

    goto :goto_2

    :cond_2
    aput-object v4, v3, v5

    goto :goto_2

    :cond_3
    const-string v7, "computable"

    aput-object v7, v3, v5

    :goto_2
    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    aput-object v4, v3, v6

    goto :goto_3

    :cond_4
    const-string v4, "renderDebugInformation"

    aput-object v4, v3, v6

    goto :goto_3

    :cond_5
    const-string v4, "recursionDetected"

    aput-object v4, v3, v6

    :goto_3
    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    const-string v4, "<init>"

    aput-object v4, v3, v1

    :cond_6
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Z)Lbc/c$m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbc/c$m<",
            "TT;>;"
        }
    .end annotation

    iget-object p1, p0, Lbc/c$f;->a:Lbc/c;

    const/4 v0, 0x0

    const-string v1, "in a lazy value"

    invoke-virtual {p1, v0, v1}, Lbc/c;->k(Ljava/lang/Object;Ljava/lang/String;)Lbc/c$m;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x2

    invoke-static {p1}, Lbc/c$f;->a(I)V

    throw v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbc/c$f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lbc/c$l;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lkc/e;->a(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lbc/c$f;->a:Lbc/c;

    .line 12
    .line 13
    iget-object v0, v0, Lbc/c;->a:Lbc/k;

    .line 14
    .line 15
    invoke-interface {v0}, Lbc/k;->lock()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lbc/c$f;->c:Ljava/lang/Object;

    .line 19
    .line 20
    instance-of v1, v0, Lbc/c$l;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Lkc/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object v1, Lbc/c$l;->b:Lbc/c$l;

    .line 29
    .line 30
    sget-object v2, Lbc/c$l;->c:Lbc/c$l;

    .line 31
    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    :try_start_1
    iput-object v2, p0, Lbc/c$f;->c:Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {p0, v3}, Lbc/c$f;->c(Z)Lbc/c$m;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-boolean v4, v3, Lbc/c$m;->b:Z

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    iget-object v0, v3, Lbc/c$m;->a:Ljava/lang/Object;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-ne v0, v2, :cond_3

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lbc/c$f;->c(Z)Lbc/c$m;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-boolean v2, v0, Lbc/c$m;->b:Z

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-object v0, v0, Lbc/c$m;->a:Ljava/lang/Object;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iput-object v1, p0, Lbc/c$f;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    :try_start_2
    iget-object v0, p0, Lbc/c$f;->b:Lx9/a;

    .line 65
    .line 66
    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lbc/c$f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lbc/c$f;->c:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    :goto_0
    iget-object v1, p0, Lbc/c$f;->a:Lbc/c;

    .line 76
    .line 77
    iget-object v1, v1, Lbc/c;->a:Lbc/k;

    .line 78
    .line 79
    invoke-interface {v1}, Lbc/k;->unlock()V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :try_start_3
    invoke-static {v0}, Lx5/a;->n(Ljava/lang/Throwable;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_5

    .line 89
    .line 90
    iget-object v2, p0, Lbc/c$f;->c:Ljava/lang/Object;

    .line 91
    .line 92
    if-ne v2, v1, :cond_4

    .line 93
    .line 94
    new-instance v1, Lkc/e$b;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Lkc/e$b;-><init>(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lbc/c$f;->c:Ljava/lang/Object;

    .line 100
    .line 101
    :cond_4
    iget-object v1, p0, Lbc/c$f;->a:Lbc/c;

    .line 102
    .line 103
    iget-object v1, v1, Lbc/c;->b:Lbc/c$d;

    .line 104
    .line 105
    check-cast v1, Lbc/c$d$a;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_5
    sget-object v1, Lbc/c$l;->a:Lbc/c$l;

    .line 112
    .line 113
    iput-object v1, p0, Lbc/c$f;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Ljava/lang/RuntimeException;

    .line 116
    .line 117
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    iget-object v1, p0, Lbc/c$f;->a:Lbc/c;

    .line 120
    .line 121
    iget-object v1, v1, Lbc/c;->a:Lbc/k;

    .line 122
    .line 123
    invoke-interface {v1}, Lbc/k;->unlock()V

    .line 124
    .line 125
    .line 126
    throw v0
.end method
