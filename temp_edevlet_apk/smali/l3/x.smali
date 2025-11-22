.class public final synthetic Ll3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ll3/x;->a:I

    iput-object p2, p0, Ll3/x;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Ll3/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Ll3/x;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lh5/l;

    .line 10
    .line 11
    new-instance v1, Ljava/io/IOException;

    .line 12
    .line 13
    const-string v2, "TIMEOUT"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, "Rpc"

    .line 25
    .line 26
    const-string v1, "No response"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :goto_0
    iget-object v0, p0, Ll3/x;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lh5/t;

    .line 35
    .line 36
    iget-object v0, v0, Lh5/t;->c:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Ll3/x;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lh5/t;

    .line 42
    .line 43
    iget-object v1, v1, Lh5/t;->d:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v2, v1

    .line 46
    check-cast v2, Lh5/d;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    check-cast v1, Lh5/d;

    .line 51
    .line 52
    invoke-interface {v1}, Lh5/d;->a()V

    .line 53
    .line 54
    .line 55
    :cond_1
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw v1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
