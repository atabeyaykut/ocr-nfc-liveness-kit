.class public final Lc5/y6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lc5/e7;


# direct methods
.method public constructor <init>(Lc5/e7;J)V
    .locals 0

    iput-object p1, p0, Lc5/y6;->b:Lc5/e7;

    iput-wide p2, p0, Lc5/y6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc5/y6;->b:Lc5/e7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lc5/e7;->g()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 10
    .line 11
    check-cast v1, Lc5/i4;

    .line 12
    .line 13
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 14
    .line 15
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 16
    .line 17
    .line 18
    iget-wide v3, p0, Lc5/y6;->a:J

    .line 19
    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v2, v2, Lc5/e3;->p:Lc5/c3;

    .line 25
    .line 26
    const-string v6, "Activity resumed, time"

    .line 27
    .line 28
    invoke-virtual {v2, v5, v6}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v1, Lc5/i4;->g:Lc5/e;

    .line 32
    .line 33
    invoke-virtual {v2}, Lc5/e;->q()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 40
    .line 41
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v1, Lc5/s3;->r:Lc5/m3;

    .line 45
    .line 46
    invoke-virtual {v1}, Lc5/m3;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    :cond_0
    iget-object v1, v0, Lc5/e7;->e:Lc5/c7;

    .line 53
    .line 54
    iget-object v2, v1, Lc5/c7;->d:Lc5/e7;

    .line 55
    .line 56
    invoke-virtual {v2}, Lc5/t2;->b()V

    .line 57
    .line 58
    .line 59
    iget-object v2, v1, Lc5/c7;->c:Lc5/b7;

    .line 60
    .line 61
    invoke-virtual {v2}, Lc5/l;->a()V

    .line 62
    .line 63
    .line 64
    iput-wide v3, v1, Lc5/c7;->a:J

    .line 65
    .line 66
    iput-wide v3, v1, Lc5/c7;->b:J

    .line 67
    .line 68
    :cond_1
    iget-object v1, v0, Lc5/e7;->f:Lc5/a7;

    .line 69
    .line 70
    iget-object v2, v1, Lc5/a7;->b:Lc5/e7;

    .line 71
    .line 72
    invoke-virtual {v2}, Lc5/t2;->b()V

    .line 73
    .line 74
    .line 75
    iget-object v1, v1, Lc5/a7;->a:Lc5/z6;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    iget-object v3, v2, Lc5/e7;->c:Lcom/google/android/gms/internal/measurement/q0;

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v1, v2, Lc5/x4;->a:Lc5/z4;

    .line 85
    .line 86
    check-cast v1, Lc5/i4;

    .line 87
    .line 88
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 89
    .line 90
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v1, Lc5/s3;->r:Lc5/m3;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, v2}, Lc5/m3;->a(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, Lc5/e7;->d:Lc5/d7;

    .line 100
    .line 101
    iget-object v1, v0, Lc5/d7;->a:Lc5/e7;

    .line 102
    .line 103
    invoke-virtual {v1}, Lc5/t2;->b()V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lc5/d7;->a:Lc5/e7;

    .line 107
    .line 108
    iget-object v3, v1, Lc5/x4;->a:Lc5/z4;

    .line 109
    .line 110
    check-cast v3, Lc5/i4;

    .line 111
    .line 112
    invoke-virtual {v3}, Lc5/i4;->a()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_3

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 120
    .line 121
    check-cast v1, Lc5/i4;

    .line 122
    .line 123
    iget-object v1, v1, Lc5/i4;->p:Lc5/w;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    invoke-virtual {v0, v3, v4, v2}, Lc5/d7;->b(JZ)V

    .line 133
    .line 134
    .line 135
    :goto_0
    return-void
.end method
