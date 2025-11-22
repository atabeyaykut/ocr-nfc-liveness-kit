.class public final synthetic Lv7/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;Lh5/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lv7/p;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7/p;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv7/p;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lqd/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lv7/p;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7/p;->c:Ljava/lang/Object;

    new-instance p1, Lqd/h;

    invoke-direct {p1}, Lqd/h;-><init>()V

    iput-object p1, p0, Lv7/p;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lv7/p;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lv7/p;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lv7/p;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    check-cast v2, Ljava/util/concurrent/Callable;

    .line 12
    .line 13
    check-cast v1, Lh5/l;

    .line 14
    .line 15
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Lr7/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    invoke-virtual {v1, v0}, Lh5/l;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v2, Lr7/a;

    .line 25
    .line 26
    const-string v3, "Internal error has occurred when executing ML Kit tasks"

    .line 27
    .line 28
    invoke-direct {v2, v3, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lh5/l;->a(Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    .line 36
    invoke-virtual {v1, v0}, Lh5/l;->a(Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :goto_1
    check-cast v2, Lqd/h;

    .line 41
    .line 42
    invoke-virtual {v2}, Lqd/h;->b()Lqd/g;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    check-cast v1, Lqd/b;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lqd/b;->d(Lqd/g;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "No pending post available"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
