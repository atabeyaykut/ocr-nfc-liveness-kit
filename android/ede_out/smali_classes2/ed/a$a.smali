.class public final Led/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Led/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a()Led/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    sget-object v0, Led/a;->j:Led/a;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Led/a;->f:Led/a;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-class v3, Led/a;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-wide v5, Led/a;->h:J

    .line 18
    .line 19
    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Led/a;->j:Led/a;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Led/a;->f:Led/a;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    sub-long/2addr v5, v1

    .line 36
    sget-wide v0, Led/a;->i:J

    .line 37
    .line 38
    cmp-long v2, v5, v0

    .line 39
    .line 40
    if-ltz v2, :cond_0

    .line 41
    .line 42
    sget-object v4, Led/a;->j:Led/a;

    .line 43
    .line 44
    :cond_0
    return-object v4

    .line 45
    :cond_1
    iget-wide v5, v0, Led/a;->g:J

    .line 46
    .line 47
    sub-long/2addr v5, v1

    .line 48
    const-wide/16 v1, 0x0

    .line 49
    .line 50
    cmp-long v7, v5, v1

    .line 51
    .line 52
    if-lez v7, :cond_2

    .line 53
    .line 54
    const-wide/32 v0, 0xf4240

    .line 55
    .line 56
    .line 57
    div-long v7, v5, v0

    .line 58
    .line 59
    mul-long v0, v0, v7

    .line 60
    .line 61
    sub-long/2addr v5, v0

    .line 62
    long-to-int v0, v5

    .line 63
    invoke-virtual {v3, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    .line 64
    .line 65
    .line 66
    return-object v4

    .line 67
    :cond_2
    sget-object v1, Led/a;->j:Led/a;

    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v0, Led/a;->f:Led/a;

    .line 73
    .line 74
    iput-object v2, v1, Led/a;->f:Led/a;

    .line 75
    .line 76
    iput-object v4, v0, Led/a;->f:Led/a;

    .line 77
    .line 78
    return-object v0
.end method
