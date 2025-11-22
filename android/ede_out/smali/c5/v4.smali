.class public final Lc5/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc5/w4;


# direct methods
.method public constructor <init>(Lc5/w4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lc5/v4;->c:Lc5/w4;

    iput-object p2, p0, Lc5/v4;->a:Ljava/lang/String;

    iput-object p3, p0, Lc5/v4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/v4;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lc5/v4;->c:Lc5/w4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/w4;->a:Lc5/o7;

    .line 8
    .line 9
    iget-object v0, v0, Lc5/o7;->m:Lc5/i4;

    .line 10
    .line 11
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 12
    .line 13
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lc5/v4;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lc5/f6;->r(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lc5/v4;->c:Lc5/w4;

    .line 23
    .line 24
    iget-object v0, v0, Lc5/w4;->a:Lc5/o7;

    .line 25
    .line 26
    iget-object v0, v0, Lc5/o7;->m:Lc5/i4;

    .line 27
    .line 28
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 29
    .line 30
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lc5/v4;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 36
    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v2, v0, Lc5/f6;->n:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    iput-object v1, v0, Lc5/f6;->n:Ljava/lang/String;

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v1
.end method
