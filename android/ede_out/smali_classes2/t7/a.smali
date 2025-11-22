.class public final Lt7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const-class v0, Lo4/r;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lg0/g;

    .line 5
    .line 6
    invoke-direct {v1}, Lg0/g;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "common"

    .line 10
    .line 11
    iput-object v2, v1, Lg0/g;->a:Ljava/lang/Object;

    .line 12
    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object v2, v1, Lg0/g;->b:Ljava/io/Serializable;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v1, Lg0/g;->c:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1}, Lg0/g;->a()Lo4/i;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lo4/r;->a(Lo4/i;)Lo4/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0

    .line 38
    throw v1
.end method
