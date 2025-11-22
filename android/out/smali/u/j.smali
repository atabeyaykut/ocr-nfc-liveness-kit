.class public final Lu/j;
.super Lu/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lq/e;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lq/e;->a:Lq/a;

    .line 2
    .line 3
    instance-of v1, v0, Lq/a$a;

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lq/a$a;

    .line 11
    .line 12
    iget v0, v0, Lq/a$a;->a:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v0, 0x7fffffff

    .line 16
    .line 17
    .line 18
    :goto_0
    const/16 v1, 0x64

    .line 19
    .line 20
    if-le v0, v1, :cond_2

    .line 21
    .line 22
    iget-object p1, p1, Lq/e;->b:Lq/a;

    .line 23
    .line 24
    instance-of v0, p1, Lq/a$a;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lq/a$a;

    .line 29
    .line 30
    iget v2, p1, Lq/a$a;->a:I

    .line 31
    .line 32
    :cond_1
    if-le v2, v1, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    :goto_1
    return p1
.end method

.method public final b()Z
    .locals 9

    .line 1
    sget-object v0, Lu/f;->a:Lu/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lu/f;->c:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    sput v2, Lu/f;->c:I

    .line 9
    .line 10
    const/16 v2, 0x1e

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    sget-wide v5, Lu/f;->d:J

    .line 21
    .line 22
    const/16 v7, 0x7530

    .line 23
    .line 24
    int-to-long v7, v7

    .line 25
    add-long/2addr v5, v7

    .line 26
    cmp-long v7, v1, v5

    .line 27
    .line 28
    if-lez v7, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 34
    :goto_1
    if-eqz v1, :cond_4

    .line 35
    .line 36
    sput v3, Lu/f;->c:I

    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    sput-wide v1, Lu/f;->d:J

    .line 43
    .line 44
    sget-object v1, Lu/f;->b:Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    new-array v1, v3, [Ljava/lang/String;

    .line 53
    .line 54
    :cond_2
    array-length v1, v1

    .line 55
    const/16 v2, 0x320

    .line 56
    .line 57
    if-ge v1, v2, :cond_3

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    :cond_3
    sput-boolean v3, Lu/f;->e:Z

    .line 61
    .line 62
    :cond_4
    sget-boolean v1, Lu/f;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return v1

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    monitor-exit v0

    .line 68
    throw v1
.end method
