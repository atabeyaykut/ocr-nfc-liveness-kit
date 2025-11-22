.class public final Lyc/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Led/e;

.field public b:Z

.field public final c:Z

.field public final synthetic d:Lyc/r;


# direct methods
.method public constructor <init>(Lyc/r;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-object p1, p0, Lyc/r$a;->d:Lyc/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lyc/r$a;->c:Z

    new-instance p1, Led/e;

    invoke-direct {p1}, Led/e;-><init>()V

    iput-object p1, p0, Lyc/r$a;->a:Led/e;

    return-void
.end method


# virtual methods
.method public final M(Led/e;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lsc/c;->a:[B

    .line 7
    .line 8
    iget-object v0, p0, Lyc/r$a;->a:Led/e;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Led/e;->M(Led/e;J)V

    .line 11
    .line 12
    .line 13
    :goto_0
    iget-wide p1, v0, Led/e;->b:J

    .line 14
    .line 15
    const-wide/16 v1, 0x4000

    .line 16
    .line 17
    cmp-long p3, p1, v1

    .line 18
    .line 19
    if-ltz p3, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lyc/r$a;->a(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 5
    .line 6
    iget-object v1, v1, Lyc/r;->j:Lyc/r$c;

    .line 7
    .line 8
    invoke-virtual {v1}, Led/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    .line 10
    .line 11
    :goto_0
    :try_start_1
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 12
    .line 13
    iget-wide v2, v1, Lyc/r;->c:J

    .line 14
    .line 15
    iget-wide v4, v1, Lyc/r;->d:J

    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-ltz v6, :cond_0

    .line 20
    .line 21
    iget-boolean v2, p0, Lyc/r$a;->c:Z

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-boolean v2, p0, Lyc/r$a;->b:Z

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lyc/r;->f()Lyc/b;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 36
    .line 37
    invoke-virtual {v1}, Lyc/r;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    :try_start_2
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 42
    .line 43
    iget-object v1, v1, Lyc/r;->j:Lyc/r$c;

    .line 44
    .line 45
    invoke-virtual {v1}, Lyc/r$c;->l()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 49
    .line 50
    invoke-virtual {v1}, Lyc/r;->b()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 54
    .line 55
    iget-wide v2, v1, Lyc/r;->d:J

    .line 56
    .line 57
    iget-wide v4, v1, Lyc/r;->c:J

    .line 58
    .line 59
    sub-long/2addr v2, v4

    .line 60
    iget-object v1, p0, Lyc/r$a;->a:Led/e;

    .line 61
    .line 62
    iget-wide v4, v1, Led/e;->b:J

    .line 63
    .line 64
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v10

    .line 68
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 69
    .line 70
    iget-wide v2, v1, Lyc/r;->c:J

    .line 71
    .line 72
    add-long/2addr v2, v10

    .line 73
    iput-wide v2, v1, Lyc/r;->c:J

    .line 74
    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Lyc/r$a;->a:Led/e;

    .line 78
    .line 79
    iget-wide v2, p1, Led/e;->b:J

    .line 80
    .line 81
    cmp-long p1, v10, v2

    .line 82
    .line 83
    if-nez p1, :cond_1

    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    const/4 v8, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 p1, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    .line 92
    monitor-exit v0

    .line 93
    iget-object p1, v1, Lyc/r;->j:Lyc/r$c;

    .line 94
    .line 95
    invoke-virtual {p1}, Led/a;->h()V

    .line 96
    .line 97
    .line 98
    :try_start_3
    iget-object p1, p0, Lyc/r$a;->d:Lyc/r;

    .line 99
    .line 100
    iget-object v6, p1, Lyc/r;->n:Lyc/f;

    .line 101
    .line 102
    iget v7, p1, Lyc/r;->m:I

    .line 103
    .line 104
    iget-object v9, p0, Lyc/r$a;->a:Led/e;

    .line 105
    .line 106
    invoke-virtual/range {v6 .. v11}, Lyc/f;->i(IZLed/e;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lyc/r$a;->d:Lyc/r;

    .line 110
    .line 111
    iget-object p1, p1, Lyc/r;->j:Lyc/r$c;

    .line 112
    .line 113
    invoke-virtual {p1}, Lyc/r$c;->l()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    .line 119
    .line 120
    iget-object v0, v0, Lyc/r;->j:Lyc/r$c;

    .line 121
    .line 122
    invoke-virtual {v0}, Lyc/r$c;->l()V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :catchall_1
    move-exception p1

    .line 127
    :try_start_4
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 128
    .line 129
    iget-object v1, v1, Lyc/r;->j:Lyc/r$c;

    .line 130
    .line 131
    invoke-virtual {v1}, Lyc/r$c;->l()V

    .line 132
    .line 133
    .line 134
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    :catchall_2
    move-exception p1

    .line 136
    monitor-exit v0

    .line 137
    throw p1
.end method

.method public final close()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    .line 2
    .line 3
    sget-object v1, Lsc/c;->a:[B

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lyc/r$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 13
    .line 14
    invoke-virtual {v1}, Lyc/r;->f()Lyc/b;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    sget-object v4, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    .line 29
    .line 30
    iget-object v4, v0, Lyc/r;->h:Lyc/r$a;

    .line 31
    .line 32
    iget-boolean v4, v4, Lyc/r$a;->c:Z

    .line 33
    .line 34
    if-nez v4, :cond_4

    .line 35
    .line 36
    iget-object v4, p0, Lyc/r$a;->a:Led/e;

    .line 37
    .line 38
    iget-wide v4, v4, Led/e;->b:J

    .line 39
    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    cmp-long v8, v4, v6

    .line 43
    .line 44
    if-lez v8, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    :cond_2
    if-eqz v2, :cond_3

    .line 48
    .line 49
    :goto_1
    iget-object v0, p0, Lyc/r$a;->a:Led/e;

    .line 50
    .line 51
    iget-wide v0, v0, Led/e;->b:J

    .line 52
    .line 53
    cmp-long v2, v0, v6

    .line 54
    .line 55
    if-lez v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0, v3}, Lyc/r$a;->a(Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iget-object v8, v0, Lyc/r;->n:Lyc/f;

    .line 64
    .line 65
    iget v9, v0, Lyc/r;->m:I

    .line 66
    .line 67
    const/4 v10, 0x1

    .line 68
    const/4 v11, 0x0

    .line 69
    const-wide/16 v12, 0x0

    .line 70
    .line 71
    invoke-virtual/range {v8 .. v13}, Lyc/f;->i(IZLed/e;J)V

    .line 72
    .line 73
    .line 74
    :cond_4
    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    .line 75
    .line 76
    monitor-enter v0

    .line 77
    :try_start_2
    iput-boolean v3, p0, Lyc/r$a;->b:Z

    .line 78
    .line 79
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    monitor-exit v0

    .line 82
    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    .line 83
    .line 84
    iget-object v0, v0, Lyc/r;->n:Lyc/f;

    .line 85
    .line 86
    invoke-virtual {v0}, Lyc/f;->flush()V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    .line 90
    .line 91
    invoke-virtual {v0}, Lyc/r;->a()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception v1

    .line 96
    monitor-exit v0

    .line 97
    throw v1

    .line 98
    :catchall_1
    move-exception v1

    .line 99
    monitor-exit v0

    .line 100
    throw v1
.end method

.method public final flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    .line 2
    .line 3
    sget-object v1, Lsc/c;->a:[B

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lyc/r$a;->d:Lyc/r;

    .line 7
    .line 8
    invoke-virtual {v1}, Lyc/r;->b()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    :goto_0
    iget-object v0, p0, Lyc/r$a;->a:Led/e;

    .line 15
    .line 16
    iget-wide v0, v0, Led/e;->b:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-lez v4, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lyc/r$a;->a(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    .line 29
    .line 30
    iget-object v0, v0, Lyc/r;->n:Lyc/f;

    .line 31
    .line 32
    invoke-virtual {v0}, Lyc/f;->flush()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0

    .line 39
    throw v1
.end method

.method public final h()Led/k0;
    .locals 1

    iget-object v0, p0, Lyc/r$a;->d:Lyc/r;

    iget-object v0, v0, Lyc/r;->j:Lyc/r$c;

    return-object v0
.end method
