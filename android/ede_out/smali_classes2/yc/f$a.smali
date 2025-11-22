.class public final Lyc/f$a;
.super Luc/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyc/f;-><init>(Lyc/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lyc/f;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyc/f;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lyc/f$a;->e:Lyc/f;

    .line 2
    .line 3
    iput-wide p3, p0, Lyc/f$a;->f:J

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Luc/a;-><init>(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 9

    .line 1
    iget-object v0, p0, Lyc/f$a;->e:Lyc/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lyc/f$a;->e:Lyc/f;

    .line 5
    .line 6
    iget-wide v2, v1, Lyc/f;->p:J

    .line 7
    .line 8
    iget-wide v4, v1, Lyc/f;->n:J

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    cmp-long v8, v2, v4

    .line 13
    .line 14
    if-gez v8, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v2, 0x1

    .line 19
    .line 20
    add-long/2addr v4, v2

    .line 21
    iput-wide v4, v1, Lyc/f;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    monitor-exit v0

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {v1, v0}, Lyc/f;->b(Ljava/io/IOException;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, -0x1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :try_start_1
    iget-object v0, v1, Lyc/f;->B:Lyc/s;

    .line 35
    .line 36
    invoke-virtual {v0, v7, v6, v6}, Lyc/s;->f(IIZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v1, v0}, Lyc/f;->b(Ljava/io/IOException;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    iget-wide v0, p0, Lyc/f$a;->f:J

    .line 45
    .line 46
    :goto_2
    return-wide v0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0

    .line 49
    throw v1
.end method
