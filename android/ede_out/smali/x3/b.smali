.class public final Lx3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lx3/b;->a:I

    iput-object p2, p0, Lx3/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx3/b;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lx3/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lx3/b;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Runnable;

    .line 11
    .line 12
    sget-object v2, Lv7/i;->b:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/util/Deque;

    .line 19
    .line 20
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-gt v3, v1, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Runnable;

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :pswitch_1
    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lx3/b;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ljava/lang/Runnable;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_0
    iget-object v0, p0, Lx3/b;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ll3/o;

    .line 62
    .line 63
    monitor-enter v0

    .line 64
    :try_start_0
    iget v2, v0, Ll3/o;->a:I

    .line 65
    .line 66
    if-ne v2, v1, :cond_2

    .line 67
    .line 68
    const-string v2, "Timed out while binding"

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ll3/o;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_2
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0

    .line 77
    throw v1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
