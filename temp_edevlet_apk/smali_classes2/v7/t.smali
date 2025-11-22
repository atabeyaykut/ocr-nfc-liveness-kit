.class public final synthetic Lv7/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv7/j;

.field public final synthetic b:Lh5/q;

.field public final synthetic c:Lh5/a;

.field public final synthetic d:Ljava/util/concurrent/Callable;

.field public final synthetic e:Lh5/l;


# direct methods
.method public synthetic constructor <init>(Lv7/j;Lh5/q;Lh5/a;Ljava/util/concurrent/Callable;Lh5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7/t;->a:Lv7/j;

    iput-object p2, p0, Lv7/t;->b:Lh5/q;

    iput-object p3, p0, Lv7/t;->c:Lh5/a;

    iput-object p4, p0, Lv7/t;->d:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lv7/t;->e:Lh5/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lv7/t;->d:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    iget-object v1, p0, Lv7/t;->e:Lh5/l;

    .line 4
    .line 5
    iget-object v2, p0, Lv7/t;->a:Lv7/j;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lv7/t;->b:Lh5/q;

    .line 11
    .line 12
    invoke-virtual {v3}, Lh5/q;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    iget-object v5, p0, Lv7/t;->c:Lh5/a;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v4, v2, Lv7/j;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lv7/j;->b()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v3}, Lh5/q;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v5}, Lh5/a;->a()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :try_start_1
    invoke-virtual {v3}, Lh5/q;->b()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-virtual {v5}, Lh5/a;->a()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {v1, v0}, Lh5/l;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v2, Lr7/a;

    .line 66
    .line 67
    const-string v4, "Internal error has occurred when executing ML Kit tasks"

    .line 68
    .line 69
    invoke-direct {v2, v4, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 70
    .line 71
    .line 72
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :catch_1
    move-exception v0

    .line 74
    invoke-virtual {v3}, Lh5/q;->b()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    :goto_0
    invoke-virtual {v5}, Lh5/a;->a()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v1, v0}, Lh5/l;->a(Ljava/lang/Exception;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-void
.end method
