.class public final Ld0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld0/t;


# direct methods
.method public constructor <init>(Ld0/t;)V
    .locals 0

    iput-object p1, p0, Ld0/s;->a:Ld0/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld0/s;->a:Ld0/t;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/t;->d:Ld0/r;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Ld0/s;->a:Ld0/t;

    .line 9
    .line 10
    iget-object v0, v0, Ld0/t;->d:Ld0/r;

    .line 11
    .line 12
    iget-object v1, v0, Ld0/r;->a:Ljava/lang/Object;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Ld0/s;->a:Ld0/t;

    .line 17
    .line 18
    invoke-static {v0, v1}, Ld0/t;->a(Ld0/t;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    iget-object v1, p0, Ld0/s;->a:Ld0/t;

    .line 23
    .line 24
    iget-object v0, v0, Ld0/r;->b:Ljava/lang/Throwable;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v3, v1, Ld0/t;->b:Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    const-string v2, "Lottie encountered an error but no failure listener was added:"

    .line 41
    .line 42
    invoke-static {v2, v0}, Lp0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ld0/o;

    .line 61
    .line 62
    invoke-interface {v3, v0}, Ld0/o;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :goto_1
    monitor-exit v1

    .line 67
    :goto_2
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit v1

    .line 70
    throw v0
.end method
