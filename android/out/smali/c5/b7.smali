.class public final Lc5/b7;
.super Lc5/l;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lc5/c7;


# direct methods
.method public constructor <init>(Lc5/c7;Lc5/i4;)V
    .locals 0

    iput-object p1, p0, Lc5/b7;->e:Lc5/c7;

    invoke-direct {p0, p2}, Lc5/l;-><init>(Lc5/z4;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/b7;->e:Lc5/c7;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/c7;->d:Lc5/e7;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc5/t2;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lc5/c7;->d:Lc5/e7;

    .line 9
    .line 10
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 11
    .line 12
    check-cast v2, Lc5/i4;

    .line 13
    .line 14
    iget-object v2, v2, Lc5/i4;->p:Lc5/w;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v0, v4, v4, v2, v3}, Lc5/c7;->a(ZZJ)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Lc5/i4;

    .line 31
    .line 32
    invoke-virtual {v1}, Lc5/i4;->g()Lc5/u1;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v0, Lc5/i4;

    .line 37
    .line 38
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {v1, v2, v3}, Lc5/u1;->e(J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
