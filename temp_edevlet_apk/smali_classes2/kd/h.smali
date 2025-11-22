.class public final Lkd/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Z

.field public b:J

.field public final c:Lkd/a;

.field public transient d:Z


# direct methods
.method public constructor <init>(Lkd/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkd/h;->a:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lkd/h;->b:J

    iput-boolean v0, p0, Lkd/h;->d:Z

    iput-object p1, p0, Lkd/h;->c:Lkd/a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lkd/h;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Lkd/h;->b:J

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v0, v2, v4

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v6, p0, Lkd/h;->b:J

    .line 19
    .line 20
    sub-long/2addr v2, v6

    .line 21
    sget-wide v8, Lgd/e;->A:J

    .line 22
    .line 23
    cmp-long v0, v2, v8

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v6, p0, Lkd/h;->b:J

    .line 41
    .line 42
    sub-long/2addr v2, v6

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x1

    .line 48
    aput-object v2, v0, v3

    .line 49
    .line 50
    sget-wide v6, Lgd/e;->A:J

    .line 51
    .line 52
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v6, 0x2

    .line 57
    aput-object v2, v0, v6

    .line 58
    .line 59
    const-string v2, "h"

    .line 60
    .line 61
    const-string v6, "We are newly outside the region because the lastSeenTime of %s was %s seconds ago, and that is over the expiration duration of %s"

    .line 62
    .line 63
    invoke-static {v2, v6, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-boolean v1, p0, Lkd/h;->a:Z

    .line 67
    .line 68
    iput-wide v4, p0, Lkd/h;->b:J

    .line 69
    .line 70
    return v3

    .line 71
    :cond_0
    return v1
.end method
